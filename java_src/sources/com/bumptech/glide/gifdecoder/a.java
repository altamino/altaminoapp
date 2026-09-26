package com.bumptech.glide.gifdecoder;

import android.graphics.Bitmap;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes8.dex */
public interface a {
    public static final int STATUS_FORMAT_ERROR = 1;
    public static final int STATUS_OK = 0;
    public static final int STATUS_OPEN_ERROR = 2;
    public static final int STATUS_PARTIAL_DECODE = 3;
    public static final int TOTAL_ITERATION_COUNT_FOREVER = 0;

    /* JADX INFO: renamed from: com.bumptech.glide.gifdecoder.a$a, reason: collision with other inner class name */
    public interface InterfaceC0118a {
        @NonNull
        byte[] a(int i10);

        @NonNull
        Bitmap b(int i10, int i11, @NonNull Bitmap.Config config);

        void c(@NonNull Bitmap bitmap);

        @NonNull
        int[] d(int i10);

        void e(@NonNull byte[] bArr);

        void f(@NonNull int[] iArr);
    }

    void a(@NonNull Bitmap.Config config);

    void b();

    int c();

    void clear();

    int d();

    @Nullable
    Bitmap e();

    void f();

    int g();

    @NonNull
    ByteBuffer getData();

    int h();
}
