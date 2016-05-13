module ApplicationHelper

	def show_status(valor)
        if valor == true
          '<span style="color:green">Publicado</span>'.html_safe
        elsif valor == false
          '<span style="color:red">Não Publicado</span>'.html_safe
        else
          'Indefinido'	
        end
	end
end
