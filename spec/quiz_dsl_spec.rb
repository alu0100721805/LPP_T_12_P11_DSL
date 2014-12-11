require 'quiz_dsl.rb'
require 'spec_helper.rb'
include QuizDsl

describe Quiz do
	before :all do
		@quiz = Quiz.new("test1"){ |e|
		e.question "Pregunta 1",
		e.right => "Respuesta 1" ,
		e.wrong => "Respuesta 2"
		}
		@quiz2 = Quiz.new("test2"){ 
		question "Pregunta 1",
		right => "Respuesta 1",
		wrong => "Respuesta 2",
		wrong => "Respuesta 2"
		}
	end
	it "Debe tener un método 'question' para declarar preguntas" do
		(@quiz.respond_to? :question).should == true
	end
	it "Debe tener un método 'wrong' para declarar respuestas erróneas" do
		(@quiz.respond_to? :wrong).should == true
	end
	it "Debe tener un método 'right' para declarar la respuesta correcta" do
		(@quiz.respond_to? :right).should == true
	end
	it "Debe tener un método 'run' que ejecuta el test" do
		(@quiz.respond_to? :run).should == true
	end
	it "Debe tener un método 'to_s'" do
		(@quiz.respond_to? :to_s).should == true
	end
end
