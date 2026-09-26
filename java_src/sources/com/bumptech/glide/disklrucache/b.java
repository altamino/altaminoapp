package com.bumptech.glide.disklrucache;

import android.annotation.TargetApi;
import android.os.Build;
import android.os.StrictMode;
import java.io.BufferedWriter;
import java.io.Closeable;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.concurrent.Callable;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes5.dex */
public final class b implements Closeable {
    static final long ANY_SEQUENCE_NUMBER = -1;
    private static final String CLEAN = "CLEAN";
    private static final String DIRTY = "DIRTY";
    static final String JOURNAL_FILE = "journal";
    static final String JOURNAL_FILE_BACKUP = "journal.bkp";
    static final String JOURNAL_FILE_TEMP = "journal.tmp";
    static final String MAGIC = "libcore.io.DiskLruCache";
    private static final String READ = "READ";
    private static final String REMOVE = "REMOVE";
    static final String VERSION_1 = "1";
    private final int appVersion;
    private final File directory;
    private final File journalFile;
    private final File journalFileBackup;
    private final File journalFileTmp;
    private Writer journalWriter;
    private long maxSize;
    private int redundantOpCount;
    private final int valueCount;
    private long size = 0;
    private final LinkedHashMap<String, d> lruEntries = new LinkedHashMap<>(0, 0.75f, true);
    private long nextSequenceNumber = 0;
    final ThreadPoolExecutor executorService = new ThreadPoolExecutor(0, 1, 60, TimeUnit.SECONDS, new LinkedBlockingQueue(), new ThreadFactoryC0117b(null));
    private final Callable<Void> cleanupCallable = new a();

    class a implements Callable<Void> {
        a() {
        }

        @Override // java.util.concurrent.Callable
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Void call() throws Exception {
            synchronized (b.this) {
                try {
                    if (b.this.journalWriter == null) {
                        return null;
                    }
                    b.this.E0();
                    if (b.this.O()) {
                        b.this.k0();
                        b.this.redundantOpCount = 0;
                    }
                    return null;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    /* JADX INFO: renamed from: com.bumptech.glide.disklrucache.b$b, reason: collision with other inner class name */
    private static final class ThreadFactoryC0117b implements ThreadFactory {
        private ThreadFactoryC0117b() {
        }

        @Override // java.util.concurrent.ThreadFactory
        public synchronized Thread newThread(Runnable runnable) {
            Thread thread;
            thread = new Thread(runnable, "glide-disk-lru-cache-thread");
            thread.setPriority(1);
            return thread;
        }

        /* synthetic */ ThreadFactoryC0117b(a aVar) {
            this();
        }
    }

    public final class c {
        private boolean committed;
        private final d entry;
        private final boolean[] written;

        /* synthetic */ c(b bVar, d dVar, a aVar) {
            this(dVar);
        }

        private c(d dVar) {
            this.entry = dVar;
            this.written = dVar.readable ? null : new boolean[b.this.valueCount];
        }

        public void a() throws IOException {
            b.this.m(this, false);
        }

        public void b() {
            if (this.committed) {
                return;
            }
            try {
                a();
            } catch (IOException unused) {
            }
        }

        public void e() throws IOException {
            b.this.m(this, true);
            this.committed = true;
        }

        public File f(int i10) throws IOException {
            File fileK;
            synchronized (b.this) {
                try {
                    if (this.entry.currentEditor != this) {
                        throw new IllegalStateException();
                    }
                    if (!this.entry.readable) {
                        this.written[i10] = true;
                    }
                    fileK = this.entry.k(i10);
                    if (!b.this.directory.exists()) {
                        b.this.directory.mkdirs();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            return fileK;
        }
    }

    private final class d {
        File[] cleanFiles;
        private c currentEditor;
        File[] dirtyFiles;
        private final String key;
        private final long[] lengths;
        private boolean readable;
        private long sequenceNumber;

        /* synthetic */ d(b bVar, String str, a aVar) {
            this(str);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void n(String[] strArr) throws IOException {
            if (strArr.length != b.this.valueCount) {
                throw m(strArr);
            }
            for (int i10 = 0; i10 < strArr.length; i10++) {
                try {
                    this.lengths[i10] = Long.parseLong(strArr[i10]);
                } catch (NumberFormatException unused) {
                    throw m(strArr);
                }
            }
        }

        private d(String str) {
            this.key = str;
            this.lengths = new long[b.this.valueCount];
            this.cleanFiles = new File[b.this.valueCount];
            this.dirtyFiles = new File[b.this.valueCount];
            StringBuilder sb = new StringBuilder(str);
            sb.append('.');
            int length = sb.length();
            for (int i10 = 0; i10 < b.this.valueCount; i10++) {
                sb.append(i10);
                this.cleanFiles[i10] = new File(b.this.directory, sb.toString());
                sb.append(".tmp");
                this.dirtyFiles[i10] = new File(b.this.directory, sb.toString());
                sb.setLength(length);
            }
        }

        private IOException m(String[] strArr) throws IOException {
            throw new IOException("unexpected journal line: " + Arrays.toString(strArr));
        }

        public File j(int i10) {
            return this.cleanFiles[i10];
        }

        public File k(int i10) {
            return this.dirtyFiles[i10];
        }

        public String l() throws IOException {
            StringBuilder sb = new StringBuilder();
            for (long j6 : this.lengths) {
                sb.append(' ');
                sb.append(j6);
            }
            return sb.toString();
        }
    }

    public final class e {
        private final File[] files;
        private final String key;
        private final long[] lengths;
        private final long sequenceNumber;

        /* synthetic */ e(b bVar, String str, long j6, File[] fileArr, long[] jArr, a aVar) {
            this(str, j6, fileArr, jArr);
        }

        private e(String str, long j6, File[] fileArr, long[] jArr) {
            this.key = str;
            this.sequenceNumber = j6;
            this.files = fileArr;
            this.lengths = jArr;
        }

        public File a(int i10) {
            return this.files[i10];
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void k0() throws IOException {
        try {
            Writer writer = this.journalWriter;
            if (writer != null) {
                l(writer);
            }
            BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.journalFileTmp), com.bumptech.glide.disklrucache.d.US_ASCII));
            try {
                bufferedWriter.write("libcore.io.DiskLruCache");
                bufferedWriter.write("\n");
                bufferedWriter.write("1");
                bufferedWriter.write("\n");
                bufferedWriter.write(Integer.toString(this.appVersion));
                bufferedWriter.write("\n");
                bufferedWriter.write(Integer.toString(this.valueCount));
                bufferedWriter.write("\n");
                bufferedWriter.write("\n");
                for (d dVar : this.lruEntries.values()) {
                    if (dVar.currentEditor != null) {
                        bufferedWriter.write("DIRTY " + dVar.key + '\n');
                    } else {
                        bufferedWriter.write("CLEAN " + dVar.key + dVar.l() + '\n');
                    }
                }
                l(bufferedWriter);
                if (this.journalFile.exists()) {
                    y0(this.journalFile, this.journalFileBackup, true);
                }
                y0(this.journalFileTmp, this.journalFile, false);
                this.journalFileBackup.delete();
                this.journalWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.journalFile, true), com.bumptech.glide.disklrucache.d.US_ASCII));
            } catch (Throwable th) {
                l(bufferedWriter);
                throw th;
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void m(c cVar, boolean z6) throws IOException {
        d dVar = cVar.entry;
        if (dVar.currentEditor != cVar) {
            throw new IllegalStateException();
        }
        if (z6 && !dVar.readable) {
            for (int i10 = 0; i10 < this.valueCount; i10++) {
                if (!cVar.written[i10]) {
                    cVar.a();
                    throw new IllegalStateException("Newly created entry didn't create value for index " + i10);
                }
                if (!dVar.k(i10).exists()) {
                    cVar.a();
                    return;
                }
            }
        }
        for (int i11 = 0; i11 < this.valueCount; i11++) {
            File fileK = dVar.k(i11);
            if (!z6) {
                o(fileK);
            } else if (fileK.exists()) {
                File fileJ = dVar.j(i11);
                fileK.renameTo(fileJ);
                long j6 = dVar.lengths[i11];
                long length = fileJ.length();
                dVar.lengths[i11] = length;
                this.size = (this.size - j6) + length;
            }
        }
        this.redundantOpCount++;
        dVar.currentEditor = null;
        if (dVar.readable || z6) {
            dVar.readable = true;
            this.journalWriter.append((CharSequence) CLEAN);
            this.journalWriter.append(' ');
            this.journalWriter.append((CharSequence) dVar.key);
            this.journalWriter.append((CharSequence) dVar.l());
            this.journalWriter.append('\n');
            if (z6) {
                long j10 = this.nextSequenceNumber;
                this.nextSequenceNumber = 1 + j10;
                dVar.sequenceNumber = j10;
            }
        } else {
            this.lruEntries.remove(dVar.key);
            this.journalWriter.append((CharSequence) REMOVE);
            this.journalWriter.append(' ');
            this.journalWriter.append((CharSequence) dVar.key);
            this.journalWriter.append('\n');
        }
        r(this.journalWriter);
        if (this.size > this.maxSize || O()) {
            this.executorService.submit(this.cleanupCallable);
        }
    }

    private synchronized c q(String str, long j6) throws IOException {
        k();
        d dVar = this.lruEntries.get(str);
        a aVar = null;
        if (j6 != -1 && (dVar == null || dVar.sequenceNumber != j6)) {
            return null;
        }
        if (dVar == null) {
            dVar = new d(this, str, aVar);
            this.lruEntries.put(str, dVar);
        } else if (dVar.currentEditor != null) {
            return null;
        }
        c cVar = new c(this, dVar, aVar);
        dVar.currentEditor = cVar;
        this.journalWriter.append((CharSequence) DIRTY);
        this.journalWriter.append(' ');
        this.journalWriter.append((CharSequence) str);
        this.journalWriter.append('\n');
        r(this.journalWriter);
        return cVar;
    }

    public synchronized e L(String str) throws IOException {
        k();
        d dVar = this.lruEntries.get(str);
        if (dVar == null) {
            return null;
        }
        if (!dVar.readable) {
            return null;
        }
        for (File file : dVar.cleanFiles) {
            if (!file.exists()) {
                return null;
            }
        }
        this.redundantOpCount++;
        this.journalWriter.append((CharSequence) READ);
        this.journalWriter.append(' ');
        this.journalWriter.append((CharSequence) str);
        this.journalWriter.append('\n');
        if (O()) {
            this.executorService.submit(this.cleanupCallable);
        }
        return new e(this, str, dVar.sequenceNumber, dVar.cleanFiles, dVar.lengths, null);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public synchronized void close() throws IOException {
        try {
            if (this.journalWriter == null) {
                return;
            }
            for (d dVar : new ArrayList(this.lruEntries.values())) {
                if (dVar.currentEditor != null) {
                    dVar.currentEditor.a();
                }
            }
            E0();
            l(this.journalWriter);
            this.journalWriter = null;
        } catch (Throwable th) {
            throw th;
        }
    }

    public synchronized boolean t0(String str) throws IOException {
        try {
            k();
            d dVar = this.lruEntries.get(str);
            if (dVar != null && dVar.currentEditor == null) {
                for (int i10 = 0; i10 < this.valueCount; i10++) {
                    File fileJ = dVar.j(i10);
                    if (fileJ.exists() && !fileJ.delete()) {
                        throw new IOException("failed to delete " + fileJ);
                    }
                    this.size -= dVar.lengths[i10];
                    dVar.lengths[i10] = 0;
                }
                this.redundantOpCount++;
                this.journalWriter.append((CharSequence) REMOVE);
                this.journalWriter.append(' ');
                this.journalWriter.append((CharSequence) str);
                this.journalWriter.append('\n');
                this.lruEntries.remove(str);
                if (O()) {
                    this.executorService.submit(this.cleanupCallable);
                }
                return true;
            }
            return false;
        } catch (Throwable th) {
            throw th;
        }
    }

    private b(File file, int i10, int i11, long j6) {
        this.directory = file;
        this.appVersion = i10;
        this.journalFile = new File(file, "journal");
        this.journalFileTmp = new File(file, "journal.tmp");
        this.journalFileBackup = new File(file, "journal.bkp");
        this.valueCount = i11;
        this.maxSize = j6;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void E0() throws IOException {
        while (this.size > this.maxSize) {
            t0(this.lruEntries.entrySet().iterator().next().getKey());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean O() {
        int i10 = this.redundantOpCount;
        return i10 >= 2000 && i10 >= this.lruEntries.size();
    }

    public static b Q(File file, int i10, int i11, long j6) throws IOException {
        if (j6 <= 0) {
            throw new IllegalArgumentException("maxSize <= 0");
        }
        if (i11 <= 0) {
            throw new IllegalArgumentException("valueCount <= 0");
        }
        File file2 = new File(file, "journal.bkp");
        if (file2.exists()) {
            File file3 = new File(file, "journal");
            if (file3.exists()) {
                file2.delete();
            } else {
                y0(file2, file3, false);
            }
        }
        b bVar = new b(file, i10, i11, j6);
        if (bVar.journalFile.exists()) {
            try {
                bVar.b0();
                bVar.U();
                return bVar;
            } catch (IOException e2) {
                System.out.println("DiskLruCache " + file + " is corrupt: " + e2.getMessage() + ", removing");
                bVar.n();
            }
        }
        file.mkdirs();
        b bVar2 = new b(file, i10, i11, j6);
        bVar2.k0();
        return bVar2;
    }

    private void U() throws IOException {
        o(this.journalFileTmp);
        Iterator<d> it = this.lruEntries.values().iterator();
        while (it.hasNext()) {
            d next = it.next();
            int i10 = 0;
            if (next.currentEditor == null) {
                while (i10 < this.valueCount) {
                    this.size += next.lengths[i10];
                    i10++;
                }
            } else {
                next.currentEditor = null;
                while (i10 < this.valueCount) {
                    o(next.j(i10));
                    o(next.k(i10));
                    i10++;
                }
                it.remove();
            }
        }
    }

    private void b0() throws IOException {
        com.bumptech.glide.disklrucache.c cVar = new com.bumptech.glide.disklrucache.c(new FileInputStream(this.journalFile), com.bumptech.glide.disklrucache.d.US_ASCII);
        try {
            String strK = cVar.k();
            String strK2 = cVar.k();
            String strK3 = cVar.k();
            String strK4 = cVar.k();
            String strK5 = cVar.k();
            if (!"libcore.io.DiskLruCache".equals(strK) || !"1".equals(strK2) || !Integer.toString(this.appVersion).equals(strK3) || !Integer.toString(this.valueCount).equals(strK4) || !"".equals(strK5)) {
                throw new IOException("unexpected journal header: [" + strK + ", " + strK2 + ", " + strK4 + ", " + strK5 + "]");
            }
            int i10 = 0;
            while (true) {
                try {
                    g0(cVar.k());
                    i10++;
                } catch (EOFException unused) {
                    this.redundantOpCount = i10 - this.lruEntries.size();
                    if (cVar.h()) {
                        k0();
                    } else {
                        this.journalWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.journalFile, true), com.bumptech.glide.disklrucache.d.US_ASCII));
                    }
                    com.bumptech.glide.disklrucache.d.a(cVar);
                    return;
                }
            }
        } catch (Throwable th) {
            com.bumptech.glide.disklrucache.d.a(cVar);
            throw th;
        }
    }

    private void g0(String str) throws IOException {
        String strSubstring;
        int iIndexOf = str.indexOf(32);
        if (iIndexOf == -1) {
            throw new IOException("unexpected journal line: " + str);
        }
        int i10 = iIndexOf + 1;
        int iIndexOf2 = str.indexOf(32, i10);
        if (iIndexOf2 == -1) {
            strSubstring = str.substring(i10);
            if (iIndexOf == 6 && str.startsWith(REMOVE)) {
                this.lruEntries.remove(strSubstring);
                return;
            }
        } else {
            strSubstring = str.substring(i10, iIndexOf2);
        }
        d dVar = this.lruEntries.get(strSubstring);
        a aVar = null;
        if (dVar == null) {
            dVar = new d(this, strSubstring, aVar);
            this.lruEntries.put(strSubstring, dVar);
        }
        if (iIndexOf2 != -1 && iIndexOf == 5 && str.startsWith(CLEAN)) {
            String[] strArrSplit = str.substring(iIndexOf2 + 1).split(" ");
            dVar.readable = true;
            dVar.currentEditor = null;
            dVar.n(strArrSplit);
            return;
        }
        if (iIndexOf2 == -1 && iIndexOf == 5 && str.startsWith(DIRTY)) {
            dVar.currentEditor = new c(this, dVar, aVar);
            return;
        }
        if (iIndexOf2 == -1 && iIndexOf == 4 && str.startsWith(READ)) {
            return;
        }
        throw new IOException("unexpected journal line: " + str);
    }

    private void k() {
        if (this.journalWriter == null) {
            throw new IllegalStateException("cache is closed");
        }
    }

    @TargetApi(26)
    private static void l(Writer writer) throws IOException {
        if (Build.VERSION.SDK_INT < 26) {
            writer.close();
            return;
        }
        StrictMode.ThreadPolicy threadPolicy = StrictMode.getThreadPolicy();
        StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder(threadPolicy).permitUnbufferedIo().build());
        try {
            writer.close();
        } finally {
            StrictMode.setThreadPolicy(threadPolicy);
        }
    }

    @TargetApi(26)
    private static void r(Writer writer) throws IOException {
        if (Build.VERSION.SDK_INT < 26) {
            writer.flush();
            return;
        }
        StrictMode.ThreadPolicy threadPolicy = StrictMode.getThreadPolicy();
        StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder(threadPolicy).permitUnbufferedIo().build());
        try {
            writer.flush();
        } finally {
            StrictMode.setThreadPolicy(threadPolicy);
        }
    }

    private static void y0(File file, File file2, boolean z6) throws IOException {
        if (z6) {
            o(file2);
        }
        if (!file.renameTo(file2)) {
            throw new IOException();
        }
    }

    public c p(String str) throws IOException {
        return q(str, -1L);
    }

    private static void o(File file) throws IOException {
        if (file.exists() && !file.delete()) {
            throw new IOException();
        }
    }

    public void n() throws IOException {
        close();
        com.bumptech.glide.disklrucache.d.b(this.directory);
    }
}
