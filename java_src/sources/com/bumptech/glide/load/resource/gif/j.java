package com.bumptech.glide.load.resource.gif;

import android.util.Log;
import androidx.annotation.NonNull;
import com.bumptech.glide.load.ImageHeaderParser;
import com.bumptech.glide.load.engine.v;
import com.bumptech.glide.load.k;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.List;

/* JADX INFO: loaded from: classes7.dex */
public class j implements k<InputStream, c> {
    private static final String TAG = "StreamGifDecoder";
    private final com.bumptech.glide.load.engine.bitmap_recycle.b byteArrayPool;
    private final k<ByteBuffer, c> byteBufferDecoder;
    private final List<ImageHeaderParser> parsers;

    private static byte[] e(InputStream inputStream) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(16384);
        try {
            byte[] bArr = new byte[16384];
            while (true) {
                int i10 = inputStream.read(bArr);
                if (i10 == -1) {
                    byteArrayOutputStream.flush();
                    return byteArrayOutputStream.toByteArray();
                }
                byteArrayOutputStream.write(bArr, 0, i10);
            }
        } catch (IOException e) {
            if (!Log.isLoggable(TAG, 5)) {
                return null;
            }
            Log.w(TAG, "Error reading data from stream", e);
            return null;
        }
    }

    @Override // com.bumptech.glide.load.k
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public boolean a(@NonNull InputStream inputStream, @NonNull com.bumptech.glide.load.i iVar) throws IOException {
        return !((Boolean) iVar.c(i.DISABLE_ANIMATION)).booleanValue() && com.bumptech.glide.load.f.e(this.parsers, inputStream, this.byteArrayPool) == ImageHeaderParser.ImageType.GIF;
    }

    public j(List<ImageHeaderParser> list, k<ByteBuffer, c> kVar, com.bumptech.glide.load.engine.bitmap_recycle.b bVar) {
        this.parsers = list;
        this.byteBufferDecoder = kVar;
        this.byteArrayPool = bVar;
    }

    @Override // com.bumptech.glide.load.k
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public v<c> b(@NonNull InputStream inputStream, int i10, int i11, @NonNull com.bumptech.glide.load.i iVar) throws IOException {
        byte[] bArrE = e(inputStream);
        if (bArrE == null) {
            return null;
        }
        return this.byteBufferDecoder.b(ByteBuffer.wrap(bArrE), i10, i11, iVar);
    }
}
