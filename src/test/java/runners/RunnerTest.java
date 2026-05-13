package runners;

import com.intuit.karate.junit5.Karate;

public class RunnerTest {
    @Karate.Test
    Karate TestApi() {
        // Establece el directorio de salida de los reportes de Karate
        System.setProperty("karate.output.dir", "reports/");

        return Karate.run("classpath:features/TestApi.feature")
                .tags("@TestUsuario");
    }

}
