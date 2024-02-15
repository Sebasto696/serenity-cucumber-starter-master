package starter;

import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;
import org.junit.runner.RunWith;

@RunWith(Cucumber.class)
@CucumberOptions(
        features = "src/test/resources/features",
        glue = "starter.stepdefinitions",
        plugin = {"pretty", "html:target/cucumber-reports"}
)
public class RunCucumberTests {
    // Se podrían agregar configuraciones especificas
}
