package runners;

import com.intuit.karate.junit5.Karate;

public class RunnerTest {
    @Karate.Test
    Karate TestApi() {
        return Karate.run("classpath:features/TestApi.feature")
                .tags("@TestPedidoPizza");
    }
}
