package com.bumptech.glide.load.resource.drawable;

import android.graphics.drawable.Drawable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.load.engine.v;

/* JADX INFO: loaded from: classes5.dex */
final class c extends b<Drawable> {
    @Override // com.bumptech.glide.load.engine.v
    public void a() {
    }

    @Nullable
    static v<Drawable> d(@Nullable Drawable drawable) {
        if (drawable != null) {
            return new c(drawable);
        }
        return null;
    }

    @Override // com.bumptech.glide.load.engine.v
    @NonNull
    public Class<Drawable> b() {
        return this.drawable.getClass();
    }

    @Override // com.bumptech.glide.load.engine.v
    public int getSize() {
        return Math.max(1, this.drawable.getIntrinsicWidth() * this.drawable.getIntrinsicHeight() * 4);
    }

    private c(Drawable drawable) {
        super(drawable);
    }
}
