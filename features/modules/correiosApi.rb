module CorreiosApi
  include HTTParty
  include Test::Unit::Assertions
  def get_endereco_api_correios cep
    @endereco = HTTParty.get "http://correiosapi.apphb.com/cep#{cep}"
  end

  def valida_endereco
    assert @endereco["tipoDeLogradouro"].eql? ENDERECOS[:valido][:tipoDeLogradouro]
    assert @endereco["logradouro"].eql? ENDERECOS[:valido][:logradouro]
    assert @endereco["bairro"].eql? ENDERECOS[:valido][:bairro]
    assert @endereco["cidade"].eql? ENDERECOS[:valido][:cidade]
    assert @endereco["estado"].eql? ENDERECOS[:valido][:estado]
  end

  def valida_cep_invalido
    assert @endereco["message"], @cep_invalido
  end

end