package com.narvii.util.image;

import android.os.SystemClock;
import androidx.webkit.ProxyConfig;
import com.android.volley.Cache;
import com.narvii.util.Log;
import com.narvii.util.Utils;
import com.narvii.util.crashlytics.OomHelper;
import com.narvii.util.disklrucache.DiskLruCache;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public class DiskLruCacheWrapper implements Cache {
    private static final int CACHE_MAGIC = 404030214;
    private DiskLruCache cache;
    private File dir;

    private static void writeLong(OutputStream outputStream, long j6) throws IOException {
        outputStream.write((byte) j6);
        outputStream.write((byte) (j6 >>> 8));
        outputStream.write((byte) (j6 >>> 16));
        outputStream.write((byte) (j6 >>> 24));
        outputStream.write((byte) (j6 >>> 32));
        outputStream.write((byte) (j6 >>> 40));
        outputStream.write((byte) (j6 >>> 48));
        outputStream.write((byte) (j6 >>> 56));
    }

    private String getKey(String str) {
        int iIndexOf;
        if (str.startsWith(ProxyConfig.MATCH_HTTP) && (iIndexOf = str.indexOf(63)) > 0) {
            str = str.substring(0, iIndexOf);
        }
        int length = str.length() / 2;
        return String.valueOf(str.substring(0, length).hashCode()) + String.valueOf(str.substring(length).hashCode());
    }

    private static Cache.Entry readHeader(InputStream inputStream) throws IOException {
        Cache.Entry entry = new Cache.Entry();
        if (readInt(inputStream) != CACHE_MAGIC) {
            throw new IOException();
        }
        String string = readString(inputStream);
        entry.etag = string;
        if (string.equals("")) {
            entry.etag = null;
        }
        entry.serverDate = readLong(inputStream);
        entry.lastModified = readLong(inputStream);
        entry.ttl = readLong(inputStream);
        entry.softTtl = readLong(inputStream);
        entry.responseHeaders = readStringStringMap(inputStream);
        return entry;
    }

    private static byte[] streamToBytes(InputStream inputStream, int i10) throws IOException {
        byte[] bArr = new byte[i10];
        int i11 = 0;
        while (i11 < i10) {
            int i12 = inputStream.read(bArr, i11, i10 - i11);
            if (i12 == -1) {
                break;
            }
            i11 += i12;
        }
        if (i11 == i10) {
            return bArr;
        }
        throw new IOException("Expected " + i10 + " bytes, read " + i11 + " bytes");
    }

    private static void writeInt(OutputStream outputStream, int i10) throws IOException {
        outputStream.write(i10 & 255);
        outputStream.write((i10 >> 8) & 255);
        outputStream.write((i10 >> 16) & 255);
        outputStream.write((i10 >> 24) & 255);
    }

    private static void writeString(OutputStream outputStream, String str) throws IOException {
        byte[] bytes = str.getBytes("UTF-8");
        writeLong(outputStream, bytes.length);
        outputStream.write(bytes, 0, bytes.length);
    }

    private static void writeStringStringMap(Map<String, String> map, OutputStream outputStream) throws IOException {
        if (map == null) {
            writeInt(outputStream, 0);
            return;
        }
        writeInt(outputStream, map.size());
        for (Map.Entry<String, String> entry : map.entrySet()) {
            writeString(outputStream, entry.getKey());
            writeString(outputStream, entry.getValue());
        }
    }

    @Override // com.android.volley.Cache
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

    /* JADX WARN: Code duplicated, block: B:13:0x0036 A[DONT_GENERATE, PHI: r7
      0x0036: PHI (r7v2 com.narvii.util.disklrucache.DiskLruCache$Snapshot) = (r7v3 com.narvii.util.disklrucache.DiskLruCache$Snapshot), (r7v5 com.narvii.util.disklrucache.DiskLruCache$Snapshot) binds: [B:17:0x0040, B:12:0x0034] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // com.android.volley.Cache
    public Cache.Entry get(String str) {
        DiskLruCache.Snapshot snapshot;
        FileInputStream fileInputStream;
        DiskLruCache diskLruCache = this.cache;
        if (diskLruCache != null) {
            try {
                snapshot = diskLruCache.get(getKey(str));
                if (snapshot != null) {
                    try {
                        InputStream inputStream = snapshot.getInputStream(0);
                        Cache.Entry header = readHeader(inputStream);
                        inputStream.close();
                        int length = (int) snapshot.getLength(1);
                        InputStream inputStream2 = snapshot.getInputStream(1);
                        header.data = streamToBytes(inputStream2, length);
                        inputStream2.close();
                        snapshot.close();
                        return header;
                    } catch (Throwable th) {
                        th = th;
                        try {
                            OomHelper.test(th);
                            return null;
                        } finally {
                            if (snapshot != null) {
                                snapshot.close();
                            }
                        }
                    }
                }
                if (snapshot != null) {
                }
            } catch (Throwable th2) {
                th = th2;
                snapshot = null;
            }
        } else {
            try {
                String key = getKey(str);
                File file = new File(this.dir, key + ".0");
                if (file.length() == 0) {
                    Utils.safeClose((InputStream) null);
                    return null;
                }
                File file2 = new File(this.dir, key + ".1");
                int length2 = (int) file2.length();
                if (length2 == 0) {
                    Utils.safeClose((InputStream) null);
                    return null;
                }
                fileInputStream = new FileInputStream(file);
                try {
                    Cache.Entry header2 = readHeader(fileInputStream);
                    fileInputStream.close();
                    fileInputStream = new FileInputStream(file2);
                    header2.data = streamToBytes(fileInputStream, length2);
                    fileInputStream.close();
                    Utils.safeClose((InputStream) null);
                    return header2;
                } catch (Throwable th3) {
                    th = th3;
                }
            } catch (Throwable th4) {
                th = th4;
                fileInputStream = null;
            }
            try {
                OomHelper.test(th);
            } finally {
                Utils.safeClose(fileInputStream);
            }
        }
        return null;
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

    @Override // com.android.volley.Cache
    public void invalidate(String str, boolean z6) throws Throwable {
        OutputStream outputStreamNewOutputStream;
        InputStream inputStreamNewInputStream;
        DiskLruCache diskLruCache = this.cache;
        if (diskLruCache == null) {
            return;
        }
        DiskLruCache.Editor editor = null;
        inputStream = null;
        InputStream inputStream = null;
        try {
            try {
                DiskLruCache.Editor editorEdit = diskLruCache.edit(getKey(str));
                try {
                    inputStreamNewInputStream = editorEdit.newInputStream(0);
                    try {
                        Cache.Entry header = readHeader(inputStreamNewInputStream);
                        inputStreamNewInputStream.close();
                        header.softTtl = 0L;
                        if (z6) {
                            header.ttl = 0L;
                        }
                        outputStreamNewOutputStream = editorEdit.newOutputStream(0);
                        try {
                            writeHeader(outputStreamNewOutputStream, header);
                            outputStreamNewOutputStream.close();
                            editorEdit.commit();
                            Utils.safeClose((InputStream) null);
                            Utils.safeClose((OutputStream) null);
                        } catch (Exception unused) {
                            inputStreamNewInputStream = null;
                            editor = editorEdit;
                            if (editor != null) {
                                try {
                                    editor.abort();
                                } catch (Exception unused2) {
                                } catch (Throwable th) {
                                    th = th;
                                    inputStream = inputStreamNewInputStream;
                                    Utils.safeClose(inputStream);
                                    Utils.safeClose(outputStreamNewOutputStream);
                                    throw th;
                                }
                            }
                            Utils.safeClose(inputStreamNewInputStream);
                            Utils.safeClose(outputStreamNewOutputStream);
                        } catch (Throwable th2) {
                            th = th2;
                            Utils.safeClose(inputStream);
                            Utils.safeClose(outputStreamNewOutputStream);
                            throw th;
                        }
                    } catch (Exception unused3) {
                        outputStreamNewOutputStream = null;
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
                    inputStreamNewInputStream = null;
                }
            } catch (Throwable th4) {
                th = th4;
                outputStreamNewOutputStream = null;
            }
        } catch (Exception unused5) {
            outputStreamNewOutputStream = null;
            inputStreamNewInputStream = null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.io.OutputStream] */
    /* JADX WARN: Type inference failed for: r1v2 */
    @Override // com.android.volley.Cache
    public void put(String str, Cache.Entry entry) throws Throwable {
        OutputStream outputStreamNewOutputStream;
        DiskLruCache diskLruCache = this.cache;
        if (diskLruCache == null) {
            Log.w("DiskLruCache not ready to PUT " + str);
            return;
        }
        ?? r1 = 0;
        DiskLruCache.Editor editor = null;
        try {
            try {
                try {
                    DiskLruCache.Editor editorEdit = diskLruCache.edit(getKey(str));
                    try {
                        outputStreamNewOutputStream = editorEdit.newOutputStream(0);
                        try {
                            writeHeader(outputStreamNewOutputStream, entry);
                            outputStreamNewOutputStream.close();
                            outputStreamNewOutputStream = editorEdit.newOutputStream(1);
                            outputStreamNewOutputStream.write(entry.data);
                            outputStreamNewOutputStream.close();
                            editorEdit.commit();
                            Utils.safeClose((OutputStream) null);
                        } catch (Exception unused) {
                            editor = editorEdit;
                            if (editor != null) {
                                try {
                                    editor.abort();
                                } catch (Exception unused2) {
                                }
                            }
                            Utils.safeClose(outputStreamNewOutputStream);
                        }
                    } catch (Exception unused3) {
                        outputStreamNewOutputStream = null;
                    }
                } catch (Throwable th) {
                    th = th;
                    r1 = diskLruCache;
                    Utils.safeClose((OutputStream) r1);
                    throw th;
                }
            } catch (Exception unused4) {
                outputStreamNewOutputStream = null;
            }
        } catch (Throwable th2) {
            th = th2;
            Utils.safeClose((OutputStream) r1);
            throw th;
        }
    }

    @Override // com.android.volley.Cache
    public void remove(String str) {
        DiskLruCache diskLruCache = this.cache;
        if (diskLruCache != null) {
            try {
                diskLruCache.remove(getKey(str));
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

    public void trimAndFlush(int i10, long j6) {
        DiskLruCache diskLruCache = this.cache;
        if (diskLruCache != null) {
            try {
                diskLruCache.trimAndFlush(i10, j6);
            } catch (Exception unused) {
            }
        }
    }

    public DiskLruCacheWrapper(File file) {
        this.dir = file;
    }

    private static int read(InputStream inputStream) throws IOException {
        int i10 = inputStream.read();
        if (i10 != -1) {
            return i10;
        }
        throw new EOFException();
    }

    private static int readInt(InputStream inputStream) throws IOException {
        return (read(inputStream) << 24) | read(inputStream) | (read(inputStream) << 8) | (read(inputStream) << 16);
    }

    private static long readLong(InputStream inputStream) throws IOException {
        return (((long) read(inputStream)) & 255) | ((((long) read(inputStream)) & 255) << 8) | ((((long) read(inputStream)) & 255) << 16) | ((((long) read(inputStream)) & 255) << 24) | ((((long) read(inputStream)) & 255) << 32) | ((((long) read(inputStream)) & 255) << 40) | ((((long) read(inputStream)) & 255) << 48) | ((255 & ((long) read(inputStream))) << 56);
    }

    private static String readString(InputStream inputStream) throws IOException {
        return new String(streamToBytes(inputStream, (int) readLong(inputStream)), "UTF-8");
    }

    private static Map<String, String> readStringStringMap(InputStream inputStream) throws IOException {
        Map<String, String> map;
        int i10 = readInt(inputStream);
        if (i10 == 0) {
            map = Collections.emptyMap();
        } else {
            map = new HashMap<>(i10);
        }
        for (int i11 = 0; i11 < i10; i11++) {
            map.put(readString(inputStream).intern(), readString(inputStream).intern());
        }
        return map;
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
}
