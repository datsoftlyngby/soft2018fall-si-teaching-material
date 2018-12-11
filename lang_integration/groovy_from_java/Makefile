build:
	groovyc Script.groovy
	javac -classpath .:$(GROOVY_HOME)/embeddable/groovy-all-2.4.12.jar Main.java

run: build
	java -classpath .:$(GROOVY_HOME)/embeddable/groovy-all-2.4.12.jar Main

clean:
	rm *.class
