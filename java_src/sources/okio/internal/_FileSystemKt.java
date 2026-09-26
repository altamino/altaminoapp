package okio.internal;

import androidx.renderscript.ScriptIntrinsicBLAS;
import e8.p;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.v;
import kotlin.coroutines.jvm.internal.d;
import kotlin.coroutines.jvm.internal.f;
import kotlin.coroutines.jvm.internal.k;
import kotlin.jvm.internal.t;
import kotlin.sequences.g;
import kotlin.sequences.i;
import okio.BufferedSink;
import okio.FileMetadata;
import okio.FileSystem;
import okio.Okio;
import okio.Path;
import okio.Source;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.w;

/* JADX INFO: loaded from: classes5.dex */
public final class _FileSystemKt {

    /* JADX INFO: renamed from: okio.internal._FileSystemKt$collectRecursively$1, reason: invalid class name */
    @f(c = "okio.internal._FileSystemKt", f = "-FileSystem.kt", l = {113, 132, ScriptIntrinsicBLAS.RIGHT}, m = "collectRecursively")
    static final class AnonymousClass1 extends d {
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        Object L$4;
        boolean Z$0;
        boolean Z$1;
        int label;
        /* synthetic */ Object result;

        AnonymousClass1(kotlin.coroutines.d<? super AnonymousClass1> dVar) {
            super(dVar);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return _FileSystemKt.collectRecursively(null, null, null, null, false, false, this);
        }
    }

    /* JADX INFO: renamed from: okio.internal._FileSystemKt$commonListRecursively$1, reason: invalid class name and case insensitive filesystem */
    @f(c = "okio.internal._FileSystemKt$commonListRecursively$1", f = "-FileSystem.kt", l = {93}, m = "invokeSuspend")
    static final class C05901 extends k implements p<i<? super Path>, kotlin.coroutines.d<? super l0>, Object> {
        final /* synthetic */ Path $dir;
        final /* synthetic */ boolean $followSymlinks;
        final /* synthetic */ FileSystem $this_commonListRecursively;
        private /* synthetic */ Object L$0;
        Object L$1;
        Object L$2;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C05901(Path path, FileSystem fileSystem, boolean z6, kotlin.coroutines.d<? super C05901> dVar) {
            super(2, dVar);
            this.$dir = path;
            this.$this_commonListRecursively = fileSystem;
            this.$followSymlinks = z6;
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @NotNull
        public final kotlin.coroutines.d<l0> create(@Nullable Object obj, @NotNull kotlin.coroutines.d<?> dVar) {
            C05901 c05901 = new C05901(this.$dir, this.$this_commonListRecursively, this.$followSymlinks, dVar);
            c05901.L$0 = obj;
            return c05901;
        }

        @Override // e8.p
        @Nullable
        public final Object invoke(@NotNull i<? super Path> iVar, @Nullable kotlin.coroutines.d<? super l0> dVar) {
            return ((C05901) create(iVar, dVar)).invokeSuspend(l0.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            i iVar;
            kotlin.collections.k kVar;
            Iterator<Path> it;
            Object objE = kotlin.coroutines.intrinsics.d.e();
            int i10 = this.label;
            if (i10 != 0) {
                if (i10 == 1) {
                    it = (Iterator) this.L$2;
                    kotlin.collections.k kVar2 = (kotlin.collections.k) this.L$1;
                    i iVar2 = (i) this.L$0;
                    w.b(obj);
                    kVar = kVar2;
                    iVar = iVar2;
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                w.b(obj);
                i iVar3 = (i) this.L$0;
                kotlin.collections.k kVar3 = new kotlin.collections.k();
                kVar3.g(this.$dir);
                iVar = iVar3;
                kVar = kVar3;
                it = this.$this_commonListRecursively.list(this.$dir).iterator();
            }
            while (it.hasNext()) {
                Path next = it.next();
                FileSystem fileSystem = this.$this_commonListRecursively;
                boolean z6 = this.$followSymlinks;
                this.L$0 = iVar;
                this.L$1 = kVar;
                this.L$2 = it;
                this.label = 1;
                if (_FileSystemKt.collectRecursively(iVar, fileSystem, kVar, next, z6, false, this) == objE) {
                    return objE;
                }
            }
            return l0.INSTANCE;
        }
    }

    /* JADX WARN: Code duplicated, block: B:50:0x00f8 A[Catch: all -> 0x005d, TRY_LEAVE, TryCatch #1 {all -> 0x005d, blocks: (B:17:0x0058, B:48:0x00f2, B:50:0x00f8), top: B:69:0x0058 }] */
    /* JADX WARN: Code duplicated, block: B:60:0x0135  */
    /* JADX WARN: Code duplicated, block: B:62:0x0148 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:65:0x014c  */
    /* JADX WARN: Code duplicated, block: B:72:0x0121 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:74:? A[LOOP:0: B:48:0x00f2->B:74:?, LOOP_END, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x001a  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v11 */
    /* JADX WARN: Type inference failed for: r11v5 */
    /* JADX WARN: Type inference failed for: r11v6, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r12v0 */
    /* JADX WARN: Type inference failed for: r12v2 */
    /* JADX WARN: Type inference failed for: r12v3, types: [kotlin.sequences.i] */
    /* JADX WARN: Type inference failed for: r12v4 */
    /* JADX WARN: Type inference failed for: r12v7 */
    /* JADX WARN: Type inference failed for: r15v0, types: [java.lang.Object, kotlin.sequences.i, kotlin.sequences.i<? super okio.Path>] */
    /* JADX WARN: Type inference failed for: r15v1, types: [kotlin.sequences.i] */
    @Nullable
    public static final Object collectRecursively(@NotNull i<? super Path> iVar, @NotNull FileSystem fileSystem, @NotNull kotlin.collections.k<Path> kVar, @NotNull Path path, boolean z6, boolean z10, @NotNull kotlin.coroutines.d<? super l0> dVar) throws Throwable {
        AnonymousClass1 anonymousClass1;
        FileSystem fileSystem2;
        kotlin.collections.k<Path> kVar2;
        boolean z11;
        ?? r12;
        boolean z12;
        FileSystem fileSystem3;
        kotlin.collections.k<Path> kVar3;
        FileSystem fileSystem4;
        ?? r11;
        Path path2;
        boolean z13;
        boolean z14;
        Iterator<Path> it;
        Path next;
        Path path3 = path;
        boolean z15 = z10;
        if (dVar instanceof AnonymousClass1) {
            anonymousClass1 = (AnonymousClass1) dVar;
            int i10 = anonymousClass1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                anonymousClass1.label = i10 - Integer.MIN_VALUE;
            } else {
                anonymousClass1 = new AnonymousClass1(dVar);
            }
        } else {
            anonymousClass1 = new AnonymousClass1(dVar);
        }
        Object obj = anonymousClass1.result;
        Object objE = kotlin.coroutines.intrinsics.d.e();
        int i11 = anonymousClass1.label;
        int i12 = 0;
        if (i11 == 0) {
            w.b(obj);
            if (z15) {
                fileSystem2 = fileSystem;
                kVar2 = kVar;
                z11 = z6;
            } else {
                anonymousClass1.L$0 = iVar;
                fileSystem2 = fileSystem;
                anonymousClass1.L$1 = fileSystem2;
                kVar2 = kVar;
                anonymousClass1.L$2 = kVar2;
                anonymousClass1.L$3 = path3;
                z11 = z6;
                anonymousClass1.Z$0 = z11;
                anonymousClass1.Z$1 = z15;
                anonymousClass1.label = 1;
                if (iVar.a(path3, anonymousClass1) == objE) {
                    return objE;
                }
            }
            r12 = iVar;
            z12 = z11;
            fileSystem3 = fileSystem2;
        } else {
            if (i11 != 1) {
                if (i11 == 2) {
                    z14 = anonymousClass1.Z$1;
                    z13 = anonymousClass1.Z$0;
                    it = (Iterator) anonymousClass1.L$4;
                    path2 = (Path) anonymousClass1.L$3;
                    kVar3 = (kotlin.collections.k) anonymousClass1.L$2;
                    fileSystem4 = (FileSystem) anonymousClass1.L$1;
                    i iVar2 = (i) anonymousClass1.L$0;
                    try {
                        w.b(obj);
                        r11 = iVar2;
                        while (it.hasNext()) {
                            next = it.next();
                            anonymousClass1.L$0 = r11;
                            anonymousClass1.L$1 = fileSystem4;
                            anonymousClass1.L$2 = kVar3;
                            anonymousClass1.L$3 = path2;
                            anonymousClass1.L$4 = it;
                            anonymousClass1.Z$0 = z13;
                            anonymousClass1.Z$1 = z14;
                            anonymousClass1.label = 2;
                            if (collectRecursively(r11, fileSystem4, kVar3, next, z13, z14, anonymousClass1) == objE) {
                                return objE;
                            }
                        }
                        kVar3.y();
                        z15 = z14;
                        path3 = path2;
                        r12 = r11;
                        if (z15) {
                            return l0.INSTANCE;
                        }
                        anonymousClass1.L$0 = null;
                        anonymousClass1.L$1 = null;
                        anonymousClass1.L$2 = null;
                        anonymousClass1.L$3 = null;
                        anonymousClass1.L$4 = null;
                        anonymousClass1.label = 3;
                        if (r12.a(path3, anonymousClass1) == objE) {
                            return objE;
                        }
                    } catch (Throwable th) {
                        th = th;
                        kVar3.y();
                        throw th;
                    }
                } else {
                    if (i11 != 3) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    w.b(obj);
                }
                return l0.INSTANCE;
            }
            boolean z16 = anonymousClass1.Z$1;
            boolean z17 = anonymousClass1.Z$0;
            Path path4 = (Path) anonymousClass1.L$3;
            kVar2 = (kotlin.collections.k) anonymousClass1.L$2;
            fileSystem3 = (FileSystem) anonymousClass1.L$1;
            i iVar3 = (i) anonymousClass1.L$0;
            w.b(obj);
            z15 = z16;
            z12 = z17;
            path3 = path4;
            r12 = iVar3;
        }
        List<Path> listListOrNull = fileSystem3.listOrNull(path3);
        if (listListOrNull == null) {
            listListOrNull = v.m();
        }
        if (true ^ listListOrNull.isEmpty()) {
            Path path5 = path3;
            while (true) {
                if (z12 && kVar2.contains(path5)) {
                    throw new IOException("symlink cycle at " + path3);
                }
                Path pathSymlinkTarget = symlinkTarget(fileSystem3, path5);
                if (pathSymlinkTarget != null) {
                    i12++;
                    path5 = pathSymlinkTarget;
                } else if (z12 || i12 == 0) {
                    kVar2.g(path5);
                    try {
                        kVar3 = kVar2;
                        fileSystem4 = fileSystem3;
                        r11 = r12;
                        path2 = path3;
                        z13 = z12;
                        z14 = z15;
                        it = listListOrNull.iterator();
                        while (it.hasNext()) {
                            next = it.next();
                            anonymousClass1.L$0 = r11;
                            anonymousClass1.L$1 = fileSystem4;
                            anonymousClass1.L$2 = kVar3;
                            anonymousClass1.L$3 = path2;
                            anonymousClass1.L$4 = it;
                            anonymousClass1.Z$0 = z13;
                            anonymousClass1.Z$1 = z14;
                            anonymousClass1.label = 2;
                            if (collectRecursively(r11, fileSystem4, kVar3, next, z13, z14, anonymousClass1) == objE) {
                                return objE;
                            }
                        }
                        kVar3.y();
                        z15 = z14;
                        path3 = path2;
                        r12 = r11;
                    } catch (Throwable th2) {
                        th = th2;
                        kVar3 = kVar2;
                        kVar3.y();
                        throw th;
                    }
                }
            }
        }
        if (z15) {
            return l0.INSTANCE;
        }
        anonymousClass1.L$0 = null;
        anonymousClass1.L$1 = null;
        anonymousClass1.L$2 = null;
        anonymousClass1.L$3 = null;
        anonymousClass1.L$4 = null;
        anonymousClass1.label = 3;
        if (r12.a(path3, anonymousClass1) == objE) {
            return objE;
        }
        return l0.INSTANCE;
    }

    public static final void commonCopy(@NotNull FileSystem fileSystem, @NotNull Path source, @NotNull Path target) throws IOException {
        Long lValueOf;
        Long lValueOf2;
        t.j(fileSystem, "<this>");
        t.j(source, "source");
        t.j(target, "target");
        Source source2 = fileSystem.source(source);
        Throwable th = null;
        try {
            BufferedSink bufferedSinkBuffer = Okio.buffer(fileSystem.sink(target));
            try {
                lValueOf2 = Long.valueOf(bufferedSinkBuffer.writeAll(source2));
                th = null;
            } catch (Throwable th2) {
                th = th2;
                lValueOf2 = null;
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
            t.g(lValueOf2);
            lValueOf = Long.valueOf(lValueOf2.longValue());
            if (source2 != null) {
                try {
                    source2.close();
                } catch (Throwable th4) {
                    if (th == null) {
                        th = th4;
                    } else {
                        w7.f.a(th, th4);
                    }
                }
            }
            if (th != null) {
                throw th;
            }
            t.g(lValueOf);
        } catch (Throwable th5) {
            th = th5;
            lValueOf = null;
        }
    }

    public static final void commonCreateDirectories(@NotNull FileSystem fileSystem, @NotNull Path dir, boolean z6) throws IOException {
        t.j(fileSystem, "<this>");
        t.j(dir, "dir");
        kotlin.collections.k kVar = new kotlin.collections.k();
        for (Path pathParent = dir; pathParent != null && !fileSystem.exists(pathParent); pathParent = pathParent.parent()) {
            kVar.f(pathParent);
        }
        if (z6 && kVar.isEmpty()) {
            throw new IOException(dir + " already exist.");
        }
        Iterator<E> it = kVar.iterator();
        while (it.hasNext()) {
            fileSystem.createDirectory((Path) it.next());
        }
    }

    public static final void commonDeleteRecursively(@NotNull FileSystem fileSystem, @NotNull Path fileOrDirectory, boolean z6) throws IOException {
        t.j(fileSystem, "<this>");
        t.j(fileOrDirectory, "fileOrDirectory");
        Iterator it = kotlin.sequences.k.b(new _FileSystemKt$commonDeleteRecursively$sequence$1(fileSystem, fileOrDirectory, null)).iterator();
        while (it.hasNext()) {
            fileSystem.delete((Path) it.next(), z6 && !it.hasNext());
        }
    }

    public static final boolean commonExists(@NotNull FileSystem fileSystem, @NotNull Path path) throws IOException {
        t.j(fileSystem, "<this>");
        t.j(path, "path");
        return fileSystem.metadataOrNull(path) != null;
    }

    @NotNull
    public static final g<Path> commonListRecursively(@NotNull FileSystem fileSystem, @NotNull Path dir, boolean z6) throws IOException {
        t.j(fileSystem, "<this>");
        t.j(dir, "dir");
        return kotlin.sequences.k.b(new C05901(dir, fileSystem, z6, null));
    }

    @NotNull
    public static final FileMetadata commonMetadata(@NotNull FileSystem fileSystem, @NotNull Path path) throws IOException {
        t.j(fileSystem, "<this>");
        t.j(path, "path");
        FileMetadata fileMetadataMetadataOrNull = fileSystem.metadataOrNull(path);
        if (fileMetadataMetadataOrNull != null) {
            return fileMetadataMetadataOrNull;
        }
        throw new FileNotFoundException("no such file: " + path);
    }

    @Nullable
    public static final Path symlinkTarget(@NotNull FileSystem fileSystem, @NotNull Path path) throws IOException {
        t.j(fileSystem, "<this>");
        t.j(path, "path");
        Path symlinkTarget = fileSystem.metadata(path).getSymlinkTarget();
        if (symlinkTarget == null) {
            return null;
        }
        Path pathParent = path.parent();
        t.g(pathParent);
        return pathParent.resolve(symlinkTarget);
    }
}
