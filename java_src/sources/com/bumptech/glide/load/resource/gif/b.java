package com.bumptech.glide.load.resource.gif;

import android.graphics.Bitmap;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes7.dex */
public final class b implements com.bumptech.glide.gifdecoder.a.InterfaceC0118a {

    @Nullable
    private final com.bumptech.glide.load.engine.bitmap_recycle.b arrayPool;
    private final com.bumptech.glide.load.engine.bitmap_recycle.d bitmapPool;

    public b(com.bumptech.glide.load.engine.bitmap_recycle.d dVar) {
        this(dVar, null);
    }

    public b(com.bumptech.glide.load.engine.bitmap_recycle.d dVar, @Nullable com.bumptech.glide.load.engine.bitmap_recycle.b bVar) {
        this.bitmapPool = dVar;
        this.arrayPool = bVar;
    }

    @Override // com.bumptech.glide.gifdecoder.a.InterfaceC0118a
    @NonNull
    public byte[] a(int i10) {
        com.bumptech.glide.load.engine.bitmap_recycle.b bVar = this.arrayPool;
        return bVar == null ? new byte[i10] : (byte[]) bVar.c(i10, byte[].class);
    }

    @Override // com.bumptech.glide.gifdecoder.a.InterfaceC0118a
    @NonNull
    public Bitmap b(int i10, int i11, @NonNull Bitmap.Config config) {
        return this.bitmapPool.e(i10, i11, config);
    }

    @Override // com.bumptech.glide.gifdecoder.a.InterfaceC0118a
    public void c(@NonNull Bitmap bitmap) {
        this.bitmapPool.c(bitmap);
    }

    @Override // com.bumptech.glide.gifdecoder.a.InterfaceC0118a
    @NonNull
    public int[] d(int i10) {
        com.bumptech.glide.load.engine.bitmap_recycle.b bVar = this.arrayPool;
        return bVar == null ? new int[i10] : (int[]) bVar.c(i10, int[].class);
    }

    @Override // com.bumptech.glide.gifdecoder.a.InterfaceC0118a
    public void e(@NonNull byte[] bArr) {
        com.bumptech.glide.load.engine.bitmap_recycle.b bVar = this.arrayPool;
        if (bVar == null) {
            return;
        }
        bVar.e(bArr);
    }

    @Override // com.bumptech.glide.gifdecoder.a.InterfaceC0118a
    public void f(@NonNull int[] iArr) {
        com.bumptech.glide.load.engine.bitmap_recycle.b bVar = this.arrayPool;
        if (bVar == null) {
            return;
        }
        bVar.e(iArr);
    }
}
