package h2;

/* JADX INFO: loaded from: classes5.dex */
public final class f {
    private static final f DEFAULT_INSTANCE = new a().a();
    private final long end_ms_;
    private final long start_ms_;

    public static final class a {
        private long start_ms_ = 0;
        private long end_ms_ = 0;

        public a b(long j6) {
            this.end_ms_ = j6;
            return this;
        }

        public a c(long j6) {
            this.start_ms_ = j6;
            return this;
        }

        public f a() {
            return new f(this.start_ms_, this.end_ms_);
        }

        a() {
        }
    }

    @com.google.firebase.encoders.proto.d(tag = 2)
    public long a() {
        return this.end_ms_;
    }

    @com.google.firebase.encoders.proto.d(tag = 1)
    public long b() {
        return this.start_ms_;
    }

    public static a c() {
        return new a();
    }

    f(long j6, long j10) {
        this.start_ms_ = j6;
        this.end_ms_ = j10;
    }
}
