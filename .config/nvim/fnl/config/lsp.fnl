;lsp loading progress
(var progress-message {:status "" :percent 0 :msg ""})

(fn get-progress-message []
  progress-message)

(fn progress-handler [_ msg info]
  (let [client (vim.lsp.get_client_by_id info.client_id)] 
    (when client 
      (set progress-message.status msg.value.kind)
      (when (not= msg.value.percentage nil)
        (set progress-message.percent msg.value.percentage))
      (if 
        (and (not= msg.value.message nil) 
             (and (not= msg.token nil)
                  (not= (type (tonumber msg.token)) "number")))
        (set progress-message.msg (.. msg.token " : " msg.value.message))

        (not= msg.value.message nil)
        (set progress-message.msg msg.value.message)

        (not= msg.token nil)
        (set progress-message.msg msg.token)))))

(fn setup-progress-handler []
  (let [original-handler (. vim.lsp.handlers :$/progress)]
    (tset vim.lsp.handlers :$/progress
          (fn [...]
            (let [args (vim.F.pack_len ...)]
              (progress-handler (vim.F.unpack_len args))
              (original-handler ...))))))

(setup-progress-handler)

{: get-progress-message}
