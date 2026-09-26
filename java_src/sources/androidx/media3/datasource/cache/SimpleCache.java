package androidx.media3.datasource.cache;

import android.os.ConditionVariable;
import androidx.annotation.Nullable;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.database.DatabaseProvider;
import java.io.File;
import java.io.IOException;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.NavigableSet;
import java.util.Random;
import java.util.TreeSet;

/* JADX INFO: loaded from: classes3.dex */
@UnstableApi
public final class SimpleCache implements Cache {
    private static final int SUBDIRECTORY_COUNT = 10;
    private static final String TAG = "SimpleCache";
    private static final String UID_FILE_SUFFIX = ".uid";
    private static final HashSet<File> lockedCacheDirs = new HashSet<>();
    private final File cacheDir;
    private final CachedContentIndex contentIndex;
    private final CacheEvictor evictor;

    @Nullable
    private final CacheFileMetadataIndex fileIndex;
    private Cache.CacheException initializationException;
    private final HashMap<String, ArrayList<Cache.Listener>> listeners;
    private final Random random;
    private boolean released;
    private long totalSpace;
    private final boolean touchCacheSpans;
    private long uid;

    @Deprecated
    public SimpleCache(File file, CacheEvictor cacheEvictor) {
        this(file, cacheEvictor, null, null, false, true);
    }

    private static long s(File[] fileArr) {
        int length = fileArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            File file = fileArr[i10];
            String name = file.getName();
            if (name.endsWith(UID_FILE_SUFFIX)) {
                try {
                    return x(name);
                } catch (NumberFormatException unused) {
                    Log.c(TAG, "Malformed UID file: " + file);
                    file.delete();
                }
            }
        }
        return -1L;
    }

    @Override // androidx.media3.datasource.cache.Cache
    public synchronized void a(CacheSpan cacheSpan) {
        Assertions.g(!this.released);
        y(cacheSpan);
    }

    @Override // androidx.media3.datasource.cache.Cache
    public synchronized NavigableSet<CacheSpan> b(String str, Cache.Listener listener) {
        try {
            Assertions.g(!this.released);
            Assertions.e(str);
            Assertions.e(listener);
            ArrayList<Cache.Listener> arrayList = this.listeners.get(str);
            if (arrayList == null) {
                arrayList = new ArrayList<>();
                this.listeners.put(str, arrayList);
            }
            arrayList.add(listener);
        } catch (Throwable th) {
            throw th;
        }
        return getCachedSpans(str);
    }

    @Override // androidx.media3.datasource.cache.Cache
    public synchronized CacheSpan c(String str, long j6, long j10) throws InterruptedException, Cache.CacheException {
        CacheSpan cacheSpanF;
        Assertions.g(!this.released);
        m();
        while (true) {
            cacheSpanF = f(str, j6, j10);
            if (cacheSpanF == null) {
                wait();
            }
        }
        return cacheSpanF;
    }

    @Override // androidx.media3.datasource.cache.Cache
    public synchronized void d(String str) {
        Assertions.g(!this.released);
        Iterator<CacheSpan> it = getCachedSpans(str).iterator();
        while (it.hasNext()) {
            y(it.next());
        }
    }

    @Override // androidx.media3.datasource.cache.Cache
    public synchronized long e(String str, long j6, long j10) {
        long j11;
        long j12 = j10 == -1 ? Long.MAX_VALUE : j6 + j10;
        long j13 = j12 < 0 ? Long.MAX_VALUE : j12;
        long j14 = j6;
        j11 = 0;
        while (j14 < j13) {
            long cachedLength = getCachedLength(str, j14, j13 - j14);
            if (cachedLength > 0) {
                j11 += cachedLength;
            } else {
                cachedLength = -cachedLength;
            }
            j14 += cachedLength;
        }
        return j11;
    }

    @Override // androidx.media3.datasource.cache.Cache
    @Nullable
    public synchronized CacheSpan f(String str, long j6, long j10) throws Cache.CacheException {
        Assertions.g(!this.released);
        m();
        SimpleCacheSpan simpleCacheSpanP = p(str, j6, j10);
        if (simpleCacheSpanP.isCached) {
            return A(str, simpleCacheSpanP);
        }
        if (this.contentIndex.m(str).j(j6, simpleCacheSpanP.length)) {
            return simpleCacheSpanP;
        }
        return null;
    }

    @Override // androidx.media3.datasource.cache.Cache
    public synchronized void g(CacheSpan cacheSpan) {
        Assertions.g(!this.released);
        CachedContent cachedContent = (CachedContent) Assertions.e(this.contentIndex.g(cacheSpan.key));
        cachedContent.m(cacheSpan.position);
        this.contentIndex.p(cachedContent.key);
        notifyAll();
    }

    @Override // androidx.media3.datasource.cache.Cache
    public synchronized long getCacheSpace() {
        Assertions.g(!this.released);
        return this.totalSpace;
    }

    @Override // androidx.media3.datasource.cache.Cache
    public synchronized long getCachedLength(String str, long j6, long j10) {
        CachedContent cachedContentG;
        Assertions.g(!this.released);
        if (j10 == -1) {
            j10 = Long.MAX_VALUE;
        }
        cachedContentG = this.contentIndex.g(str);
        return cachedContentG != null ? cachedContentG.c(j6, j10) : -j10;
    }

    @Override // androidx.media3.datasource.cache.Cache
    public synchronized NavigableSet<CacheSpan> getCachedSpans(String str) {
        CachedContent cachedContentG;
        try {
            Assertions.g(!this.released);
            cachedContentG = this.contentIndex.g(str);
        } catch (Throwable th) {
            throw th;
        }
        return (cachedContentG == null || cachedContentG.g()) ? new TreeSet() : new TreeSet((Collection) cachedContentG.f());
    }

    @Override // androidx.media3.datasource.cache.Cache
    public synchronized ContentMetadata getContentMetadata(String str) {
        Assertions.g(!this.released);
        return this.contentIndex.j(str);
    }

    @Override // androidx.media3.datasource.cache.Cache
    public synchronized void h(File file, long j6) throws Cache.CacheException {
        Assertions.g(!this.released);
        if (file.exists()) {
            if (j6 == 0) {
                file.delete();
                return;
            }
            SimpleCacheSpan simpleCacheSpan = (SimpleCacheSpan) Assertions.e(SimpleCacheSpan.f(file, j6, this.contentIndex));
            CachedContent cachedContent = (CachedContent) Assertions.e(this.contentIndex.g(simpleCacheSpan.key));
            Assertions.g(cachedContent.h(simpleCacheSpan.position, simpleCacheSpan.length));
            long jA = c.a(cachedContent.d());
            if (jA != -1) {
                Assertions.g(simpleCacheSpan.position + simpleCacheSpan.length <= jA);
            }
            if (this.fileIndex == null) {
                l(simpleCacheSpan);
                this.contentIndex.s();
                notifyAll();
                return;
            }
            try {
                this.fileIndex.h(file.getName(), simpleCacheSpan.length, simpleCacheSpan.lastTouchTimestamp);
                l(simpleCacheSpan);
                try {
                    this.contentIndex.s();
                    notifyAll();
                    return;
                } catch (IOException e) {
                    throw new Cache.CacheException(e);
                }
            } catch (IOException e2) {
                throw new Cache.CacheException(e2);
            }
            throw th;
        }
    }

    @Override // androidx.media3.datasource.cache.Cache
    public synchronized void i(String str, ContentMetadataMutations contentMetadataMutations) throws Cache.CacheException {
        Assertions.g(!this.released);
        m();
        this.contentIndex.e(str, contentMetadataMutations);
        try {
            this.contentIndex.s();
        } catch (IOException e) {
            throw new Cache.CacheException(e);
        }
    }

    @Override // androidx.media3.datasource.cache.Cache
    public synchronized boolean isCached(String str, long j6, long j10) {
        boolean z6;
        z6 = false;
        Assertions.g(!this.released);
        CachedContent cachedContentG = this.contentIndex.g(str);
        if (cachedContentG != null && cachedContentG.c(j6, j10) >= j10) {
            z6 = true;
        }
        return z6;
    }

    public synchronized void m() throws Cache.CacheException {
        Cache.CacheException cacheException = this.initializationException;
        if (cacheException != null) {
            throw cacheException;
        }
    }

    @Override // androidx.media3.datasource.cache.Cache
    public synchronized void release() {
        if (this.released) {
            return;
        }
        this.listeners.clear();
        z();
        try {
            try {
                this.contentIndex.s();
                B(this.cacheDir);
            } catch (IOException e) {
                Log.d(TAG, "Storing index file failed", e);
                B(this.cacheDir);
            }
            this.released = true;
        } catch (Throwable th) {
            B(this.cacheDir);
            this.released = true;
            throw th;
        }
    }

    @Override // androidx.media3.datasource.cache.Cache
    public synchronized File startFile(String str, long j6, long j10) throws Cache.CacheException {
        CachedContent cachedContentG;
        File file;
        try {
            Assertions.g(!this.released);
            m();
            cachedContentG = this.contentIndex.g(str);
            Assertions.e(cachedContentG);
            Assertions.g(cachedContentG.h(j6, j10));
            if (!this.cacheDir.exists()) {
                n(this.cacheDir);
                z();
            }
            this.evictor.b(this, str, j6, j10);
            file = new File(this.cacheDir, Integer.toString(this.random.nextInt(10)));
            if (!file.exists()) {
                n(file);
            }
        } catch (Throwable th) {
            throw th;
        }
        return SimpleCacheSpan.j(file, cachedContentG.id, j6, System.currentTimeMillis());
    }

    public SimpleCache(File file, CacheEvictor cacheEvictor, DatabaseProvider databaseProvider) {
        this(file, cacheEvictor, databaseProvider, null, false, false);
    }

    private SimpleCacheSpan A(String str, SimpleCacheSpan simpleCacheSpan) {
        boolean z6;
        if (!this.touchCacheSpans) {
            return simpleCacheSpan;
        }
        String name = ((File) Assertions.e(simpleCacheSpan.file)).getName();
        long j6 = simpleCacheSpan.length;
        long jCurrentTimeMillis = System.currentTimeMillis();
        CacheFileMetadataIndex cacheFileMetadataIndex = this.fileIndex;
        if (cacheFileMetadataIndex != null) {
            try {
                cacheFileMetadataIndex.h(name, j6, jCurrentTimeMillis);
            } catch (IOException unused) {
                Log.i(TAG, "Failed to update index with new touch timestamp.");
            }
            z6 = false;
        } else {
            z6 = true;
        }
        SimpleCacheSpan simpleCacheSpanL = this.contentIndex.g(str).l(simpleCacheSpan, jCurrentTimeMillis, z6);
        w(simpleCacheSpan, simpleCacheSpanL);
        return simpleCacheSpanL;
    }

    private static synchronized void B(File file) {
        lockedCacheDirs.remove(file.getAbsoluteFile());
    }

    private void l(SimpleCacheSpan simpleCacheSpan) {
        this.contentIndex.m(simpleCacheSpan.key).a(simpleCacheSpan);
        this.totalSpace += simpleCacheSpan.length;
        u(simpleCacheSpan);
    }

    private static long o(File file) throws IOException {
        long jNextLong = new SecureRandom().nextLong();
        long jAbs = jNextLong == Long.MIN_VALUE ? 0L : Math.abs(jNextLong);
        File file2 = new File(file, Long.toString(jAbs, 16) + UID_FILE_SUFFIX);
        if (file2.createNewFile()) {
            return jAbs;
        }
        throw new IOException("Failed to create UID file: " + file2);
    }

    private SimpleCacheSpan p(String str, long j6, long j10) {
        SimpleCacheSpan simpleCacheSpanE;
        CachedContent cachedContentG = this.contentIndex.g(str);
        if (cachedContentG == null) {
            return SimpleCacheSpan.h(str, j6, j10);
        }
        while (true) {
            simpleCacheSpanE = cachedContentG.e(j6, j10);
            if (!simpleCacheSpanE.isCached || simpleCacheSpanE.file.length() == simpleCacheSpanE.length) {
                break;
            }
            z();
        }
        return simpleCacheSpanE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void q() {
        if (!this.cacheDir.exists()) {
            try {
                n(this.cacheDir);
            } catch (Cache.CacheException e) {
                this.initializationException = e;
                return;
            }
        }
        File[] fileArrListFiles = this.cacheDir.listFiles();
        if (fileArrListFiles == null) {
            String str = "Failed to list cache directory files: " + this.cacheDir;
            Log.c(TAG, str);
            this.initializationException = new Cache.CacheException(str);
            return;
        }
        long jS = s(fileArrListFiles);
        this.uid = jS;
        if (jS == -1) {
            try {
                this.uid = o(this.cacheDir);
            } catch (IOException e2) {
                String str2 = "Failed to create cache UID: " + this.cacheDir;
                Log.d(TAG, str2, e2);
                this.initializationException = new Cache.CacheException(str2, e2);
                return;
            }
        }
        try {
            this.contentIndex.n(this.uid);
            CacheFileMetadataIndex cacheFileMetadataIndex = this.fileIndex;
            if (cacheFileMetadataIndex != null) {
                cacheFileMetadataIndex.e(this.uid);
                Map<String, CacheFileMetadata> mapB = this.fileIndex.b();
                r(this.cacheDir, true, fileArrListFiles, mapB);
                this.fileIndex.g(mapB.keySet());
            } else {
                r(this.cacheDir, true, fileArrListFiles, null);
            }
            this.contentIndex.r();
            try {
                this.contentIndex.s();
            } catch (IOException e6) {
                Log.d(TAG, "Storing index file failed", e6);
            }
        } catch (IOException e7) {
            String str3 = "Failed to initialize cache indices: " + this.cacheDir;
            Log.d(TAG, str3, e7);
            this.initializationException = new Cache.CacheException(str3, e7);
        }
    }

    private void r(File file, boolean z6, @Nullable File[] fileArr, @Nullable Map<String, CacheFileMetadata> map) {
        long j6;
        long j10;
        if (fileArr == null || fileArr.length == 0) {
            if (z6) {
                return;
            }
            file.delete();
            return;
        }
        for (File file2 : fileArr) {
            String name = file2.getName();
            if (z6 && name.indexOf(46) == -1) {
                r(file2, false, file2.listFiles(), map);
            } else if (!z6 || (!CachedContentIndex.o(name) && !name.endsWith(UID_FILE_SUFFIX))) {
                CacheFileMetadata cacheFileMetadataRemove = map != null ? map.remove(name) : null;
                if (cacheFileMetadataRemove != null) {
                    j10 = cacheFileMetadataRemove.length;
                    j6 = cacheFileMetadataRemove.lastTouchTimestamp;
                } else {
                    j6 = -9223372036854775807L;
                    j10 = -1;
                }
                SimpleCacheSpan simpleCacheSpanE = SimpleCacheSpan.e(file2, j10, j6, this.contentIndex);
                if (simpleCacheSpanE != null) {
                    l(simpleCacheSpanE);
                } else {
                    file2.delete();
                }
            }
        }
    }

    private static synchronized boolean t(File file) {
        return lockedCacheDirs.add(file.getAbsoluteFile());
    }

    private void u(SimpleCacheSpan simpleCacheSpan) {
        ArrayList<Cache.Listener> arrayList = this.listeners.get(simpleCacheSpan.key);
        if (arrayList != null) {
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                arrayList.get(size).d(this, simpleCacheSpan);
            }
        }
        this.evictor.d(this, simpleCacheSpan);
    }

    private void v(CacheSpan cacheSpan) {
        ArrayList<Cache.Listener> arrayList = this.listeners.get(cacheSpan.key);
        if (arrayList != null) {
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                arrayList.get(size).e(this, cacheSpan);
            }
        }
        this.evictor.e(this, cacheSpan);
    }

    private void w(SimpleCacheSpan simpleCacheSpan, CacheSpan cacheSpan) {
        ArrayList<Cache.Listener> arrayList = this.listeners.get(simpleCacheSpan.key);
        if (arrayList != null) {
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                arrayList.get(size).c(this, simpleCacheSpan, cacheSpan);
            }
        }
        this.evictor.c(this, simpleCacheSpan, cacheSpan);
    }

    private static long x(String str) {
        return Long.parseLong(str.substring(0, str.indexOf(46)), 16);
    }

    private void y(CacheSpan cacheSpan) {
        CachedContent cachedContentG = this.contentIndex.g(cacheSpan.key);
        if (cachedContentG == null || !cachedContentG.k(cacheSpan)) {
            return;
        }
        this.totalSpace -= cacheSpan.length;
        if (this.fileIndex != null) {
            String name = cacheSpan.file.getName();
            try {
                this.fileIndex.f(name);
            } catch (IOException unused) {
                Log.i(TAG, "Failed to remove file index entry for: " + name);
            }
        }
        this.contentIndex.p(cachedContentG.key);
        v(cacheSpan);
    }

    private void z() {
        ArrayList arrayList = new ArrayList();
        Iterator<CachedContent> it = this.contentIndex.h().iterator();
        while (it.hasNext()) {
            for (SimpleCacheSpan simpleCacheSpan : it.next().f()) {
                if (simpleCacheSpan.file.length() != simpleCacheSpan.length) {
                    arrayList.add(simpleCacheSpan);
                }
            }
        }
        for (int i10 = 0; i10 < arrayList.size(); i10++) {
            y((CacheSpan) arrayList.get(i10));
        }
    }

    public SimpleCache(File file, CacheEvictor cacheEvictor, @Nullable DatabaseProvider databaseProvider, @Nullable byte[] bArr, boolean z6, boolean z10) {
        this(file, cacheEvictor, new CachedContentIndex(databaseProvider, file, bArr, z6, z10), (databaseProvider == null || z10) ? null : new CacheFileMetadataIndex(databaseProvider));
    }

    private static void n(File file) throws Cache.CacheException {
        if (!file.mkdirs() && !file.isDirectory()) {
            String str = "Failed to create cache directory: " + file;
            Log.c(TAG, str);
            throw new Cache.CacheException(str);
        }
    }

    SimpleCache(File file, CacheEvictor cacheEvictor, CachedContentIndex cachedContentIndex, @Nullable CacheFileMetadataIndex cacheFileMetadataIndex) {
        if (t(file)) {
            this.cacheDir = file;
            this.evictor = cacheEvictor;
            this.contentIndex = cachedContentIndex;
            this.fileIndex = cacheFileMetadataIndex;
            this.listeners = new HashMap<>();
            this.random = new Random();
            this.touchCacheSpans = cacheEvictor.a();
            this.uid = -1L;
            final ConditionVariable conditionVariable = new ConditionVariable();
            new Thread("ExoPlayer:SimpleCacheInit") { // from class: androidx.media3.datasource.cache.SimpleCache.1
                @Override // java.lang.Thread, java.lang.Runnable
                public void run() {
                    synchronized (SimpleCache.this) {
                        conditionVariable.open();
                        SimpleCache.this.q();
                        SimpleCache.this.evictor.onCacheInitialized();
                    }
                }
            }.start();
            conditionVariable.block();
            return;
        }
        throw new IllegalStateException("Another SimpleCache instance uses the folder: " + file);
    }
}
