conda env export > environment.yml


if [[ "$OSTYPE" == "darwin"* ]]; then
  sed -i '' -e 's/name:.*xtrct-env/name: xtrct-env/' environment.yml
  sed -i '' -e 's/prefix:.*xtrct-env/prefix: .\/xtrct-env/' environment.yml
else
  sed -i 's/name:.*xtrct-env/name: xtrct-env/' environment.yml
  sed -i 's/prefix:.*xtrct-env/prefix: .\/xtrct-env/' environment.yml
fi
