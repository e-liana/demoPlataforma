package org.example.demoplataforma;

import com.codeborne.selenide.Configuration;
import com.codeborne.selenide.Selenide;
import com.codeborne.selenide.logevents.SelenideLogger;
import io.github.bonigarcia.wdm.WebDriverManager;
import io.qameta.allure.selenide.AllureSelenide;
import org.junit.jupiter.api.*;

import static com.codeborne.selenide.Condition.*;
import static com.codeborne.selenide.Selenide.*;

public class MainPageTest {
    MainPage mainPage = new MainPage();

    @BeforeAll
    public static void setUpAll() {
        WebDriverManager.chromedriver().setup(); // Configura automáticamente el driver
        Configuration.browser = "chrome";
        Configuration.browserSize = "1280x800";
        SelenideLogger.addListener("allure", new AllureSelenide());
    }

    @BeforeEach
    public void setUp() {
 //       open("https://www.jetbrains.com/");
        open("https://pruebas.fisapay.com.co/#!");
    }

    @Test
    public void search() {
        mainPage.searchButton.shouldBe(visible).click();

        $("[data-test='search-input']").shouldBe(visible).sendKeys("Selenium");
        $("button[data-test='full-search-button']").shouldBe(enabled).click();

        $("input[data-test='search-input']").shouldHave(attribute("value", "Selenium"));
    }

    @Test
    public void toolsMenu() {
        mainPage.toolsMenu.scrollTo().shouldBe(visible).click();

        $("div[data-test='main-submenu']").shouldBe(visible);
    }

    @Test
    public void navigationToAllTools() {
        mainPage.seeDeveloperToolsButton.scrollTo().shouldBe(visible).click();
        mainPage.findYourToolsButton.scrollTo().shouldBe(visible).click();

        $("#products-page").shouldBe(visible);

        Assertions.assertEquals("All Developer Tools and Products by JetBrains", Selenide.title());
    }
}