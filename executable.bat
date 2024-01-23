@echo off

REM Check and install required Node modules locally
SET required_modules="express" "cors" "nodemon" "path" "twig"

FOR %%i IN (%required_modules%) DO (
  IF NOT EXIST "node_modules\%%i" (
    echo Installing %%i locally...
    npm install %%i
  ) ELSE (
    echo %%i is already installed locally.
  )
)

REM Run your Node.js script
npx nodemon app.js
