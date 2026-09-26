package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes11.dex */
public class c implements com.bumptech.glide.load.l<Bitmap> {
    private static final String TAG = "BitmapEncoder";

    @Nullable
    private final com.bumptech.glide.load.engine.bitmap_recycle.b arrayPool;
    public static final com.bumptech.glide.load.h<Integer> COMPRESSION_QUALITY = com.bumptech.glide.load.h.f("com.bumptech.glide.load.resource.bitmap.BitmapEncoder.CompressionQuality", 90);
    public static final com.bumptech.glide.load.h<Bitmap.CompressFormat> COMPRESSION_FORMAT = com.bumptech.glide.load.h.e("com.bumptech.glide.load.resource.bitmap.BitmapEncoder.CompressionFormat");

    public c(@NonNull com.bumptech.glide.load.engine.bitmap_recycle.b bVar) {
        this.arrayPool = bVar;
    }

    @Deprecated
    public c() {
        this.arrayPool = null;
    }

    private Bitmap.CompressFormat d(Bitmap bitmap, com.bumptech.glide.load.i iVar) {
        Bitmap.CompressFormat compressFormat = (Bitmap.CompressFormat) iVar.c(COMPRESSION_FORMAT);
        if (compressFormat != null) {
            return compressFormat;
        }
        return bitmap.hasAlpha() ? Bitmap.CompressFormat.PNG : Bitmap.CompressFormat.JPEG;
    }

    @Override // com.bumptech.glide.load.l
    @NonNull
    public com.bumptech.glide.load.c b(@NonNull com.bumptech.glide.load.i iVar) {
        return com.bumptech.glide.load.c.TRANSFORMED;
    }

    @Override // com.bumptech.glide.load.d
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public boolean a(@NonNull com.bumptech.glide.load.engine.v<Bitmap> vVar, @NonNull File file, @NonNull com.bumptech.glide.load.i iVar) {
        boolean z6;
        Bitmap bitmap = vVar.get();
        Bitmap.CompressFormat compressFormatD = d(bitmap, iVar);
        a1.b.c("encode: [%dx%d] %s", Integer.valueOf(bitmap.getWidth()), Integer.valueOf(bitmap.getHeight()), compressFormatD);
        try {
            long jB = com.bumptech.glide.util.f.b();
            int iIntValue = ((Integer) iVar.c(COMPRESSION_QUALITY)).intValue();
            OutputStream cVar = null;
            try {
                try {
                    FileOutputStream fileOutputStream = new FileOutputStream(file);
                    try {
                        cVar = this.arrayPool != null ? new com.bumptech.glide.load.data.c(fileOutputStream, this.arrayPool) : fileOutputStream;
                        bitmap.compress(compressFormatD, iIntValue, cVar);
                        cVar.close();
                        try {
                            cVar.close();
                        } catch (IOException unused) {
                        }
                        z6 = true;
                    } catch (IOException e) {
                        e = e;
                        cVar = fileOutputStream;
                        if (Log.isLoggable(TAG, 3)) {
                            Log.d(TAG, "Failed to encode Bitmap", e);
                        }
                        if (cVar != null) {
                            try {
                                cVar.close();
                            } catch (IOException unused2) {
                            }
                        }
                        z6 = false;
                    } catch (Throwable th) {
                        th = th;
                        cVar = fileOutputStream;
                        if (cVar != null) {
                            try {
                                cVar.close();
                            } catch (IOException unused3) {
                            }
                        }
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (IOException e2) {
                e = e2;
            }
            if (Log.isLoggable(TAG, 2)) {
                Log.v(TAG, "Compressed with type: " + compressFormatD + " of size " + com.bumptech.glide.util.k.g(bitmap) + " in " + com.bumptech.glide.util.f.a(jB) + ", options format: " + iVar.c(COMPRESSION_FORMAT) + ", hasAlpha: " + bitmap.hasAlpha());
            }
            a1.b.d();
            return z6;
        } catch (Throwable th3) {
            a1.b.d();
            throw th3;
        }
    }
}
