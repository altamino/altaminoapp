package com.bumptech.glide.load.model;

import android.os.ParcelFileDescriptor;
import android.util.Log;
import androidx.annotation.NonNull;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes8.dex */
public class f<Data> implements n<File, Data> {
    private static final String TAG = "FileLoader";
    private final d<Data> fileOpener;

    public static class a<Data> implements o<File, Data> {
        private final d<Data> opener;

        @Override // com.bumptech.glide.load.model.o
        @NonNull
        public final n<File, Data> b(@NonNull r rVar) {
            return new f(this.opener);
        }

        public a(d<Data> dVar) {
            this.opener = dVar;
        }
    }

    public static class b extends a<ParcelFileDescriptor> {

        class a implements d<ParcelFileDescriptor> {
            @Override // com.bumptech.glide.load.model.f.d
            public Class<ParcelFileDescriptor> a() {
                return ParcelFileDescriptor.class;
            }

            @Override // com.bumptech.glide.load.model.f.d
            /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
            public ParcelFileDescriptor c(File file) throws FileNotFoundException {
                return ParcelFileDescriptor.open(file, 268435456);
            }

            a() {
            }

            @Override // com.bumptech.glide.load.model.f.d
            /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
            public void b(ParcelFileDescriptor parcelFileDescriptor) throws IOException {
                parcelFileDescriptor.close();
            }
        }

        public b() {
            super(new a());
        }
    }

    private static final class c<Data> implements com.bumptech.glide.load.data.d<Data> {
        private Data data;
        private final File file;
        private final d<Data> opener;

        @Override // com.bumptech.glide.load.data.d
        public void cancel() {
        }

        @Override // com.bumptech.glide.load.data.d
        @NonNull
        public Class<Data> a() {
            return this.opener.a();
        }

        @Override // com.bumptech.glide.load.data.d
        public void b() {
            Data data = this.data;
            if (data != null) {
                try {
                    this.opener.b(data);
                } catch (IOException unused) {
                }
            }
        }

        @Override // com.bumptech.glide.load.data.d
        @NonNull
        public com.bumptech.glide.load.a c() {
            return com.bumptech.glide.load.a.LOCAL;
        }

        /* JADX WARN: Type inference failed for: r3v3, types: [Data, java.lang.Object] */
        @Override // com.bumptech.glide.load.data.d
        public void d(@NonNull com.bumptech.glide.f fVar, @NonNull com.bumptech.glide.load.data.d.a<? super Data> aVar) {
            try {
                Data dataC = this.opener.c(this.file);
                this.data = dataC;
                aVar.e(dataC);
            } catch (FileNotFoundException e) {
                if (Log.isLoggable(f.TAG, 3)) {
                    Log.d(f.TAG, "Failed to open file", e);
                }
                aVar.f(e);
            }
        }

        c(File file, d<Data> dVar) {
            this.file = file;
            this.opener = dVar;
        }
    }

    public interface d<Data> {
        Class<Data> a();

        void b(Data data) throws IOException;

        Data c(File file) throws FileNotFoundException;
    }

    public static class e extends a<InputStream> {

        class a implements d<InputStream> {
            @Override // com.bumptech.glide.load.model.f.d
            public Class<InputStream> a() {
                return InputStream.class;
            }

            @Override // com.bumptech.glide.load.model.f.d
            /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
            public InputStream c(File file) throws FileNotFoundException {
                return new FileInputStream(file);
            }

            a() {
            }

            @Override // com.bumptech.glide.load.model.f.d
            /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
            public void b(InputStream inputStream) throws IOException {
                inputStream.close();
            }
        }

        public e() {
            super(new a());
        }
    }

    @Override // com.bumptech.glide.load.model.n
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public boolean b(@NonNull File file) {
        return true;
    }

    @Override // com.bumptech.glide.load.model.n
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public n.a<Data> a(@NonNull File file, int i10, int i11, @NonNull com.bumptech.glide.load.i iVar) {
        return new n.a<>(new z0.b(file), new c(file, this.fileOpener));
    }

    public f(d<Data> dVar) {
        this.fileOpener = dVar;
    }
}
