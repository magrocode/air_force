module ApplicationHelper
    # devuelve un titulo en funcion de cada pagina
  def title
    base_title = "Escuela de Especialidades"
    if @title.nil?
      base_title
    else
      "#{base_title} | #{@title}"
    end
  end
  
  #metodo para el logo
  def logo
    logo = image_tag("/images/logo.png", :alt => "Escuela de Especialidades", :class => "round")
  end
end
