void outer(String name, String id) {
    String inner() {
        return "Agent B.$name";
    }
    print("Hello ${inner()} your id is $id");
}
