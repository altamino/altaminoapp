package com.bumptech.glide.request.target;

import android.graphics.drawable.Drawable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.util.k;

/* JADX INFO: loaded from: classes9.dex */
public abstract class a<T> implements e<T> {
    private final int height;

    @Nullable
    private y0.c request;
    private final int width;

    public a() {
        this(Integer.MIN_VALUE, Integer.MIN_VALUE);
    }

    @Override // com.bumptech.glide.request.target.e
    @Nullable
    public final y0.c a() {
        return this.request;
    }

    @Override // com.bumptech.glide.request.target.e
    public final void b(@NonNull d dVar) {
    }

    @Override // com.bumptech.glide.request.target.e
    public final void c(@Nullable y0.c cVar) {
        this.request = cVar;
    }

    @Override // com.bumptech.glide.request.target.e
    public void f(@Nullable Drawable drawable) {
    }

    @Override // com.bumptech.glide.request.target.e
    public void g(@Nullable Drawable drawable) {
    }

    @Override // com.bumptech.glide.manager.i
    public void onDestroy() {
    }

    @Override // com.bumptech.glide.manager.i
    public void onStart() {
    }

    @Override // com.bumptech.glide.manager.i
    public void onStop() {
    }

    public a(int i10, int i11) {
        if (k.r(i10, i11)) {
            this.width = i10;
            this.height = i11;
            return;
        }
        throw new IllegalArgumentException("Width and height must both be > 0 or Target#SIZE_ORIGINAL, but given width: " + i10 + " and height: " + i11);
    }

    @Override // com.bumptech.glide.request.target.e
    public final void h(@NonNull d dVar) {
        dVar.d(this.width, this.height);
    }
}
