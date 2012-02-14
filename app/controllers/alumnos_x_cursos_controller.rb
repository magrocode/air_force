class AlumnosXCursosController < ApplicationController
  # GET /alumnos_x_cursos
  # GET /alumnos_x_cursos.json
  def index
    @alumnos_x_cursos = AlumnosXCurso.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @alumnos_x_cursos }
    end
  end

  # GET /alumnos_x_cursos/1
  # GET /alumnos_x_cursos/1.json
  def show
    @alumnos_x_curso = AlumnosXCurso.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @alumnos_x_curso }
    end
  end

  # GET /alumnos_x_cursos/new
  # GET /alumnos_x_cursos/new.json
  def new
    @alumnos_x_curso = AlumnosXCurso.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @alumnos_x_curso }
    end
  end

  # GET /alumnos_x_cursos/1/edit
  def edit
    @alumnos_x_curso = AlumnosXCurso.find(params[:id])
  end

  # POST /alumnos_x_cursos
  # POST /alumnos_x_cursos.json
  def create
    @alumnos_x_curso = AlumnosXCurso.new(params[:alumnos_x_curso])

    respond_to do |format|
      if @alumnos_x_curso.save
        format.html { redirect_to @alumnos_x_curso, notice: 'Alumnos x curso was successfully created.' }
        format.json { render json: @alumnos_x_curso, status: :created, location: @alumnos_x_curso }
      else
        format.html { render action: "new" }
        format.json { render json: @alumnos_x_curso.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /alumnos_x_cursos/1
  # PUT /alumnos_x_cursos/1.json
  def update
    @alumnos_x_curso = AlumnosXCurso.find(params[:id])

    respond_to do |format|
      if @alumnos_x_curso.update_attributes(params[:alumnos_x_curso])
        format.html { redirect_to @alumnos_x_curso, notice: 'Alumnos x curso was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @alumnos_x_curso.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /alumnos_x_cursos/1
  # DELETE /alumnos_x_cursos/1.json
  def destroy
    @alumnos_x_curso = AlumnosXCurso.find(params[:id])
    @alumnos_x_curso.destroy

    respond_to do |format|
      format.html { redirect_to alumnos_x_cursos_url }
      format.json { head :no_content }
    end
  end
end
