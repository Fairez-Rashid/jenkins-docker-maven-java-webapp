package com.rst.helloworld.tests;

import io.github.bonigarcia.wdm.WebDriverManager;
import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.chrome.ChromeOptions;
import org.openqa.selenium.support.ui.WebDriverWait;
import org.testng.annotations.AfterTest;
import org.testng.annotations.BeforeTest;
import org.testng.annotations.Test;


import static org.testng.Assert.assertTrue;

public class ScriptTest {

    WebDriver driver;

    @BeforeTest
    public void setup(){
        WebDriverManager.chromedriver().setup();
        ChromeOptions options = new ChromeOptions();
        options.addArguments("--headless");
        options.addArguments("--no-sandbox");

        driver = new ChromeDriver(options);
        driver.manage().window().maximize();
        driver.get("http://54.255.87.1:8080/simple/#");

    }
    @Test
    public void validateWebsite() {
        WebElement helloWorld = driver.findElement(By.xpath("//h1[contains(text(),'Hello World')]"));
        assertTrue(helloWorld.isDisplayed());
        System.out.print("Hello world validated /");

    }
    @Test
    public void validateWelcomeText() {
        WebElement welcomeText =  driver.findElement(By.xpath("//h2[contains(text(),'Welcome to Linux, Singapore, CI CD PIPELINE PROJECT')]"));
        assertTrue(welcomeText.isDisplayed());
        System.out.print("Welcome text validated /");
    }

    @Test
    public void validateImage() throws InterruptedException {
        WebElement image = driver.findElement(By.xpath("//img"));
        assertTrue(image.isDisplayed());
        System.out.print("Image validated /");


    }


    @AfterTest
    public void tearDown(){
        driver.quit();
    }
}
