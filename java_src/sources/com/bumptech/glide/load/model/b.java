package com.bumptech.glide.load.model;

import androidx.annotation.NonNull;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes8.dex */
public class b<Data> implements n<byte[], Data> {
    private final InterfaceC0132b<Data> converter;

    public static class a implements o<byte[], ByteBuffer> {

        /* JADX INFO: renamed from: com.bumptech.glide.load.model.b$a$a, reason: collision with other inner class name */
        class C0131a implements InterfaceC0132b<ByteBuffer> {
            @Override // com.bumptech.glide.load.model.b.InterfaceC0132b
            public Class<ByteBuffer> a() {
                return ByteBuffer.class;
            }

            C0131a() {
            }

            @Override // com.bumptech.glide.load.model.b.InterfaceC0132b
            /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
            public ByteBuffer b(byte[] bArr) {
                return ByteBuffer.wrap(bArr);
            }
        }

        @Override // com.bumptech.glide.load.model.o
        @NonNull
        public n<byte[], ByteBuffer> b(@NonNull r rVar) {
            return new b(new C0131a());
        }
    }

    /* JADX INFO: renamed from: com.bumptech.glide.load.model.b$b, reason: collision with other inner class name */
    public interface InterfaceC0132b<Data> {
        Class<Data> a();

        Data b(byte[] bArr);
    }

    private static class c<Data> implements com.bumptech.glide.load.data.d<Data> {
        private final InterfaceC0132b<Data> converter;
        private final byte[] model;

        @Override // com.bumptech.glide.load.data.d
        public void b() {
        }

        @Override // com.bumptech.glide.load.data.d
        public void cancel() {
        }

        @Override // com.bumptech.glide.load.data.d
        @NonNull
        public Class<Data> a() {
            return this.converter.a();
        }

        @Override // com.bumptech.glide.load.data.d
        @NonNull
        public com.bumptech.glide.load.a c() {
            return com.bumptech.glide.load.a.LOCAL;
        }

        @Override // com.bumptech.glide.load.data.d
        public void d(@NonNull com.bumptech.glide.f fVar, @NonNull com.bumptech.glide.load.data.d.a<? super Data> aVar) {
            aVar.e(this.converter.b(this.model));
        }

        c(byte[] bArr, InterfaceC0132b<Data> interfaceC0132b) {
            this.model = bArr;
            this.converter = interfaceC0132b;
        }
    }

    public static class d implements o<byte[], InputStream> {

        class a implements InterfaceC0132b<InputStream> {
            @Override // com.bumptech.glide.load.model.b.InterfaceC0132b
            public Class<InputStream> a() {
                return InputStream.class;
            }

            a() {
            }

            @Override // com.bumptech.glide.load.model.b.InterfaceC0132b
            /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
            public InputStream b(byte[] bArr) {
                return new ByteArrayInputStream(bArr);
            }
        }

        @Override // com.bumptech.glide.load.model.o
        @NonNull
        public n<byte[], InputStream> b(@NonNull r rVar) {
            return new b(new a());
        }
    }

    @Override // com.bumptech.glide.load.model.n
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public boolean b(@NonNull byte[] bArr) {
        return true;
    }

    @Override // com.bumptech.glide.load.model.n
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public n.a<Data> a(@NonNull byte[] bArr, int i10, int i11, @NonNull com.bumptech.glide.load.i iVar) {
        return new n.a<>(new z0.b(bArr), new c(bArr, this.converter));
    }

    public b(InterfaceC0132b<Data> interfaceC0132b) {
        this.converter = interfaceC0132b;
    }
}
