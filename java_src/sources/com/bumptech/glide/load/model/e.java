package com.bumptech.glide.load.model;

import android.util.Base64;
import androidx.annotation.NonNull;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes8.dex */
public final class e<Model, Data> implements n<Model, Data> {
    private static final String BASE64_TAG = ";base64";
    private static final String DATA_SCHEME_IMAGE = "data:image";
    private final a<Data> dataDecoder;

    public interface a<Data> {
        Class<Data> a();

        void b(Data data) throws IOException;

        Data c(String str) throws IllegalArgumentException;
    }

    private static final class b<Data> implements com.bumptech.glide.load.data.d<Data> {
        private Data data;
        private final String dataUri;
        private final a<Data> reader;

        @Override // com.bumptech.glide.load.data.d
        public void cancel() {
        }

        @Override // com.bumptech.glide.load.data.d
        @NonNull
        public Class<Data> a() {
            return this.reader.a();
        }

        @Override // com.bumptech.glide.load.data.d
        public void b() {
            try {
                this.reader.b(this.data);
            } catch (IOException unused) {
            }
        }

        @Override // com.bumptech.glide.load.data.d
        @NonNull
        public com.bumptech.glide.load.a c() {
            return com.bumptech.glide.load.a.LOCAL;
        }

        /* JADX WARN: Type inference failed for: r2v3, types: [Data, java.lang.Object] */
        @Override // com.bumptech.glide.load.data.d
        public void d(@NonNull com.bumptech.glide.f fVar, @NonNull com.bumptech.glide.load.data.d.a<? super Data> aVar) {
            try {
                Data dataC = this.reader.c(this.dataUri);
                this.data = dataC;
                aVar.e(dataC);
            } catch (IllegalArgumentException e) {
                aVar.f(e);
            }
        }

        b(String str, a<Data> aVar) {
            this.dataUri = str;
            this.reader = aVar;
        }
    }

    public static final class c<Model> implements o<Model, InputStream> {
        private final a<InputStream> opener = new a();

        class a implements a<InputStream> {
            @Override // com.bumptech.glide.load.model.e.a
            public Class<InputStream> a() {
                return InputStream.class;
            }

            a() {
            }

            @Override // com.bumptech.glide.load.model.e.a
            /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
            public InputStream c(String str) {
                if (!str.startsWith(e.DATA_SCHEME_IMAGE)) {
                    throw new IllegalArgumentException("Not a valid image data URL.");
                }
                int iIndexOf = str.indexOf(44);
                if (iIndexOf == -1) {
                    throw new IllegalArgumentException("Missing comma in data URL.");
                }
                if (str.substring(0, iIndexOf).endsWith(e.BASE64_TAG)) {
                    return new ByteArrayInputStream(Base64.decode(str.substring(iIndexOf + 1), 0));
                }
                throw new IllegalArgumentException("Not a base64 image data URL.");
            }

            @Override // com.bumptech.glide.load.model.e.a
            /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
            public void b(InputStream inputStream) throws IOException {
                inputStream.close();
            }
        }

        @Override // com.bumptech.glide.load.model.o
        @NonNull
        public n<Model, InputStream> b(@NonNull r rVar) {
            return new e(this.opener);
        }
    }

    @Override // com.bumptech.glide.load.model.n
    public n.a<Data> a(@NonNull Model model, int i10, int i11, @NonNull com.bumptech.glide.load.i iVar) {
        return new n.a<>(new z0.b(model), new b(model.toString(), this.dataDecoder));
    }

    public e(a<Data> aVar) {
        this.dataDecoder = aVar;
    }

    @Override // com.bumptech.glide.load.model.n
    public boolean b(@NonNull Model model) {
        return model.toString().startsWith(DATA_SCHEME_IMAGE);
    }
}
