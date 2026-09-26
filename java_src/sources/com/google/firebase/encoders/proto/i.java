package com.google.firebase.encoders.proto;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.io.IOException;

/* JADX INFO: loaded from: classes11.dex */
class i implements j4.g {
    private j4.c field;
    private final f objEncoderCtx;
    private boolean encoded = false;
    private boolean skipDefault = false;

    void d(j4.c cVar, boolean z6) {
        this.encoded = false;
        this.field = cVar;
        this.skipDefault = z6;
    }

    private void c() {
        if (this.encoded) {
            throw new j4.b("Cannot encode a second value in the ValueEncoderContext");
        }
        this.encoded = true;
    }

    i(f fVar) {
        this.objEncoderCtx = fVar;
    }

    @Override // j4.g
    @NonNull
    public j4.g a(@Nullable String str) throws IOException {
        c();
        this.objEncoderCtx.o(this.field, str, this.skipDefault);
        return this;
    }

    @Override // j4.g
    @NonNull
    public j4.g b(boolean z6) throws IOException {
        c();
        this.objEncoderCtx.l(this.field, z6, this.skipDefault);
        return this;
    }
}
