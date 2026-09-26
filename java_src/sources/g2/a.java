package g2;

import androidx.annotation.Nullable;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
final class a extends f {
    private final Iterable<com.google.android.datatransport.runtime.i> events;
    private final byte[] extras;

    static final class b extends f.a {
        private Iterable<com.google.android.datatransport.runtime.i> events;
        private byte[] extras;

        @Override // g2.f.a
        public f.a c(@Nullable byte[] bArr) {
            this.extras = bArr;
            return this;
        }

        @Override // g2.f.a
        public f a() {
            String str = "";
            if (this.events == null) {
                str = " events";
            }
            if (str.isEmpty()) {
                return new a(this.events, this.extras);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override // g2.f.a
        public f.a b(Iterable<com.google.android.datatransport.runtime.i> iterable) {
            if (iterable == null) {
                throw new NullPointerException("Null events");
            }
            this.events = iterable;
            return this;
        }

        b() {
        }
    }

    @Override // g2.f
    public Iterable<com.google.android.datatransport.runtime.i> b() {
        return this.events;
    }

    @Override // g2.f
    @Nullable
    public byte[] c() {
        return this.extras;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof f)) {
            return false;
        }
        f fVar = (f) obj;
        if (this.events.equals(fVar.b())) {
            if (Arrays.equals(this.extras, fVar instanceof a ? ((a) fVar).extras : fVar.c())) {
                return true;
            }
        }
        return false;
    }

    private a(Iterable<com.google.android.datatransport.runtime.i> iterable, @Nullable byte[] bArr) {
        this.events = iterable;
        this.extras = bArr;
    }

    public int hashCode() {
        return ((this.events.hashCode() ^ 1000003) * 1000003) ^ Arrays.hashCode(this.extras);
    }

    public String toString() {
        return "BackendRequest{events=" + this.events + ", extras=" + Arrays.toString(this.extras) + "}";
    }
}
