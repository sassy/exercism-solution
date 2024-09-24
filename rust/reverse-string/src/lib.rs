pub fn reverse(input: &str) -> String {
    let mut ret = String::new();
    for c in input.chars() {
        ret.insert(0,c);
    }
    return ret;
}
