InvisibleCaptcha.setup do |config|
    config.honeypots           << ['mails']
    config.visual_honeypots        = false
    config.timestamp_threshold     = 4
    config.timestamp_enabled   = true 
    config.injectable_styles   = false
end
  