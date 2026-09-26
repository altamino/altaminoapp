package com.bumptech.glide.load.engine.bitmap_recycle;

import android.graphics.Bitmap;
import androidx.annotation.NonNull;

/* JADX INFO: loaded from: classes11.dex */
public class e implements d {
    @Override // com.bumptech.glide.load.engine.bitmap_recycle.d
    public void a(int i10) {
    }

    @Override // com.bumptech.glide.load.engine.bitmap_recycle.d
    public void b() {
    }

    @Override // com.bumptech.glide.load.engine.bitmap_recycle.d
    public void c(Bitmap bitmap) {
        bitmap.recycle();
    }

    @Override // com.bumptech.glide.load.engine.bitmap_recycle.d
    @NonNull
    public Bitmap d(int i10, int i11, Bitmap.Config config) {
        return Bitmap.createBitmap(i10, i11, config);
    }

    @Override // com.bumptech.glide.load.engine.bitmap_recycle.d
    @NonNull
    public Bitmap e(int i10, int i11, Bitmap.Config config) {
        return d(i10, i11, config);
    }
}
