package com.bumptech.glide.load.engine.cache;

import android.annotation.SuppressLint;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.load.engine.v;

/* JADX INFO: loaded from: classes10.dex */
public class g extends com.bumptech.glide.util.g<com.bumptech.glide.load.g, v<?>> implements h {
    private h.a listener;

    @Override // com.bumptech.glide.load.engine.cache.h
    public void f(@NonNull h.a aVar) {
        this.listener = aVar;
    }

    @Override // com.bumptech.glide.load.engine.cache.h
    @SuppressLint({"InlinedApi"})
    public void a(int i10) {
        if (i10 >= 40) {
            b();
        } else if (i10 >= 20 || i10 == 15) {
            m(d() / 2);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bumptech.glide.util.g
    /* JADX INFO: renamed from: n, reason: merged with bridge method [inline-methods] */
    public int i(@Nullable v<?> vVar) {
        return vVar == null ? super.i(null) : vVar.getSize();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bumptech.glide.util.g
    /* JADX INFO: renamed from: o, reason: merged with bridge method [inline-methods] */
    public void j(@NonNull com.bumptech.glide.load.g gVar, @Nullable v<?> vVar) {
        h.a aVar = this.listener;
        if (aVar == null || vVar == null) {
            return;
        }
        aVar.d(vVar);
    }

    public g(long j6) {
        super(j6);
    }

    @Override // com.bumptech.glide.load.engine.cache.h
    @Nullable
    public /* bridge */ /* synthetic */ v c(@NonNull com.bumptech.glide.load.g gVar, @Nullable v vVar) {
        return (v) super.k(gVar, vVar);
    }

    @Override // com.bumptech.glide.load.engine.cache.h
    @Nullable
    public /* bridge */ /* synthetic */ v e(@NonNull com.bumptech.glide.load.g gVar) {
        return (v) super.l(gVar);
    }
}
