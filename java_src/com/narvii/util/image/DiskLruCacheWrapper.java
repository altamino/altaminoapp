package com.narvii.util.image;

import android.os.SystemClock;
import com.android.volley.Cache;
import com.google.android.exoplayer2.C;
import com.narvii.util.Log;
import com.narvii.util.Utils;
import com.narvii.util.disklrucache.DiskLruCache;
import java.io.EOFException;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes3.dex */
public class DiskLruCacheWrapper implements Cache {
    private static final int CACHE_MAGIC = 404030214;
    private DiskLruCache cache;
    private File dir;

    public DiskLruCacheWrapper(File file) {
        this.dir = file;
    }

    private String getKey(String str) {
        int iIndexOf;
        if (str.startsWith("http") && (iIndexOf = str.indexOf(63)) > 0) {
            str = str.substring(0, iIndexOf);
        }
        int length = str.length() / 2;
        return String.valueOf(str.substring(0, length).hashCode()) + String.valueOf(str.substring(length).hashCode());
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0040 A[PHI: r8
  0x0040: PHI (r8v2 com.narvii.util.disklrucache.DiskLruCache$Snapshot) = (r8v3 com.narvii.util.disklrucache.DiskLruCache$Snapshot), (r8v5 com.narvii.util.disklrucache.DiskLruCache$Snapshot) binds: [B:18:0x003e, B:13:0x0036] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // com.android.volley.Cache
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.android.volley.Cache.Entry get(java.lang.String r8) throws java.io.IOException {
        /*
            r7 = this;
            com.narvii.util.disklrucache.DiskLruCache r0 = r7.cache
            r1 = 0
            if (r0 == 0) goto L4c
            java.lang.String r8 = r7.getKey(r8)     // Catch: java.lang.Throwable -> L39
            com.narvii.util.disklrucache.DiskLruCache$Snapshot r8 = r0.get(r8)     // Catch: java.lang.Throwable -> L39
            if (r8 == 0) goto L36
            r0 = 0
            java.io.InputStream r0 = r8.getInputStream(r0)     // Catch: java.lang.Throwable -> L34
            com.android.volley.Cache$Entry r2 = readHeader(r0)     // Catch: java.lang.Throwable -> L34
            r0.close()     // Catch: java.lang.Throwable -> L34
            r0 = 1
            long r3 = r8.getLength(r0)     // Catch: java.lang.Throwable -> L34
            int r4 = (int) r3     // Catch: java.lang.Throwable -> L34
            java.io.InputStream r0 = r8.getInputStream(r0)     // Catch: java.lang.Throwable -> L34
            byte[] r3 = streamToBytes(r0, r4)     // Catch: java.lang.Throwable -> L34
            r2.data = r3     // Catch: java.lang.Throwable -> L34
            r0.close()     // Catch: java.lang.Throwable -> L34
            if (r8 == 0) goto L33
            r8.close()
        L33:
            return r2
        L34:
            r0 = move-exception
            goto L3b
        L36:
            if (r8 == 0) goto Lc1
            goto L40
        L39:
            r0 = move-exception
            r8 = r1
        L3b:
            com.narvii.util.crashlytics.OomHelper.test(r0)     // Catch: java.lang.Throwable -> L45
            if (r8 == 0) goto Lc1
        L40:
            r8.close()
            goto Lc1
        L45:
            r0 = move-exception
            if (r8 == 0) goto L4b
            r8.close()
        L4b:
            throw r0
        L4c:
            java.lang.String r8 = r7.getKey(r8)     // Catch: java.lang.Throwable -> Lb9
            java.io.File r0 = new java.io.File     // Catch: java.lang.Throwable -> Lb9
            java.io.File r2 = r7.dir     // Catch: java.lang.Throwable -> Lb9
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> Lb9
            r3.<init>()     // Catch: java.lang.Throwable -> Lb9
            r3.append(r8)     // Catch: java.lang.Throwable -> Lb9
            java.lang.String r4 = ".0"
            r3.append(r4)     // Catch: java.lang.Throwable -> Lb9
            java.lang.String r3 = r3.toString()     // Catch: java.lang.Throwable -> Lb9
            r0.<init>(r2, r3)     // Catch: java.lang.Throwable -> Lb9
            long r2 = r0.length()     // Catch: java.lang.Throwable -> Lb9
            r4 = 0
            int r6 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r6 != 0) goto L76
            com.narvii.util.Utils.safeClose(r1)
            return r1
        L76:
            java.io.File r2 = new java.io.File     // Catch: java.lang.Throwable -> Lb9
            java.io.File r3 = r7.dir     // Catch: java.lang.Throwable -> Lb9
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> Lb9
            r4.<init>()     // Catch: java.lang.Throwable -> Lb9
            r4.append(r8)     // Catch: java.lang.Throwable -> Lb9
            java.lang.String r8 = ".1"
            r4.append(r8)     // Catch: java.lang.Throwable -> Lb9
            java.lang.String r8 = r4.toString()     // Catch: java.lang.Throwable -> Lb9
            r2.<init>(r3, r8)     // Catch: java.lang.Throwable -> Lb9
            long r3 = r2.length()     // Catch: java.lang.Throwable -> Lb9
            int r8 = (int) r3
            if (r8 != 0) goto L99
            com.narvii.util.Utils.safeClose(r1)
            return r1
        L99:
            java.io.FileInputStream r3 = new java.io.FileInputStream     // Catch: java.lang.Throwable -> Lb9
            r3.<init>(r0)     // Catch: java.lang.Throwable -> Lb9
            com.android.volley.Cache$Entry r0 = readHeader(r3)     // Catch: java.lang.Throwable -> Lb7
            r3.close()     // Catch: java.lang.Throwable -> Lb7
            java.io.FileInputStream r3 = new java.io.FileInputStream     // Catch: java.lang.Throwable -> Lb9
            r3.<init>(r2)     // Catch: java.lang.Throwable -> Lb9
            byte[] r8 = streamToBytes(r3, r8)     // Catch: java.lang.Throwable -> Lb7
            r0.data = r8     // Catch: java.lang.Throwable -> Lb7
            r3.close()     // Catch: java.lang.Throwable -> Lb7
            com.narvii.util.Utils.safeClose(r1)
            return r0
        Lb7:
            r8 = move-exception
            goto Lbb
        Lb9:
            r8 = move-exception
            r3 = r1
        Lbb:
            com.narvii.util.crashlytics.OomHelper.test(r8)     // Catch: java.lang.Throwable -> Lc2
            com.narvii.util.Utils.safeClose(r3)
        Lc1:
            return r1
        Lc2:
            r8 = move-exception
            com.narvii.util.Utils.safeClose(r3)
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.narvii.util.image.DiskLruCacheWrapper.get(java.lang.String):com.android.volley.Cache$Entry");
    }

    @Override // com.android.volley.Cache
    public void put(String str, Cache.Entry entry) throws Throwable {
        DiskLruCache.Editor editorEdit;
        OutputStream outputStreamNewOutputStream;
        DiskLruCache diskLruCache = this.cache;
        if (diskLruCache != null) {
            OutputStream outputStream = null;
            try {
                try {
                    editorEdit = diskLruCache.edit(getKey(str));
                    try {
                        outputStreamNewOutputStream = editorEdit.newOutputStream(0);
                    } catch (Exception unused) {
                    }
                } catch (Throwable th) {
                    th = th;
                }
            } catch (Exception unused2) {
                editorEdit = null;
            }
            try {
                writeHeader(outputStreamNewOutputStream, entry);
                outputStreamNewOutputStream.close();
                outputStreamNewOutputStream = editorEdit.newOutputStream(1);
                outputStreamNewOutputStream.write(entry.data);
                outputStreamNewOutputStream.close();
                editorEdit.commit();
            } catch (Exception unused3) {
                outputStream = outputStreamNewOutputStream;
                if (editorEdit != null) {
                    try {
                        editorEdit.abort();
                    } catch (Exception unused4) {
                    }
                }
                Utils.safeClose(outputStream);
                return;
            } catch (Throwable th2) {
                th = th2;
                outputStream = outputStreamNewOutputStream;
                Utils.safeClose(outputStream);
                throw th;
            }
            Utils.safeClose(outputStream);
            return;
        }
        Log.w("DiskLruCache not ready to PUT " + str);
    }

    @Override // com.android.volley.Cache
    public void initialize() {
        if (this.cache == null) {
            try {
                long jElapsedRealtime = SystemClock.elapsedRealtime();
                this.cache = DiskLruCache.open(this.dir, 1, 2);
                Log.i("DiskLruCache init in " + (SystemClock.elapsedRealtime() - jElapsedRealtime) + "ms");
            } catch (Exception e) {
                Log.w("DiskLruCache init fail", e);
            }
        }
    }

    public void invalidate(String str, boolean z) throws Throwable {
        DiskLruCache.Editor editorEdit;
        OutputStream outputStreamNewOutputStream;
        DiskLruCache diskLruCache = this.cache;
        if (diskLruCache == null) {
            return;
        }
        InputStream inputStream = null;
        try {
            try {
                editorEdit = diskLruCache.edit(getKey(str));
            } catch (Throwable th) {
                th = th;
                outputStreamNewOutputStream = null;
            }
            try {
                InputStream inputStreamNewInputStream = editorEdit.newInputStream(0);
                try {
                    Cache.Entry header = readHeader(inputStreamNewInputStream);
                    inputStreamNewInputStream.close();
                    header.softTtl = 0L;
                    if (z) {
                        header.ttl = 0L;
                    }
                    outputStreamNewOutputStream = editorEdit.newOutputStream(0);
                    try {
                        try {
                            writeHeader(outputStreamNewOutputStream, header);
                            outputStreamNewOutputStream.close();
                            editorEdit.commit();
                            Utils.safeClose((InputStream) null);
                            Utils.safeClose((OutputStream) null);
                        } catch (Throwable th2) {
                            th = th2;
                            Utils.safeClose(inputStream);
                            Utils.safeClose(outputStreamNewOutputStream);
                            throw th;
                        }
                    } catch (Exception unused) {
                        if (editorEdit != null) {
                            try {
                                editorEdit.abort();
                            } catch (Exception unused2) {
                            }
                        }
                        Utils.safeClose(inputStream);
                        Utils.safeClose(outputStreamNewOutputStream);
                    }
                } catch (Exception unused3) {
                    outputStreamNewOutputStream = null;
                    inputStream = inputStreamNewInputStream;
                } catch (Throwable th3) {
                    th = th3;
                    outputStreamNewOutputStream = null;
                    inputStream = inputStreamNewInputStream;
                    Utils.safeClose(inputStream);
                    Utils.safeClose(outputStreamNewOutputStream);
                    throw th;
                }
            } catch (Exception unused4) {
                outputStreamNewOutputStream = null;
            }
        } catch (Exception unused5) {
            editorEdit = null;
            outputStreamNewOutputStream = null;
        }
    }

    public void remove(String str) {
        DiskLruCache diskLruCache = this.cache;
        if (diskLruCache != null) {
            try {
                diskLruCache.remove(getKey(str));
            } catch (Exception unused) {
            }
        }
    }

    public void clear() {
        DiskLruCache diskLruCache = this.cache;
        if (diskLruCache != null) {
            try {
                diskLruCache.delete();
            } catch (Exception unused) {
            }
            this.cache = null;
            try {
                this.cache = DiskLruCache.open(this.dir, 1, 2);
            } catch (Exception unused2) {
            }
        }
    }

    public void trimAndFlush(int i, long j) {
        DiskLruCache diskLruCache = this.cache;
        if (diskLruCache != null) {
            try {
                diskLruCache.trimAndFlush(i, j);
            } catch (Exception unused) {
            }
        }
    }

    public long size() {
        File[] fileArrListFiles = this.dir.listFiles();
        long length = 0;
        if (fileArrListFiles != null) {
            for (File file : fileArrListFiles) {
                length += file.length();
            }
        }
        return length;
    }

    private static Cache.Entry readHeader(InputStream inputStream) throws IOException {
        Cache.Entry entry = new Cache.Entry();
        if (readInt(inputStream) != CACHE_MAGIC) {
            throw new IOException();
        }
        entry.etag = readString(inputStream);
        if (entry.etag.equals("")) {
            entry.etag = null;
        }
        entry.serverDate = readLong(inputStream);
        entry.lastModified = readLong(inputStream);
        entry.ttl = readLong(inputStream);
        entry.softTtl = readLong(inputStream);
        entry.responseHeaders = readStringStringMap(inputStream);
        return entry;
    }

    private static void writeHeader(OutputStream outputStream, Cache.Entry entry) throws IOException {
        writeInt(outputStream, CACHE_MAGIC);
        String str = entry.etag;
        if (str == null) {
            str = "";
        }
        writeString(outputStream, str);
        writeLong(outputStream, entry.serverDate);
        writeLong(outputStream, entry.lastModified);
        writeLong(outputStream, entry.ttl);
        writeLong(outputStream, entry.softTtl);
        writeStringStringMap(entry.responseHeaders, outputStream);
        outputStream.flush();
    }

    private static byte[] streamToBytes(InputStream inputStream, int i) throws IOException {
        byte[] bArr = new byte[i];
        int i2 = 0;
        while (i2 < i) {
            int i3 = inputStream.read(bArr, i2, i - i2);
            if (i3 == -1) {
                break;
            }
            i2 += i3;
        }
        if (i2 == i) {
            return bArr;
        }
        throw new IOException("Expected " + i + " bytes, read " + i2 + " bytes");
    }

    private static int read(InputStream inputStream) throws IOException {
        int i = inputStream.read();
        if (i != -1) {
            return i;
        }
        throw new EOFException();
    }

    private static void writeInt(OutputStream outputStream, int i) throws IOException {
        outputStream.write((i >> 0) & 255);
        outputStream.write((i >> 8) & 255);
        outputStream.write((i >> 16) & 255);
        outputStream.write((i >> 24) & 255);
    }

    private static int readInt(InputStream inputStream) throws IOException {
        return (read(inputStream) << 24) | (read(inputStream) << 0) | 0 | (read(inputStream) << 8) | (read(inputStream) << 16);
    }

    private static void writeLong(OutputStream outputStream, long j) throws IOException {
        outputStream.write((byte) (j >>> 0));
        outputStream.write((byte) (j >>> 8));
        outputStream.write((byte) (j >>> 16));
        outputStream.write((byte) (j >>> 24));
        outputStream.write((byte) (j >>> 32));
        outputStream.write((byte) (j >>> 40));
        outputStream.write((byte) (j >>> 48));
        outputStream.write((byte) (j >>> 56));
    }

    private static long readLong(InputStream inputStream) throws IOException {
        return ((read(inputStream) & 255) << 0) | 0 | ((read(inputStream) & 255) << 8) | ((read(inputStream) & 255) << 16) | ((read(inputStream) & 255) << 24) | ((read(inputStream) & 255) << 32) | ((read(inputStream) & 255) << 40) | ((read(inputStream) & 255) << 48) | ((255 & read(inputStream)) << 56);
    }

    private static void writeString(OutputStream outputStream, String str) throws IOException {
        byte[] bytes = str.getBytes(C.UTF8_NAME);
        writeLong(outputStream, bytes.length);
        outputStream.write(bytes, 0, bytes.length);
    }

    private static String readString(InputStream inputStream) throws IOException {
        return new String(streamToBytes(inputStream, (int) readLong(inputStream)), C.UTF8_NAME);
    }

    private static void writeStringStringMap(Map<String, String> map, OutputStream outputStream) throws IOException {
        if (map != null) {
            writeInt(outputStream, map.size());
            for (Map.Entry<String, String> entry : map.entrySet()) {
                writeString(outputStream, entry.getKey());
                writeString(outputStream, entry.getValue());
            }
            return;
        }
        writeInt(outputStream, 0);
    }

    private static Map<String, String> readStringStringMap(InputStream inputStream) throws IOException {
        int i = readInt(inputStream);
        Map<String, String> mapEmptyMap = i == 0 ? Collections.emptyMap() : new HashMap<>(i);
        for (int i2 = 0; i2 < i; i2++) {
            mapEmptyMap.put(readString(inputStream).intern(), readString(inputStream).intern());
        }
        return mapEmptyMap;
    }
}
