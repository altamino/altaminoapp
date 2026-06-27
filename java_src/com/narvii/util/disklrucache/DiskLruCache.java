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

/* loaded from: classes3.dex */
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
        public void write(int i) throws IOException {
        }
    };
    long size = 0;
    final LinkedHashMap<String, Entry> lruEntries = new LinkedHashMap<>(0, 0.75f, true);
    long nextSequenceNumber = 0;

    DiskLruCache(File file, int i, int i2) {
        this.directory = file;
        this.appVersion = i;
        this.journalFile = new File(file, JOURNAL_FILE);
        this.journalFileTmp = new File(file, JOURNAL_FILE_TEMP);
        this.journalFileBackup = new File(file, JOURNAL_FILE_BACKUP);
        this.valueCount = i2;
    }

    long now() {
        return System.currentTimeMillis();
    }

    public static DiskLruCache open(File file, int i, int i2) throws IOException {
        if (i2 <= 0) {
            throw new IllegalArgumentException("valueCount <= 0");
        }
        File file2 = new File(file, JOURNAL_FILE_BACKUP);
        if (file2.exists()) {
            File file3 = new File(file, JOURNAL_FILE);
            if (file3.exists()) {
                file2.delete();
            } else {
                renameTo(file2, file3, false);
            }
        }
        DiskLruCache diskLruCache = new DiskLruCache(file, i, i2);
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
        DiskLruCache diskLruCache2 = new DiskLruCache(file, i, i2);
        diskLruCache2.rebuildJournal();
        return diskLruCache2;
    }

    void readJournal() throws IOException {
        StrictLineReader strictLineReader = new StrictLineReader(new FileInputStream(this.journalFile), Util.US_ASCII);
        try {
            String line = strictLineReader.readLine();
            String line2 = strictLineReader.readLine();
            String line3 = strictLineReader.readLine();
            String line4 = strictLineReader.readLine();
            String line5 = strictLineReader.readLine();
            if (!MAGIC.equals(line) || !VERSION_ME.equals(line2) || !Integer.toString(this.appVersion).equals(line3) || !Integer.toString(this.valueCount).equals(line4) || !"".equals(line5)) {
                throw new IOException("unexpected journal header: [" + line + ", " + line2 + ", " + line4 + ", " + line5 + "]");
            }
            int i = 0;
            while (true) {
                try {
                    readJournalLine(strictLineReader.readLine());
                    i++;
                } catch (EOFException unused) {
                    this.redundantOpCount = i - this.lruEntries.size();
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
        int i = iIndexOf + 1;
        int iIndexOf2 = str.indexOf(32, i);
        if (iIndexOf2 == -1) {
            throw new IOException("unexpected journal line: " + str);
        }
        int i2 = iIndexOf2 + 1;
        int iIndexOf3 = str.indexOf(32, i2);
        if (iIndexOf3 == -1) {
            strSubstring = str.substring(i2);
            if (iIndexOf == 6 && str.startsWith(REMOVE)) {
                this.lruEntries.remove(strSubstring);
                return;
            }
        } else {
            strSubstring = str.substring(i2, iIndexOf3);
        }
        Entry entry = this.lruEntries.get(strSubstring);
        if (entry == null) {
            entry = new Entry(strSubstring);
            this.lruEntries.put(strSubstring, entry);
        }
        entry.time = Long.parseLong(str.substring(i, iIndexOf2));
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

    void processJournal() throws IOException {
        deleteIfExists(this.journalFileTmp);
        Iterator<Entry> it = this.lruEntries.values().iterator();
        while (it.hasNext()) {
            Entry next = it.next();
            int i = 0;
            if (next.currentEditor == null) {
                while (i < this.valueCount) {
                    this.size += next.lengths[i];
                    i++;
                }
            } else {
                next.currentEditor = null;
                while (i < this.valueCount) {
                    deleteIfExists(next.getCleanFile(i));
                    deleteIfExists(next.getDirtyFile(i));
                    i++;
                }
                it.remove();
            }
        }
    }

    synchronized void rebuildJournal() throws IOException {
        if (this.journalWriter != null) {
            this.journalWriter.close();
        }
        BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.journalFileTmp), Util.US_ASCII));
        try {
            bufferedWriter.write(MAGIC);
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
    }

    static void deleteIfExists(File file) throws IOException {
        if (file.exists() && !file.delete()) {
            throw new IOException();
        }
    }

    static void renameTo(File file, File file2, boolean z) throws IOException {
        if (z) {
            deleteIfExists(file2);
        }
        if (!file.renameTo(file2)) {
            throw new IOException();
        }
    }

    public synchronized Snapshot get(String str) throws IOException {
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
        for (int i = 0; i < this.valueCount; i++) {
            try {
                inputStreamArr[i] = new FileInputStream(entry.getCleanFile(i));
            } catch (FileNotFoundException unused) {
                for (int i2 = 0; i2 < this.valueCount && inputStreamArr[i2] != null; i2++) {
                    Util.closeQuietly(inputStreamArr[i2]);
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

    public Editor edit(String str) throws IOException {
        return edit(str, -1L);
    }

    synchronized Editor edit(String str, long j) throws IOException {
        checkNotClosed();
        validateKey(str);
        Entry entry = this.lruEntries.get(str);
        if (j != -1 && (entry == null || entry.sequenceNumber != j)) {
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

    public File getDirectory() {
        return this.directory;
    }

    public synchronized long size() {
        return this.size;
    }

    synchronized void completeEdit(Editor editor, boolean z) throws IOException {
        Entry entry = editor.entry;
        if (entry.currentEditor != editor) {
            throw new IllegalStateException();
        }
        if (z && !entry.readable) {
            for (int i = 0; i < this.valueCount; i++) {
                if (!editor.written[i]) {
                    editor.abort();
                    throw new IllegalStateException("Newly created entry didn't create value for index " + i);
                }
                if (!entry.getDirtyFile(i).exists()) {
                    editor.abort();
                    return;
                }
            }
        }
        for (int i2 = 0; i2 < this.valueCount; i2++) {
            File dirtyFile = entry.getDirtyFile(i2);
            if (z) {
                if (dirtyFile.exists()) {
                    File cleanFile = entry.getCleanFile(i2);
                    dirtyFile.renameTo(cleanFile);
                    long j = entry.lengths[i2];
                    long length = cleanFile.length();
                    entry.lengths[i2] = length;
                    this.size = (this.size - j) + length;
                }
            } else {
                deleteIfExists(dirtyFile);
            }
        }
        long jNow = now();
        entry.time = jNow;
        this.redundantOpCount++;
        entry.currentEditor = null;
        if (entry.readable | z) {
            entry.readable = true;
            this.journalWriter.write("CLEAN " + jNow + ' ' + entry.key + entry.getLengths() + '\n');
            if (z) {
                long j2 = this.nextSequenceNumber;
                this.nextSequenceNumber = 1 + j2;
                entry.sequenceNumber = j2;
            }
        } else {
            this.lruEntries.remove(entry.key);
            this.journalWriter.write("REMOVE " + jNow + ' ' + entry.key + '\n');
        }
        this.journalWriter.flush();
    }

    boolean journalRebuildRequired() {
        int i = this.redundantOpCount;
        return i >= 2000 && i >= this.lruEntries.size();
    }

    public synchronized boolean remove(String str) throws IOException {
        checkNotClosed();
        validateKey(str);
        Entry entry = this.lruEntries.get(str);
        if (entry != null && entry.currentEditor == null) {
            for (int i = 0; i < this.valueCount; i++) {
                File cleanFile = entry.getCleanFile(i);
                if (cleanFile.exists() && !cleanFile.delete()) {
                    throw new IOException("failed to delete " + cleanFile);
                }
                this.size -= entry.lengths[i];
                entry.lengths[i] = 0;
            }
            this.redundantOpCount++;
            this.journalWriter.append((CharSequence) ("REMOVE " + now() + ' ' + str + '\n'));
            this.lruEntries.remove(str);
            return true;
        }
        return false;
    }

    public int entryCount() {
        return this.lruEntries.size();
    }

    public synchronized boolean isClosed() {
        return this.journalWriter == null;
    }

    void checkNotClosed() {
        if (this.journalWriter == null) {
            throw new IllegalStateException("cache is closed");
        }
    }

    public synchronized void checkMaxCount(final int i) {
        checkNotClosed();
        new Thread("lru-count-flush") { // from class: com.narvii.util.disklrucache.DiskLruCache.1
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                try {
                    synchronized (DiskLruCache.this) {
                        DiskLruCache.this.checkNotClosed();
                        long jElapsedRealtime = SystemClock.elapsedRealtime();
                        int i2 = 0;
                        while (i > 0 && DiskLruCache.this.lruEntries.size() > i) {
                            DiskLruCache.this.remove(DiskLruCache.this.lruEntries.entrySet().iterator().next().getKey());
                            i2++;
                        }
                        if (DiskLruCache.this.journalRebuildRequired()) {
                            DiskLruCache.this.rebuildJournal();
                            DiskLruCache.this.redundantOpCount = 0;
                        }
                        DiskLruCache.this.journalWriter.flush();
                        Log.d("lru cache clean " + i2 + " files in " + (SystemClock.elapsedRealtime() - jElapsedRealtime) + "ms");
                    }
                } catch (IOException e) {
                    Log.i("lru cache count clean fail", e);
                }
            }
        }.start();
    }

    public synchronized void trimAndFlush(final int i, final long j) throws IOException {
        checkNotClosed();
        new Thread("lru-flush") { // from class: com.narvii.util.disklrucache.DiskLruCache.2
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                try {
                    synchronized (DiskLruCache.this) {
                        DiskLruCache.this.checkNotClosed();
                        long jElapsedRealtime = SystemClock.elapsedRealtime();
                        int i2 = 0;
                        while (i > 0 && DiskLruCache.this.size > i) {
                            DiskLruCache.this.remove(DiskLruCache.this.lruEntries.entrySet().iterator().next().getKey());
                            i2++;
                        }
                        ArrayList arrayList = new ArrayList();
                        Iterator<Map.Entry<String, Entry>> it = DiskLruCache.this.lruEntries.entrySet().iterator();
                        while (j > 0 && it.hasNext()) {
                            Map.Entry<String, Entry> next = it.next();
                            if (next.getValue().time < j) {
                                arrayList.add(next.getKey());
                            }
                        }
                        if (!arrayList.isEmpty()) {
                            Iterator it2 = arrayList.iterator();
                            while (it2.hasNext()) {
                                DiskLruCache.this.remove((String) it2.next());
                                i2++;
                            }
                        }
                        if (DiskLruCache.this.journalRebuildRequired()) {
                            DiskLruCache.this.rebuildJournal();
                            DiskLruCache.this.redundantOpCount = 0;
                        }
                        DiskLruCache.this.journalWriter.flush();
                        Log.d("lru cache clean " + i2 + " files in " + (SystemClock.elapsedRealtime() - jElapsedRealtime) + "ms");
                    }
                } catch (IOException e) {
                    Log.i("lru cache clean fail", e);
                }
            }
        }.start();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public synchronized void close() throws IOException {
        if (this.journalWriter == null) {
            return;
        }
        Iterator it = new ArrayList(this.lruEntries.values()).iterator();
        while (it.hasNext()) {
            Entry entry = (Entry) it.next();
            if (entry.currentEditor != null) {
                entry.currentEditor.abort();
            }
        }
        this.journalWriter.close();
        this.journalWriter = null;
    }

    public void delete() throws IOException {
        close();
        Util.deleteContents(this.directory);
    }

    void validateKey(String str) {
        if (LEGAL_KEY_PATTERN.matcher(str).matches()) {
            return;
        }
        throw new IllegalArgumentException("keys must match regex [a-z0-9_-]{1,120}: \"" + str + "\"");
    }

    static String inputStreamToString(InputStream inputStream) throws IOException {
        return Util.readFully(new InputStreamReader(inputStream, Util.UTF_8));
    }

    public final class Snapshot implements Closeable {
        final InputStream[] ins;
        final String key;
        final long[] lengths;
        final long sequenceNumber;

        Snapshot(String str, long j, InputStream[] inputStreamArr, long[] jArr) {
            this.key = str;
            this.sequenceNumber = j;
            this.ins = inputStreamArr;
            this.lengths = jArr;
        }

        public Editor edit() throws IOException {
            return DiskLruCache.this.edit(this.key, this.sequenceNumber);
        }

        public InputStream getInputStream(int i) {
            return this.ins[i];
        }

        public String getString(int i) throws IOException {
            return DiskLruCache.inputStreamToString(getInputStream(i));
        }

        public long getLength(int i) {
            return this.lengths[i];
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            for (InputStream inputStream : this.ins) {
                Util.closeQuietly(inputStream);
            }
        }
    }

    public final class Editor {
        boolean committed;
        final Entry entry;
        boolean hasErrors;
        final boolean[] written;

        Editor(Entry entry) {
            this.entry = entry;
            this.written = entry.readable ? null : new boolean[DiskLruCache.this.valueCount];
        }

        public InputStream newInputStream(int i) throws IOException {
            synchronized (DiskLruCache.this) {
                if (this.entry.currentEditor != this) {
                    throw new IllegalStateException();
                }
                if (!this.entry.readable) {
                    return null;
                }
                try {
                    return new FileInputStream(this.entry.getCleanFile(i));
                } catch (FileNotFoundException unused) {
                    return null;
                }
            }
        }

        public String getString(int i) throws IOException {
            InputStream inputStreamNewInputStream = newInputStream(i);
            if (inputStreamNewInputStream != null) {
                return DiskLruCache.inputStreamToString(inputStreamNewInputStream);
            }
            return null;
        }

        public OutputStream newOutputStream(int i) throws IOException {
            FileOutputStream fileOutputStream;
            FaultHidingOutputStream faultHidingOutputStream;
            if (i >= 0) {
                DiskLruCache diskLruCache = DiskLruCache.this;
                if (i < diskLruCache.valueCount) {
                    synchronized (diskLruCache) {
                        if (this.entry.currentEditor != this) {
                            throw new IllegalStateException();
                        }
                        if (!this.entry.readable) {
                            this.written[i] = true;
                        }
                        File dirtyFile = this.entry.getDirtyFile(i);
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
                    }
                    return faultHidingOutputStream;
                }
            }
            throw new IllegalArgumentException("Expected index " + i + " to be greater than 0 and less than the maximum value count of " + DiskLruCache.this.valueCount);
        }

        public void set(int i, String str) throws Throwable {
            OutputStreamWriter outputStreamWriter = null;
            try {
                OutputStreamWriter outputStreamWriter2 = new OutputStreamWriter(newOutputStream(i), Util.UTF_8);
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

        public void commit() throws IOException {
            if (this.hasErrors) {
                DiskLruCache.this.completeEdit(this, false);
                DiskLruCache.this.remove(this.entry.key);
            } else {
                DiskLruCache.this.completeEdit(this, true);
            }
            this.committed = true;
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

        class FaultHidingOutputStream extends FilterOutputStream {
            FaultHidingOutputStream(OutputStream outputStream) {
                super(outputStream);
            }

            @Override // java.io.FilterOutputStream, java.io.OutputStream
            public void write(int i) throws IOException {
                try {
                    ((FilterOutputStream) this).out.write(i);
                } catch (IOException unused) {
                    Editor.this.hasErrors = true;
                }
            }

            @Override // java.io.FilterOutputStream, java.io.OutputStream
            public void write(byte[] bArr, int i, int i2) throws IOException {
                try {
                    ((FilterOutputStream) this).out.write(bArr, i, i2);
                } catch (IOException unused) {
                    Editor.this.hasErrors = true;
                }
            }

            @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
            public void close() throws IOException {
                try {
                    ((FilterOutputStream) this).out.close();
                } catch (IOException unused) {
                    Editor.this.hasErrors = true;
                }
            }

            @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Flushable
            public void flush() throws IOException {
                try {
                    ((FilterOutputStream) this).out.flush();
                } catch (IOException unused) {
                    Editor.this.hasErrors = true;
                }
            }
        }
    }

    final class Entry {
        Editor currentEditor;
        final String key;
        final long[] lengths;
        boolean readable;
        long sequenceNumber;
        long time;

        Entry(String str) {
            this.key = str;
            this.lengths = new long[DiskLruCache.this.valueCount];
        }

        public String getLengths() throws IOException {
            StringBuilder sb = new StringBuilder();
            for (long j : this.lengths) {
                sb.append(' ');
                sb.append(j);
            }
            return sb.toString();
        }

        void setLengths(String[] strArr) throws IOException {
            if (strArr.length != DiskLruCache.this.valueCount) {
                throw invalidLengths(strArr);
            }
            for (int i = 0; i < strArr.length; i++) {
                try {
                    this.lengths[i] = Long.parseLong(strArr[i]);
                } catch (NumberFormatException unused) {
                    throw invalidLengths(strArr);
                }
            }
        }

        IOException invalidLengths(String[] strArr) throws IOException {
            throw new IOException("unexpected journal line: " + Arrays.toString(strArr));
        }

        public File getCleanFile(int i) {
            return new File(DiskLruCache.this.directory, this.key + "." + i);
        }

        public File getDirtyFile(int i) {
            return new File(DiskLruCache.this.directory, this.key + "." + i + ".tmp");
        }
    }
}
