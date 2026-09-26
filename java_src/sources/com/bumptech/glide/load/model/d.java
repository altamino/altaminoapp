package com.bumptech.glide.load.model;

import android.util.Log;
import androidx.annotation.NonNull;
import java.io.File;
import java.io.IOException;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes6.dex */
public class d implements n<File, ByteBuffer> {
    private static final String TAG = "ByteBufferFileLoader";

    private static final class a implements com.bumptech.glide.load.data.d<ByteBuffer> {
        private final File file;

        @Override // com.bumptech.glide.load.data.d
        @NonNull
        public Class<ByteBuffer> a() {
            return ByteBuffer.class;
        }

        @Override // com.bumptech.glide.load.data.d
        public void b() {
        }

        @Override // com.bumptech.glide.load.data.d
        public void cancel() {
        }

        @Override // com.bumptech.glide.load.data.d
        @NonNull
        public com.bumptech.glide.load.a c() {
            return com.bumptech.glide.load.a.LOCAL;
        }

        @Override // com.bumptech.glide.load.data.d
        public void d(@NonNull com.bumptech.glide.f fVar, @NonNull com.bumptech.glide.load.data.d.a<? super ByteBuffer> aVar) {
            try {
                aVar.e(com.bumptech.glide.util.a.a(this.file));
            } catch (IOException e) {
                if (Log.isLoggable(d.TAG, 3)) {
                    Log.d(d.TAG, "Failed to obtain ByteBuffer for file", e);
                }
                aVar.f(e);
            }
        }

        a(File file) {
            this.file = file;
        }
    }

    public static class b implements o<File, ByteBuffer> {
        @Override // com.bumptech.glide.load.model.o
        @NonNull
        public n<File, ByteBuffer> b(@NonNull r rVar) {
            return new d();
        }
    }

    @Override // com.bumptech.glide.load.model.n
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public boolean b(@NonNull File file) {
        return true;
    }

    @Override // com.bumptech.glide.load.model.n
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public n.a<ByteBuffer> a(@NonNull File file, int i10, int i11, @NonNull com.bumptech.glide.load.i iVar) {
        return new n.a<>(new z0.b(file), new a(file));
    }
}
