package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.ParcelFileDescriptor;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.bumptech.glide.load.ImageHeaderParser;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;

/* JADX INFO: loaded from: classes10.dex */
interface v {

    public static final class a implements v {
        private final com.bumptech.glide.load.engine.bitmap_recycle.b byteArrayPool;
        private final com.bumptech.glide.load.data.k dataRewinder;
        private final List<ImageHeaderParser> parsers;

        @Override // com.bumptech.glide.load.resource.bitmap.v
        public void a() {
            this.dataRewinder.c();
        }

        @Override // com.bumptech.glide.load.resource.bitmap.v
        public int b() throws IOException {
            return com.bumptech.glide.load.f.b(this.parsers, this.dataRewinder.a(), this.byteArrayPool);
        }

        @Override // com.bumptech.glide.load.resource.bitmap.v
        @Nullable
        public Bitmap c(BitmapFactory.Options options) throws IOException {
            return BitmapFactory.decodeStream(this.dataRewinder.a(), null, options);
        }

        @Override // com.bumptech.glide.load.resource.bitmap.v
        public ImageHeaderParser.ImageType d() throws IOException {
            return com.bumptech.glide.load.f.e(this.parsers, this.dataRewinder.a(), this.byteArrayPool);
        }

        a(InputStream inputStream, List<ImageHeaderParser> list, com.bumptech.glide.load.engine.bitmap_recycle.b bVar) {
            this.byteArrayPool = (com.bumptech.glide.load.engine.bitmap_recycle.b) com.bumptech.glide.util.j.d(bVar);
            this.parsers = (List) com.bumptech.glide.util.j.d(list);
            this.dataRewinder = new com.bumptech.glide.load.data.k(inputStream, bVar);
        }
    }

    @RequiresApi
    public static final class b implements v {
        private final com.bumptech.glide.load.engine.bitmap_recycle.b byteArrayPool;
        private final com.bumptech.glide.load.data.m dataRewinder;
        private final List<ImageHeaderParser> parsers;

        @Override // com.bumptech.glide.load.resource.bitmap.v
        public void a() {
        }

        @Override // com.bumptech.glide.load.resource.bitmap.v
        public int b() throws IOException {
            return com.bumptech.glide.load.f.a(this.parsers, this.dataRewinder, this.byteArrayPool);
        }

        @Override // com.bumptech.glide.load.resource.bitmap.v
        @Nullable
        public Bitmap c(BitmapFactory.Options options) throws IOException {
            return BitmapFactory.decodeFileDescriptor(this.dataRewinder.a().getFileDescriptor(), null, options);
        }

        @Override // com.bumptech.glide.load.resource.bitmap.v
        public ImageHeaderParser.ImageType d() throws IOException {
            return com.bumptech.glide.load.f.d(this.parsers, this.dataRewinder, this.byteArrayPool);
        }

        b(ParcelFileDescriptor parcelFileDescriptor, List<ImageHeaderParser> list, com.bumptech.glide.load.engine.bitmap_recycle.b bVar) {
            this.byteArrayPool = (com.bumptech.glide.load.engine.bitmap_recycle.b) com.bumptech.glide.util.j.d(bVar);
            this.parsers = (List) com.bumptech.glide.util.j.d(list);
            this.dataRewinder = new com.bumptech.glide.load.data.m(parcelFileDescriptor);
        }
    }

    void a();

    int b() throws IOException;

    @Nullable
    Bitmap c(BitmapFactory.Options options) throws IOException;

    ImageHeaderParser.ImageType d() throws IOException;
}
