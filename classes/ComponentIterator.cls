public interface ComponentIterator {

    void first();
    void next();
    boolean isDone();
    Component getCurrent();

}
