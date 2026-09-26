package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import androidx.annotation.NonNull;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes8.dex */
public class b0 implements com.bumptech.glide.load.k<InputStream, Bitmap> {
    private final com.bumptech.glide.load.engine.bitmap_recycle.b byteArrayPool;
    private final p downsampler;

    static class a implements p.b {
        private final z bufferedStream;
        private final com.bumptech.glide.util.d exceptionStream;

        @Override // com.bumptech.glide.load.resource.bitmap.p.b
        public void a() {
            this.bufferedStream.d();
        }

        @Override // com.bumptech.glide.load.resource.bitmap.p.b
        public void b(com.bumptech.glide.load.engine.bitmap_recycle.d dVar, Bitmap bitmap) throws IOException {
            IOException iOExceptionD = this.exceptionStream.d();
            if (iOExceptionD != null) {
                if (bitmap == null) {
                    throw iOExceptionD;
                }
                dVar.c(bitmap);
                throw iOExceptionD;
            }
        }

        a(z zVar, com.bumptech.glide.util.d dVar) {
            this.bufferedStream = zVar;
            this.exceptionStream = dVar;
        }
    }

    @Override // com.bumptech.glide.load.k
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public com.bumptech.glide.load.engine.v<Bitmap> b(@NonNull InputStream inputStream, int i10, int i11, @NonNull com.bumptech.glide.load.i iVar) throws IOException {
        boolean z6;
        z zVar;
        if (inputStream instanceof z) {
            zVar = (z) inputStream;
            z6 = false;
        } else {
            z6 = true;
            zVar = new z(inputStream, this.byteArrayPool);
        }
        com.bumptech.glide.util.d dVarE = com.bumptech.glide.util.d.e(zVar);
        try {
            return this.downsampler.g(new com.bumptech.glide.util.h(dVarE), i10, i11, iVar, new a(zVar, dVarE));
        } finally {
            dVarE.release();
            if (z6) {
                zVar.release();
            }
        }
    }

    @Override // com.bumptech.glide.load.k
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public boolean a(@NonNull InputStream inputStream, @NonNull com.bumptech.glide.load.i iVar) {
        return this.downsampler.p(inputStream);
    }

    public b0(p pVar, com.bumptech.glide.load.engine.bitmap_recycle.b bVar) {
        this.downsampler = pVar;
        this.byteArrayPool = bVar;
    }
}
