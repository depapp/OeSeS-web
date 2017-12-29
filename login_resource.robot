*** Settings ***
Library                 Selenium2Library

*** Variables ***
${browser}              gc
${url}                  http://ossstaging.cartenz.co.id/auth/login

*** Keywords ***
Open the web
    Open Browser        ${url}          ${browser}