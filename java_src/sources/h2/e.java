package h2;

/* JADX INFO: loaded from: classes4.dex */
public final class e {
    private static final e DEFAULT_INSTANCE = new a().a();
    private final long current_cache_size_bytes_;
    private final long max_cache_size_bytes_;

    public static final class a {
        private long current_cache_size_bytes_ = 0;
        private long max_cache_size_bytes_ = 0;

        public a b(long j6) {
            this.current_cache_size_bytes_ = j6;
            return this;
        }

        public a c(long j6) {
            this.max_cache_size_bytes_ = j6;
            return this;
        }

        public e a() {
            return new e(this.current_cache_size_bytes_, this.max_cache_size_bytes_);
        }

        a() {
        }
    }

    @com.google.firebase.encoders.proto.d(tag = 1)
    public long a() {
        return this.current_cache_size_bytes_;
    }

    @com.google.firebase.encoders.proto.d(tag = 2)
    public long b() {
        return this.max_cache_size_bytes_;
    }

    public static a c() {
        return new a();
    }

    e(long j6, long j10) {
        this.current_cache_size_bytes_ = j6;
        this.max_cache_size_bytes_ = j10;
    }
}
