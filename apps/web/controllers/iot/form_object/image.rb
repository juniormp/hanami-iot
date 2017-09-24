require 'base64'

module FormObject
  class Image
    attr_accessor :id, :imagem, :subject_id

    def initialize(id: id, imagem: imagem, subject_id: subject_id)
      @id = id
      @imagem = imagem
      @subject_id = subject_id
    end

    def strange?
      return false if @subject_id == "Desconhecido"

      true
    end
  end
end
