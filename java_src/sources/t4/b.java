package t4;

import com.google.firebase.encoders.proto.d;
import com.google.firebase.messaging.i0;

/* JADX INFO: loaded from: classes11.dex */
public final class b {
    private static final b DEFAULT_INSTANCE = new a().a();
    private final t4.a messaging_client_event_;

    public static final class a {
        private t4.a messaging_client_event_ = null;

        public a b(t4.a aVar) {
            this.messaging_client_event_ = aVar;
            return this;
        }

        public b a() {
            return new b(this.messaging_client_event_);
        }

        a() {
        }
    }

    @d(tag = 1)
    public t4.a a() {
        return this.messaging_client_event_;
    }

    public static a b() {
        return new a();
    }

    b(t4.a aVar) {
        this.messaging_client_event_ = aVar;
    }

    public byte[] c() {
        return i0.a(this);
    }
}
