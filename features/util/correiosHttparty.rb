class CorreiosHttparty
  include CorreiosHTTPartyObjects

  attr_reader :url_api_correios

  def initialize
    @url_api_correios = "http://correiosapi.apphb.com/cep/"
    @mensagem_cep_invalido = "Endereço não encontrado!"
  end
end