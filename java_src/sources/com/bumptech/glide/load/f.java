package com.bumptech.glide.load;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.bumptech.glide.load.resource.bitmap.z;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class f {
    private static final int MARK_READ_LIMIT = 5242880;

    class a implements g {
        final /* synthetic */ InputStream val$finalIs;

        a(InputStream inputStream) {
            this.val$finalIs = inputStream;
        }

        @Override // com.bumptech.glide.load.f.g
        public ImageHeaderParser.ImageType a(ImageHeaderParser imageHeaderParser) throws IOException {
            try {
                return imageHeaderParser.a(this.val$finalIs);
            } finally {
                this.val$finalIs.reset();
            }
        }
    }

    class b implements g {
        final /* synthetic */ ByteBuffer val$buffer;

        b(ByteBuffer byteBuffer) {
            this.val$buffer = byteBuffer;
        }

        @Override // com.bumptech.glide.load.f.g
        public ImageHeaderParser.ImageType a(ImageHeaderParser imageHeaderParser) throws IOException {
            return imageHeaderParser.c(this.val$buffer);
        }
    }

    class c implements g {
        final /* synthetic */ com.bumptech.glide.load.engine.bitmap_recycle.b val$byteArrayPool;
        final /* synthetic */ com.bumptech.glide.load.data.m val$parcelFileDescriptorRewinder;

        @Override // com.bumptech.glide.load.f.g
        public ImageHeaderParser.ImageType a(ImageHeaderParser imageHeaderParser) throws Throwable {
            z zVar = null;
            try {
                z zVar2 = new z(new FileInputStream(this.val$parcelFileDescriptorRewinder.a().getFileDescriptor()), this.val$byteArrayPool);
                try {
                    ImageHeaderParser.ImageType imageTypeA = imageHeaderParser.a(zVar2);
                    try {
                        zVar2.close();
                    } catch (IOException unused) {
                    }
                    this.val$parcelFileDescriptorRewinder.a();
                    return imageTypeA;
                } catch (Throwable th) {
                    th = th;
                    zVar = zVar2;
                    if (zVar != null) {
                        try {
                            zVar.close();
                        } catch (IOException unused2) {
                        }
                    }
                    this.val$parcelFileDescriptorRewinder.a();
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        }

        c(com.bumptech.glide.load.data.m mVar, com.bumptech.glide.load.engine.bitmap_recycle.b bVar) {
            this.val$parcelFileDescriptorRewinder = mVar;
            this.val$byteArrayPool = bVar;
        }
    }

    class d implements InterfaceC0129f {
        final /* synthetic */ com.bumptech.glide.load.engine.bitmap_recycle.b val$byteArrayPool;
        final /* synthetic */ InputStream val$finalIs;

        d(InputStream inputStream, com.bumptech.glide.load.engine.bitmap_recycle.b bVar) {
            this.val$finalIs = inputStream;
            this.val$byteArrayPool = bVar;
        }

        @Override // com.bumptech.glide.load.f.InterfaceC0129f
        public int a(ImageHeaderParser imageHeaderParser) throws IOException {
            try {
                return imageHeaderParser.b(this.val$finalIs, this.val$byteArrayPool);
            } finally {
                this.val$finalIs.reset();
            }
        }
    }

    class e implements InterfaceC0129f {
        final /* synthetic */ com.bumptech.glide.load.engine.bitmap_recycle.b val$byteArrayPool;
        final /* synthetic */ com.bumptech.glide.load.data.m val$parcelFileDescriptorRewinder;

        @Override // com.bumptech.glide.load.f.InterfaceC0129f
        public int a(ImageHeaderParser imageHeaderParser) throws Throwable {
            z zVar = null;
            try {
                z zVar2 = new z(new FileInputStream(this.val$parcelFileDescriptorRewinder.a().getFileDescriptor()), this.val$byteArrayPool);
                try {
                    int iB = imageHeaderParser.b(zVar2, this.val$byteArrayPool);
                    try {
                        zVar2.close();
                    } catch (IOException unused) {
                    }
                    this.val$parcelFileDescriptorRewinder.a();
                    return iB;
                } catch (Throwable th) {
                    th = th;
                    zVar = zVar2;
                    if (zVar != null) {
                        try {
                            zVar.close();
                        } catch (IOException unused2) {
                        }
                    }
                    this.val$parcelFileDescriptorRewinder.a();
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        }

        e(com.bumptech.glide.load.data.m mVar, com.bumptech.glide.load.engine.bitmap_recycle.b bVar) {
            this.val$parcelFileDescriptorRewinder = mVar;
            this.val$byteArrayPool = bVar;
        }
    }

    /* JADX INFO: renamed from: com.bumptech.glide.load.f$f, reason: collision with other inner class name */
    private interface InterfaceC0129f {
        int a(ImageHeaderParser imageHeaderParser) throws IOException;
    }

    private interface g {
        ImageHeaderParser.ImageType a(ImageHeaderParser imageHeaderParser) throws IOException;
    }

    @RequiresApi
    public static int a(@NonNull List<ImageHeaderParser> list, @NonNull com.bumptech.glide.load.data.m mVar, @NonNull com.bumptech.glide.load.engine.bitmap_recycle.b bVar) throws IOException {
        return c(list, new e(mVar, bVar));
    }

    public static int b(@NonNull List<ImageHeaderParser> list, @Nullable InputStream inputStream, @NonNull com.bumptech.glide.load.engine.bitmap_recycle.b bVar) throws IOException {
        if (inputStream == null) {
            return -1;
        }
        if (!inputStream.markSupported()) {
            inputStream = new z(inputStream, bVar);
        }
        inputStream.mark(MARK_READ_LIMIT);
        return c(list, new d(inputStream, bVar));
    }

    @NonNull
    @RequiresApi
    public static ImageHeaderParser.ImageType d(@NonNull List<ImageHeaderParser> list, @NonNull com.bumptech.glide.load.data.m mVar, @NonNull com.bumptech.glide.load.engine.bitmap_recycle.b bVar) throws IOException {
        return g(list, new c(mVar, bVar));
    }

    @NonNull
    public static ImageHeaderParser.ImageType e(@NonNull List<ImageHeaderParser> list, @Nullable InputStream inputStream, @NonNull com.bumptech.glide.load.engine.bitmap_recycle.b bVar) throws IOException {
        if (inputStream == null) {
            return ImageHeaderParser.ImageType.UNKNOWN;
        }
        if (!inputStream.markSupported()) {
            inputStream = new z(inputStream, bVar);
        }
        inputStream.mark(MARK_READ_LIMIT);
        return g(list, new a(inputStream));
    }

    @NonNull
    public static ImageHeaderParser.ImageType f(@NonNull List<ImageHeaderParser> list, @Nullable ByteBuffer byteBuffer) throws IOException {
        return byteBuffer == null ? ImageHeaderParser.ImageType.UNKNOWN : g(list, new b(byteBuffer));
    }

    private static int c(@NonNull List<ImageHeaderParser> list, InterfaceC0129f interfaceC0129f) throws IOException {
        int size = list.size();
        for (int i10 = 0; i10 < size; i10++) {
            int iA = interfaceC0129f.a(list.get(i10));
            if (iA != -1) {
                return iA;
            }
        }
        return -1;
    }

    @NonNull
    private static ImageHeaderParser.ImageType g(@NonNull List<ImageHeaderParser> list, g gVar) throws IOException {
        int size = list.size();
        for (int i10 = 0; i10 < size; i10++) {
            ImageHeaderParser.ImageType imageTypeA = gVar.a(list.get(i10));
            if (imageTypeA != ImageHeaderParser.ImageType.UNKNOWN) {
                return imageTypeA;
            }
        }
        return ImageHeaderParser.ImageType.UNKNOWN;
    }
}
