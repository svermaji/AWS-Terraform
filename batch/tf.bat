set param=%1

if "%param%"=="" (
    set param=p
)

if "%param%"=="i" (
    terraform init
)

if "%param%"=="p" (
    terraform plan -no-color -refresh=true -out=infra.tfplan
)

if "%param%"=="a" (
    terraform apply -refresh=true -no-color -auto-approve "infra.tfplan"
)

if "%param%"=="d" (
    terraform destroy -auto-approve -no-color
)
