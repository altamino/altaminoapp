package com.bumptech.glide.load.engine.cache;

import android.util.Log;
import java.io.File;
import java.io.IOException;

/* JADX INFO: loaded from: classes10.dex */
public class e implements a {
    private static final int APP_VERSION = 1;
    private static final String TAG = "DiskLruCacheWrapper";
    private static final int VALUE_COUNT = 1;
    private static e wrapper;
    private final File directory;
    private com.bumptech.glide.disklrucache.b diskLruCache;
    private final long maxSize;
    private final c writeLocker = new c();
    private final j safeKeyGenerator = new j();

    private synchronized com.bumptech.glide.disklrucache.b d() throws IOException {
        try {
            if (this.diskLruCache == null) {
                this.diskLruCache = com.bumptech.glide.disklrucache.b.Q(this.directory, 1, 1, this.maxSize);
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.diskLruCache;
    }

    public static a c(File file, long j6) {
        return new e(file, j6);
    }

    @Override // com.bumptech.glide.load.engine.cache.a
    public void a(com.bumptech.glide.load.g gVar, a.b bVar) {
        String strB = this.safeKeyGenerator.b(gVar);
        this.writeLocker.a(strB);
        try {
            if (Log.isLoggable(TAG, 2)) {
                Log.v(TAG, "Put: Obtained: " + strB + " for for Key: " + gVar);
            }
            try {
                com.bumptech.glide.disklrucache.b bVarD = d();
                if (bVarD.L(strB) != null) {
                    this.writeLocker.b(strB);
                    return;
                }
                com.bumptech.glide.disklrucache.b.c cVarP = bVarD.p(strB);
                if (cVarP == null) {
                    throw new IllegalStateException("Had two simultaneous puts for: " + strB);
                }
                try {
                    if (bVar.a(cVarP.f(0))) {
                        cVarP.e();
                    }
                    cVarP.b();
                    this.writeLocker.b(strB);
                } catch (Throwable th) {
                    cVarP.b();
                    throw th;
                }
            } catch (IOException e) {
                if (Log.isLoggable(TAG, 5)) {
                    Log.w(TAG, "Unable to put to disk cache", e);
                }
            }
        } catch (Throwable th2) {
            this.writeLocker.b(strB);
            throw th2;
        }
    }

    @Override // com.bumptech.glide.load.engine.cache.a
    public File b(com.bumptech.glide.load.g gVar) {
        String strB = this.safeKeyGenerator.b(gVar);
        if (Log.isLoggable(TAG, 2)) {
            Log.v(TAG, "Get: Obtained: " + strB + " for for Key: " + gVar);
        }
        try {
            com.bumptech.glide.disklrucache.b.e eVarL = d().L(strB);
            if (eVarL != null) {
                return eVarL.a(0);
            }
            return null;
        } catch (IOException e) {
            if (!Log.isLoggable(TAG, 5)) {
                return null;
            }
            Log.w(TAG, "Unable to get from disk cache", e);
            return null;
        }
    }

    @Deprecated
    protected e(File file, long j6) {
        this.directory = file;
        this.maxSize = j6;
    }
}
