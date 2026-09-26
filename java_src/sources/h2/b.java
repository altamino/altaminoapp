package h2;

/* JADX INFO: loaded from: classes10.dex */
public final class b {
    private static final b DEFAULT_INSTANCE = new a().a();
    private final e storage_metrics_;

    public static final class a {
        private e storage_metrics_ = null;

        public a b(e eVar) {
            this.storage_metrics_ = eVar;
            return this;
        }

        public b a() {
            return new b(this.storage_metrics_);
        }

        a() {
        }
    }

    @com.google.firebase.encoders.proto.d(tag = 1)
    public e a() {
        return this.storage_metrics_;
    }

    public static a b() {
        return new a();
    }

    b(e eVar) {
        this.storage_metrics_ = eVar;
    }
}
