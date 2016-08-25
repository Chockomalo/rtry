ActionMailer::Base.smtp_settings={
  address: "smtp.gmail.com",
  port: 587,
  domain: "gmail.com",
  #no poner credenciales, recuerda que es publico en GIT
  user_name: "",
  password: "",
  authentication: :login,
  enable_starttls_auto: true
  #no poner credenciales, recuerda que es publico en GIT

}
