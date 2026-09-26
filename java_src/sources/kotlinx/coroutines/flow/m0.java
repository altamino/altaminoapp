package kotlinx.coroutines.flow;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
final class m0<T> extends kotlinx.coroutines.flow.internal.b<o0> implements x<T>, c<T>, kotlinx.coroutines.flow.internal.p<T> {

    @NotNull
    private static final AtomicReferenceFieldUpdater _state$FU = AtomicReferenceFieldUpdater.newUpdater(m0.class, Object.class, "_state");

    @Nullable
    private volatile Object _state;
    private int sequence;

    @kotlin.coroutines.jvm.internal.f(c = "kotlinx.coroutines.flow.StateFlowImpl", f = "StateFlow.kt", l = {384, 396, 401}, m = "collect")
    static final class a extends kotlin.coroutines.jvm.internal.d {
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        Object L$4;
        int label;
        /* synthetic */ Object result;
        final /* synthetic */ m0<T> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(m0<T> m0Var, kotlin.coroutines.d<? super a> dVar) {
            super(dVar);
            this.this$0 = m0Var;
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return this.this$0.collect(null, this);
        }
    }

    private final boolean p(Object obj, Object obj2) {
        int i10;
        o0[] o0VarArrM;
        synchronized (this) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = _state$FU;
            Object obj3 = atomicReferenceFieldUpdater.get(this);
            if (obj != null && !kotlin.jvm.internal.t.e(obj3, obj)) {
                return false;
            }
            if (kotlin.jvm.internal.t.e(obj3, obj2)) {
                return true;
            }
            atomicReferenceFieldUpdater.set(this, obj2);
            int i11 = this.sequence;
            if ((i11 & 1) != 0) {
                this.sequence = i11 + 2;
                return true;
            }
            int i12 = i11 + 1;
            this.sequence = i12;
            o0[] o0VarArrM2 = m();
            w7.l0 l0Var = w7.l0.INSTANCE;
            while (true) {
                o0[] o0VarArr = o0VarArrM2;
                if (o0VarArr != null) {
                    for (o0 o0Var : o0VarArr) {
                        if (o0Var != null) {
                            o0Var.g();
                        }
                    }
                }
                synchronized (this) {
                    i10 = this.sequence;
                    if (i10 == i12) {
                        this.sequence = i12 + 1;
                        return true;
                    }
                    o0VarArrM = m();
                    w7.l0 l0Var2 = w7.l0.INSTANCE;
                }
                o0VarArrM2 = o0VarArrM;
                i12 = i10;
            }
        }
    }

    @Override // kotlinx.coroutines.flow.x
    public boolean a(T t5, T t10) {
        if (t5 == null) {
            t5 = (T) kotlinx.coroutines.flow.internal.s.NULL;
        }
        if (t10 == null) {
            t10 = (T) kotlinx.coroutines.flow.internal.s.NULL;
        }
        return p(t5, t10);
    }

    @Override // kotlinx.coroutines.flow.w
    public void b() {
        throw new UnsupportedOperationException("MutableStateFlow.resetReplayCache is not supported");
    }

    /* JADX WARN: Code duplicated, block: B:38:0x00b3 A[Catch: all -> 0x0043, TryCatch #0 {all -> 0x0043, blocks: (B:14:0x003e, B:36:0x00ab, B:38:0x00b3, B:40:0x00b8, B:50:0x00d9, B:52:0x00df, B:42:0x00be, B:46:0x00c5, B:21:0x0060, B:24:0x0073, B:35:0x009c), top: B:57:0x0024 }] */
    /* JADX WARN: Code duplicated, block: B:40:0x00b8 A[Catch: all -> 0x0043, TryCatch #0 {all -> 0x0043, blocks: (B:14:0x003e, B:36:0x00ab, B:38:0x00b3, B:40:0x00b8, B:50:0x00d9, B:52:0x00df, B:42:0x00be, B:46:0x00c5, B:21:0x0060, B:24:0x0073, B:35:0x009c), top: B:57:0x0024 }] */
    /* JADX WARN: Code duplicated, block: B:42:0x00be A[Catch: all -> 0x0043, TryCatch #0 {all -> 0x0043, blocks: (B:14:0x003e, B:36:0x00ab, B:38:0x00b3, B:40:0x00b8, B:50:0x00d9, B:52:0x00df, B:42:0x00be, B:46:0x00c5, B:21:0x0060, B:24:0x0073, B:35:0x009c), top: B:57:0x0024 }] */
    /* JADX WARN: Code duplicated, block: B:44:0x00c2  */
    /* JADX WARN: Code duplicated, block: B:45:0x00c4  */
    /* JADX WARN: Code duplicated, block: B:48:0x00d7 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:49:0x00d8  */
    /* JADX WARN: Code duplicated, block: B:52:0x00df A[Catch: all -> 0x0043, TRY_LEAVE, TryCatch #0 {all -> 0x0043, blocks: (B:14:0x003e, B:36:0x00ab, B:38:0x00b3, B:40:0x00b8, B:50:0x00d9, B:52:0x00df, B:42:0x00be, B:46:0x00c5, B:21:0x0060, B:24:0x0073, B:35:0x009c), top: B:57:0x0024 }] */
    /* JADX WARN: Code duplicated, block: B:54:0x00f1 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v0 */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v14 */
    /* JADX WARN: Type inference failed for: r6v15 */
    /* JADX WARN: Type inference failed for: r6v16 */
    /* JADX WARN: Type inference failed for: r6v17 */
    /* JADX WARN: Type inference failed for: r6v18 */
    /* JADX WARN: Type inference failed for: r6v19 */
    /* JADX WARN: Type inference failed for: r6v2, types: [kotlinx.coroutines.flow.internal.d] */
    /* JADX WARN: Type inference failed for: r6v20 */
    /* JADX WARN: Type inference failed for: r6v3 */
    /* JADX WARN: Type inference failed for: r6v6, types: [java.lang.Object, kotlinx.coroutines.flow.o0] */
    /* JADX WARN: Type inference failed for: r6v7, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r7v0 */
    /* JADX WARN: Type inference failed for: r7v1, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r7v10 */
    /* JADX WARN: Type inference failed for: r7v11 */
    /* JADX WARN: Type inference failed for: r7v12 */
    /* JADX WARN: Type inference failed for: r7v2, types: [java.lang.Object, kotlinx.coroutines.flow.h] */
    /* JADX WARN: Type inference failed for: r7v7 */
    /* JADX WARN: Type inference failed for: r7v8 */
    /* JADX WARN: Type inference failed for: r7v9 */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:51:0x00dd -> B:36:0x00ab). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:53:0x00ef -> B:36:0x00ab). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached at block B:40:0x00b8
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    @Override // kotlinx.coroutines.flow.b0, kotlinx.coroutines.flow.g
    @org.jetbrains.annotations.Nullable
    public java.lang.Object collect(@org.jetbrains.annotations.NotNull kotlinx.coroutines.flow.h<? super T> r11, @org.jetbrains.annotations.NotNull kotlin.coroutines.d<?> r12) {
        /*
            Method dump skipped, instruction units count: 246
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.m0.collect(kotlinx.coroutines.flow.h, kotlin.coroutines.d):java.lang.Object");
    }

    @Override // kotlinx.coroutines.flow.x, kotlinx.coroutines.flow.l0
    public T getValue() {
        kotlinx.coroutines.internal.i0 i0Var = kotlinx.coroutines.flow.internal.s.NULL;
        T t5 = (T) _state$FU.get(this);
        if (t5 == i0Var) {
            return null;
        }
        return t5;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.coroutines.flow.internal.b
    @NotNull
    /* JADX INFO: renamed from: n, reason: merged with bridge method [inline-methods] */
    public o0 i() {
        return new o0();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.coroutines.flow.internal.b
    @NotNull
    /* JADX INFO: renamed from: o, reason: merged with bridge method [inline-methods] */
    public o0[] j(int i10) {
        return new o0[i10];
    }

    @Override // kotlinx.coroutines.flow.x
    public void setValue(T t5) {
        if (t5 == null) {
            t5 = (T) kotlinx.coroutines.flow.internal.s.NULL;
        }
        p(null, t5);
    }

    public m0(@NotNull Object obj) {
        this._state = obj;
    }

    @Override // kotlinx.coroutines.flow.w
    public boolean c(T t5) {
        setValue(t5);
        return true;
    }

    @Override // kotlinx.coroutines.flow.internal.p
    @NotNull
    public g<T> e(@NotNull kotlin.coroutines.g gVar, int i10, @NotNull kotlinx.coroutines.channels.a aVar) {
        return n0.d(this, gVar, i10, aVar);
    }

    @Override // kotlinx.coroutines.flow.w, kotlinx.coroutines.flow.h
    @Nullable
    public Object emit(T t5, @NotNull kotlin.coroutines.d<? super w7.l0> dVar) {
        setValue(t5);
        return w7.l0.INSTANCE;
    }
}
