package com.bumptech.glide.load.engine.bitmap_recycle;

import android.graphics.Bitmap;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes11.dex */
interface k {
    String a(int i10, int i11, Bitmap.Config config);

    int b(Bitmap bitmap);

    void c(Bitmap bitmap);

    @Nullable
    Bitmap d(int i10, int i11, Bitmap.Config config);

    String e(Bitmap bitmap);

    @Nullable
    Bitmap f();
}
