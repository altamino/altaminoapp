package coil.disk;

import e8.p;
import java.io.Closeable;
import java.io.EOFException;
import java.io.Flushable;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import kotlin.coroutines.jvm.internal.l;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import kotlin.text.u;
import kotlinx.coroutines.k0;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.p0;
import kotlinx.coroutines.y2;
import okio.BufferedSink;
import okio.BufferedSource;
import okio.FileSystem;
import okio.ForwardingFileSystem;
import okio.Okio;
import okio.Path;
import okio.Sink;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.w;

/* JADX INFO: loaded from: classes9.dex */
public final class b implements Closeable, Flushable {

    @NotNull
    private static final String CLEAN = "CLEAN";

    @NotNull
    private static final String DIRTY = "DIRTY";

    @NotNull
    public static final String JOURNAL_FILE = "journal";

    @NotNull
    public static final String JOURNAL_FILE_BACKUP = "journal.bkp";

    @NotNull
    public static final String JOURNAL_FILE_TMP = "journal.tmp";

    @NotNull
    public static final String MAGIC = "libcore.io.DiskLruCache";

    @NotNull
    private static final String READ = "READ";

    @NotNull
    private static final String REMOVE = "REMOVE";

    @NotNull
    public static final String VERSION = "1";
    private final int appVersion;

    @NotNull
    private final o0 cleanupScope;
    private boolean closed;

    @NotNull
    private final Path directory;

    @NotNull
    private final e fileSystem;
    private boolean hasJournalErrors;
    private boolean initialized;

    @NotNull
    private final Path journalFile;

    @NotNull
    private final Path journalFileBackup;

    @NotNull
    private final Path journalFileTmp;

    @Nullable
    private BufferedSink journalWriter;

    @NotNull
    private final LinkedHashMap<String, c> lruEntries;
    private final long maxSize;
    private boolean mostRecentRebuildFailed;
    private boolean mostRecentTrimFailed;
    private int operationsSinceRewrite;
    private long size;
    private final int valueCount;

    @NotNull
    public static final a Companion = new a(null);

    @NotNull
    private static final kotlin.text.g LEGAL_KEY_PATTERN = new kotlin.text.g("[a-z0-9_-]{1,120}");

    public static final class a {
        public /* synthetic */ a(k kVar) {
            this();
        }

        private a() {
        }
    }

    /* JADX INFO: renamed from: coil.disk.b$b, reason: collision with other inner class name */
    public final class C0099b {
        private boolean closed;

        @NotNull
        private final c entry;

        @NotNull
        private final boolean[] written;

        public final void a() {
            d(false);
        }

        public final void b() {
            d(true);
        }

        @NotNull
        public final c g() {
            return this.entry;
        }

        @NotNull
        public final boolean[] h() {
            return this.written;
        }

        public C0099b(c cVar) {
            this.entry = cVar;
            this.written = new boolean[b.this.valueCount];
        }

        private final void d(boolean z6) {
            b bVar = b.this;
            synchronized (bVar) {
                try {
                    if (!(!this.closed)) {
                        throw new IllegalStateException("editor is closed".toString());
                    }
                    if (t.e(this.entry.b(), this)) {
                        bVar.q(this, z6);
                    }
                    this.closed = true;
                    l0 l0Var = l0.INSTANCE;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        @Nullable
        public final d c() {
            d dVarO;
            b bVar = b.this;
            synchronized (bVar) {
                b();
                dVarO = bVar.O(this.entry.d());
            }
            return dVarO;
        }

        public final void e() {
            if (t.e(this.entry.b(), this)) {
                this.entry.m(true);
            }
        }

        @NotNull
        public final Path f(int i10) {
            Path path;
            b bVar = b.this;
            synchronized (bVar) {
                if (!(!this.closed)) {
                    throw new IllegalStateException("editor is closed".toString());
                }
                this.written[i10] = true;
                Path path2 = this.entry.c().get(i10);
                coil.util.e.a(bVar.fileSystem, path2);
                path = path2;
            }
            return path;
        }
    }

    public final class c {

        @NotNull
        private final ArrayList<Path> cleanFiles;

        @Nullable
        private C0099b currentEditor;

        @NotNull
        private final ArrayList<Path> dirtyFiles;

        @NotNull
        private final String key;

        @NotNull
        private final long[] lengths;
        private int lockingSnapshotCount;
        private boolean readable;
        private boolean zombie;

        @NotNull
        public final ArrayList<Path> a() {
            return this.cleanFiles;
        }

        @Nullable
        public final C0099b b() {
            return this.currentEditor;
        }

        @NotNull
        public final ArrayList<Path> c() {
            return this.dirtyFiles;
        }

        @NotNull
        public final String d() {
            return this.key;
        }

        @NotNull
        public final long[] e() {
            return this.lengths;
        }

        public final int f() {
            return this.lockingSnapshotCount;
        }

        public final boolean g() {
            return this.readable;
        }

        public final boolean h() {
            return this.zombie;
        }

        public final void i(@Nullable C0099b c0099b) {
            this.currentEditor = c0099b;
        }

        public final void k(int i10) {
            this.lockingSnapshotCount = i10;
        }

        public final void l(boolean z6) {
            this.readable = z6;
        }

        public final void m(boolean z6) {
            this.zombie = z6;
        }

        public c(String str) {
            this.key = str;
            this.lengths = new long[b.this.valueCount];
            this.cleanFiles = new ArrayList<>(b.this.valueCount);
            this.dirtyFiles = new ArrayList<>(b.this.valueCount);
            StringBuilder sb = new StringBuilder(str);
            sb.append('.');
            int length = sb.length();
            int i10 = b.this.valueCount;
            for (int i11 = 0; i11 < i10; i11++) {
                sb.append(i11);
                this.cleanFiles.add(b.this.directory.resolve(sb.toString()));
                sb.append(".tmp");
                this.dirtyFiles.add(b.this.directory.resolve(sb.toString()));
                sb.setLength(length);
            }
        }

        @Nullable
        public final d n() {
            if (!this.readable || this.currentEditor != null || this.zombie) {
                return null;
            }
            ArrayList<Path> arrayList = this.cleanFiles;
            b bVar = b.this;
            int size = arrayList.size();
            for (int i10 = 0; i10 < size; i10++) {
                if (!bVar.fileSystem.exists(arrayList.get(i10))) {
                    try {
                        bVar.E0(this);
                    } catch (IOException unused) {
                    }
                    return null;
                }
            }
            this.lockingSnapshotCount++;
            return b.this.new d(this);
        }

        public final void o(@NotNull BufferedSink bufferedSink) throws IOException {
            for (long j6 : this.lengths) {
                bufferedSink.writeByte(32).writeDecimalLong(j6);
            }
        }

        public final void j(@NotNull List<String> list) throws IOException {
            if (list.size() == b.this.valueCount) {
                try {
                    int size = list.size();
                    for (int i10 = 0; i10 < size; i10++) {
                        this.lengths[i10] = Long.parseLong(list.get(i10));
                    }
                    return;
                } catch (NumberFormatException unused) {
                    throw new IOException("unexpected journal line: " + list);
                }
            }
            throw new IOException("unexpected journal line: " + list);
        }
    }

    public final class d implements Closeable {
        private boolean closed;

        @NotNull
        private final c entry;

        public d(c cVar) {
            this.entry = cVar;
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            if (this.closed) {
                return;
            }
            this.closed = true;
            b bVar = b.this;
            synchronized (bVar) {
                try {
                    c cVar = this.entry;
                    cVar.k(cVar.f() - 1);
                    if (this.entry.f() == 0 && this.entry.h()) {
                        bVar.E0(this.entry);
                    }
                    l0 l0Var = l0.INSTANCE;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        @Nullable
        public final C0099b d() {
            C0099b c0099bL;
            b bVar = b.this;
            synchronized (bVar) {
                close();
                c0099bL = bVar.L(this.entry.d());
            }
            return c0099bL;
        }

        @NotNull
        public final Path e(int i10) {
            if (!this.closed) {
                return this.entry.a().get(i10);
            }
            throw new IllegalStateException("snapshot is closed".toString());
        }
    }

    @kotlin.coroutines.jvm.internal.f(c = "coil.disk.DiskLruCache$launchCleanup$1", f = "DiskLruCache.kt", l = {}, m = "invokeSuspend")
    static final class f extends l implements p<o0, kotlin.coroutines.d<? super l0>, Object> {
        int label;

        f(kotlin.coroutines.d<? super f> dVar) {
            super(2, dVar);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @NotNull
        public final kotlin.coroutines.d<l0> create(@Nullable Object obj, @NotNull kotlin.coroutines.d<?> dVar) {
            return b.this.new f(dVar);
        }

        @Override // e8.p
        @Nullable
        public final Object invoke(@NotNull o0 o0Var, @Nullable kotlin.coroutines.d<? super l0> dVar) {
            return ((f) create(o0Var, dVar)).invokeSuspend(l0.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            kotlin.coroutines.intrinsics.d.e();
            if (this.label == 0) {
                w.b(obj);
                b bVar = b.this;
                synchronized (bVar) {
                    if (bVar.initialized && !bVar.closed) {
                        try {
                            bVar.G0();
                        } catch (IOException unused) {
                            bVar.mostRecentTrimFailed = true;
                        }
                        try {
                            if (bVar.U()) {
                                bVar.I0();
                            }
                        } catch (IOException unused2) {
                            bVar.mostRecentRebuildFailed = true;
                            bVar.journalWriter = Okio.buffer(Okio.blackhole());
                        }
                        return l0.INSTANCE;
                    }
                    return l0.INSTANCE;
                }
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    static final class g extends v implements e8.l<IOException, l0> {
        g() {
            super(1);
        }

        @Override // e8.l
        public /* bridge */ /* synthetic */ l0 invoke(IOException iOException) {
            invoke2(iOException);
            return l0.INSTANCE;
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2(@NotNull IOException iOException) {
            b.this.hasJournalErrors = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final synchronized void I0() {
        l0 l0Var;
        try {
            BufferedSink bufferedSink = this.journalWriter;
            if (bufferedSink != null) {
                bufferedSink.close();
            }
            BufferedSink bufferedSinkBuffer = Okio.buffer(this.fileSystem.sink(this.journalFileTmp, false));
            Throwable th = null;
            try {
                bufferedSinkBuffer.writeUtf8(MAGIC).writeByte(10);
                bufferedSinkBuffer.writeUtf8("1").writeByte(10);
                bufferedSinkBuffer.writeDecimalLong(this.appVersion).writeByte(10);
                bufferedSinkBuffer.writeDecimalLong(this.valueCount).writeByte(10);
                bufferedSinkBuffer.writeByte(10);
                for (c cVar : this.lruEntries.values()) {
                    if (cVar.b() != null) {
                        bufferedSinkBuffer.writeUtf8(DIRTY);
                        bufferedSinkBuffer.writeByte(32);
                        bufferedSinkBuffer.writeUtf8(cVar.d());
                        bufferedSinkBuffer.writeByte(10);
                    } else {
                        bufferedSinkBuffer.writeUtf8(CLEAN);
                        bufferedSinkBuffer.writeByte(32);
                        bufferedSinkBuffer.writeUtf8(cVar.d());
                        cVar.o(bufferedSinkBuffer);
                        bufferedSinkBuffer.writeByte(10);
                    }
                }
                l0Var = l0.INSTANCE;
            } catch (Throwable th2) {
                l0Var = null;
                th = th2;
            }
            if (bufferedSinkBuffer != null) {
                try {
                    bufferedSinkBuffer.close();
                } catch (Throwable th3) {
                    if (th == null) {
                        th = th3;
                    } else {
                        w7.f.a(th, th3);
                    }
                }
            }
            if (th != null) {
                throw th;
            }
            t.g(l0Var);
            if (this.fileSystem.exists(this.journalFile)) {
                this.fileSystem.atomicMove(this.journalFile, this.journalFileBackup);
                this.fileSystem.atomicMove(this.journalFileTmp, this.journalFile);
                this.fileSystem.delete(this.journalFileBackup);
            } else {
                this.fileSystem.atomicMove(this.journalFileTmp, this.journalFile);
            }
            this.journalWriter = g0();
            this.operationsSinceRewrite = 0;
            this.hasJournalErrors = false;
            this.mostRecentRebuildFailed = false;
        } catch (Throwable th4) {
            throw th4;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean U() {
        return this.operationsSinceRewrite >= 2000;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final synchronized void q(C0099b c0099b, boolean z6) {
        c cVarG = c0099b.g();
        if (!t.e(cVarG.b(), c0099b)) {
            throw new IllegalStateException("Check failed.".toString());
        }
        int i10 = 0;
        if (!z6 || cVarG.h()) {
            int i11 = this.valueCount;
            while (i10 < i11) {
                this.fileSystem.delete(cVarG.c().get(i10));
                i10++;
            }
        } else {
            int i12 = this.valueCount;
            for (int i13 = 0; i13 < i12; i13++) {
                if (c0099b.h()[i13] && !this.fileSystem.exists(cVarG.c().get(i13))) {
                    c0099b.a();
                    return;
                }
            }
            int i14 = this.valueCount;
            while (i10 < i14) {
                Path path = cVarG.c().get(i10);
                Path path2 = cVarG.a().get(i10);
                if (this.fileSystem.exists(path)) {
                    this.fileSystem.atomicMove(path, path2);
                } else {
                    coil.util.e.a(this.fileSystem, cVarG.a().get(i10));
                }
                long j6 = cVarG.e()[i10];
                Long size = this.fileSystem.metadata(path2).getSize();
                long jLongValue = size != null ? size.longValue() : 0L;
                cVarG.e()[i10] = jLongValue;
                this.size = (this.size - j6) + jLongValue;
                i10++;
            }
        }
        cVarG.i(null);
        if (cVarG.h()) {
            E0(cVarG);
            return;
        }
        this.operationsSinceRewrite++;
        BufferedSink bufferedSink = this.journalWriter;
        t.g(bufferedSink);
        if (z6 || cVarG.g()) {
            cVarG.l(true);
            bufferedSink.writeUtf8(CLEAN);
            bufferedSink.writeByte(32);
            bufferedSink.writeUtf8(cVarG.d());
            cVarG.o(bufferedSink);
            bufferedSink.writeByte(10);
        } else {
            this.lruEntries.remove(cVarG.d());
            bufferedSink.writeUtf8(REMOVE);
            bufferedSink.writeByte(32);
            bufferedSink.writeUtf8(cVarG.d());
            bufferedSink.writeByte(10);
        }
        bufferedSink.flush();
        if (this.size > this.maxSize || U()) {
            b0();
        }
    }

    @Nullable
    public final synchronized C0099b L(@NotNull String str) {
        p();
        H0(str);
        Q();
        c cVar = this.lruEntries.get(str);
        if ((cVar != null ? cVar.b() : null) != null) {
            return null;
        }
        if (cVar != null && cVar.f() != 0) {
            return null;
        }
        if (!this.mostRecentTrimFailed && !this.mostRecentRebuildFailed) {
            BufferedSink bufferedSink = this.journalWriter;
            t.g(bufferedSink);
            bufferedSink.writeUtf8(DIRTY);
            bufferedSink.writeByte(32);
            bufferedSink.writeUtf8(str);
            bufferedSink.writeByte(10);
            bufferedSink.flush();
            if (this.hasJournalErrors) {
                return null;
            }
            if (cVar == null) {
                cVar = new c(str);
                this.lruEntries.put(str, cVar);
            }
            C0099b c0099b = new C0099b(cVar);
            cVar.i(c0099b);
            return c0099b;
        }
        b0();
        return null;
    }

    @Nullable
    public final synchronized d O(@NotNull String str) {
        d dVarN;
        p();
        H0(str);
        Q();
        c cVar = this.lruEntries.get(str);
        if (cVar != null && (dVarN = cVar.n()) != null) {
            this.operationsSinceRewrite++;
            BufferedSink bufferedSink = this.journalWriter;
            t.g(bufferedSink);
            bufferedSink.writeUtf8(READ);
            bufferedSink.writeByte(32);
            bufferedSink.writeUtf8(str);
            bufferedSink.writeByte(10);
            if (U()) {
                b0();
            }
            return dVarN;
        }
        return null;
    }

    public final synchronized void Q() {
        try {
            if (this.initialized) {
                return;
            }
            this.fileSystem.delete(this.journalFileTmp);
            if (this.fileSystem.exists(this.journalFileBackup)) {
                if (this.fileSystem.exists(this.journalFile)) {
                    this.fileSystem.delete(this.journalFileBackup);
                } else {
                    this.fileSystem.atomicMove(this.journalFileBackup, this.journalFile);
                }
            }
            if (this.fileSystem.exists(this.journalFile)) {
                try {
                    t0();
                    k0();
                    this.initialized = true;
                    return;
                } catch (IOException unused) {
                    try {
                        r();
                        this.closed = false;
                        I0();
                        this.initialized = true;
                    } catch (Throwable th) {
                        this.closed = false;
                        throw th;
                    }
                }
            }
            I0();
            this.initialized = true;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public synchronized void close() {
        try {
            if (this.initialized && !this.closed) {
                Object[] array = this.lruEntries.values().toArray(new c[0]);
                t.h(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
                for (c cVar : (c[]) array) {
                    C0099b c0099bB = cVar.b();
                    if (c0099bB != null) {
                        c0099bB.e();
                    }
                }
                G0();
                p0.e(this.cleanupScope, null, 1, null);
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

    @Override // java.io.Flushable
    public synchronized void flush() {
        if (this.initialized) {
            p();
            G0();
            BufferedSink bufferedSink = this.journalWriter;
            t.g(bufferedSink);
            bufferedSink.flush();
        }
    }

    public static final class e extends ForwardingFileSystem {
        e(FileSystem fileSystem) {
            super(fileSystem);
        }

        @Override // okio.ForwardingFileSystem, okio.FileSystem
        @NotNull
        public Sink sink(@NotNull Path path, boolean z6) throws IOException {
            Path pathParent = path.parent();
            if (pathParent != null) {
                createDirectories(pathParent);
            }
            return super.sink(path, z6);
        }
    }

    private final boolean F0() throws IOException {
        for (c cVar : this.lruEntries.values()) {
            if (!cVar.h()) {
                E0(cVar);
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void G0() {
        while (this.size > this.maxSize) {
            if (!F0()) {
                return;
            }
        }
        this.mostRecentTrimFailed = false;
    }

    private final void H0(String str) {
        if (LEGAL_KEY_PATTERN.b(str)) {
            return;
        }
        throw new IllegalArgumentException(("keys must match regex [a-z0-9_-]{1,120}: \"" + str + kotlinx.serialization.json.internal.b.STRING).toString());
    }

    private final void b0() {
        kotlinx.coroutines.k.d(this.cleanupScope, null, null, new f(null), 3, null);
    }

    private final BufferedSink g0() {
        return Okio.buffer(new coil.disk.c(this.fileSystem.appendingSink(this.journalFile), new g()));
    }

    private final void k0() throws IOException {
        Iterator<c> it = this.lruEntries.values().iterator();
        long j6 = 0;
        while (it.hasNext()) {
            c next = it.next();
            int i10 = 0;
            if (next.b() == null) {
                int i11 = this.valueCount;
                while (i10 < i11) {
                    j6 += next.e()[i10];
                    i10++;
                }
            } else {
                next.i(null);
                int i12 = this.valueCount;
                while (i10 < i12) {
                    this.fileSystem.delete(next.a().get(i10));
                    this.fileSystem.delete(next.c().get(i10));
                    i10++;
                }
                it.remove();
            }
        }
        this.size = j6;
    }

    private final void p() {
        if (!(!this.closed)) {
            throw new IllegalStateException("cache is closed".toString());
        }
    }

    /* JADX WARN: Code duplicated, block: B:34:0x00c2  */
    /* JADX WARN: Code duplicated, block: B:36:0x00c6  */
    /* JADX WARN: Code duplicated, block: B:39:0x00b4 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    private final void t0() throws Throwable {
        l0 l0Var;
        BufferedSource bufferedSourceBuffer = Okio.buffer(this.fileSystem.source(this.journalFile));
        Throwable th = null;
        try {
            String utf8LineStrict = bufferedSourceBuffer.readUtf8LineStrict();
            String utf8LineStrict2 = bufferedSourceBuffer.readUtf8LineStrict();
            String utf8LineStrict3 = bufferedSourceBuffer.readUtf8LineStrict();
            String utf8LineStrict4 = bufferedSourceBuffer.readUtf8LineStrict();
            String utf8LineStrict5 = bufferedSourceBuffer.readUtf8LineStrict();
            if (!t.e(MAGIC, utf8LineStrict) || !t.e("1", utf8LineStrict2) || !t.e(String.valueOf(this.appVersion), utf8LineStrict3) || !t.e(String.valueOf(this.valueCount), utf8LineStrict4) || utf8LineStrict5.length() > 0) {
                throw new IOException("unexpected journal header: [" + utf8LineStrict + ", " + utf8LineStrict2 + ", " + utf8LineStrict3 + ", " + utf8LineStrict4 + ", " + utf8LineStrict5 + kotlinx.serialization.json.internal.b.END_LIST);
            }
            int i10 = 0;
            while (true) {
                try {
                    y0(bufferedSourceBuffer.readUtf8LineStrict());
                    i10++;
                } catch (EOFException unused) {
                    this.operationsSinceRewrite = i10 - this.lruEntries.size();
                    if (bufferedSourceBuffer.exhausted()) {
                        this.journalWriter = g0();
                    } else {
                        I0();
                    }
                    l0Var = l0.INSTANCE;
                    if (bufferedSourceBuffer != null) {
                        try {
                            bufferedSourceBuffer.close();
                        } catch (Throwable th2) {
                            if (th == null) {
                                th = th2;
                            } else {
                                w7.f.a(th, th2);
                            }
                        }
                    }
                    if (th == null) {
                        throw th;
                    }
                    t.g(l0Var);
                }
            }
        } catch (Throwable th3) {
            th = th3;
            l0Var = null;
            if (bufferedSourceBuffer != null) {
                bufferedSourceBuffer.close();
            }
            if (th == null) {
                throw th;
            }
            t.g(l0Var);
        }
    }

    private final void y0(String str) throws IOException {
        String strSubstring;
        int iB0 = u.b0(str, ' ', 0, false, 6, null);
        if (iB0 == -1) {
            throw new IOException("unexpected journal line: " + str);
        }
        int i10 = iB0 + 1;
        int iB1 = u.b0(str, ' ', i10, false, 4, null);
        if (iB1 == -1) {
            strSubstring = str.substring(i10);
            t.i(strSubstring, "this as java.lang.String).substring(startIndex)");
            if (iB0 == 6 && kotlin.text.t.K(str, REMOVE, false, 2, null)) {
                this.lruEntries.remove(strSubstring);
                return;
            }
        } else {
            strSubstring = str.substring(i10, iB1);
            t.i(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
        }
        LinkedHashMap<String, c> linkedHashMap = this.lruEntries;
        c cVar = linkedHashMap.get(strSubstring);
        if (cVar == null) {
            cVar = new c(strSubstring);
            linkedHashMap.put(strSubstring, cVar);
        }
        c cVar2 = cVar;
        if (iB1 != -1 && iB0 == 5 && kotlin.text.t.K(str, CLEAN, false, 2, null)) {
            String strSubstring2 = str.substring(iB1 + 1);
            t.i(strSubstring2, "this as java.lang.String).substring(startIndex)");
            List<String> listB0 = u.B0(strSubstring2, new char[]{' '}, false, 0, 6, null);
            cVar2.l(true);
            cVar2.i(null);
            cVar2.j(listB0);
            return;
        }
        if (iB1 == -1 && iB0 == 5 && kotlin.text.t.K(str, DIRTY, false, 2, null)) {
            cVar2.i(new C0099b(cVar2));
            return;
        }
        if (iB1 == -1 && iB0 == 4 && kotlin.text.t.K(str, READ, false, 2, null)) {
            return;
        }
        throw new IOException("unexpected journal line: " + str);
    }

    public b(@NotNull FileSystem fileSystem, @NotNull Path path, @NotNull k0 k0Var, long j6, int i10, int i11) {
        this.directory = path;
        this.maxSize = j6;
        this.appVersion = i10;
        this.valueCount = i11;
        if (j6 > 0) {
            if (i11 > 0) {
                this.journalFile = path.resolve(JOURNAL_FILE);
                this.journalFileTmp = path.resolve(JOURNAL_FILE_TMP);
                this.journalFileBackup = path.resolve(JOURNAL_FILE_BACKUP);
                this.lruEntries = new LinkedHashMap<>(0, 0.75f, true);
                this.cleanupScope = p0.a(y2.b(null, 1, null).plus(k0Var.limitedParallelism(1)));
                this.fileSystem = new e(fileSystem);
                return;
            }
            throw new IllegalArgumentException("valueCount <= 0".toString());
        }
        throw new IllegalArgumentException("maxSize <= 0".toString());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean E0(c cVar) throws IOException {
        BufferedSink bufferedSink;
        if (cVar.f() > 0 && (bufferedSink = this.journalWriter) != null) {
            bufferedSink.writeUtf8(DIRTY);
            bufferedSink.writeByte(32);
            bufferedSink.writeUtf8(cVar.d());
            bufferedSink.writeByte(10);
            bufferedSink.flush();
        }
        if (cVar.f() <= 0 && cVar.b() == null) {
            int i10 = this.valueCount;
            for (int i11 = 0; i11 < i10; i11++) {
                this.fileSystem.delete(cVar.a().get(i11));
                this.size -= cVar.e()[i11];
                cVar.e()[i11] = 0;
            }
            this.operationsSinceRewrite++;
            BufferedSink bufferedSink2 = this.journalWriter;
            if (bufferedSink2 != null) {
                bufferedSink2.writeUtf8(REMOVE);
                bufferedSink2.writeByte(32);
                bufferedSink2.writeUtf8(cVar.d());
                bufferedSink2.writeByte(10);
            }
            this.lruEntries.remove(cVar.d());
            if (U()) {
                b0();
            }
            return true;
        }
        cVar.m(true);
        return true;
    }

    private final void r() throws IOException {
        close();
        coil.util.e.b(this.fileSystem, this.directory);
    }
}
