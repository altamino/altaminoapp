package com.google.android.datatransport.runtime;

import android.util.Base64;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import com.google.auto.value.AutoValue;

/* JADX INFO: loaded from: classes3.dex */
@AutoValue
public abstract class p {

    @AutoValue.Builder
    public static abstract class a {
        public abstract p a();

        public abstract a b(String str);

        public abstract a c(@Nullable byte[] bArr);

        @RestrictTo
        public abstract a d(f2.d dVar);
    }

    public abstract String b();

    @Nullable
    public abstract byte[] c();

    @RestrictTo
    public abstract f2.d d();

    public final String toString() {
        Object[] objArr = new Object[3];
        objArr[0] = b();
        objArr[1] = d();
        objArr[2] = c() == null ? "" : Base64.encodeToString(c(), 2);
        return String.format("TransportContext(%s, %s, %s)", objArr);
    }

    public static a a() {
        return new d.b().d(f2.d.DEFAULT);
    }

    public boolean e() {
        if (c() != null) {
            return true;
        }
        return false;
    }

    @RestrictTo
    public p f(f2.d dVar) {
        return a().b(b()).d(dVar).c(c()).a();
    }
}
