package okhttp3.internal.cache;

import coil.disk.b;
import f8.a;
import java.io.Closeable;
import java.io.EOFException;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.Flushable;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.NoSuchElementException;
import kotlin.io.c;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import kotlin.text.g;
import kotlin.text.u;
import okhttp3.internal.Util;
import okhttp3.internal.concurrent.Task;
import okhttp3.internal.concurrent.TaskQueue;
import okhttp3.internal.concurrent.TaskRunner;
import okhttp3.internal.io.FileSystem;
import okhttp3.internal.platform.Platform;
import okio.BufferedSink;
import okio.BufferedSource;
import okio.ForwardingSource;
import okio.Okio;
import okio.Sink;
import okio.Source;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.i;
import w7.l0;

/* JADX INFO: loaded from: classes2.dex */
public final class DiskLruCache implements Closeable, Flushable {
    private final int appVersion;
    private boolean civilizedFileSystem;

    @NotNull
    private final TaskQueue cleanupQueue;

    @NotNull
    private final DiskLruCache$cleanupTask$1 cleanupTask;
    private boolean closed;

    @NotNull
    private final File directory;

    @NotNull
    private final FileSystem fileSystem;
    private boolean hasJournalErrors;
    private boolean initialized;

    @NotNull
    private final File journalFile;

    @NotNull
    private final File journalFileBackup;

    @NotNull
    private final File journalFileTmp;

    @Nullable
    private BufferedSink journalWriter;

    @NotNull
    private final LinkedHashMap<String, Entry> lruEntries;
    private long maxSize;
    private boolean mostRecentRebuildFailed;
    private boolean mostRecentTrimFailed;
    private long nextSequenceNumber;
    private int redundantOpCount;
    private long size;
    private final int valueCount;

    @NotNull
    public static final Companion Companion = new Companion(null);

    @NotNull
    public static final String JOURNAL_FILE = b.JOURNAL_FILE;

    @NotNull
    public static final String JOURNAL_FILE_TEMP = b.JOURNAL_FILE_TMP;

    @NotNull
    public static final String JOURNAL_FILE_BACKUP = b.JOURNAL_FILE_BACKUP;

    @NotNull
    public static final String MAGIC = b.MAGIC;

    @NotNull
    public static final String VERSION_1 = "1";
    public static final long ANY_SEQUENCE_NUMBER = -1;

    @NotNull
    public static final g LEGAL_KEY_PATTERN = new g("[a-z0-9_-]{1,120}");

    @NotNull
    public static final String CLEAN = "CLEAN";

    @NotNull
    public static final String DIRTY = "DIRTY";

    @NotNull
    public static final String REMOVE = "REMOVE";

    @NotNull
    public static final String READ = "READ";

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }
    }

    public final class Editor {
        private boolean done;

        @NotNull
        private final Entry entry;
        final /* synthetic */ DiskLruCache this$0;

        @Nullable
        private final boolean[] written;

        @NotNull
        public final Entry getEntry$okhttp() {
            return this.entry;
        }

        @Nullable
        public final boolean[] getWritten$okhttp() {
            return this.written;
        }

        public Editor(@NotNull DiskLruCache this$0, Entry entry) {
            t.j(this$0, "this$0");
            t.j(entry, "entry");
            this.this$0 = this$0;
            this.entry = entry;
            this.written = entry.getReadable$okhttp() ? null : new boolean[this$0.getValueCount$okhttp()];
        }

        public final void abort() throws IOException {
            DiskLruCache diskLruCache = this.this$0;
            synchronized (diskLruCache) {
                try {
                    if (!(!this.done)) {
                        throw new IllegalStateException("Check failed.".toString());
                    }
                    if (t.e(getEntry$okhttp().getCurrentEditor$okhttp(), this)) {
                        diskLruCache.completeEdit$okhttp(this, false);
                    }
                    this.done = true;
                    l0 l0Var = l0.INSTANCE;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        public final void commit() throws IOException {
            DiskLruCache diskLruCache = this.this$0;
            synchronized (diskLruCache) {
                try {
                    if (!(!this.done)) {
                        throw new IllegalStateException("Check failed.".toString());
                    }
                    if (t.e(getEntry$okhttp().getCurrentEditor$okhttp(), this)) {
                        diskLruCache.completeEdit$okhttp(this, true);
                    }
                    this.done = true;
                    l0 l0Var = l0.INSTANCE;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        public final void detach$okhttp() throws IOException {
            if (t.e(this.entry.getCurrentEditor$okhttp(), this)) {
                if (this.this$0.civilizedFileSystem) {
                    this.this$0.completeEdit$okhttp(this, false);
                } else {
                    this.entry.setZombie$okhttp(true);
                }
            }
        }

        @NotNull
        public final Sink newSink(int i10) {
            DiskLruCache diskLruCache = this.this$0;
            synchronized (diskLruCache) {
                if (!(!this.done)) {
                    throw new IllegalStateException("Check failed.".toString());
                }
                if (!t.e(getEntry$okhttp().getCurrentEditor$okhttp(), this)) {
                    return Okio.blackhole();
                }
                if (!getEntry$okhttp().getReadable$okhttp()) {
                    boolean[] written$okhttp = getWritten$okhttp();
                    t.g(written$okhttp);
                    written$okhttp[i10] = true;
                }
                try {
                    return new FaultHidingSink(diskLruCache.getFileSystem$okhttp().sink(getEntry$okhttp().getDirtyFiles$okhttp().get(i10)), new DiskLruCache$Editor$newSink$1$1(diskLruCache, this));
                } catch (FileNotFoundException unused) {
                    return Okio.blackhole();
                }
            }
        }

        @Nullable
        public final Source newSource(int i10) {
            DiskLruCache diskLruCache = this.this$0;
            synchronized (diskLruCache) {
                if (!(!this.done)) {
                    throw new IllegalStateException("Check failed.".toString());
                }
                Source source = null;
                if (!getEntry$okhttp().getReadable$okhttp() || !t.e(getEntry$okhttp().getCurrentEditor$okhttp(), this) || getEntry$okhttp().getZombie$okhttp()) {
                    return null;
                }
                try {
                    source = diskLruCache.getFileSystem$okhttp().source(getEntry$okhttp().getCleanFiles$okhttp().get(i10));
                } catch (FileNotFoundException unused) {
                }
                return source;
            }
        }
    }

    public final class Entry {

        @NotNull
        private final List<File> cleanFiles;

        @Nullable
        private Editor currentEditor;

        @NotNull
        private final List<File> dirtyFiles;

        @NotNull
        private final String key;

        @NotNull
        private final long[] lengths;
        private int lockingSourceCount;
        private boolean readable;
        private long sequenceNumber;
        final /* synthetic */ DiskLruCache this$0;
        private boolean zombie;

        @NotNull
        public final List<File> getCleanFiles$okhttp() {
            return this.cleanFiles;
        }

        @Nullable
        public final Editor getCurrentEditor$okhttp() {
            return this.currentEditor;
        }

        @NotNull
        public final List<File> getDirtyFiles$okhttp() {
            return this.dirtyFiles;
        }

        @NotNull
        public final String getKey$okhttp() {
            return this.key;
        }

        @NotNull
        public final long[] getLengths$okhttp() {
            return this.lengths;
        }

        public final int getLockingSourceCount$okhttp() {
            return this.lockingSourceCount;
        }

        public final boolean getReadable$okhttp() {
            return this.readable;
        }

        public final long getSequenceNumber$okhttp() {
            return this.sequenceNumber;
        }

        public final boolean getZombie$okhttp() {
            return this.zombie;
        }

        public final void setCurrentEditor$okhttp(@Nullable Editor editor) {
            this.currentEditor = editor;
        }

        public final void setLockingSourceCount$okhttp(int i10) {
            this.lockingSourceCount = i10;
        }

        public final void setReadable$okhttp(boolean z6) {
            this.readable = z6;
        }

        public final void setSequenceNumber$okhttp(long j6) {
            this.sequenceNumber = j6;
        }

        public final void setZombie$okhttp(boolean z6) {
            this.zombie = z6;
        }

        public Entry(@NotNull DiskLruCache this$0, String key) {
            t.j(this$0, "this$0");
            t.j(key, "key");
            this.this$0 = this$0;
            this.key = key;
            this.lengths = new long[this$0.getValueCount$okhttp()];
            this.cleanFiles = new ArrayList();
            this.dirtyFiles = new ArrayList();
            StringBuilder sb = new StringBuilder(key);
            sb.append('.');
            int length = sb.length();
            int valueCount$okhttp = this$0.getValueCount$okhttp();
            for (int i10 = 0; i10 < valueCount$okhttp; i10++) {
                sb.append(i10);
                this.cleanFiles.add(new File(this.this$0.getDirectory(), sb.toString()));
                sb.append(".tmp");
                this.dirtyFiles.add(new File(this.this$0.getDirectory(), sb.toString()));
                sb.setLength(length);
            }
        }

        private final Void invalidLengths(List<String> list) throws IOException {
            throw new IOException(t.s("unexpected journal line: ", list));
        }

        private final Source newSource(int i10) throws FileNotFoundException {
            final Source source = this.this$0.getFileSystem$okhttp().source(this.cleanFiles.get(i10));
            if (this.this$0.civilizedFileSystem) {
                return source;
            }
            this.lockingSourceCount++;
            final DiskLruCache diskLruCache = this.this$0;
            return new ForwardingSource(diskLruCache, this) { // from class: okhttp3.internal.cache.DiskLruCache$Entry$newSource$1
                private boolean closed;
                final /* synthetic */ DiskLruCache this$0;
                final /* synthetic */ DiskLruCache.Entry this$1;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(this.$fileSource);
                    this.this$0 = diskLruCache;
                    this.this$1 = this;
                }

                @Override // okio.ForwardingSource, okio.Source, java.io.Closeable, java.lang.AutoCloseable
                public void close() throws IOException {
                    super.close();
                    if (!this.closed) {
                        this.closed = true;
                        DiskLruCache diskLruCache2 = this.this$0;
                        DiskLruCache.Entry entry = this.this$1;
                        synchronized (diskLruCache2) {
                            try {
                                entry.setLockingSourceCount$okhttp(entry.getLockingSourceCount$okhttp() - 1);
                                if (entry.getLockingSourceCount$okhttp() == 0 && entry.getZombie$okhttp()) {
                                    diskLruCache2.removeEntry$okhttp(entry);
                                }
                                l0 l0Var = l0.INSTANCE;
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                    }
                }
            };
        }

        public final void setLengths$okhttp(@NotNull List<String> strings) throws IOException {
            t.j(strings, "strings");
            if (strings.size() != this.this$0.getValueCount$okhttp()) {
                invalidLengths(strings);
                throw new i();
            }
            try {
                int size = strings.size();
                int i10 = 0;
                while (i10 < size) {
                    int i11 = i10 + 1;
                    this.lengths[i10] = Long.parseLong(strings.get(i10));
                    i10 = i11;
                }
            } catch (NumberFormatException unused) {
                invalidLengths(strings);
                throw new i();
            }
        }

        @Nullable
        public final Snapshot snapshot$okhttp() {
            DiskLruCache diskLruCache = this.this$0;
            if (Util.assertionsEnabled && !Thread.holdsLock(diskLruCache)) {
                throw new AssertionError("Thread " + ((Object) Thread.currentThread().getName()) + " MUST hold lock on " + diskLruCache);
            }
            if (!this.readable) {
                return null;
            }
            if (!this.this$0.civilizedFileSystem && (this.currentEditor != null || this.zombie)) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            long[] jArr = (long[]) this.lengths.clone();
            try {
                int valueCount$okhttp = this.this$0.getValueCount$okhttp();
                for (int i10 = 0; i10 < valueCount$okhttp; i10++) {
                    arrayList.add(newSource(i10));
                }
                return new Snapshot(this.this$0, this.key, this.sequenceNumber, arrayList, jArr);
            } catch (FileNotFoundException unused) {
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    Util.closeQuietly((Source) it.next());
                }
                try {
                    this.this$0.removeEntry$okhttp(this);
                } catch (IOException unused2) {
                }
                return null;
            }
        }

        public final void writeLengths$okhttp(@NotNull BufferedSink writer) throws IOException {
            t.j(writer, "writer");
            long[] jArr = this.lengths;
            int length = jArr.length;
            int i10 = 0;
            while (i10 < length) {
                long j6 = jArr[i10];
                i10++;
                writer.writeByte(32).writeDecimalLong(j6);
            }
        }
    }

    public final class Snapshot implements Closeable {

        @NotNull
        private final String key;

        @NotNull
        private final long[] lengths;
        private final long sequenceNumber;

        @NotNull
        private final List<Source> sources;
        final /* synthetic */ DiskLruCache this$0;

        @NotNull
        public final String key() {
            return this.key;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public Snapshot(@NotNull DiskLruCache this$0, String key, @NotNull long j6, @NotNull List<? extends Source> sources, long[] lengths) {
            t.j(this$0, "this$0");
            t.j(key, "key");
            t.j(sources, "sources");
            t.j(lengths, "lengths");
            this.this$0 = this$0;
            this.key = key;
            this.sequenceNumber = j6;
            this.sources = sources;
            this.lengths = lengths;
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            Iterator<Source> it = this.sources.iterator();
            while (it.hasNext()) {
                Util.closeQuietly(it.next());
            }
        }

        @Nullable
        public final Editor edit() throws IOException {
            return this.this$0.edit(this.key, this.sequenceNumber);
        }

        public final long getLength(int i10) {
            return this.lengths[i10];
        }

        @NotNull
        public final Source getSource(int i10) {
            return this.sources.get(i10);
        }
    }

    /* JADX INFO: renamed from: okhttp3.internal.cache.DiskLruCache$snapshots$1, reason: invalid class name */
    public static final class AnonymousClass1 implements Iterator<Snapshot>, a {

        @NotNull
        private final Iterator<Entry> delegate;

        @Nullable
        private Snapshot nextSnapshot;

        @Nullable
        private Snapshot removeSnapshot;

        AnonymousClass1() {
            Iterator<Entry> it = new ArrayList(DiskLruCache.this.getLruEntries$okhttp().values()).iterator();
            t.i(it, "ArrayList(lruEntries.values).iterator()");
            this.delegate = it;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            if (this.nextSnapshot != null) {
                return true;
            }
            DiskLruCache diskLruCache = DiskLruCache.this;
            synchronized (diskLruCache) {
                if (diskLruCache.getClosed$okhttp()) {
                    return false;
                }
                while (this.delegate.hasNext()) {
                    Entry next = this.delegate.next();
                    Snapshot snapshotSnapshot$okhttp = next == null ? null : next.snapshot$okhttp();
                    if (snapshotSnapshot$okhttp != null) {
                        this.nextSnapshot = snapshotSnapshot$okhttp;
                        return true;
                    }
                }
                l0 l0Var = l0.INSTANCE;
                return false;
            }
        }

        @Override // java.util.Iterator
        @NotNull
        public Snapshot next() {
            if (!hasNext()) {
                throw new NoSuchElementException();
            }
            Snapshot snapshot = this.nextSnapshot;
            this.removeSnapshot = snapshot;
            this.nextSnapshot = null;
            t.g(snapshot);
            return snapshot;
        }

        @Override // java.util.Iterator
        public void remove() {
            Snapshot snapshot = this.removeSnapshot;
            if (snapshot == null) {
                throw new IllegalStateException("remove() before next()".toString());
            }
            try {
                DiskLruCache.this.remove(snapshot.key());
            } catch (IOException unused) {
            } finally {
                this.removeSnapshot = null;
            }
        }
    }

    private final synchronized void checkNotClosed() {
        if (!(!this.closed)) {
            throw new IllegalStateException("cache is closed".toString());
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public synchronized void close() throws IOException {
        Editor currentEditor$okhttp;
        try {
            if (this.initialized && !this.closed) {
                Collection<Entry> collectionValues = this.lruEntries.values();
                t.i(collectionValues, "lruEntries.values");
                int i10 = 0;
                Object[] array = collectionValues.toArray(new Entry[0]);
                if (array == null) {
                    throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
                }
                Entry[] entryArr = (Entry[]) array;
                int length = entryArr.length;
                while (i10 < length) {
                    Entry entry = entryArr[i10];
                    i10++;
                    if (entry.getCurrentEditor$okhttp() != null && (currentEditor$okhttp = entry.getCurrentEditor$okhttp()) != null) {
                        currentEditor$okhttp.detach$okhttp();
                    }
                }
                trimToSize();
                BufferedSink bufferedSink = this.journalWriter;
                t.g(bufferedSink);
                bufferedSink.close();
                this.journalWriter = null;
                this.closed = true;
                return;
            }
            this.closed = true;
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void completeEdit$okhttp(@NotNull Editor editor, boolean z6) throws IOException {
        t.j(editor, "editor");
        Entry entry$okhttp = editor.getEntry$okhttp();
        if (!t.e(entry$okhttp.getCurrentEditor$okhttp(), editor)) {
            throw new IllegalStateException("Check failed.".toString());
        }
        int i10 = 0;
        if (z6 && !entry$okhttp.getReadable$okhttp()) {
            int i11 = this.valueCount;
            int i12 = 0;
            while (i12 < i11) {
                int i13 = i12 + 1;
                boolean[] written$okhttp = editor.getWritten$okhttp();
                t.g(written$okhttp);
                if (!written$okhttp[i12]) {
                    editor.abort();
                    throw new IllegalStateException(t.s("Newly created entry didn't create value for index ", Integer.valueOf(i12)));
                }
                if (!this.fileSystem.exists(entry$okhttp.getDirtyFiles$okhttp().get(i12))) {
                    editor.abort();
                    return;
                }
                i12 = i13;
            }
        }
        int i14 = this.valueCount;
        while (i10 < i14) {
            int i15 = i10 + 1;
            File file = entry$okhttp.getDirtyFiles$okhttp().get(i10);
            if (!z6 || entry$okhttp.getZombie$okhttp()) {
                this.fileSystem.delete(file);
            } else if (this.fileSystem.exists(file)) {
                File file2 = entry$okhttp.getCleanFiles$okhttp().get(i10);
                this.fileSystem.rename(file, file2);
                long j6 = entry$okhttp.getLengths$okhttp()[i10];
                long size = this.fileSystem.size(file2);
                entry$okhttp.getLengths$okhttp()[i10] = size;
                this.size = (this.size - j6) + size;
            }
            i10 = i15;
        }
        entry$okhttp.setCurrentEditor$okhttp(null);
        if (entry$okhttp.getZombie$okhttp()) {
            removeEntry$okhttp(entry$okhttp);
            return;
        }
        this.redundantOpCount++;
        BufferedSink bufferedSink = this.journalWriter;
        t.g(bufferedSink);
        if (entry$okhttp.getReadable$okhttp() || z6) {
            entry$okhttp.setReadable$okhttp(true);
            bufferedSink.writeUtf8(CLEAN).writeByte(32);
            bufferedSink.writeUtf8(entry$okhttp.getKey$okhttp());
            entry$okhttp.writeLengths$okhttp(bufferedSink);
            bufferedSink.writeByte(10);
            if (z6) {
                long j10 = this.nextSequenceNumber;
                this.nextSequenceNumber = 1 + j10;
                entry$okhttp.setSequenceNumber$okhttp(j10);
            }
        } else {
            getLruEntries$okhttp().remove(entry$okhttp.getKey$okhttp());
            bufferedSink.writeUtf8(REMOVE).writeByte(32);
            bufferedSink.writeUtf8(entry$okhttp.getKey$okhttp());
            bufferedSink.writeByte(10);
        }
        bufferedSink.flush();
        if (this.size > this.maxSize || journalRebuildRequired()) {
            TaskQueue.schedule$default(this.cleanupQueue, this.cleanupTask, 0L, 2, null);
        }
    }

    @Nullable
    public final Editor edit(@NotNull String key) throws IOException {
        t.j(key, "key");
        return edit$default(this, key, 0L, 2, null);
    }

    public final synchronized void evictAll() throws IOException {
        try {
            initialize();
            Collection<Entry> collectionValues = this.lruEntries.values();
            t.i(collectionValues, "lruEntries.values");
            Object[] array = collectionValues.toArray(new Entry[0]);
            if (array == null) {
                throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
            }
            Entry[] entryArr = (Entry[]) array;
            int length = entryArr.length;
            int i10 = 0;
            while (i10 < length) {
                Entry entry = entryArr[i10];
                i10++;
                t.i(entry, "entry");
                removeEntry$okhttp(entry);
            }
            this.mostRecentTrimFailed = false;
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // java.io.Flushable
    public synchronized void flush() throws IOException {
        if (this.initialized) {
            checkNotClosed();
            trimToSize();
            BufferedSink bufferedSink = this.journalWriter;
            t.g(bufferedSink);
            bufferedSink.flush();
        }
    }

    @Nullable
    public final synchronized Snapshot get(@NotNull String key) throws IOException {
        t.j(key, "key");
        initialize();
        checkNotClosed();
        validateKey(key);
        Entry entry = this.lruEntries.get(key);
        if (entry == null) {
            return null;
        }
        Snapshot snapshotSnapshot$okhttp = entry.snapshot$okhttp();
        if (snapshotSnapshot$okhttp == null) {
            return null;
        }
        this.redundantOpCount++;
        BufferedSink bufferedSink = this.journalWriter;
        t.g(bufferedSink);
        bufferedSink.writeUtf8(READ).writeByte(32).writeUtf8(key).writeByte(10);
        if (journalRebuildRequired()) {
            TaskQueue.schedule$default(this.cleanupQueue, this.cleanupTask, 0L, 2, null);
        }
        return snapshotSnapshot$okhttp;
    }

    public final boolean getClosed$okhttp() {
        return this.closed;
    }

    @NotNull
    public final File getDirectory() {
        return this.directory;
    }

    @NotNull
    public final FileSystem getFileSystem$okhttp() {
        return this.fileSystem;
    }

    @NotNull
    public final LinkedHashMap<String, Entry> getLruEntries$okhttp() {
        return this.lruEntries;
    }

    public final synchronized long getMaxSize() {
        return this.maxSize;
    }

    public final int getValueCount$okhttp() {
        return this.valueCount;
    }

    public final synchronized void initialize() throws IOException {
        try {
            if (Util.assertionsEnabled && !Thread.holdsLock(this)) {
                throw new AssertionError("Thread " + ((Object) Thread.currentThread().getName()) + " MUST hold lock on " + this);
            }
            if (this.initialized) {
                return;
            }
            if (this.fileSystem.exists(this.journalFileBackup)) {
                if (this.fileSystem.exists(this.journalFile)) {
                    this.fileSystem.delete(this.journalFileBackup);
                } else {
                    this.fileSystem.rename(this.journalFileBackup, this.journalFile);
                }
            }
            this.civilizedFileSystem = Util.isCivilized(this.fileSystem, this.journalFileBackup);
            if (this.fileSystem.exists(this.journalFile)) {
                try {
                    readJournal();
                    processJournal();
                    this.initialized = true;
                    return;
                } catch (IOException e) {
                    Platform.Companion.get().log("DiskLruCache " + this.directory + " is corrupt: " + ((Object) e.getMessage()) + ", removing", 5, e);
                    try {
                        delete();
                        this.closed = false;
                        rebuildJournal$okhttp();
                        this.initialized = true;
                    } catch (Throwable th) {
                        this.closed = false;
                        throw th;
                    }
                }
            }
            rebuildJournal$okhttp();
            this.initialized = true;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public final synchronized boolean isClosed() {
        return this.closed;
    }

    public final synchronized void rebuildJournal$okhttp() throws IOException {
        try {
            BufferedSink bufferedSink = this.journalWriter;
            if (bufferedSink != null) {
                bufferedSink.close();
            }
            BufferedSink bufferedSinkBuffer = Okio.buffer(this.fileSystem.sink(this.journalFileTmp));
            try {
                bufferedSinkBuffer.writeUtf8(MAGIC).writeByte(10);
                bufferedSinkBuffer.writeUtf8(VERSION_1).writeByte(10);
                bufferedSinkBuffer.writeDecimalLong(this.appVersion).writeByte(10);
                bufferedSinkBuffer.writeDecimalLong(getValueCount$okhttp()).writeByte(10);
                bufferedSinkBuffer.writeByte(10);
                for (Entry entry : getLruEntries$okhttp().values()) {
                    if (entry.getCurrentEditor$okhttp() != null) {
                        bufferedSinkBuffer.writeUtf8(DIRTY).writeByte(32);
                        bufferedSinkBuffer.writeUtf8(entry.getKey$okhttp());
                        bufferedSinkBuffer.writeByte(10);
                    } else {
                        bufferedSinkBuffer.writeUtf8(CLEAN).writeByte(32);
                        bufferedSinkBuffer.writeUtf8(entry.getKey$okhttp());
                        entry.writeLengths$okhttp(bufferedSinkBuffer);
                        bufferedSinkBuffer.writeByte(10);
                    }
                }
                l0 l0Var = l0.INSTANCE;
                c.a(bufferedSinkBuffer, null);
                if (this.fileSystem.exists(this.journalFile)) {
                    this.fileSystem.rename(this.journalFile, this.journalFileBackup);
                }
                this.fileSystem.rename(this.journalFileTmp, this.journalFile);
                this.fileSystem.delete(this.journalFileBackup);
                this.journalWriter = newJournalWriter();
                this.hasJournalErrors = false;
                this.mostRecentRebuildFailed = false;
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    c.a(bufferedSinkBuffer, th);
                    throw th2;
                }
            }
        } catch (Throwable th3) {
            throw th3;
        }
    }

    public final synchronized boolean remove(@NotNull String key) throws IOException {
        t.j(key, "key");
        initialize();
        checkNotClosed();
        validateKey(key);
        Entry entry = this.lruEntries.get(key);
        if (entry == null) {
            return false;
        }
        boolean zRemoveEntry$okhttp = removeEntry$okhttp(entry);
        if (zRemoveEntry$okhttp && this.size <= this.maxSize) {
            this.mostRecentTrimFailed = false;
        }
        return zRemoveEntry$okhttp;
    }

    public final void setClosed$okhttp(boolean z6) {
        this.closed = z6;
    }

    public final synchronized void setMaxSize(long j6) {
        this.maxSize = j6;
        if (this.initialized) {
            TaskQueue.schedule$default(this.cleanupQueue, this.cleanupTask, 0L, 2, null);
        }
    }

    public final synchronized long size() throws IOException {
        initialize();
        return this.size;
    }

    @NotNull
    public final synchronized Iterator<Snapshot> snapshots() throws IOException {
        initialize();
        return new AnonymousClass1();
    }

    /* JADX WARN: Type inference failed for: r5v3, types: [okhttp3.internal.cache.DiskLruCache$cleanupTask$1] */
    public DiskLruCache(@NotNull FileSystem fileSystem, @NotNull File directory, int i10, int i11, long j6, @NotNull TaskRunner taskRunner) {
        t.j(fileSystem, "fileSystem");
        t.j(directory, "directory");
        t.j(taskRunner, "taskRunner");
        this.fileSystem = fileSystem;
        this.directory = directory;
        this.appVersion = i10;
        this.valueCount = i11;
        this.maxSize = j6;
        this.lruEntries = new LinkedHashMap<>(0, 0.75f, true);
        this.cleanupQueue = taskRunner.newQueue();
        final String strS = t.s(Util.okHttpName, " Cache");
        this.cleanupTask = new Task(strS) { // from class: okhttp3.internal.cache.DiskLruCache$cleanupTask$1
            @Override // okhttp3.internal.concurrent.Task
            public long runOnce() {
                DiskLruCache diskLruCache = this.this$0;
                synchronized (diskLruCache) {
                    if (!diskLruCache.initialized || diskLruCache.getClosed$okhttp()) {
                        return -1L;
                    }
                    try {
                        diskLruCache.trimToSize();
                    } catch (IOException unused) {
                        diskLruCache.mostRecentTrimFailed = true;
                    }
                    try {
                        if (diskLruCache.journalRebuildRequired()) {
                            diskLruCache.rebuildJournal$okhttp();
                            diskLruCache.redundantOpCount = 0;
                        }
                    } catch (IOException unused2) {
                        diskLruCache.mostRecentRebuildFailed = true;
                        diskLruCache.journalWriter = Okio.buffer(Okio.blackhole());
                    }
                    return -1L;
                }
            }
        };
        if (j6 <= 0) {
            throw new IllegalArgumentException("maxSize <= 0".toString());
        }
        if (i11 <= 0) {
            throw new IllegalArgumentException("valueCount <= 0".toString());
        }
        this.journalFile = new File(directory, JOURNAL_FILE);
        this.journalFileTmp = new File(directory, JOURNAL_FILE_TEMP);
        this.journalFileBackup = new File(directory, JOURNAL_FILE_BACKUP);
    }

    public static /* synthetic */ Editor edit$default(DiskLruCache diskLruCache, String str, long j6, int i10, Object obj) throws IOException {
        if ((i10 & 2) != 0) {
            j6 = ANY_SEQUENCE_NUMBER;
        }
        return diskLruCache.edit(str, j6);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean journalRebuildRequired() {
        int i10 = this.redundantOpCount;
        return i10 >= 2000 && i10 >= this.lruEntries.size();
    }

    private final BufferedSink newJournalWriter() throws FileNotFoundException {
        return Okio.buffer(new FaultHidingSink(this.fileSystem.appendingSink(this.journalFile), new DiskLruCache$newJournalWriter$faultHidingSink$1(this)));
    }

    private final void processJournal() throws IOException {
        this.fileSystem.delete(this.journalFileTmp);
        Iterator<Entry> it = this.lruEntries.values().iterator();
        while (it.hasNext()) {
            Entry next = it.next();
            t.i(next, "i.next()");
            Entry entry = next;
            int i10 = 0;
            if (entry.getCurrentEditor$okhttp() == null) {
                int i11 = this.valueCount;
                while (i10 < i11) {
                    this.size += entry.getLengths$okhttp()[i10];
                    i10++;
                }
            } else {
                entry.setCurrentEditor$okhttp(null);
                int i12 = this.valueCount;
                while (i10 < i12) {
                    this.fileSystem.delete(entry.getCleanFiles$okhttp().get(i10));
                    this.fileSystem.delete(entry.getDirtyFiles$okhttp().get(i10));
                    i10++;
                }
                it.remove();
            }
        }
    }

    private final void readJournal() throws IOException {
        BufferedSource bufferedSourceBuffer = Okio.buffer(this.fileSystem.source(this.journalFile));
        try {
            String utf8LineStrict = bufferedSourceBuffer.readUtf8LineStrict();
            String utf8LineStrict2 = bufferedSourceBuffer.readUtf8LineStrict();
            String utf8LineStrict3 = bufferedSourceBuffer.readUtf8LineStrict();
            String utf8LineStrict4 = bufferedSourceBuffer.readUtf8LineStrict();
            String utf8LineStrict5 = bufferedSourceBuffer.readUtf8LineStrict();
            if (!t.e(MAGIC, utf8LineStrict) || !t.e(VERSION_1, utf8LineStrict2) || !t.e(String.valueOf(this.appVersion), utf8LineStrict3) || !t.e(String.valueOf(getValueCount$okhttp()), utf8LineStrict4) || utf8LineStrict5.length() > 0) {
                throw new IOException("unexpected journal header: [" + utf8LineStrict + ", " + utf8LineStrict2 + ", " + utf8LineStrict4 + ", " + utf8LineStrict5 + kotlinx.serialization.json.internal.b.END_LIST);
            }
            int i10 = 0;
            while (true) {
                try {
                    readJournalLine(bufferedSourceBuffer.readUtf8LineStrict());
                    i10++;
                } catch (EOFException unused) {
                    this.redundantOpCount = i10 - getLruEntries$okhttp().size();
                    if (bufferedSourceBuffer.exhausted()) {
                        this.journalWriter = newJournalWriter();
                    } else {
                        rebuildJournal$okhttp();
                    }
                    l0 l0Var = l0.INSTANCE;
                    c.a(bufferedSourceBuffer, null);
                    return;
                }
            }
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                c.a(bufferedSourceBuffer, th);
                throw th2;
            }
        }
    }

    private final void readJournalLine(String str) throws IOException {
        String strSubstring;
        int iB0 = u.b0(str, ' ', 0, false, 6, null);
        if (iB0 == -1) {
            throw new IOException(t.s("unexpected journal line: ", str));
        }
        int i10 = iB0 + 1;
        int iB1 = u.b0(str, ' ', i10, false, 4, null);
        if (iB1 == -1) {
            strSubstring = str.substring(i10);
            t.i(strSubstring, "this as java.lang.String).substring(startIndex)");
            String str2 = REMOVE;
            if (iB0 == str2.length() && kotlin.text.t.K(str, str2, false, 2, null)) {
                this.lruEntries.remove(strSubstring);
                return;
            }
        } else {
            strSubstring = str.substring(i10, iB1);
            t.i(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
        }
        Entry entry = this.lruEntries.get(strSubstring);
        if (entry == null) {
            entry = new Entry(this, strSubstring);
            this.lruEntries.put(strSubstring, entry);
        }
        if (iB1 != -1) {
            String str3 = CLEAN;
            if (iB0 == str3.length() && kotlin.text.t.K(str, str3, false, 2, null)) {
                String strSubstring2 = str.substring(iB1 + 1);
                t.i(strSubstring2, "this as java.lang.String).substring(startIndex)");
                List<String> listB0 = u.B0(strSubstring2, new char[]{' '}, false, 0, 6, null);
                entry.setReadable$okhttp(true);
                entry.setCurrentEditor$okhttp(null);
                entry.setLengths$okhttp(listB0);
                return;
            }
        }
        if (iB1 == -1) {
            String str4 = DIRTY;
            if (iB0 == str4.length() && kotlin.text.t.K(str, str4, false, 2, null)) {
                entry.setCurrentEditor$okhttp(new Editor(this, entry));
                return;
            }
        }
        if (iB1 == -1) {
            String str5 = READ;
            if (iB0 == str5.length() && kotlin.text.t.K(str, str5, false, 2, null)) {
                return;
            }
        }
        throw new IOException(t.s("unexpected journal line: ", str));
    }

    private final boolean removeOldestEntry() throws IOException {
        for (Entry toEvict : this.lruEntries.values()) {
            if (!toEvict.getZombie$okhttp()) {
                t.i(toEvict, "toEvict");
                removeEntry$okhttp(toEvict);
                return true;
            }
        }
        return false;
    }

    private final void validateKey(String str) {
        if (LEGAL_KEY_PATTERN.b(str)) {
            return;
        }
        throw new IllegalArgumentException(("keys must match regex [a-z0-9_-]{1,120}: \"" + str + kotlinx.serialization.json.internal.b.STRING).toString());
    }

    @Nullable
    public final synchronized Editor edit(@NotNull String key, long j6) throws IOException {
        t.j(key, "key");
        initialize();
        checkNotClosed();
        validateKey(key);
        Entry entry = this.lruEntries.get(key);
        if (j6 != ANY_SEQUENCE_NUMBER && (entry == null || entry.getSequenceNumber$okhttp() != j6)) {
            return null;
        }
        if ((entry == null ? null : entry.getCurrentEditor$okhttp()) != null) {
            return null;
        }
        if (entry != null && entry.getLockingSourceCount$okhttp() != 0) {
            return null;
        }
        if (!this.mostRecentTrimFailed && !this.mostRecentRebuildFailed) {
            BufferedSink bufferedSink = this.journalWriter;
            t.g(bufferedSink);
            bufferedSink.writeUtf8(DIRTY).writeByte(32).writeUtf8(key).writeByte(10);
            bufferedSink.flush();
            if (this.hasJournalErrors) {
                return null;
            }
            if (entry == null) {
                entry = new Entry(this, key);
                this.lruEntries.put(key, entry);
            }
            Editor editor = new Editor(this, entry);
            entry.setCurrentEditor$okhttp(editor);
            return editor;
        }
        TaskQueue.schedule$default(this.cleanupQueue, this.cleanupTask, 0L, 2, null);
        return null;
    }

    public final boolean removeEntry$okhttp(@NotNull Entry entry) throws IOException {
        BufferedSink bufferedSink;
        t.j(entry, "entry");
        if (!this.civilizedFileSystem) {
            if (entry.getLockingSourceCount$okhttp() > 0 && (bufferedSink = this.journalWriter) != null) {
                bufferedSink.writeUtf8(DIRTY);
                bufferedSink.writeByte(32);
                bufferedSink.writeUtf8(entry.getKey$okhttp());
                bufferedSink.writeByte(10);
                bufferedSink.flush();
            }
            if (entry.getLockingSourceCount$okhttp() > 0 || entry.getCurrentEditor$okhttp() != null) {
                entry.setZombie$okhttp(true);
                return true;
            }
        }
        Editor currentEditor$okhttp = entry.getCurrentEditor$okhttp();
        if (currentEditor$okhttp != null) {
            currentEditor$okhttp.detach$okhttp();
        }
        int i10 = this.valueCount;
        for (int i11 = 0; i11 < i10; i11++) {
            this.fileSystem.delete(entry.getCleanFiles$okhttp().get(i11));
            this.size -= entry.getLengths$okhttp()[i11];
            entry.getLengths$okhttp()[i11] = 0;
        }
        this.redundantOpCount++;
        BufferedSink bufferedSink2 = this.journalWriter;
        if (bufferedSink2 != null) {
            bufferedSink2.writeUtf8(REMOVE);
            bufferedSink2.writeByte(32);
            bufferedSink2.writeUtf8(entry.getKey$okhttp());
            bufferedSink2.writeByte(10);
        }
        this.lruEntries.remove(entry.getKey$okhttp());
        if (journalRebuildRequired()) {
            TaskQueue.schedule$default(this.cleanupQueue, this.cleanupTask, 0L, 2, null);
        }
        return true;
    }

    public final void trimToSize() throws IOException {
        while (this.size > this.maxSize) {
            if (!removeOldestEntry()) {
                return;
            }
        }
        this.mostRecentTrimFailed = false;
    }

    public final void delete() throws IOException {
        close();
        this.fileSystem.deleteContents(this.directory);
    }
}
