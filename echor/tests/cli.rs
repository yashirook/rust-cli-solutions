use assert_cmd::Command;
use predicates::prelude::*;

#[test]
fn dies_no_args() {
    let mut cmd = Command::cargo_bin("echor").unwrap();
    cmd.assert()
        .failure()
        .stderr(predicates::str::contains("USAGE"));
}

#[test]
fn run() {
    let mut cmd = Command::cargo_bin("echor").unwrap();
    cmd.arg("hello world").assert().success();
}
