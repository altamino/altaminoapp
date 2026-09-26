package com.squareup.picasso;

import android.graphics.Bitmap;

/* JADX INFO: loaded from: classes9.dex */
public interface Transformation {
    String key();

    Bitmap transform(Bitmap bitmap);
}
