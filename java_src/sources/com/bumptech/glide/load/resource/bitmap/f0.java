package com.bumptech.glide.load.resource.bitmap;

import android.annotation.TargetApi;
import android.content.res.AssetFileDescriptor;
import android.graphics.Bitmap;
import android.media.MediaDataSource;
import android.media.MediaMetadataRetriever;
import android.os.Build;
import android.os.ParcelFileDescriptor;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.VisibleForTesting;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.security.MessageDigest;

/* JADX INFO: loaded from: classes.dex */
public class f0<T> implements com.bumptech.glide.load.k<T, Bitmap> {
    public static final long DEFAULT_FRAME = -1;

    @VisibleForTesting
    static final int DEFAULT_FRAME_OPTION = 2;
    private static final String TAG = "VideoDecoder";
    private final com.bumptech.glide.load.engine.bitmap_recycle.d bitmapPool;
    private final e factory;
    private final f<T> initializer;
    public static final com.bumptech.glide.load.h<Long> TARGET_FRAME = com.bumptech.glide.load.h.a("com.bumptech.glide.load.resource.bitmap.VideoBitmapDecode.TargetFrame", -1L, new a());
    public static final com.bumptech.glide.load.h<Integer> FRAME_OPTION = com.bumptech.glide.load.h.a("com.bumptech.glide.load.resource.bitmap.VideoBitmapDecode.FrameOption", 2, new b());
    private static final e DEFAULT_FACTORY = new e();

    class b implements com.bumptech.glide.load.h.b<Integer> {
        private final ByteBuffer buffer = ByteBuffer.allocate(4);

        @Override // com.bumptech.glide.load.h.b
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(@NonNull byte[] bArr, @NonNull Integer num, @NonNull MessageDigest messageDigest) {
            if (num == null) {
                return;
            }
            messageDigest.update(bArr);
            synchronized (this.buffer) {
                this.buffer.position(0);
                messageDigest.update(this.buffer.putInt(num.intValue()).array());
            }
        }

        b() {
        }
    }

    private static final class c implements f<AssetFileDescriptor> {
        private c() {
        }

        /* synthetic */ c(a aVar) {
            this();
        }

        @Override // com.bumptech.glide.load.resource.bitmap.f0.f
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(MediaMetadataRetriever mediaMetadataRetriever, AssetFileDescriptor assetFileDescriptor) {
            mediaMetadataRetriever.setDataSource(assetFileDescriptor.getFileDescriptor(), assetFileDescriptor.getStartOffset(), assetFileDescriptor.getLength());
        }
    }

    @RequiresApi
    static final class d implements f<ByteBuffer> {

        class a extends MediaDataSource {
            final /* synthetic */ ByteBuffer val$data;

            @Override // java.io.Closeable, java.lang.AutoCloseable
            public void close() {
            }

            a(ByteBuffer byteBuffer) {
                this.val$data = byteBuffer;
            }

            @Override // android.media.MediaDataSource
            public long getSize() {
                return this.val$data.limit();
            }

            @Override // android.media.MediaDataSource
            public int readAt(long j6, byte[] bArr, int i10, int i11) {
                if (j6 >= this.val$data.limit()) {
                    return -1;
                }
                this.val$data.position((int) j6);
                int iMin = Math.min(i11, this.val$data.remaining());
                this.val$data.get(bArr, i10, iMin);
                return iMin;
            }
        }

        @Override // com.bumptech.glide.load.resource.bitmap.f0.f
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(MediaMetadataRetriever mediaMetadataRetriever, ByteBuffer byteBuffer) {
            mediaMetadataRetriever.setDataSource(new a(byteBuffer));
        }

        d() {
        }
    }

    @VisibleForTesting
    static class e {
        public MediaMetadataRetriever a() {
            return new MediaMetadataRetriever();
        }

        e() {
        }
    }

    @VisibleForTesting
    interface f<T> {
        void a(MediaMetadataRetriever mediaMetadataRetriever, T t5);
    }

    f0(com.bumptech.glide.load.engine.bitmap_recycle.d dVar, f<T> fVar) {
        this(dVar, fVar, DEFAULT_FACTORY);
    }

    @Override // com.bumptech.glide.load.k
    public boolean a(@NonNull T t5, @NonNull com.bumptech.glide.load.i iVar) {
        return true;
    }

    class a implements com.bumptech.glide.load.h.b<Long> {
        private final ByteBuffer buffer = ByteBuffer.allocate(8);

        a() {
        }

        @Override // com.bumptech.glide.load.h.b
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(@NonNull byte[] bArr, @NonNull Long l, @NonNull MessageDigest messageDigest) {
            messageDigest.update(bArr);
            synchronized (this.buffer) {
                this.buffer.position(0);
                messageDigest.update(this.buffer.putLong(l.longValue()).array());
            }
        }
    }

    static final class g implements f<ParcelFileDescriptor> {
        g() {
        }

        @Override // com.bumptech.glide.load.resource.bitmap.f0.f
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(MediaMetadataRetriever mediaMetadataRetriever, ParcelFileDescriptor parcelFileDescriptor) {
            mediaMetadataRetriever.setDataSource(parcelFileDescriptor.getFileDescriptor());
        }
    }

    @VisibleForTesting
    f0(com.bumptech.glide.load.engine.bitmap_recycle.d dVar, f<T> fVar, e eVar) {
        this.bitmapPool = dVar;
        this.initializer = fVar;
        this.factory = eVar;
    }

    public static com.bumptech.glide.load.k<AssetFileDescriptor, Bitmap> c(com.bumptech.glide.load.engine.bitmap_recycle.d dVar) {
        return new f0(dVar, new c(null));
    }

    @RequiresApi
    public static com.bumptech.glide.load.k<ByteBuffer, Bitmap> d(com.bumptech.glide.load.engine.bitmap_recycle.d dVar) {
        return new f0(dVar, new d());
    }

    @Nullable
    private static Bitmap e(MediaMetadataRetriever mediaMetadataRetriever, long j6, int i10, int i11, int i12, l lVar) {
        Bitmap bitmapG = (Build.VERSION.SDK_INT < 27 || i11 == Integer.MIN_VALUE || i12 == Integer.MIN_VALUE || lVar == l.NONE) ? null : g(mediaMetadataRetriever, j6, i10, i11, i12, lVar);
        return bitmapG == null ? f(mediaMetadataRetriever, j6, i10) : bitmapG;
    }

    @TargetApi(27)
    private static Bitmap g(MediaMetadataRetriever mediaMetadataRetriever, long j6, int i10, int i11, int i12, l lVar) {
        try {
            int i13 = Integer.parseInt(mediaMetadataRetriever.extractMetadata(18));
            int i14 = Integer.parseInt(mediaMetadataRetriever.extractMetadata(19));
            int i15 = Integer.parseInt(mediaMetadataRetriever.extractMetadata(24));
            if (i15 == 90 || i15 == 270) {
                i14 = i13;
                i13 = i14;
            }
            float fB = lVar.b(i13, i14, i11, i12);
            return mediaMetadataRetriever.getScaledFrameAtTime(j6, i10, Math.round(i13 * fB), Math.round(fB * i14));
        } catch (Throwable th) {
            if (!Log.isLoggable(TAG, 3)) {
                return null;
            }
            Log.d(TAG, "Exception trying to decode frame on oreo+", th);
            return null;
        }
    }

    public static com.bumptech.glide.load.k<ParcelFileDescriptor, Bitmap> h(com.bumptech.glide.load.engine.bitmap_recycle.d dVar) {
        return new f0(dVar, new g());
    }

    @Override // com.bumptech.glide.load.k
    public com.bumptech.glide.load.engine.v<Bitmap> b(@NonNull T t5, int i10, int i11, @NonNull com.bumptech.glide.load.i iVar) throws IOException {
        long jLongValue = ((Long) iVar.c(TARGET_FRAME)).longValue();
        if (jLongValue < 0 && jLongValue != -1) {
            throw new IllegalArgumentException("Requested frame must be non-negative, or DEFAULT_FRAME, given: " + jLongValue);
        }
        Integer num = (Integer) iVar.c(FRAME_OPTION);
        if (num == null) {
            num = 2;
        }
        l lVar = (l) iVar.c(l.OPTION);
        if (lVar == null) {
            lVar = l.DEFAULT;
        }
        l lVar2 = lVar;
        MediaMetadataRetriever mediaMetadataRetrieverA = this.factory.a();
        try {
            try {
                this.initializer.a(mediaMetadataRetrieverA, t5);
                Bitmap bitmapE = e(mediaMetadataRetrieverA, jLongValue, num.intValue(), i10, i11, lVar2);
                mediaMetadataRetrieverA.release();
                return com.bumptech.glide.load.resource.bitmap.f.d(bitmapE, this.bitmapPool);
            } catch (RuntimeException e2) {
                throw new IOException(e2);
            }
        } catch (Throwable th) {
            mediaMetadataRetrieverA.release();
            throw th;
        }
    }

    private static Bitmap f(MediaMetadataRetriever mediaMetadataRetriever, long j6, int i10) {
        return mediaMetadataRetriever.getFrameAtTime(j6, i10);
    }
}
