package h2;

/* JADX INFO: loaded from: classes9.dex */
public final class c {
    private static final c DEFAULT_INSTANCE = new a().a();
    private final long events_dropped_count_;
    private final b reason_;

    public static final class a {
        private long events_dropped_count_ = 0;
        private b reason_ = b.REASON_UNKNOWN;

        public a b(long j6) {
            this.events_dropped_count_ = j6;
            return this;
        }

        public a c(b bVar) {
            this.reason_ = bVar;
            return this;
        }

        public c a() {
            return new c(this.events_dropped_count_, this.reason_);
        }

        a() {
        }
    }

    @com.google.firebase.encoders.proto.d(tag = 1)
    public long a() {
        return this.events_dropped_count_;
    }

    @com.google.firebase.encoders.proto.d(tag = 3)
    public b b() {
        return this.reason_;
    }

    public enum b implements com.google.firebase.encoders.proto.c {
        REASON_UNKNOWN(0),
        MESSAGE_TOO_OLD(1),
        CACHE_FULL(2),
        PAYLOAD_TOO_BIG(3),
        MAX_RETRIES_REACHED(4),
        INVALID_PAYLOD(5),
        SERVER_ERROR(6);

        private final int number_;

        @Override // com.google.firebase.encoders.proto.c
        public int getNumber() {
            return this.number_;
        }

        b(int i10) {
            this.number_ = i10;
        }
    }

    public static a c() {
        return new a();
    }

    c(long j6, b bVar) {
        this.events_dropped_count_ = j6;
        this.reason_ = bVar;
    }
}
