package com.bumptech.glide.load;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.security.MessageDigest;

/* JADX INFO: loaded from: classes6.dex */
public final class h<T> {
    private static final b<Object> EMPTY_UPDATER = new a();
    private final b<T> cacheKeyUpdater;
    private final T defaultValue;
    private final String key;
    private volatile byte[] keyBytes;

    public interface b<T> {
        void a(@NonNull byte[] bArr, @NonNull T t5, @NonNull MessageDigest messageDigest);
    }

    @NonNull
    private static <T> b<T> b() {
        return (b<T>) EMPTY_UPDATER;
    }

    @Nullable
    public T c() {
        return this.defaultValue;
    }

    class a implements b<Object> {
        @Override // com.bumptech.glide.load.h.b
        public void a(@NonNull byte[] bArr, @NonNull Object obj, @NonNull MessageDigest messageDigest) {
        }

        a() {
        }
    }

    @NonNull
    public static <T> h<T> a(@NonNull String str, @Nullable T t5, @NonNull b<T> bVar) {
        return new h<>(str, t5, bVar);
    }

    @NonNull
    private byte[] d() {
        if (this.keyBytes == null) {
            this.keyBytes = this.key.getBytes(g.CHARSET);
        }
        return this.keyBytes;
    }

    @NonNull
    public static <T> h<T> e(@NonNull String str) {
        return new h<>(str, null, b());
    }

    @NonNull
    public static <T> h<T> f(@NonNull String str, @NonNull T t5) {
        return new h<>(str, t5, b());
    }

    public boolean equals(Object obj) {
        if (obj instanceof h) {
            return this.key.equals(((h) obj).key);
        }
        return false;
    }

    public void g(@NonNull T t5, @NonNull MessageDigest messageDigest) {
        this.cacheKeyUpdater.a(d(), t5, messageDigest);
    }

    public int hashCode() {
        return this.key.hashCode();
    }

    public String toString() {
        return "Option{key='" + this.key + '\'' + kotlinx.serialization.json.internal.b.END_OBJ;
    }

    private h(@NonNull String str, @Nullable T t5, @NonNull b<T> bVar) {
        this.key = com.bumptech.glide.util.j.b(str);
        this.defaultValue = t5;
        this.cacheKeyUpdater = (b) com.bumptech.glide.util.j.d(bVar);
    }
}
