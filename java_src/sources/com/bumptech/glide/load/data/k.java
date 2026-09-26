package com.bumptech.glide.load.data;

import androidx.annotation.NonNull;
import com.bumptech.glide.load.resource.bitmap.z;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes.dex */
public final class k implements e<InputStream> {
    private static final int MARK_READ_LIMIT = 5242880;
    private final z bufferedStream;

    public static final class a implements e.a<InputStream> {
        private final com.bumptech.glide.load.engine.bitmap_recycle.b byteArrayPool;

        @Override // com.bumptech.glide.load.data.e.a
        @NonNull
        public Class<InputStream> a() {
            return InputStream.class;
        }

        @Override // com.bumptech.glide.load.data.e.a
        @NonNull
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public e<InputStream> b(InputStream inputStream) {
            return new k(inputStream, this.byteArrayPool);
        }

        public a(com.bumptech.glide.load.engine.bitmap_recycle.b bVar) {
            this.byteArrayPool = bVar;
        }
    }

    @Override // com.bumptech.glide.load.data.e
    public void b() {
        this.bufferedStream.release();
    }

    public void c() {
        this.bufferedStream.d();
    }

    @Override // com.bumptech.glide.load.data.e
    @NonNull
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public InputStream a() throws IOException {
        this.bufferedStream.reset();
        return this.bufferedStream;
    }

    public k(InputStream inputStream, com.bumptech.glide.load.engine.bitmap_recycle.b bVar) {
        z zVar = new z(inputStream, bVar);
        this.bufferedStream = zVar;
        zVar.mark(MARK_READ_LIMIT);
    }
}
