package y0;

/* JADX INFO: loaded from: classes6.dex */
public interface d {
    boolean a();

    void b(c cVar);

    boolean c(c cVar);

    boolean d(c cVar);

    void g(c cVar);

    d getRoot();

    boolean i(c cVar);

    public enum a {
        RUNNING(false),
        PAUSED(false),
        CLEARED(false),
        SUCCESS(true),
        FAILED(true);

        private final boolean isComplete;

        boolean a() {
            return this.isComplete;
        }

        a(boolean z6) {
            this.isComplete = z6;
        }
    }
}
