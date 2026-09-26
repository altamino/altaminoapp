package com.bumptech.glide.load.engine;

import androidx.annotation.NonNull;
import java.io.File;

/* JADX INFO: loaded from: classes6.dex */
class e<DataType> implements com.bumptech.glide.load.engine.cache.a.b {
    private final DataType data;
    private final com.bumptech.glide.load.d<DataType> encoder;
    private final com.bumptech.glide.load.i options;

    @Override // com.bumptech.glide.load.engine.cache.a.b
    public boolean a(@NonNull File file) {
        return this.encoder.a(this.data, file, this.options);
    }

    e(com.bumptech.glide.load.d<DataType> dVar, DataType datatype, com.bumptech.glide.load.i iVar) {
        this.encoder = dVar;
        this.data = datatype;
        this.options = iVar;
    }
}
