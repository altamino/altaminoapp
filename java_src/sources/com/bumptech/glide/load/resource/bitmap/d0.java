package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import androidx.annotation.NonNull;

/* JADX INFO: loaded from: classes4.dex */
public final class d0 implements com.bumptech.glide.load.k<Bitmap, Bitmap> {

    private static final class a implements com.bumptech.glide.load.engine.v<Bitmap> {
        private final Bitmap bitmap;

        @Override // com.bumptech.glide.load.engine.v
        public void a() {
        }

        @Override // com.bumptech.glide.load.engine.v
        @NonNull
        public Class<Bitmap> b() {
            return Bitmap.class;
        }

        @Override // com.bumptech.glide.load.engine.v
        @NonNull
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public Bitmap get() {
            return this.bitmap;
        }

        @Override // com.bumptech.glide.load.engine.v
        public int getSize() {
            return com.bumptech.glide.util.k.g(this.bitmap);
        }

        a(@NonNull Bitmap bitmap) {
            this.bitmap = bitmap;
        }
    }

    @Override // com.bumptech.glide.load.k
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public boolean a(@NonNull Bitmap bitmap, @NonNull com.bumptech.glide.load.i iVar) {
        return true;
    }

    @Override // com.bumptech.glide.load.k
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public com.bumptech.glide.load.engine.v<Bitmap> b(@NonNull Bitmap bitmap, int i10, int i11, @NonNull com.bumptech.glide.load.i iVar) {
        return new a(bitmap);
    }
}
