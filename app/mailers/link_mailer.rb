class LinkMailer <ActionMailer::Base
  default from:"chocko@compras.com"

  def download_link(link)
    @link = link
    mail(to: link.email, subject:"Descarga los productos que adquiriste en Tiendus")

  end

end
