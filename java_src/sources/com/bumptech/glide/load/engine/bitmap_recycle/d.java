package com.bumptech.glide.load.engine.bitmap_recycle;

import android.graphics.Bitmap;
import androidx.annotation.NonNull;

/* JADX INFO: loaded from: classes11.dex */
public interface d {
    void a(int i10);

    void b();

    void c(Bitmap bitmap);

    @NonNull
    Bitmap d(int i10, int i11, Bitmap.Config config);

    @NonNull
    Bitmap e(int i10, int i11, Bitmap.Config config);
}
