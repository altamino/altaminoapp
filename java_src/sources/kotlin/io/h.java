package kotlin.io;

import java.io.File;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.Iterator;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.s;

/* JADX INFO: loaded from: classes10.dex */
public final class h implements kotlin.sequences.g<File> {

    @NotNull
    private final i direction;
    private final int maxDepth;

    @Nullable
    private final e8.l<File, Boolean> onEnter;

    @Nullable
    private final e8.p<File, IOException, l0> onFail;

    @Nullable
    private final e8.l<File, l0> onLeave;

    @NotNull
    private final File start;

    private static abstract class a extends c {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(@NotNull File rootDir) {
            super(rootDir);
            t.j(rootDir, "rootDir");
        }
    }

    private final class b extends kotlin.collections.b<File> {

        @NotNull
        private final ArrayDeque<c> state;

        private final class a extends a {
            private boolean failed;
            private int fileIndex;

            @Nullable
            private File[] fileList;
            private boolean rootVisited;
            final /* synthetic */ b this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(@NotNull b bVar, File rootDir) {
                super(rootDir);
                t.j(rootDir, "rootDir");
                this.this$0 = bVar;
            }

            @Override // kotlin.io.h.c
            @Nullable
            public File b() {
                if (!this.failed && this.fileList == null) {
                    e8.l lVar = h.this.onEnter;
                    if (lVar != null && !((Boolean) lVar.invoke(a())).booleanValue()) {
                        return null;
                    }
                    File[] fileArrListFiles = a().listFiles();
                    this.fileList = fileArrListFiles;
                    if (fileArrListFiles == null) {
                        e8.p pVar = h.this.onFail;
                        if (pVar != null) {
                            pVar.invoke(a(), new kotlin.io.a(a(), null, "Cannot list files in a directory", 2, null));
                        }
                        this.failed = true;
                    }
                }
                File[] fileArr = this.fileList;
                if (fileArr != null) {
                    int i10 = this.fileIndex;
                    t.g(fileArr);
                    if (i10 < fileArr.length) {
                        File[] fileArr2 = this.fileList;
                        t.g(fileArr2);
                        int i11 = this.fileIndex;
                        this.fileIndex = i11 + 1;
                        return fileArr2[i11];
                    }
                }
                if (!this.rootVisited) {
                    this.rootVisited = true;
                    return a();
                }
                e8.l lVar2 = h.this.onLeave;
                if (lVar2 != null) {
                    lVar2.invoke(a());
                }
                return null;
            }
        }

        /* JADX INFO: renamed from: kotlin.io.h$b$b, reason: collision with other inner class name */
        private final class C0430b extends c {
            final /* synthetic */ b this$0;
            private boolean visited;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C0430b(@NotNull b bVar, File rootFile) {
                super(rootFile);
                t.j(rootFile, "rootFile");
                this.this$0 = bVar;
            }

            @Override // kotlin.io.h.c
            @Nullable
            public File b() {
                if (this.visited) {
                    return null;
                }
                this.visited = true;
                return a();
            }
        }

        private final class c extends a {
            private int fileIndex;

            @Nullable
            private File[] fileList;
            private boolean rootVisited;
            final /* synthetic */ b this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public c(@NotNull b bVar, File rootDir) {
                super(rootDir);
                t.j(rootDir, "rootDir");
                this.this$0 = bVar;
            }

            /* JADX WARN: Code restructure failed: missing block: B:30:0x007f, code lost:
            
                if (r0.length == 0) goto L31;
             */
            @Override // kotlin.io.h.c
            @Nullable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public File b() {
                e8.p pVar;
                if (!this.rootVisited) {
                    e8.l lVar = h.this.onEnter;
                    if (lVar != null && !((Boolean) lVar.invoke(a())).booleanValue()) {
                        return null;
                    }
                    this.rootVisited = true;
                    return a();
                }
                File[] fileArr = this.fileList;
                if (fileArr != null) {
                    int i10 = this.fileIndex;
                    t.g(fileArr);
                    if (i10 >= fileArr.length) {
                        e8.l lVar2 = h.this.onLeave;
                        if (lVar2 != null) {
                            lVar2.invoke(a());
                        }
                        return null;
                    }
                }
                if (this.fileList == null) {
                    File[] fileArrListFiles = a().listFiles();
                    this.fileList = fileArrListFiles;
                    if (fileArrListFiles == null && (pVar = h.this.onFail) != null) {
                        pVar.invoke(a(), new kotlin.io.a(a(), null, "Cannot list files in a directory", 2, null));
                    }
                    File[] fileArr2 = this.fileList;
                    if (fileArr2 != null) {
                        t.g(fileArr2);
                    }
                    e8.l lVar3 = h.this.onLeave;
                    if (lVar3 != null) {
                        lVar3.invoke(a());
                    }
                    return null;
                }
                File[] fileArr3 = this.fileList;
                t.g(fileArr3);
                int i11 = this.fileIndex;
                this.fileIndex = i11 + 1;
                return fileArr3[i11];
            }
        }

        public /* synthetic */ class d {
            public static final /* synthetic */ int[] $EnumSwitchMapping$0;

            static {
                int[] iArr = new int[i.values().length];
                try {
                    iArr[i.TOP_DOWN.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[i.BOTTOM_UP.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                $EnumSwitchMapping$0 = iArr;
            }
        }

        public b() {
            ArrayDeque<c> arrayDeque = new ArrayDeque<>();
            this.state = arrayDeque;
            if (h.this.start.isDirectory()) {
                arrayDeque.push(f(h.this.start));
            } else if (h.this.start.isFile()) {
                arrayDeque.push(new C0430b(this, h.this.start));
            } else {
                b();
            }
        }

        private final a f(File file) {
            int i10 = d.$EnumSwitchMapping$0[h.this.direction.ordinal()];
            if (i10 == 1) {
                return new c(this, file);
            }
            if (i10 == 2) {
                return new a(this, file);
            }
            throw new s();
        }

        private final File g() {
            while (true) {
                c cVarPeek = this.state.peek();
                if (cVarPeek == null) {
                    return null;
                }
                File fileB = cVarPeek.b();
                if (fileB == null) {
                    this.state.pop();
                } else {
                    if (t.e(fileB, cVarPeek.a()) || !fileB.isDirectory() || this.state.size() >= h.this.maxDepth) {
                        return fileB;
                    }
                    this.state.push(f(fileB));
                }
            }
        }

        @Override // kotlin.collections.b
        protected void a() {
            File fileG = g();
            if (fileG != null) {
                c(fileG);
            } else {
                b();
            }
        }
    }

    private static abstract class c {

        @NotNull
        private final File root;

        @NotNull
        public final File a() {
            return this.root;
        }

        @Nullable
        public abstract File b();

        public c(@NotNull File root) {
            t.j(root, "root");
            this.root = root;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private h(File file, i iVar, e8.l<? super File, Boolean> lVar, e8.l<? super File, l0> lVar2, e8.p<? super File, ? super IOException, l0> pVar, int i10) {
        this.start = file;
        this.direction = iVar;
        this.onEnter = lVar;
        this.onLeave = lVar2;
        this.onFail = pVar;
        this.maxDepth = i10;
    }

    /* synthetic */ h(File file, i iVar, e8.l lVar, e8.l lVar2, e8.p pVar, int i10, int i11, kotlin.jvm.internal.k kVar) {
        this(file, (i11 & 2) != 0 ? i.TOP_DOWN : iVar, lVar, lVar2, pVar, (i11 & 32) != 0 ? Integer.MAX_VALUE : i10);
    }

    @Override // kotlin.sequences.g
    @NotNull
    public Iterator<File> iterator() {
        return new b();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public h(@NotNull File start, @NotNull i direction) {
        this(start, direction, null, null, null, 0, 32, null);
        t.j(start, "start");
        t.j(direction, "direction");
    }

    public /* synthetic */ h(File file, i iVar, int i10, kotlin.jvm.internal.k kVar) {
        this(file, (i10 & 2) != 0 ? i.TOP_DOWN : iVar);
    }
}
