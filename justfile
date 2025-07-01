# Default when only using "just"
default:
    @echo "*** No recipe chosen. Dumping justfile."
    @just --dump

dev:
    @echo "*** Starting!"
    npm run dev
    @echo "*** Dev Done!"

build:
    @echo "*** Building!"
    npm run build
    @echo "*** Built!"

# Deploy site
deploy: format push
    @echo "*** Deploying done!"

# Push to git and deploy to nfsn
push:
    @echo "*** Staging and commiting changes and pushing to remote"
    git add .
    -git commit -m "$(date '+%Y-%m-%d %H:%M')"
    -git push origin main
    @echo "*** Pushing complete!"

# Format code
format: 
    @echo "*** Formatting code..."
    @prettier --write .
    @echo "*** Formatting complete!"