package com.bumptech.glide.load.engine.bitmap_recycle;

/* JADX INFO: loaded from: classes11.dex */
public final class h implements a<int[]> {
    private static final String TAG = "IntegerArrayPool";

    @Override // com.bumptech.glide.load.engine.bitmap_recycle.a
    public int b() {
        return 4;
    }

    @Override // com.bumptech.glide.load.engine.bitmap_recycle.a
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public int a(int[] iArr) {
        return iArr.length;
    }

    @Override // com.bumptech.glide.load.engine.bitmap_recycle.a
    public String getTag() {
        return TAG;
    }

    @Override // com.bumptech.glide.load.engine.bitmap_recycle.a
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public int[] newArray(int i10) {
        return new int[i10];
    }
}
