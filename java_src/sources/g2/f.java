package g2;

import androidx.annotation.Nullable;
import com.google.auto.value.AutoValue;

/* JADX INFO: loaded from: classes8.dex */
@AutoValue
public abstract class f {

    @AutoValue.Builder
    public static abstract class a {
        public abstract f a();

        public abstract a b(Iterable<com.google.android.datatransport.runtime.i> iterable);

        public abstract a c(@Nullable byte[] bArr);
    }

    public abstract Iterable<com.google.android.datatransport.runtime.i> b();

    @Nullable
    public abstract byte[] c();

    public static a a() {
        return new g2.a.b();
    }
}
