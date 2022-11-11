package stepdefs;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;

import io.cucumber.java.en.And;
import io.cucumber.java.en.Then;
import org.junit.Assert;

public class HomeStepDef {
	WebDriver driver= Hooks.driver;
	
	
	@And("I click add to cart on {string}")
	public void i_click_add_to_cart_on(String string) {
	    // Write code here that turns the phrase above into concrete actions
		WebElement product = driver.findElement(By.xpath("//div/button[@name=\"add-to-cart-sauce-labs-bike-light\"]"));
		product.click();
		
		
		
	}

	@Then("My basket item number should be {int}")
	public void my_basket_item_number_should_be(Integer int1) {
	    // Write code here that turns the phrase above into concrete actions
		WebElement item = driver.findElement(By.xpath("//div/a/span[@class=\"shopping_cart_badge\"]"));
		String actitem = item.getText();
		Assert.assertEquals(actitem, "1");
	}
	
	
	
	
}
