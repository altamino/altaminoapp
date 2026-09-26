package com.bumptech.glide.load.resource.gif;

import android.content.Context;
import android.graphics.Bitmap;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.bumptech.glide.load.ImageHeaderParser;
import com.bumptech.glide.load.k;
import com.bumptech.glide.load.resource.l;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.List;
import java.util.Queue;

/* JADX INFO: loaded from: classes7.dex */
public class a implements k<ByteBuffer, c> {
    private static final C0134a GIF_DECODER_FACTORY = new C0134a();
    private static final b PARSER_POOL = new b();
    private static final String TAG = "BufferGifDecoder";
    private final Context context;
    private final C0134a gifDecoderFactory;
    private final b parserPool;
    private final List<ImageHeaderParser> parsers;
    private final com.bumptech.glide.load.resource.gif.b provider;

    /* JADX INFO: renamed from: com.bumptech.glide.load.resource.gif.a$a, reason: collision with other inner class name */
    @VisibleForTesting
    static class C0134a {
        com.bumptech.glide.gifdecoder.a a(com.bumptech.glide.gifdecoder.a.InterfaceC0118a interfaceC0118a, com.bumptech.glide.gifdecoder.c cVar, ByteBuffer byteBuffer, int i10) {
            return new com.bumptech.glide.gifdecoder.e(interfaceC0118a, cVar, byteBuffer, i10);
        }

        C0134a() {
        }
    }

    public a(Context context) {
        this(context, com.bumptech.glide.b.c(context).j().g(), com.bumptech.glide.b.c(context).f(), com.bumptech.glide.b.c(context).e());
    }

    @VisibleForTesting
    static class b {
        private final Queue<com.bumptech.glide.gifdecoder.d> pool = com.bumptech.glide.util.k.e(0);

        synchronized com.bumptech.glide.gifdecoder.d a(ByteBuffer byteBuffer) {
            com.bumptech.glide.gifdecoder.d dVarPoll;
            try {
                dVarPoll = this.pool.poll();
                if (dVarPoll == null) {
                    dVarPoll = new com.bumptech.glide.gifdecoder.d();
                }
            } catch (Throwable th) {
                throw th;
            }
            return dVarPoll.p(byteBuffer);
        }

        synchronized void b(com.bumptech.glide.gifdecoder.d dVar) {
            dVar.a();
            this.pool.offer(dVar);
        }

        b() {
        }
    }

    @Nullable
    private e c(ByteBuffer byteBuffer, int i10, int i11, com.bumptech.glide.gifdecoder.d dVar, com.bumptech.glide.load.i iVar) {
        long jB = com.bumptech.glide.util.f.b();
        try {
            com.bumptech.glide.gifdecoder.c cVarC = dVar.c();
            if (cVarC.b() > 0 && cVarC.c() == 0) {
                Bitmap.Config config = iVar.c(i.DECODE_FORMAT) == com.bumptech.glide.load.b.PREFER_RGB_565 ? Bitmap.Config.RGB_565 : Bitmap.Config.ARGB_8888;
                com.bumptech.glide.gifdecoder.a aVarA = this.gifDecoderFactory.a(this.provider, cVarC, byteBuffer, e(cVarC, i10, i11));
                aVarA.a(config);
                aVarA.f();
                Bitmap bitmapE = aVarA.e();
                if (bitmapE == null) {
                    return null;
                }
                return new e(new c(this.context, aVarA, l.c(), i10, i11, bitmapE));
            }
            return null;
        } finally {
            if (Log.isLoggable(TAG, 2)) {
                Log.v(TAG, "Decoded GIF from stream in " + com.bumptech.glide.util.f.a(jB));
            }
        }
    }

    @Override // com.bumptech.glide.load.k
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public e b(@NonNull ByteBuffer byteBuffer, int i10, int i11, @NonNull com.bumptech.glide.load.i iVar) {
        com.bumptech.glide.gifdecoder.d dVarA = this.parserPool.a(byteBuffer);
        try {
            return c(byteBuffer, i10, i11, dVarA, iVar);
        } finally {
            this.parserPool.b(dVarA);
        }
    }

    @Override // com.bumptech.glide.load.k
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public boolean a(@NonNull ByteBuffer byteBuffer, @NonNull com.bumptech.glide.load.i iVar) throws IOException {
        return !((Boolean) iVar.c(i.DISABLE_ANIMATION)).booleanValue() && com.bumptech.glide.load.f.f(this.parsers, byteBuffer) == ImageHeaderParser.ImageType.GIF;
    }

    private static int e(com.bumptech.glide.gifdecoder.c cVar, int i10, int i11) {
        int iHighestOneBit;
        int iMin = Math.min(cVar.a() / i11, cVar.d() / i10);
        if (iMin == 0) {
            iHighestOneBit = 0;
        } else {
            iHighestOneBit = Integer.highestOneBit(iMin);
        }
        int iMax = Math.max(1, iHighestOneBit);
        if (Log.isLoggable(TAG, 2) && iMax > 1) {
            Log.v(TAG, "Downsampling GIF, sampleSize: " + iMax + ", target dimens: [" + i10 + "x" + i11 + "], actual dimens: [" + cVar.d() + "x" + cVar.a() + "]");
        }
        return iMax;
    }

    public a(Context context, List<ImageHeaderParser> list, com.bumptech.glide.load.engine.bitmap_recycle.d dVar, com.bumptech.glide.load.engine.bitmap_recycle.b bVar) {
        this(context, list, dVar, bVar, PARSER_POOL, GIF_DECODER_FACTORY);
    }

    @VisibleForTesting
    a(Context context, List<ImageHeaderParser> list, com.bumptech.glide.load.engine.bitmap_recycle.d dVar, com.bumptech.glide.load.engine.bitmap_recycle.b bVar, b bVar2, C0134a c0134a) {
        this.context = context.getApplicationContext();
        this.parsers = list;
        this.gifDecoderFactory = c0134a;
        this.provider = new com.bumptech.glide.load.resource.gif.b(dVar, bVar);
        this.parserPool = bVar2;
    }
}
