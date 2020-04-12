# frozen_string_literal: true

module Interage
  module CPFCNPJHelper
    def format_cnpj(cnpj)
      return if cnpj.blank?

      cnpj.to_s.gsub!(/[^0-9]/, '')

      formatted_cnpj = ["#{cnpj[0, 2]}.#{cnpj[2, 3]}.#{cnpj[5, 3]}",
                        "#{cnpj[8, 4]}-#{cnpj[12, 2]}"]
      formatted_cnpj.join('/').strip
    end

    def format_cpf(cpf)
      return if cpf.blank?

      cpf.to_s.gsub!(/[^0-9]/, '')

      "#{cpf[0, 3]}.#{cpf[3, 3]}.#{cpf[6, 3]}-#{cpf[9, 2]}".strip
    end
  end
end
