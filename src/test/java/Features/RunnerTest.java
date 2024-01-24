package Features;


import com.intuit.karate.junit5.Karate;

public class RunnerTest {
        @Karate.Test
        Karate testAgregarMascota()
        {
            return Karate.run("MascotaPet").tags("@prueba").karateEnv("dev").relativeTo(getClass());
        }
//        @Karate.Test
//        Karate testBuscarMascotaID()
//        {
//            return Karate.run("MascotaPet").tags("@GetId").karateEnv("dev").relativeTo(getClass());
//
//        }
//        @Karate.Test
//        Karate testModificarStatus()
//        {
//
//
//            return Karate.run("MascotaPet").tags("@Put").karateEnv("dev").relativeTo(getClass());
//
//        }
//        @Karate.Test
//        Karate testbuscarStatus()
//        {
//
//            return Karate.run("MascotaPet").tags("GetEstatus").karateEnv("dev").relativeTo(getClass());
//        }

    }


