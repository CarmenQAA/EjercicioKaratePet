import com.intuit.karate.junit5.Karate;
public class karateRunner { 
//tipos de runner en nuestra ejecucion        
@Karate.Test        
Karate testSample() {                
return Karate.run("MascotaPet").tags("@prueba").karateEnv("dev").relativeTo(getClass());
} }

/*Estructura automatización.
Test:
Features: 
1. Archivo .feature para definir escenarios
2. Archivo RunnerTest para definir la ejecucion de casos
---Desde el terminal ejecutar los siguientes comandos
** mvn clean
** mvn install*/
