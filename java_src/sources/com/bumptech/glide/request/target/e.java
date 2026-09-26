package com.bumptech.glide.request.target;

import android.graphics.drawable.Drawable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.manager.i;

/* JADX INFO: loaded from: classes9.dex */
public interface e<R> extends i {
    public static final int SIZE_ORIGINAL = Integer.MIN_VALUE;

    @Nullable
    y0.c a();

    void b(@NonNull d dVar);

    void c(@Nullable y0.c cVar);

    void d(@Nullable Drawable drawable);

    void e(@NonNull R r, @Nullable com.bumptech.glide.request.transition.b<? super R> bVar);

    void f(@Nullable Drawable drawable);

    void g(@Nullable Drawable drawable);

    void h(@NonNull d dVar);
}
