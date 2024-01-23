package Features;


import com.intuit.karate.junit5.Karate;

public class RunnerTest {
        @Karate.Test
        Karate testRealizarConversacion()
        {
            return Karate.run("MascotaPet").tags("@Post").karateEnv("dev").relativeTo(getClass());
            //return Karate.run("MascotaPet").tags("@GetId").karateEnv("dev").relativeTo(getClass());
            //return Karate.run("MascotaPet").tags("@Put").karateEnv("dev").relativeTo(getClass());
            //return Karate.run("MascotaPet").tags("GetEstatus").karateEnv("dev").relativeTo(getClass());
        }
    }


