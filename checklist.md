## Checklist
You might want to use an agent to go through this list.

- [ ] Replace the UUID in Project.toml with a freshly-generated one (`using UUIDs; uuid4()`)
- [ ] Grep for "BioJuliaTemplate" and "Your" and change the places they appear.
- [ ] Generate a Documenter deploy key and secret, and upload them to your GitHub repo.
      See the docs of Documenter.jl to see how.
- [ ] Visit codecov.io and get a codecov secret token. Add to your GitHub repo under secrets
- [ ] In GitHub, go to Settings -> Pages -> set source to Deploy from a branch, set branch to gh-pages.
- [ ] Adjust the minimal Julia version in Project.toml, and in in .github/workflows/UnitTesting.yml.
- [ ] Update the README.md
- [ ] Add code to src/, tests to test/, and docs to docs/
- [ ] Verify docs build locally and all doctests pass
- [ ] Make a PR to trigger CI, and iteratively add tests until you get good coverage
- [ ] Optionally use JET.jl to verify your workload is type stable.
