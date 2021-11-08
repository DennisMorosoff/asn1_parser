require 'asn1_parser/engine'
require 'openssl'
require 'rchardet'

module Asn1Parser
  def self.parse(filepath)
    crt_encoded = File.open(filepath).read
    obj = OpenSSL::ASN1.decode(crt_encoded)
    gacc = []
    
    collect = lambda {
      |obj, acc|
      if obj.nil?
        gacc
      elsif obj.respond_to?('[]')
        collect.call(obj[0], collect.call(cdr(obj), acc))
      elsif (obj.value.is_a? String)
        gacc.push(obj.value)
      elsif obj.value.respond_to?('[]')
        collect.call(obj.value[0], collect.call(cdr(obj.value), acc))
      end
    }

    collect.call(obj, [])
    gacc
  end

  def self.makehash(array)
    hash = {}
    
    (0..(array.length-1)).step(2) do |i|
      cd = CharDet.detect(array[i])
      cd['encoding'] = cd['encoding'] || 'utf-8'
      hash[array[i+1]] = array[i]&.force_encoding(cd['encoding'])
    end

    hash
  end

  def self.printhash(hash)
    hash.each do |key, value|
      puts "#{key} => #{value}"
    end
  end

  def self.cdr(list)
    list[1..list.length]
  end  
end
