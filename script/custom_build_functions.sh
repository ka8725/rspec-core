function run_cukes {
  if [ -d features ]; then
    echo "${PWD}/bin/cucumber"

    # Prepare RUBYOPT for scenarios that are shelling out to ruby,
    # and PATH for those that are using `rspec` or `rake`.
    RUBYOPT="${RUBYOPT} -I${PWD}/../bundle -rbundler/setup" \
       PATH="${PWD}/bin:$PATH" \
       bin/cucumber --strict
  fi
}
