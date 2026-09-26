package com.bumptech.glide.load.resource.transcode;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.load.engine.v;
import com.bumptech.glide.load.i;

/* JADX INFO: loaded from: classes8.dex */
public class g<Z> implements e<Z, Z> {
    private static final g<?> UNIT_TRANSCODER = new g<>();

    public static <Z> e<Z, Z> b() {
        return UNIT_TRANSCODER;
    }

    @Override // com.bumptech.glide.load.resource.transcode.e
    @Nullable
    public v<Z> a(@NonNull v<Z> vVar, @NonNull i iVar) {
        return vVar;
    }
}
