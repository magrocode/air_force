class AsignaturaXCursosController < ApplicationController
  # GET /asignatura_x_cursos
  # GET /asignatura_x_cursos.json
  def index
    @asignatura_x_cursos = AsignaturaXCurso.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @asignatura_x_cursos }
    end
  end

  # GET /asignatura_x_cursos/1
  # GET /asignatura_x_cursos/1.json
  def show
    @asignatura_x_curso = AsignaturaXCurso.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @asignatura_x_curso }
    end
  end

  # GET /asignatura_x_cursos/new
  # GET /asignatura_x_cursos/new.json
  def new
    @asignatura_x_curso = AsignaturaXCurso.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @asignatura_x_curso }
    end
  end

  # GET /asignatura_x_cursos/1/edit
  def edit
    @asignatura_x_curso = AsignaturaXCurso.find(params[:id])
  end

  # POST /asignatura_x_cursos
  # POST /asignatura_x_cursos.json
  def create
    @asignatura_x_curso = AsignaturaXCurso.new(params[:asignatura_x_curso])

    respond_to do |format|
      if @asignatura_x_curso.save
        format.html { redirect_to @asignatura_x_curso, notice: 'Asignatura x curso was successfully created.' }
        format.json { render json: @asignatura_x_curso, status: :created, location: @asignatura_x_curso }
      else
        format.html { render action: "new" }
        format.json { render json: @asignatura_x_curso.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /asignatura_x_cursos/1
  # PUT /asignatura_x_cursos/1.json
  def update
    @asignatura_x_curso = AsignaturaXCurso.find(params[:id])

    respond_to do |format|
      if @asignatura_x_curso.update_attributes(params[:asignatura_x_curso])
        format.html { redirect_to @asignatura_x_curso, notice: 'Asignatura x curso was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @asignatura_x_curso.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /asignatura_x_cursos/1
  # DELETE /asignatura_x_cursos/1.json
  def destroy
    @asignatura_x_curso = AsignaturaXCurso.find(params[:id])
    @asignatura_x_curso.destroy

    respond_to do |format|
      format.html { redirect_to asignatura_x_cursos_url }
      format.json { head :no_content }
    end
  end
end
