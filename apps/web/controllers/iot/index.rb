require 'net/http'
require 'uri'
require 'json'
require 'rest-client'
require_relative 'form_object/image'

module Web::Controllers::Iot
  class Index
    include Web::Action
    expose :images

    def call(params)
      @images = build_images(retrieve_images)
    end

    private 

    def retrieve_images(url: ENV['URL'])
      response = RestClient.get(url)
      JSON.parse(response)
    end

    def build_images(images)
      form_object_images = []
      images.each do |image|
        form_object_images << FormObject::Image.new(id: image['_id'], imagem: image['imagem'], subject_id: image['subject_id'])
      end

      form_object_images
    end
  end
end
