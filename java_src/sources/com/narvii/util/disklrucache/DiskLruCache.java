package com.narvii.util.disklrucache;

import android.os.SystemClock;
import com.narvii.util.Log;
import java.io.BufferedWriter;
import java.io.Closeable;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes.dex */
public final class DiskLruCache implements Closeable {
    static final long ANY_SEQUENCE_NUMBER = -1;
    static final String CLEAN = "CLEAN";
    static final String DIRTY = "DIRTY";
    static final String JOURNAL_FILE = "journal";
    static final String JOURNAL_FILE_BACKUP = "journal.bkp";
    static final String JOURNAL_FILE_TEMP = "journal.tmp";
    static final String MAGIC = "libcore.io.DiskLruCache";
    static final String READ = "READ";
    static final String REMOVE = "REMOVE";
    static final String VERSION_ME = "com.github.mmin18.lru_time";
    final int appVersion;
    final File directory;
    final File journalFile;
    final File journalFileBackup;
    final File journalFileTmp;
    Writer journalWriter;
    int redundantOpCount;
    final int valueCount;
    static final String STRING_KEY_PATTERN = "[a-z0-9_-]{1,120}";
    static final Pattern LEGAL_KEY_PATTERN = Pattern.compile(STRING_KEY_PATTERN);
    static final OutputStream NULL_OUTPUT_STREAM = new OutputStream() { // from class: com.narvii.util.disklrucache.DiskLruCache.3
        @Override // java.io.OutputStream
        public void write(int i10) throws IOException {
        }
    };
    long size = 0;
    final LinkedHashMap<String, Entry> lruEntries = new LinkedHashMap<>(0, 0.75f, true);
    long nextSequenceNumber = 0;

    public final class Editor {
        boolean committed;
        final Entry entry;
        boolean hasErrors;
        final boolean[] written;

        class FaultHidingOutputStream extends FilterOutputStream {
            @Override // java.io.FilterOutputStream, java.io.OutputStream
            public void write(int i10) {
                try {
                    ((FilterOutputStream) this).out.write(i10);
                } catch (IOException unused) {
                    Editor.this.hasErrors = true;
                }
            }

            FaultHidingOutputStream(OutputStream outputStream) {
                super(outputStream);
            }

            @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
            public void close() {
                try {
                    ((FilterOutputStream) this).out.close();
                } catch (IOException unused) {
                    Editor.this.hasErrors = true;
                }
            }

            @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Flushable
            public void flush() {
                try {
                    ((FilterOutputStream) this).out.flush();
                } catch (IOException unused) {
                    Editor.this.hasErrors = true;
                }
            }

            @Override // java.io.FilterOutputStream, java.io.OutputStream
            public void write(byte[] bArr, int i10, int i11) {
                try {
                    ((FilterOutputStream) this).out.write(bArr, i10, i11);
                } catch (IOException unused) {
                    Editor.this.hasErrors = true;
                }
            }
        }

        public void set(int i10, String str) throws Throwable {
            OutputStreamWriter outputStreamWriter = null;
            try {
                OutputStreamWriter outputStreamWriter2 = new OutputStreamWriter(newOutputStream(i10), Util.UTF_8);
                try {
                    outputStreamWriter2.write(str);
                    Util.closeQuietly(outputStreamWriter2);
                } catch (Throwable th) {
                    th = th;
                    outputStreamWriter = outputStreamWriter2;
                    Util.closeQuietly(outputStreamWriter);
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        }

        Editor(Entry entry) {
            this.entry = entry;
            this.written = entry.readable ? null : new boolean[DiskLruCache.this.valueCount];
        }

        public void abort() throws IOException {
            DiskLruCache.this.completeEdit(this, false);
        }

        public void abortUnlessCommitted() {
            if (this.committed) {
                return;
            }
            try {
                abort();
            } catch (IOException unused) {
            }
        }

        public void commit() throws IOException {
            if (this.hasErrors) {
                DiskLruCache.this.completeEdit(this, false);
                DiskLruCache.this.remove(this.entry.key);
            } else {
                DiskLruCache.this.completeEdit(this, true);
            }
            this.committed = true;
        }

        public InputStream newInputStream(int i10) throws IOException {
            synchronized (DiskLruCache.this) {
                Entry entry = this.entry;
                if (entry.currentEditor != this) {
                    throw new IllegalStateException();
                }
                if (!entry.readable) {
                    return null;
                }
                try {
                    return new FileInputStream(this.entry.getCleanFile(i10));
                } catch (FileNotFoundException unused) {
                    return null;
                }
            }
        }

        public OutputStream newOutputStream(int i10) throws IOException {
            FileOutputStream fileOutputStream;
            FaultHidingOutputStream faultHidingOutputStream;
            if (i10 >= 0) {
                DiskLruCache diskLruCache = DiskLruCache.this;
                if (i10 < diskLruCache.valueCount) {
                    synchronized (diskLruCache) {
                        try {
                            Entry entry = this.entry;
                            if (entry.currentEditor != this) {
                                throw new IllegalStateException();
                            }
                            if (!entry.readable) {
                                this.written[i10] = true;
                            }
                            File dirtyFile = entry.getDirtyFile(i10);
                            try {
                                fileOutputStream = new FileOutputStream(dirtyFile);
                            } catch (FileNotFoundException unused) {
                                DiskLruCache.this.directory.mkdirs();
                                try {
                                    fileOutputStream = new FileOutputStream(dirtyFile);
                                } catch (FileNotFoundException unused2) {
                                    return DiskLruCache.NULL_OUTPUT_STREAM;
                                }
                            }
                            faultHidingOutputStream = new FaultHidingOutputStream(fileOutputStream);
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                    return faultHidingOutputStream;
                }
            }
            throw new IllegalArgumentException("Expected index " + i10 + " to be greater than 0 and less than the maximum value count of " + DiskLruCache.this.valueCount);
        }

        public String getString(int i10) throws IOException {
            InputStream inputStreamNewInputStream = newInputStream(i10);
            if (inputStreamNewInputStream != null) {
                return DiskLruCache.inputStreamToString(inputStreamNewInputStream);
            }
            return null;
        }
    }

    final class Entry {
        Editor currentEditor;
        final String key;
        final long[] lengths;
        boolean readable;
        long sequenceNumber;
        long time;

        void setLengths(String[] strArr) throws IOException {
            if (strArr.length != DiskLruCache.this.valueCount) {
                throw invalidLengths(strArr);
            }
            for (int i10 = 0; i10 < strArr.length; i10++) {
                try {
                    this.lengths[i10] = Long.parseLong(strArr[i10]);
                } catch (NumberFormatException unused) {
                    throw invalidLengths(strArr);
                }
            }
        }

        Entry(String str) {
            this.key = str;
            this.lengths = new long[DiskLruCache.this.valueCount];
        }

        public File getCleanFile(int i10) {
            return new File(DiskLruCache.this.directory, this.key + "." + i10);
        }

        public File getDirtyFile(int i10) {
            return new File(DiskLruCache.this.directory, this.key + "." + i10 + ".tmp");
        }

        public String getLengths() throws IOException {
            StringBuilder sb = new StringBuilder();
            for (long j6 : this.lengths) {
                sb.append(' ');
                sb.append(j6);
            }
            return sb.toString();
        }

        IOException invalidLengths(String[] strArr) throws IOException {
            throw new IOException("unexpected journal line: " + Arrays.toString(strArr));
        }
    }

    public final class Snapshot implements Closeable {
        final InputStream[] ins;
        final String key;
        final long[] lengths;
        final long sequenceNumber;

        Snapshot(String str, long j6, InputStream[] inputStreamArr, long[] jArr) {
            this.key = str;
            this.sequenceNumber = j6;
            this.ins = inputStreamArr;
            this.lengths = jArr;
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            for (InputStream inputStream : this.ins) {
                Util.closeQuietly(inputStream);
            }
        }

        public Editor edit() throws IOException {
            return DiskLruCache.this.edit(this.key, this.sequenceNumber);
        }

        public InputStream getInputStream(int i10) {
            return this.ins[i10];
        }

        public long getLength(int i10) {
            return this.lengths[i10];
        }

        public String getString(int i10) throws IOException {
            return DiskLruCache.inputStreamToString(getInputStream(i10));
        }
    }

    public synchronized void checkMaxCount(final int i10) {
        checkNotClosed();
        new Thread("lru-count-flush") { // from class: com.narvii.util.disklrucache.DiskLruCache.1
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                try {
                    synchronized (DiskLruCache.this) {
                        try {
                            DiskLruCache.this.checkNotClosed();
                            long jElapsedRealtime = SystemClock.elapsedRealtime();
                            int i11 = 0;
                            while (i10 > 0 && DiskLruCache.this.lruEntries.size() > i10) {
                                DiskLruCache.this.remove(DiskLruCache.this.lruEntries.entrySet().iterator().next().getKey());
                                i11++;
                            }
                            if (DiskLruCache.this.journalRebuildRequired()) {
                                DiskLruCache.this.rebuildJournal();
                                DiskLruCache.this.redundantOpCount = 0;
                            }
                            DiskLruCache.this.journalWriter.flush();
                            Log.d("lru cache clean " + i11 + " files in " + (SystemClock.elapsedRealtime() - jElapsedRealtime) + "ms");
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                } catch (IOException e) {
                    Log.i("lru cache count clean fail", e);
                }
            }
        }.start();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public synchronized void close() throws IOException {
        try {
            if (this.journalWriter == null) {
                return;
            }
            Iterator it = new ArrayList(this.lruEntries.values()).iterator();
            while (it.hasNext()) {
                Editor editor = ((Entry) it.next()).currentEditor;
                if (editor != null) {
                    editor.abort();
                }
            }
            this.journalWriter.close();
            this.journalWriter = null;
        } catch (Throwable th) {
            throw th;
        }
    }

    synchronized void completeEdit(Editor editor, boolean z6) throws IOException {
        Entry entry = editor.entry;
        if (entry.currentEditor != editor) {
            throw new IllegalStateException();
        }
        if (z6 && !entry.readable) {
            for (int i10 = 0; i10 < this.valueCount; i10++) {
                if (!editor.written[i10]) {
                    editor.abort();
                    throw new IllegalStateException("Newly created entry didn't create value for index " + i10);
                }
                if (!entry.getDirtyFile(i10).exists()) {
                    editor.abort();
                    return;
                }
            }
        }
        for (int i11 = 0; i11 < this.valueCount; i11++) {
            File dirtyFile = entry.getDirtyFile(i11);
            if (!z6) {
                deleteIfExists(dirtyFile);
            } else if (dirtyFile.exists()) {
                File cleanFile = entry.getCleanFile(i11);
                dirtyFile.renameTo(cleanFile);
                long j6 = entry.lengths[i11];
                long length = cleanFile.length();
                entry.lengths[i11] = length;
                this.size = (this.size - j6) + length;
            }
        }
        long jNow = now();
        entry.time = jNow;
        this.redundantOpCount++;
        entry.currentEditor = null;
        if (entry.readable || z6) {
            entry.readable = true;
            this.journalWriter.write("CLEAN " + jNow + ' ' + entry.key + entry.getLengths() + '\n');
            if (z6) {
                long j10 = this.nextSequenceNumber;
                this.nextSequenceNumber = 1 + j10;
                entry.sequenceNumber = j10;
            }
        } else {
            this.lruEntries.remove(entry.key);
            this.journalWriter.write("REMOVE " + jNow + ' ' + entry.key + '\n');
        }
        this.journalWriter.flush();
    }

    public Editor edit(String str) throws IOException {
        return edit(str, -1L);
    }

    public synchronized Snapshot get(String str) throws IOException {
        InputStream inputStream;
        checkNotClosed();
        validateKey(str);
        Entry entry = this.lruEntries.get(str);
        if (entry == null) {
            return null;
        }
        if (!entry.readable) {
            return null;
        }
        InputStream[] inputStreamArr = new InputStream[this.valueCount];
        for (int i10 = 0; i10 < this.valueCount; i10++) {
            try {
                inputStreamArr[i10] = new FileInputStream(entry.getCleanFile(i10));
            } catch (FileNotFoundException unused) {
                for (int i11 = 0; i11 < this.valueCount && (inputStream = inputStreamArr[i11]) != null; i11++) {
                    Util.closeQuietly(inputStream);
                }
                return null;
            }
        }
        long jNow = now();
        entry.time = jNow;
        this.redundantOpCount++;
        this.journalWriter.append((CharSequence) ("READ " + jNow + ' ' + str + '\n'));
        return new Snapshot(str, entry.sequenceNumber, inputStreamArr, entry.lengths);
    }

    public File getDirectory() {
        return this.directory;
    }

    public synchronized boolean isClosed() {
        return this.journalWriter == null;
    }

    synchronized void rebuildJournal() throws IOException {
        try {
            Writer writer = this.journalWriter;
            if (writer != null) {
                writer.close();
            }
            BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.journalFileTmp), Util.US_ASCII));
            try {
                bufferedWriter.write("libcore.io.DiskLruCache");
                bufferedWriter.write("\n");
                bufferedWriter.write(VERSION_ME);
                bufferedWriter.write("\n");
                bufferedWriter.write(Integer.toString(this.appVersion));
                bufferedWriter.write("\n");
                bufferedWriter.write(Integer.toString(this.valueCount));
                bufferedWriter.write("\n");
                bufferedWriter.write("\n");
                for (Entry entry : this.lruEntries.values()) {
                    if (entry.currentEditor != null) {
                        bufferedWriter.write("DIRTY " + entry.time + ' ' + entry.key + '\n');
                    } else {
                        bufferedWriter.write("CLEAN " + entry.time + ' ' + entry.key + entry.getLengths() + '\n');
                    }
                }
                bufferedWriter.close();
                if (this.journalFile.exists()) {
                    renameTo(this.journalFile, this.journalFileBackup, true);
                }
                renameTo(this.journalFileTmp, this.journalFile, false);
                this.journalFileBackup.delete();
                this.journalWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.journalFile, true), Util.US_ASCII));
            } catch (Throwable th) {
                bufferedWriter.close();
                throw th;
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public synchronized boolean remove(String str) throws IOException {
        try {
            checkNotClosed();
            validateKey(str);
            Entry entry = this.lruEntries.get(str);
            if (entry != null && entry.currentEditor == null) {
                for (int i10 = 0; i10 < this.valueCount; i10++) {
                    File cleanFile = entry.getCleanFile(i10);
                    if (cleanFile.exists() && !cleanFile.delete()) {
                        throw new IOException("failed to delete " + cleanFile);
                    }
                    long j6 = this.size;
                    long[] jArr = entry.lengths;
                    this.size = j6 - jArr[i10];
                    jArr[i10] = 0;
                }
                this.redundantOpCount++;
                this.journalWriter.append((CharSequence) ("REMOVE " + now() + ' ' + str + '\n'));
                this.lruEntries.remove(str);
                return true;
            }
            return false;
        } catch (Throwable th) {
            throw th;
        }
    }

    public synchronized long size() {
        return this.size;
    }

    public synchronized void trimAndFlush(final int i10, final long j6) throws IOException {
        checkNotClosed();
        new Thread("lru-flush") { // from class: com.narvii.util.disklrucache.DiskLruCache.2
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                try {
                    synchronized (DiskLruCache.this) {
                        try {
                            DiskLruCache.this.checkNotClosed();
                            long jElapsedRealtime = SystemClock.elapsedRealtime();
                            int i11 = 0;
                            while (true) {
                                int i12 = i10;
                                if (i12 <= 0) {
                                    break;
                                }
                                DiskLruCache diskLruCache = DiskLruCache.this;
                                if (diskLruCache.size <= i12) {
                                    break;
                                }
                                DiskLruCache.this.remove(diskLruCache.lruEntries.entrySet().iterator().next().getKey());
                                i11++;
                            }
                            ArrayList arrayList = new ArrayList();
                            Iterator<Map.Entry<String, Entry>> it = DiskLruCache.this.lruEntries.entrySet().iterator();
                            while (j6 > 0 && it.hasNext()) {
                                Map.Entry<String, Entry> next = it.next();
                                if (next.getValue().time < j6) {
                                    arrayList.add(next.getKey());
                                }
                            }
                            if (!arrayList.isEmpty()) {
                                Iterator it2 = arrayList.iterator();
                                while (it2.hasNext()) {
                                    DiskLruCache.this.remove((String) it2.next());
                                    i11++;
                                }
                            }
                            if (DiskLruCache.this.journalRebuildRequired()) {
                                DiskLruCache.this.rebuildJournal();
                                DiskLruCache.this.redundantOpCount = 0;
                            }
                            DiskLruCache.this.journalWriter.flush();
                            Log.d("lru cache clean " + i11 + " files in " + (SystemClock.elapsedRealtime() - jElapsedRealtime) + "ms");
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                } catch (IOException e) {
                    Log.i("lru cache clean fail", e);
                }
            }
        }.start();
    }

    static String inputStreamToString(InputStream inputStream) throws IOException {
        return Util.readFully(new InputStreamReader(inputStream, Util.UTF_8));
    }

    public static DiskLruCache open(File file, int i10, int i11) throws IOException {
        if (i11 <= 0) {
            throw new IllegalArgumentException("valueCount <= 0");
        }
        File file2 = new File(file, "journal.bkp");
        if (file2.exists()) {
            File file3 = new File(file, "journal");
            if (file3.exists()) {
                file2.delete();
            } else {
                renameTo(file2, file3, false);
            }
        }
        DiskLruCache diskLruCache = new DiskLruCache(file, i10, i11);
        if (diskLruCache.journalFile.exists()) {
            try {
                diskLruCache.readJournal();
                diskLruCache.processJournal();
                return diskLruCache;
            } catch (IOException e) {
                Log.w("DiskLruCache " + file + " is corrupt, removing", e);
                diskLruCache.delete();
            }
        }
        file.mkdirs();
        DiskLruCache diskLruCache2 = new DiskLruCache(file, i10, i11);
        diskLruCache2.rebuildJournal();
        return diskLruCache2;
    }

    static void renameTo(File file, File file2, boolean z6) throws IOException {
        if (z6) {
            deleteIfExists(file2);
        }
        if (!file.renameTo(file2)) {
            throw new IOException();
        }
    }

    void checkNotClosed() {
        if (this.journalWriter == null) {
            throw new IllegalStateException("cache is closed");
        }
    }

    synchronized Editor edit(String str, long j6) throws IOException {
        checkNotClosed();
        validateKey(str);
        Entry entry = this.lruEntries.get(str);
        if (j6 != -1 && (entry == null || entry.sequenceNumber != j6)) {
            return null;
        }
        if (entry == null) {
            entry = new Entry(str);
            this.lruEntries.put(str, entry);
        } else if (entry.currentEditor != null) {
            return null;
        }
        long jNow = now();
        entry.time = jNow;
        Editor editor = new Editor(entry);
        entry.currentEditor = editor;
        this.journalWriter.write("DIRTY " + jNow + ' ' + str + '\n');
        this.journalWriter.flush();
        return editor;
    }

    public int entryCount() {
        return this.lruEntries.size();
    }

    boolean journalRebuildRequired() {
        int i10 = this.redundantOpCount;
        return i10 >= 2000 && i10 >= this.lruEntries.size();
    }

    void processJournal() throws IOException {
        deleteIfExists(this.journalFileTmp);
        Iterator<Entry> it = this.lruEntries.values().iterator();
        while (it.hasNext()) {
            Entry next = it.next();
            int i10 = 0;
            if (next.currentEditor == null) {
                while (i10 < this.valueCount) {
                    this.size += next.lengths[i10];
                    i10++;
                }
            } else {
                next.currentEditor = null;
                while (i10 < this.valueCount) {
                    deleteIfExists(next.getCleanFile(i10));
                    deleteIfExists(next.getDirtyFile(i10));
                    i10++;
                }
                it.remove();
            }
        }
    }

    void readJournal() throws IOException {
        StrictLineReader strictLineReader = new StrictLineReader(new FileInputStream(this.journalFile), Util.US_ASCII);
        try {
            String line = strictLineReader.readLine();
            String line2 = strictLineReader.readLine();
            String line3 = strictLineReader.readLine();
            String line4 = strictLineReader.readLine();
            String line5 = strictLineReader.readLine();
            if (!"libcore.io.DiskLruCache".equals(line) || !VERSION_ME.equals(line2) || !Integer.toString(this.appVersion).equals(line3) || !Integer.toString(this.valueCount).equals(line4) || !"".equals(line5)) {
                throw new IOException("unexpected journal header: [" + line + ", " + line2 + ", " + line4 + ", " + line5 + "]");
            }
            int i10 = 0;
            while (true) {
                try {
                    readJournalLine(strictLineReader.readLine());
                    i10++;
                } catch (EOFException unused) {
                    this.redundantOpCount = i10 - this.lruEntries.size();
                    if (strictLineReader.hasUnterminatedLine()) {
                        rebuildJournal();
                    } else {
                        this.journalWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.journalFile, true), Util.US_ASCII));
                    }
                    Util.closeQuietly(strictLineReader);
                    return;
                }
            }
        } catch (Throwable th) {
            Util.closeQuietly(strictLineReader);
            throw th;
        }
    }

    void readJournalLine(String str) throws IOException {
        String strSubstring;
        int iIndexOf = str.indexOf(32);
        if (iIndexOf == -1) {
            throw new IOException("unexpected journal line: " + str);
        }
        int i10 = iIndexOf + 1;
        int iIndexOf2 = str.indexOf(32, i10);
        if (iIndexOf2 == -1) {
            throw new IOException("unexpected journal line: " + str);
        }
        int i11 = iIndexOf2 + 1;
        int iIndexOf3 = str.indexOf(32, i11);
        if (iIndexOf3 == -1) {
            strSubstring = str.substring(i11);
            if (iIndexOf == 6 && str.startsWith(REMOVE)) {
                this.lruEntries.remove(strSubstring);
                return;
            }
        } else {
            strSubstring = str.substring(i11, iIndexOf3);
        }
        Entry entry = this.lruEntries.get(strSubstring);
        if (entry == null) {
            entry = new Entry(strSubstring);
            this.lruEntries.put(strSubstring, entry);
        }
        entry.time = Long.parseLong(str.substring(i10, iIndexOf2));
        if (iIndexOf3 != -1 && iIndexOf == 5 && str.startsWith(CLEAN)) {
            String[] strArrSplit = str.substring(iIndexOf3 + 1).split(" ");
            entry.readable = true;
            entry.currentEditor = null;
            entry.setLengths(strArrSplit);
            return;
        }
        if (iIndexOf3 == -1 && iIndexOf == 5 && str.startsWith(DIRTY)) {
            entry.currentEditor = new Editor(entry);
            return;
        }
        if (iIndexOf3 == -1 && iIndexOf == 4 && str.startsWith(READ)) {
            return;
        }
        throw new IOException("unexpected journal line: " + str);
    }

    void validateKey(String str) {
        if (LEGAL_KEY_PATTERN.matcher(str).matches()) {
            return;
        }
        throw new IllegalArgumentException("keys must match regex [a-z0-9_-]{1,120}: \"" + str + "\"");
    }

    DiskLruCache(File file, int i10, int i11) {
        this.directory = file;
        this.appVersion = i10;
        this.journalFile = new File(file, "journal");
        this.journalFileTmp = new File(file, "journal.tmp");
        this.journalFileBackup = new File(file, "journal.bkp");
        this.valueCount = i11;
    }

    static void deleteIfExists(File file) throws IOException {
        if (file.exists() && !file.delete()) {
            throw new IOException();
        }
    }

    public void delete() throws IOException {
        close();
        Util.deleteContents(this.directory);
    }

    long now() {
        return System.currentTimeMillis();
    }
}
