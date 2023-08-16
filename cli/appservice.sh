#!/bin/bash

RG_NAME=rg-test
LOCATION=japaneast

APP_PLAN_NAME=asp-test
ASP_SKU=B1

APP_NAME=as-test

az appservice plan create \
  --name $APP_PLAN_NAME --resource-group $RG_NAME \
  --sku $ASP_SKU --is-linux

az webapp create --resource-group $RG_NAME \
  --plan $APP_PLAN_NAME --name $APP_NAME \
  --runtime "python|3.11"