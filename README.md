import com.intuit.karate.junit5.Karate;
public class karateRunner { 
//tipos de runner en nuestra ejecucion        
@Karate.Test        
Karate testSample() {                
return Karate.run("MascotaPet").tags("@prueba").karateEnv("dev").relativeTo(getClass());
} }
