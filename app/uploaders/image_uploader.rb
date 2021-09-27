class ImageUploader < CarrierWave::Uploader::Base
  # Include RMagick or MiniMagick support:
  # include CarrierWave::RMagick
  # include CarrierWave::MiniMagick
  include Cloudinary::CarrierWave

  process convert: 'png'
  process tags: ['course_picture']

  # def extension_whitelist; end
  # version :standard do
  #   process eager: true
  #   # process resize_to_fill: [100, 150, :north]
  # end

  # version :thumbnail do
  #   eager
  #   resize_to_fill(50, 50)
  # end

  # CarrierWave.configure do |config|
  #   config.cache_storage = :file
  # end
end
