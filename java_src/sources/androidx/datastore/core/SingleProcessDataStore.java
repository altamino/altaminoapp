package androidx.datastore.core;

import androidx.annotation.GuardedBy;
import androidx.datastore.core.handlers.NoOpCorruptionHandler;
import e8.a;
import e8.p;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import kotlin.collections.d0;
import kotlin.coroutines.d;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.k0;
import kotlin.jvm.internal.p0;
import kotlin.jvm.internal.t;
import kotlinx.coroutines.e1;
import kotlinx.coroutines.flow.g;
import kotlinx.coroutines.flow.i;
import kotlinx.coroutines.flow.n0;
import kotlinx.coroutines.flow.x;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.sync.c;
import kotlinx.coroutines.y2;
import kotlinx.coroutines.z;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.f;
import w7.l0;
import w7.m;
import w7.o;
import w7.s;
import w7.v;
import w7.w;

/* JADX INFO: loaded from: classes.dex */
public final class SingleProcessDataStore<T> implements DataStore<T> {

    @NotNull
    public static final Companion Companion = new Companion(null);

    @GuardedBy
    @NotNull
    private static final Set<String> activeFiles = new LinkedHashSet();

    @NotNull
    private static final Object activeFilesLock = new Object();

    @NotNull
    private final String SCRATCH_SUFFIX;

    @NotNull
    private final SimpleActor<Message<T>> actor;

    @NotNull
    private final CorruptionHandler<T> corruptionHandler;

    @NotNull
    private final g<T> data;

    @NotNull
    private final x<State<T>> downstreamFlow;

    @NotNull
    private final m file$delegate;

    @Nullable
    private List<? extends p<? super InitializerApi<T>, ? super d<? super l0>, ? extends Object>> initTasks;

    @NotNull
    private final a<File> produceFile;

    @NotNull
    private final o0 scope;

    @NotNull
    private final Serializer<T> serializer;

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }

        @NotNull
        public final Set<String> a() {
            return SingleProcessDataStore.activeFiles;
        }

        @NotNull
        public final Object b() {
            return SingleProcessDataStore.activeFilesLock;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    static abstract class Message<T> {

        public static final class Read<T> extends Message<T> {

            @Nullable
            private final State<T> lastState;

            public Read(@Nullable State<T> state) {
                super(null);
                this.lastState = state;
            }

            @Nullable
            public State<T> a() {
                return this.lastState;
            }
        }

        public static final class Update<T> extends Message<T> {

            @NotNull
            private final kotlinx.coroutines.x<T> ack;

            @NotNull
            private final kotlin.coroutines.g callerContext;

            @Nullable
            private final State<T> lastState;

            @NotNull
            private final p<T, d<? super T>, Object> transform;

            @NotNull
            public final kotlinx.coroutines.x<T> a() {
                return this.ack;
            }

            @NotNull
            public final kotlin.coroutines.g b() {
                return this.callerContext;
            }

            @Nullable
            public State<T> c() {
                return this.lastState;
            }

            @NotNull
            public final p<T, d<? super T>, Object> d() {
                return this.transform;
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            public Update(@NotNull p<? super T, ? super d<? super T>, ? extends Object> transform, @NotNull kotlinx.coroutines.x<T> ack, @Nullable State<T> state, @NotNull kotlin.coroutines.g callerContext) {
                super(null);
                t.j(transform, "transform");
                t.j(ack, "ack");
                t.j(callerContext, "callerContext");
                this.transform = transform;
                this.ack = ack;
                this.lastState = state;
                this.callerContext = callerContext;
            }
        }

        public /* synthetic */ Message(k kVar) {
            this();
        }

        private Message() {
        }
    }

    private static final class UncloseableOutputStream extends OutputStream {

        @NotNull
        private final FileOutputStream fileOutputStream;

        @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
        }

        @Override // java.io.OutputStream
        public void write(int i10) throws IOException {
            this.fileOutputStream.write(i10);
        }

        public UncloseableOutputStream(@NotNull FileOutputStream fileOutputStream) {
            t.j(fileOutputStream, "fileOutputStream");
            this.fileOutputStream = fileOutputStream;
        }

        @Override // java.io.OutputStream, java.io.Flushable
        public void flush() throws IOException {
            this.fileOutputStream.flush();
        }

        @Override // java.io.OutputStream
        public void write(@NotNull byte[] b7) throws IOException {
            t.j(b7, "b");
            this.fileOutputStream.write(b7);
        }

        @Override // java.io.OutputStream
        public void write(@NotNull byte[] bytes, int i10, int i11) throws IOException {
            t.j(bytes, "bytes");
            this.fileOutputStream.write(bytes, i10, i11);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public SingleProcessDataStore(@NotNull a<? extends File> produceFile, @NotNull Serializer<T> serializer, @NotNull List<? extends p<? super InitializerApi<T>, ? super d<? super l0>, ? extends Object>> initTasksList, @NotNull CorruptionHandler<T> corruptionHandler, @NotNull o0 scope) {
        t.j(produceFile, "produceFile");
        t.j(serializer, "serializer");
        t.j(initTasksList, "initTasksList");
        t.j(corruptionHandler, "corruptionHandler");
        t.j(scope, "scope");
        this.produceFile = produceFile;
        this.serializer = serializer;
        this.corruptionHandler = corruptionHandler;
        this.scope = scope;
        this.data = i.y(new SingleProcessDataStore$data$1(this, null));
        this.SCRATCH_SUFFIX = ".tmp";
        this.file$delegate = o.a(new SingleProcessDataStore$file$2(this));
        this.downstreamFlow = n0.a(UnInitialized.INSTANCE);
        this.initTasks = d0.U0(initTasksList);
        this.actor = new SimpleActor<>(scope, new SingleProcessDataStore$actor$1(this), SingleProcessDataStore$actor$2.INSTANCE, new SingleProcessDataStore$actor$3(this, null));
    }

    @Override // androidx.datastore.core.DataStore
    @Nullable
    public Object a(@NotNull p<? super T, ? super d<? super T>, ? extends Object> pVar, @NotNull d<? super T> dVar) {
        kotlinx.coroutines.x xVarB = z.b(null, 1, null);
        this.actor.e(new Message.Update(pVar, xVarB, this.downstreamFlow.getValue(), dVar.getContext()));
        return xVarB.i(dVar);
    }

    @Override // androidx.datastore.core.DataStore
    @NotNull
    public g<T> getData() {
        return this.data;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final File q() {
        return (File) this.file$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object r(Message.Read<T> read, d<? super l0> dVar) {
        State<T> value = this.downstreamFlow.getValue();
        if (!(value instanceof Data)) {
            if (value instanceof ReadException) {
                if (value == read.a()) {
                    Object objV = v(dVar);
                    return objV == kotlin.coroutines.intrinsics.d.e() ? objV : l0.INSTANCE;
                }
            } else {
                if (t.e(value, UnInitialized.INSTANCE)) {
                    Object objV2 = v(dVar);
                    return objV2 == kotlin.coroutines.intrinsics.d.e() ? objV2 : l0.INSTANCE;
                }
                if (value instanceof Final) {
                    throw new IllegalStateException("Can't read in final state.".toString());
                }
            }
        }
        return l0.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v10, types: [androidx.datastore.core.SingleProcessDataStore] */
    /* JADX WARN: Type inference failed for: r2v13 */
    /* JADX WARN: Type inference failed for: r2v8 */
    /* JADX WARN: Type inference failed for: r8v0, types: [androidx.datastore.core.SingleProcessDataStore, androidx.datastore.core.SingleProcessDataStore<T>, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r9v0, types: [androidx.datastore.core.SingleProcessDataStore$Message$Update, androidx.datastore.core.SingleProcessDataStore$Message$Update<T>, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v14 */
    /* JADX WARN: Type inference failed for: r9v15, types: [androidx.datastore.core.SingleProcessDataStore$Message$Update] */
    /* JADX WARN: Type inference failed for: r9v18 */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Type inference failed for: r9v3, types: [kotlinx.coroutines.x] */
    /* JADX WARN: Type inference failed for: r9v32 */
    /* JADX WARN: Type inference failed for: r9v33 */
    /* JADX WARN: Type inference failed for: r9v34 */
    /* JADX WARN: Type inference failed for: r9v35 */
    /* JADX WARN: Type inference failed for: r9v36 */
    /* JADX WARN: Type inference failed for: r9v6 */
    public final Object s(Message.Update<T> update, d<? super l0> dVar) {
        SingleProcessDataStore$handleUpdate$1 singleProcessDataStore$handleUpdate$1;
        Object objB;
        ?? r10;
        kotlinx.coroutines.x xVarA;
        ?? r5;
        Object objY;
        ?? r11;
        kotlinx.coroutines.x xVar;
        if (dVar instanceof SingleProcessDataStore$handleUpdate$1) {
            singleProcessDataStore$handleUpdate$1 = (SingleProcessDataStore$handleUpdate$1) dVar;
            int i10 = singleProcessDataStore$handleUpdate$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                singleProcessDataStore$handleUpdate$1.label = i10 - Integer.MIN_VALUE;
            } else {
                singleProcessDataStore$handleUpdate$1 = new SingleProcessDataStore$handleUpdate$1(this, dVar);
            }
        } else {
            singleProcessDataStore$handleUpdate$1 = new SingleProcessDataStore$handleUpdate$1(this, dVar);
        }
        Object obj = singleProcessDataStore$handleUpdate$1.result;
        Object objE = kotlin.coroutines.intrinsics.d.e();
        int i11 = singleProcessDataStore$handleUpdate$1.label;
        try {
            if (i11 != 0) {
                if (i11 == 1) {
                    xVar = (kotlinx.coroutines.x) singleProcessDataStore$handleUpdate$1.L$0;
                } else if (i11 == 2) {
                    kotlinx.coroutines.x xVar2 = (kotlinx.coroutines.x) singleProcessDataStore$handleUpdate$1.L$2;
                    SingleProcessDataStore singleProcessDataStore = (SingleProcessDataStore) singleProcessDataStore$handleUpdate$1.L$1;
                    Message.Update update2 = (Message.Update) singleProcessDataStore$handleUpdate$1.L$0;
                    w.b(obj);
                    xVarA = xVar2;
                    r5 = singleProcessDataStore;
                    r11 = (Message.Update<T>) update2;
                } else {
                    if (i11 != 3) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    xVar = (Message.Update<T>) ((kotlinx.coroutines.x) singleProcessDataStore$handleUpdate$1.L$0);
                }
                w.b(obj);
                update = xVar;
                objB = v.b(obj);
                r10 = update;
                z.c(r10, objB);
                return l0.INSTANCE;
            }
            w.b(obj);
            xVarA = update.a();
            try {
                v.a aVar = v.Companion;
                State<T> value = this.downstreamFlow.getValue();
                if (value instanceof Data) {
                    p pVarD = update.d();
                    kotlin.coroutines.g gVarB = update.b();
                    singleProcessDataStore$handleUpdate$1.L$0 = xVarA;
                    singleProcessDataStore$handleUpdate$1.label = 1;
                    objY = y(pVarD, gVarB, singleProcessDataStore$handleUpdate$1);
                    if (objY == objE) {
                        return objE;
                    }
                } else {
                    if (!(value instanceof ReadException) && !(value instanceof UnInitialized)) {
                        if (value instanceof Final) {
                            throw ((Final) value).a();
                        }
                        throw new s();
                    }
                    if (value != update.c()) {
                        throw ((ReadException) value).a();
                    }
                    singleProcessDataStore$handleUpdate$1.L$0 = update;
                    singleProcessDataStore$handleUpdate$1.L$1 = this;
                    singleProcessDataStore$handleUpdate$1.L$2 = xVarA;
                    singleProcessDataStore$handleUpdate$1.label = 2;
                    if (u(singleProcessDataStore$handleUpdate$1) == objE) {
                        return objE;
                    }
                    r5 = this;
                    r11 = update;
                }
                kotlinx.coroutines.x xVar3 = xVarA;
                obj = objY;
                update = xVar3;
                objB = v.b(obj);
                r10 = update;
            } catch (Throwable th) {
                th = th;
                update = xVarA;
                v.a aVar2 = v.Companion;
                objB = v.b(w.a(th));
                r10 = update;
            }
            z.c(r10, objB);
            return l0.INSTANCE;
            p pVarD2 = r11.d();
            kotlin.coroutines.g gVarB2 = r11.b();
            singleProcessDataStore$handleUpdate$1.L$0 = xVarA;
            singleProcessDataStore$handleUpdate$1.L$1 = null;
            singleProcessDataStore$handleUpdate$1.L$2 = null;
            singleProcessDataStore$handleUpdate$1.label = 3;
            objY = r5.y(pVarD2, gVarB2, singleProcessDataStore$handleUpdate$1);
            if (objY == objE) {
                return objE;
            }
            kotlinx.coroutines.x xVar4 = xVarA;
            obj = objY;
            update = xVar4;
            objB = v.b(obj);
            r10 = update;
        } catch (Throwable th2) {
            th = th2;
        }
        z.c(r10, objB);
        return l0.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:36:0x00e0  */
    /* JADX WARN: Code duplicated, block: B:42:0x0116 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:43:0x0117  */
    /* JADX WARN: Code duplicated, block: B:47:0x0128  */
    /* JADX WARN: Code duplicated, block: B:58:0x00fa A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:60:? A[LOOP:0: B:34:0x00da->B:60:?, LOOP_END, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v15 */
    /* JADX WARN: Type inference failed for: r0v16 */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v6, types: [androidx.datastore.core.SingleProcessDataStore, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v7 */
    /* JADX WARN: Type inference failed for: r0v8, types: [androidx.datastore.core.SingleProcessDataStore] */
    /* JADX WARN: Type inference failed for: r10v0 */
    /* JADX WARN: Type inference failed for: r10v1, types: [androidx.datastore.core.SingleProcessDataStore] */
    /* JADX WARN: Type inference failed for: r10v8 */
    /* JADX WARN: Type inference failed for: r12v0 */
    /* JADX WARN: Type inference failed for: r12v1, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r12v4 */
    /* JADX WARN: Type inference failed for: r13v0, types: [androidx.datastore.core.SingleProcessDataStore, androidx.datastore.core.SingleProcessDataStore<T>, java.lang.Object] */
    public final Object t(d<? super l0> dVar) {
        SingleProcessDataStore$readAndInit$1 singleProcessDataStore$readAndInit$1;
        kotlinx.coroutines.sync.a aVarB;
        p0 p0Var;
        ?? r10;
        p0 p0Var2;
        ?? r12;
        p0 p0Var3;
        SingleProcessDataStore$readAndInit$api$1 singleProcessDataStore$readAndInit$api$1;
        Iterator<T> it;
        kotlinx.coroutines.sync.a aVar;
        k0 k0Var;
        kotlinx.coroutines.sync.a aVar2;
        ?? r1;
        p0 p0Var4;
        k0 k0Var2;
        p pVar;
        ?? r5;
        if (dVar instanceof SingleProcessDataStore$readAndInit$1) {
            singleProcessDataStore$readAndInit$1 = (SingleProcessDataStore$readAndInit$1) dVar;
            int i10 = singleProcessDataStore$readAndInit$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                singleProcessDataStore$readAndInit$1.label = i10 - Integer.MIN_VALUE;
            } else {
                singleProcessDataStore$readAndInit$1 = new SingleProcessDataStore$readAndInit$1(this, dVar);
            }
        } else {
            singleProcessDataStore$readAndInit$1 = new SingleProcessDataStore$readAndInit$1(this, dVar);
        }
        T t5 = (T) singleProcessDataStore$readAndInit$1.result;
        Object objE = kotlin.coroutines.intrinsics.d.e();
        int i11 = singleProcessDataStore$readAndInit$1.label;
        if (i11 != 0) {
            if (i11 == 1) {
                p0Var = (p0) singleProcessDataStore$readAndInit$1.L$3;
                p0Var2 = (p0) singleProcessDataStore$readAndInit$1.L$2;
                aVarB = (kotlinx.coroutines.sync.a) singleProcessDataStore$readAndInit$1.L$1;
                SingleProcessDataStore singleProcessDataStore = (SingleProcessDataStore) singleProcessDataStore$readAndInit$1.L$0;
                w.b(t5);
                r10 = singleProcessDataStore;
            } else if (i11 == 2) {
                it = (Iterator) singleProcessDataStore$readAndInit$1.L$5;
                singleProcessDataStore$readAndInit$api$1 = (SingleProcessDataStore$readAndInit$api$1) singleProcessDataStore$readAndInit$1.L$4;
                k0Var = (k0) singleProcessDataStore$readAndInit$1.L$3;
                p0Var3 = (p0) singleProcessDataStore$readAndInit$1.L$2;
                aVar = (kotlinx.coroutines.sync.a) singleProcessDataStore$readAndInit$1.L$1;
                SingleProcessDataStore singleProcessDataStore2 = (SingleProcessDataStore) singleProcessDataStore$readAndInit$1.L$0;
                w.b(t5);
                r12 = singleProcessDataStore2;
                while (it.hasNext()) {
                    pVar = (p) it.next();
                    singleProcessDataStore$readAndInit$1.L$0 = r12;
                    singleProcessDataStore$readAndInit$1.L$1 = aVar;
                    singleProcessDataStore$readAndInit$1.L$2 = p0Var3;
                    singleProcessDataStore$readAndInit$1.L$3 = k0Var;
                    singleProcessDataStore$readAndInit$1.L$4 = singleProcessDataStore$readAndInit$api$1;
                    singleProcessDataStore$readAndInit$1.L$5 = it;
                    singleProcessDataStore$readAndInit$1.label = 2;
                    if (pVar.invoke(singleProcessDataStore$readAndInit$api$1, singleProcessDataStore$readAndInit$1) == objE) {
                        return objE;
                    }
                }
                p0Var2 = p0Var3;
                aVar2 = aVar;
                r1 = r12;
                r1.initTasks = null;
                singleProcessDataStore$readAndInit$1.L$0 = r1;
                singleProcessDataStore$readAndInit$1.L$1 = p0Var2;
                singleProcessDataStore$readAndInit$1.L$2 = k0Var;
                singleProcessDataStore$readAndInit$1.L$3 = aVar2;
                singleProcessDataStore$readAndInit$1.L$4 = null;
                singleProcessDataStore$readAndInit$1.L$5 = null;
                singleProcessDataStore$readAndInit$1.label = 3;
                if (aVar2.d(null, singleProcessDataStore$readAndInit$1) == objE) {
                    return objE;
                }
                p0Var4 = p0Var2;
                k0Var2 = k0Var;
                r5 = r1;
            } else {
                if (i11 != 3) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                aVar2 = (kotlinx.coroutines.sync.a) singleProcessDataStore$readAndInit$1.L$3;
                k0Var2 = (k0) singleProcessDataStore$readAndInit$1.L$2;
                p0Var4 = (p0) singleProcessDataStore$readAndInit$1.L$1;
                SingleProcessDataStore singleProcessDataStore3 = (SingleProcessDataStore) singleProcessDataStore$readAndInit$1.L$0;
                w.b(t5);
                r5 = singleProcessDataStore3;
            }
            try {
                k0Var2.element = true;
                l0 l0Var = l0.INSTANCE;
                aVar2.e(null);
                x<State<T>> xVar = r5.downstreamFlow;
                T t10 = p0Var4.element;
                xVar.setValue(new Data(t10, t10 != null ? t10.hashCode() : 0));
                return l0.INSTANCE;
            } catch (Throwable th) {
                aVar2.e(null);
                throw th;
            }
        }
        w.b(t5);
        if (!(t.e(this.downstreamFlow.getValue(), UnInitialized.INSTANCE) || (this.downstreamFlow.getValue() instanceof ReadException))) {
            throw new IllegalStateException("Check failed.".toString());
        }
        aVarB = c.b(false, 1, null);
        p0Var = new p0();
        singleProcessDataStore$readAndInit$1.L$0 = this;
        singleProcessDataStore$readAndInit$1.L$1 = aVarB;
        singleProcessDataStore$readAndInit$1.L$2 = p0Var;
        singleProcessDataStore$readAndInit$1.L$3 = p0Var;
        singleProcessDataStore$readAndInit$1.label = 1;
        t5 = (T) x(singleProcessDataStore$readAndInit$1);
        if (t5 == objE) {
            return objE;
        }
        r10 = this;
        p0Var2 = p0Var;
        p0Var.element = t5;
        k0 k0Var3 = new k0();
        SingleProcessDataStore$readAndInit$api$1 singleProcessDataStore$readAndInit$api$2 = new SingleProcessDataStore$readAndInit$api$1(aVarB, k0Var3, p0Var2, r10);
        List<? extends p<? super InitializerApi<T>, ? super d<? super l0>, ? extends Object>> list = r10.initTasks;
        if (list == null) {
            aVar2 = aVarB;
            k0Var = k0Var3;
            r1 = r10;
        } else {
            r12 = r10;
            p0Var3 = p0Var2;
            singleProcessDataStore$readAndInit$api$1 = singleProcessDataStore$readAndInit$api$2;
            it = list.iterator();
            aVar = aVarB;
            k0Var = k0Var3;
            while (it.hasNext()) {
                pVar = (p) it.next();
                singleProcessDataStore$readAndInit$1.L$0 = r12;
                singleProcessDataStore$readAndInit$1.L$1 = aVar;
                singleProcessDataStore$readAndInit$1.L$2 = p0Var3;
                singleProcessDataStore$readAndInit$1.L$3 = k0Var;
                singleProcessDataStore$readAndInit$1.L$4 = singleProcessDataStore$readAndInit$api$1;
                singleProcessDataStore$readAndInit$1.L$5 = it;
                singleProcessDataStore$readAndInit$1.label = 2;
                if (pVar.invoke(singleProcessDataStore$readAndInit$api$1, singleProcessDataStore$readAndInit$1) == objE) {
                    return objE;
                }
            }
            p0Var2 = p0Var3;
            aVar2 = aVar;
            r1 = r12;
        }
        r1.initTasks = null;
        singleProcessDataStore$readAndInit$1.L$0 = r1;
        singleProcessDataStore$readAndInit$1.L$1 = p0Var2;
        singleProcessDataStore$readAndInit$1.L$2 = k0Var;
        singleProcessDataStore$readAndInit$1.L$3 = aVar2;
        singleProcessDataStore$readAndInit$1.L$4 = null;
        singleProcessDataStore$readAndInit$1.L$5 = null;
        singleProcessDataStore$readAndInit$1.label = 3;
        if (aVar2.d(null, singleProcessDataStore$readAndInit$1) == objE) {
            return objE;
        }
        p0Var4 = p0Var2;
        k0Var2 = k0Var;
        r5 = r1;
        k0Var2.element = true;
        l0 l0Var2 = l0.INSTANCE;
        aVar2.e(null);
        x<State<T>> xVar2 = r5.downstreamFlow;
        T t11 = p0Var4.element;
        xVar2.setValue(new Data(t11, t11 != null ? t11.hashCode() : 0));
        return l0.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object u(d<? super l0> dVar) throws Throwable {
        SingleProcessDataStore$readAndInitOrPropagateAndThrowFailure$1 singleProcessDataStore$readAndInitOrPropagateAndThrowFailure$1;
        SingleProcessDataStore singleProcessDataStore;
        if (dVar instanceof SingleProcessDataStore$readAndInitOrPropagateAndThrowFailure$1) {
            singleProcessDataStore$readAndInitOrPropagateAndThrowFailure$1 = (SingleProcessDataStore$readAndInitOrPropagateAndThrowFailure$1) dVar;
            int i10 = singleProcessDataStore$readAndInitOrPropagateAndThrowFailure$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                singleProcessDataStore$readAndInitOrPropagateAndThrowFailure$1.label = i10 - Integer.MIN_VALUE;
            } else {
                singleProcessDataStore$readAndInitOrPropagateAndThrowFailure$1 = new SingleProcessDataStore$readAndInitOrPropagateAndThrowFailure$1(this, dVar);
            }
        } else {
            singleProcessDataStore$readAndInitOrPropagateAndThrowFailure$1 = new SingleProcessDataStore$readAndInitOrPropagateAndThrowFailure$1(this, dVar);
        }
        Object obj = singleProcessDataStore$readAndInitOrPropagateAndThrowFailure$1.result;
        Object objE = kotlin.coroutines.intrinsics.d.e();
        int i11 = singleProcessDataStore$readAndInitOrPropagateAndThrowFailure$1.label;
        if (i11 != 0) {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            singleProcessDataStore = (SingleProcessDataStore) singleProcessDataStore$readAndInitOrPropagateAndThrowFailure$1.L$0;
            try {
                w.b(obj);
                return l0.INSTANCE;
            } catch (Throwable th) {
                th = th;
                singleProcessDataStore.downstreamFlow.setValue(new ReadException(th));
                throw th;
            }
        }
        w.b(obj);
        try {
            singleProcessDataStore$readAndInitOrPropagateAndThrowFailure$1.L$0 = this;
            singleProcessDataStore$readAndInitOrPropagateAndThrowFailure$1.label = 1;
            if (t(singleProcessDataStore$readAndInitOrPropagateAndThrowFailure$1) == objE) {
                return objE;
            }
            return l0.INSTANCE;
        } catch (Throwable th2) {
            th = th2;
            singleProcessDataStore = this;
            singleProcessDataStore.downstreamFlow.setValue(new ReadException(th));
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object v(d<? super l0> dVar) {
        SingleProcessDataStore$readAndInitOrPropagateFailure$1 singleProcessDataStore$readAndInitOrPropagateFailure$1;
        SingleProcessDataStore singleProcessDataStore;
        if (dVar instanceof SingleProcessDataStore$readAndInitOrPropagateFailure$1) {
            singleProcessDataStore$readAndInitOrPropagateFailure$1 = (SingleProcessDataStore$readAndInitOrPropagateFailure$1) dVar;
            int i10 = singleProcessDataStore$readAndInitOrPropagateFailure$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                singleProcessDataStore$readAndInitOrPropagateFailure$1.label = i10 - Integer.MIN_VALUE;
            } else {
                singleProcessDataStore$readAndInitOrPropagateFailure$1 = new SingleProcessDataStore$readAndInitOrPropagateFailure$1(this, dVar);
            }
        } else {
            singleProcessDataStore$readAndInitOrPropagateFailure$1 = new SingleProcessDataStore$readAndInitOrPropagateFailure$1(this, dVar);
        }
        Object obj = singleProcessDataStore$readAndInitOrPropagateFailure$1.result;
        Object objE = kotlin.coroutines.intrinsics.d.e();
        int i11 = singleProcessDataStore$readAndInitOrPropagateFailure$1.label;
        if (i11 == 0) {
            w.b(obj);
            try {
                singleProcessDataStore$readAndInitOrPropagateFailure$1.L$0 = this;
                singleProcessDataStore$readAndInitOrPropagateFailure$1.label = 1;
                if (t(singleProcessDataStore$readAndInitOrPropagateFailure$1) == objE) {
                    return objE;
                }
            } catch (Throwable th) {
                th = th;
                singleProcessDataStore = this;
                singleProcessDataStore.downstreamFlow.setValue(new ReadException(th));
            }
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            singleProcessDataStore = (SingleProcessDataStore) singleProcessDataStore$readAndInitOrPropagateFailure$1.L$0;
            try {
                w.b(obj);
            } catch (Throwable th2) {
                th = th2;
                singleProcessDataStore.downstreamFlow.setValue(new ReadException(th));
            }
        }
        return l0.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v11, types: [androidx.datastore.core.SingleProcessDataStore] */
    /* JADX WARN: Type inference failed for: r0v14 */
    /* JADX WARN: Type inference failed for: r0v15 */
    /* JADX WARN: Type inference failed for: r0v2, types: [androidx.datastore.core.SingleProcessDataStore$readData$1, kotlin.coroutines.d] */
    /* JADX WARN: Type inference failed for: r0v3 */
    /* JADX WARN: Type inference failed for: r0v4, types: [androidx.datastore.core.SingleProcessDataStore] */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r0v8 */
    /* JADX WARN: Type inference failed for: r2v1, types: [java.io.FileInputStream, java.io.InputStream, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v2, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r2v3, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r2v5, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r2v6 */
    /* JADX WARN: Type inference failed for: r2v7 */
    /* JADX WARN: Type inference failed for: r6v9, types: [androidx.datastore.core.Serializer, androidx.datastore.core.Serializer<T>] */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public final Object w(d<? super T> dVar) throws IOException {
        ?? singleProcessDataStore$readData$1;
        ?? fileInputStream;
        Throwable th;
        ?? r5;
        if (dVar instanceof SingleProcessDataStore$readData$1) {
            SingleProcessDataStore$readData$1 singleProcessDataStore$readData$2 = (SingleProcessDataStore$readData$1) dVar;
            int i10 = singleProcessDataStore$readData$2.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                singleProcessDataStore$readData$2.label = i10 - Integer.MIN_VALUE;
                singleProcessDataStore$readData$1 = singleProcessDataStore$readData$2;
            } else {
                singleProcessDataStore$readData$1 = new SingleProcessDataStore$readData$1(this, dVar);
            }
        } else {
            singleProcessDataStore$readData$1 = new SingleProcessDataStore$readData$1(this, dVar);
        }
        Object from = singleProcessDataStore$readData$1.result;
        Object objE = kotlin.coroutines.intrinsics.d.e();
        int i11 = singleProcessDataStore$readData$1.label;
        try {
            if (i11 != 0) {
                if (i11 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                th = (Throwable) singleProcessDataStore$readData$1.L$2;
                fileInputStream = (Closeable) singleProcessDataStore$readData$1.L$1;
                singleProcessDataStore$readData$1 = (SingleProcessDataStore) singleProcessDataStore$readData$1.L$0;
                try {
                    w.b(from);
                    r5 = fileInputStream;
                    kotlin.io.c.a(r5, th);
                    return from;
                } catch (Throwable th2) {
                    th = th2;
                    try {
                        throw th;
                    } catch (Throwable th3) {
                        kotlin.io.c.a(fileInputStream, th);
                        throw th3;
                    }
                }
            }
            w.b(from);
            try {
                fileInputStream = new FileInputStream(q());
                try {
                    Serializer<T> serializer = this.serializer;
                    singleProcessDataStore$readData$1.L$0 = this;
                    singleProcessDataStore$readData$1.L$1 = fileInputStream;
                    singleProcessDataStore$readData$1.L$2 = null;
                    singleProcessDataStore$readData$1.label = 1;
                    from = serializer.readFrom(fileInputStream, singleProcessDataStore$readData$1);
                    if (from == objE) {
                        return objE;
                    }
                    th = null;
                    r5 = fileInputStream;
                    kotlin.io.c.a(r5, th);
                    return from;
                } catch (Throwable th4) {
                    th = th4;
                    singleProcessDataStore$readData$1 = this;
                    throw th;
                }
            } catch (FileNotFoundException e) {
                e = e;
                singleProcessDataStore$readData$1 = this;
                if (singleProcessDataStore$readData$1.q().exists()) {
                    throw e;
                }
                return singleProcessDataStore$readData$1.serializer.getDefaultValue();
            }
        } catch (FileNotFoundException e2) {
            e = e2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:35:0x0074 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:36:0x0075  */
    /* JADX WARN: Code duplicated, block: B:39:0x0085 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:40:0x0086  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v2, types: [androidx.datastore.core.SingleProcessDataStore, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v6, types: [androidx.datastore.core.SingleProcessDataStore] */
    /* JADX WARN: Type inference failed for: r4v2 */
    /* JADX WARN: Type inference failed for: r4v3, types: [androidx.datastore.core.SingleProcessDataStore] */
    /* JADX WARN: Type inference failed for: r4v6 */
    /* JADX WARN: Type inference failed for: r6v0 */
    /* JADX WARN: Type inference failed for: r7v0, types: [androidx.datastore.core.SingleProcessDataStore, androidx.datastore.core.SingleProcessDataStore<T>, java.lang.Object] */
    public final Object x(d<? super T> dVar) throws IOException {
        SingleProcessDataStore$readDataOrHandleCorruption$1 singleProcessDataStore$readDataOrHandleCorruption$1;
        ?? r5;
        Object objA;
        CorruptionException corruptionException;
        ?? r10;
        CorruptionException corruptionException2;
        if (dVar instanceof SingleProcessDataStore$readDataOrHandleCorruption$1) {
            singleProcessDataStore$readDataOrHandleCorruption$1 = (SingleProcessDataStore$readDataOrHandleCorruption$1) dVar;
            int i10 = singleProcessDataStore$readDataOrHandleCorruption$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                singleProcessDataStore$readDataOrHandleCorruption$1.label = i10 - Integer.MIN_VALUE;
            } else {
                singleProcessDataStore$readDataOrHandleCorruption$1 = new SingleProcessDataStore$readDataOrHandleCorruption$1(this, dVar);
            }
        } else {
            singleProcessDataStore$readDataOrHandleCorruption$1 = new SingleProcessDataStore$readDataOrHandleCorruption$1(this, dVar);
        }
        Object objW = singleProcessDataStore$readDataOrHandleCorruption$1.result;
        Object objE = kotlin.coroutines.intrinsics.d.e();
        int i11 = singleProcessDataStore$readDataOrHandleCorruption$1.label;
        if (i11 == 0) {
            w.b(objW);
            try {
                singleProcessDataStore$readDataOrHandleCorruption$1.L$0 = this;
                singleProcessDataStore$readDataOrHandleCorruption$1.label = 1;
                objW = w(singleProcessDataStore$readDataOrHandleCorruption$1);
                return objW == objE ? objE : objW;
            } catch (CorruptionException e) {
                e = e;
                r5 = this;
                CorruptionHandler<T> corruptionHandler = r5.corruptionHandler;
                singleProcessDataStore$readDataOrHandleCorruption$1.L$0 = r5;
                singleProcessDataStore$readDataOrHandleCorruption$1.L$1 = e;
                singleProcessDataStore$readDataOrHandleCorruption$1.label = 2;
                objA = corruptionHandler.a(e, singleProcessDataStore$readDataOrHandleCorruption$1);
                if (objA == objE) {
                    return objE;
                }
                ?? r11 = r5;
                corruptionException = e;
                objW = objA;
                r10 = r11;
                singleProcessDataStore$readDataOrHandleCorruption$1.L$0 = corruptionException;
                singleProcessDataStore$readDataOrHandleCorruption$1.L$1 = objW;
                singleProcessDataStore$readDataOrHandleCorruption$1.label = 3;
                if (r10.z(objW, singleProcessDataStore$readDataOrHandleCorruption$1) == objE) {
                    return objE;
                }
                return objW;
            }
        }
        if (i11 != 1) {
            if (i11 == 2) {
                corruptionException = (CorruptionException) singleProcessDataStore$readDataOrHandleCorruption$1.L$1;
                SingleProcessDataStore singleProcessDataStore = (SingleProcessDataStore) singleProcessDataStore$readDataOrHandleCorruption$1.L$0;
                w.b(objW);
                r10 = singleProcessDataStore;
            } else {
                if (i11 != 3) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                Object obj = singleProcessDataStore$readDataOrHandleCorruption$1.L$1;
                corruptionException2 = (CorruptionException) singleProcessDataStore$readDataOrHandleCorruption$1.L$0;
                try {
                    w.b(objW);
                    return obj;
                } catch (IOException e2) {
                    e = e2;
                }
            }
            f.a(corruptionException2, e);
            throw corruptionException2;
        }
        r5 = (SingleProcessDataStore) singleProcessDataStore$readDataOrHandleCorruption$1.L$0;
        try {
            w.b(objW);
        } catch (CorruptionException e6) {
            e = e6;
            CorruptionHandler<T> corruptionHandler2 = r5.corruptionHandler;
            singleProcessDataStore$readDataOrHandleCorruption$1.L$0 = r5;
            singleProcessDataStore$readDataOrHandleCorruption$1.L$1 = e;
            singleProcessDataStore$readDataOrHandleCorruption$1.label = 2;
            objA = corruptionHandler2.a(e, singleProcessDataStore$readDataOrHandleCorruption$1);
            if (objA == objE) {
                return objE;
            }
            ?? r12 = r5;
            corruptionException = e;
            objW = objA;
            r10 = r12;
            singleProcessDataStore$readDataOrHandleCorruption$1.L$0 = corruptionException;
            singleProcessDataStore$readDataOrHandleCorruption$1.L$1 = objW;
            singleProcessDataStore$readDataOrHandleCorruption$1.label = 3;
            if (r10.z(objW, singleProcessDataStore$readDataOrHandleCorruption$1) == objE) {
                return objE;
            }
            return objW;
        }
        try {
            singleProcessDataStore$readDataOrHandleCorruption$1.L$0 = corruptionException;
            singleProcessDataStore$readDataOrHandleCorruption$1.L$1 = objW;
            singleProcessDataStore$readDataOrHandleCorruption$1.label = 3;
            if (r10.z(objW, singleProcessDataStore$readDataOrHandleCorruption$1) == objE) {
                return objE;
            }
            return objW;
        } catch (IOException e7) {
            e = e7;
            corruptionException2 = corruptionException;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:29:0x0094  */
    /* JADX WARN: Code duplicated, block: B:30:0x0099  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object y(p<? super T, ? super d<? super T>, ? extends Object> pVar, kotlin.coroutines.g gVar, d<? super T> dVar) {
        SingleProcessDataStore$transformAndWrite$1 singleProcessDataStore$transformAndWrite$1;
        Data data;
        Object obj;
        SingleProcessDataStore singleProcessDataStore;
        SingleProcessDataStore singleProcessDataStore2;
        int iHashCode;
        if (dVar instanceof SingleProcessDataStore$transformAndWrite$1) {
            singleProcessDataStore$transformAndWrite$1 = (SingleProcessDataStore$transformAndWrite$1) dVar;
            int i10 = singleProcessDataStore$transformAndWrite$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                singleProcessDataStore$transformAndWrite$1.label = i10 - Integer.MIN_VALUE;
            } else {
                singleProcessDataStore$transformAndWrite$1 = new SingleProcessDataStore$transformAndWrite$1(this, dVar);
            }
        } else {
            singleProcessDataStore$transformAndWrite$1 = new SingleProcessDataStore$transformAndWrite$1(this, dVar);
        }
        Object obj2 = singleProcessDataStore$transformAndWrite$1.result;
        Object objE = kotlin.coroutines.intrinsics.d.e();
        int i11 = singleProcessDataStore$transformAndWrite$1.label;
        if (i11 != 0) {
            if (i11 == 1) {
                obj = singleProcessDataStore$transformAndWrite$1.L$2;
                data = (Data) singleProcessDataStore$transformAndWrite$1.L$1;
                SingleProcessDataStore singleProcessDataStore3 = (SingleProcessDataStore) singleProcessDataStore$transformAndWrite$1.L$0;
                w.b(obj2);
                singleProcessDataStore = singleProcessDataStore3;
            } else {
                if (i11 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                obj = singleProcessDataStore$transformAndWrite$1.L$1;
                SingleProcessDataStore singleProcessDataStore4 = (SingleProcessDataStore) singleProcessDataStore$transformAndWrite$1.L$0;
                w.b(obj2);
                singleProcessDataStore2 = singleProcessDataStore4;
            }
            x<State<T>> xVar = singleProcessDataStore2.downstreamFlow;
            if (obj != null) {
                iHashCode = obj.hashCode();
            } else {
                iHashCode = 0;
            }
            xVar.setValue(new Data(obj, iHashCode));
            return obj;
        }
        w.b(obj2);
        Data data2 = (Data) this.downstreamFlow.getValue();
        data2.a();
        Object objB = data2.b();
        SingleProcessDataStore$transformAndWrite$newData$1 singleProcessDataStore$transformAndWrite$newData$1 = new SingleProcessDataStore$transformAndWrite$newData$1(pVar, objB, null);
        singleProcessDataStore$transformAndWrite$1.L$0 = this;
        singleProcessDataStore$transformAndWrite$1.L$1 = data2;
        singleProcessDataStore$transformAndWrite$1.L$2 = objB;
        singleProcessDataStore$transformAndWrite$1.label = 1;
        Object objG = kotlinx.coroutines.i.g(gVar, singleProcessDataStore$transformAndWrite$newData$1, singleProcessDataStore$transformAndWrite$1);
        if (objG == objE) {
            return objE;
        }
        data = data2;
        obj2 = objG;
        obj = objB;
        singleProcessDataStore = this;
        data.a();
        if (!t.e(obj, obj2)) {
            singleProcessDataStore$transformAndWrite$1.L$0 = singleProcessDataStore;
            singleProcessDataStore$transformAndWrite$1.L$1 = obj2;
            singleProcessDataStore$transformAndWrite$1.L$2 = null;
            singleProcessDataStore$transformAndWrite$1.label = 2;
            if (singleProcessDataStore.z(obj2, singleProcessDataStore$transformAndWrite$1) == objE) {
                return objE;
            }
            obj = obj2;
            singleProcessDataStore2 = singleProcessDataStore;
            x<State<T>> xVar2 = singleProcessDataStore2.downstreamFlow;
            if (obj != null) {
                iHashCode = obj.hashCode();
            } else {
                iHashCode = 0;
            }
            xVar2.setValue(new Data(obj, iHashCode));
        }
        return obj;
    }

    /* JADX WARN: Code duplicated, block: B:42:0x00d0  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v10 */
    /* JADX WARN: Type inference failed for: r2v11 */
    /* JADX WARN: Type inference failed for: r2v4, types: [java.io.FileOutputStream, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v5, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r2v6 */
    /* JADX WARN: Type inference failed for: r2v7, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r2v9, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r3v0 */
    /* JADX WARN: Type inference failed for: r3v1 */
    /* JADX WARN: Type inference failed for: r3v10 */
    /* JADX WARN: Type inference failed for: r3v2 */
    /* JADX WARN: Type inference failed for: r3v3 */
    /* JADX WARN: Type inference failed for: r3v4 */
    /* JADX WARN: Type inference failed for: r3v5 */
    /* JADX WARN: Type inference failed for: r3v6, types: [java.io.File, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v8, types: [java.io.File] */
    /* JADX WARN: Type inference failed for: r8v19 */
    /* JADX WARN: Type inference failed for: r8v6 */
    /* JADX WARN: Type inference failed for: r8v9, types: [java.io.FileOutputStream] */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Type inference failed for: r9v3, types: [java.io.File] */
    /* JADX WARN: Type inference failed for: r9v5, types: [java.io.File, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r9v7, types: [java.lang.StringBuilder] */
    @Nullable
    public final Object z(T t5, @NotNull d<? super l0> dVar) throws IOException {
        SingleProcessDataStore$writeData$1 singleProcessDataStore$writeData$1;
        ?? file;
        ?? fileOutputStream;
        SingleProcessDataStore<T> singleProcessDataStore;
        ?? r10;
        Throwable th;
        if (dVar instanceof SingleProcessDataStore$writeData$1) {
            singleProcessDataStore$writeData$1 = (SingleProcessDataStore$writeData$1) dVar;
            int i10 = singleProcessDataStore$writeData$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                singleProcessDataStore$writeData$1.label = i10 - Integer.MIN_VALUE;
            } else {
                singleProcessDataStore$writeData$1 = new SingleProcessDataStore$writeData$1(this, dVar);
            }
        } else {
            singleProcessDataStore$writeData$1 = new SingleProcessDataStore$writeData$1(this, dVar);
        }
        Object obj = singleProcessDataStore$writeData$1.result;
        Object objE = kotlin.coroutines.intrinsics.d.e();
        int i11 = singleProcessDataStore$writeData$1.label;
        ?? r5 = 1;
        try {
            if (i11 == 0) {
                w.b(obj);
                p(q());
                file = new File(t.s(q().getAbsolutePath(), this.SCRATCH_SUFFIX));
                try {
                    fileOutputStream = new FileOutputStream((File) file);
                    try {
                        Serializer<T> serializer = this.serializer;
                        UncloseableOutputStream uncloseableOutputStream = new UncloseableOutputStream(fileOutputStream);
                        singleProcessDataStore$writeData$1.L$0 = this;
                        singleProcessDataStore$writeData$1.L$1 = file;
                        singleProcessDataStore$writeData$1.L$2 = fileOutputStream;
                        singleProcessDataStore$writeData$1.L$3 = null;
                        singleProcessDataStore$writeData$1.L$4 = fileOutputStream;
                        singleProcessDataStore$writeData$1.label = 1;
                        if (serializer.writeTo(t5, uncloseableOutputStream, singleProcessDataStore$writeData$1) == objE) {
                            return objE;
                        }
                        singleProcessDataStore = this;
                        r5 = file;
                        r10 = fileOutputStream;
                        th = null;
                        fileOutputStream = fileOutputStream;
                    } catch (Throwable th2) {
                        th = th2;
                        r5 = file;
                        throw th;
                    }
                } catch (IOException e) {
                    e = e;
                    if (file.exists()) {
                        file.delete();
                    }
                    throw e;
                }
            } else {
                if (i11 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                FileOutputStream fileOutputStream2 = (FileOutputStream) singleProcessDataStore$writeData$1.L$4;
                th = (Throwable) singleProcessDataStore$writeData$1.L$3;
                fileOutputStream = (Closeable) singleProcessDataStore$writeData$1.L$2;
                r5 = (File) singleProcessDataStore$writeData$1.L$1;
                singleProcessDataStore = (SingleProcessDataStore) singleProcessDataStore$writeData$1.L$0;
                try {
                    w.b(obj);
                    fileOutputStream = fileOutputStream;
                    r5 = r5;
                    r10 = fileOutputStream2;
                } catch (Throwable th3) {
                    th = th3;
                    try {
                        throw th;
                    } catch (Throwable th4) {
                        kotlin.io.c.a(fileOutputStream, th);
                        throw th4;
                    }
                }
            }
            r10.getFD().sync();
            l0 l0Var = l0.INSTANCE;
            kotlin.io.c.a(fileOutputStream, th);
            if (r5.renameTo(singleProcessDataStore.q())) {
                return l0.INSTANCE;
            }
            throw new IOException("Unable to rename " + r5 + ".This likely means that there are multiple instances of DataStore for this file. Ensure that you are only creating a single instance of datastore for this file.");
        } catch (IOException e2) {
            e = e2;
            file = r5;
            if (file.exists()) {
                file.delete();
            }
            throw e;
        }
    }

    private final void p(File file) throws IOException {
        File parentFile = file.getCanonicalFile().getParentFile();
        if (parentFile != null) {
            parentFile.mkdirs();
            if (parentFile.isDirectory()) {
            } else {
                throw new IOException(t.s("Unable to create parent directories of ", file));
            }
        }
    }

    public /* synthetic */ SingleProcessDataStore(a aVar, Serializer serializer, List list, CorruptionHandler corruptionHandler, o0 o0Var, int i10, k kVar) {
        this(aVar, serializer, (i10 & 4) != 0 ? kotlin.collections.v.m() : list, (i10 & 8) != 0 ? new NoOpCorruptionHandler() : corruptionHandler, (i10 & 16) != 0 ? kotlinx.coroutines.p0.a(e1.b().plus(y2.b(null, 1, null))) : o0Var);
    }
}
