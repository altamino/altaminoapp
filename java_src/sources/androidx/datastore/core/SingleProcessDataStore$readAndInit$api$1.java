package androidx.datastore.core;

import e8.p;
import kotlin.coroutines.d;
import kotlin.jvm.internal.k0;
import kotlin.jvm.internal.p0;
import kotlin.jvm.internal.t;
import kotlinx.coroutines.sync.a;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.w;

/* JADX INFO: Add missing generic type declarations: [T] */
/* JADX INFO: loaded from: classes.dex */
public final class SingleProcessDataStore$readAndInit$api$1<T> implements InitializerApi<T> {
    final /* synthetic */ p0<T> $initData;
    final /* synthetic */ k0 $initializationComplete;
    final /* synthetic */ a $updateLock;
    final /* synthetic */ SingleProcessDataStore<T> this$0;

    SingleProcessDataStore$readAndInit$api$1(a aVar, k0 k0Var, p0<T> p0Var, SingleProcessDataStore<T> singleProcessDataStore) {
        this.$updateLock = aVar;
        this.$initializationComplete = k0Var;
        this.$initData = p0Var;
        this.this$0 = singleProcessDataStore;
    }

    /* JADX WARN: Code duplicated, block: B:38:0x00ba A[Catch: all -> 0x0056, TRY_LEAVE, TryCatch #0 {all -> 0x0056, blocks: (B:21:0x0052, B:36:0x00b2, B:38:0x00ba), top: B:53:0x0052 }] */
    /* JADX WARN: Code duplicated, block: B:40:0x00c8 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:41:0x00c9  */
    /* JADX WARN: Code duplicated, block: B:43:0x00d0  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // androidx.datastore.core.InitializerApi
    @Nullable
    public Object a(@NotNull p<? super T, ? super d<? super T>, ? extends Object> pVar, @NotNull d<? super T> dVar) throws Throwable {
        SingleProcessDataStore$readAndInit$api$1$updateData$1 singleProcessDataStore$readAndInit$api$1$updateData$1;
        a aVar;
        SingleProcessDataStore singleProcessDataStore;
        k0 k0Var;
        p0<T> p0Var;
        a aVar2;
        a aVar3;
        SingleProcessDataStore singleProcessDataStore2;
        T t5;
        p0<T> p0Var2;
        if (dVar instanceof SingleProcessDataStore$readAndInit$api$1$updateData$1) {
            singleProcessDataStore$readAndInit$api$1$updateData$1 = (SingleProcessDataStore$readAndInit$api$1$updateData$1) dVar;
            int i10 = singleProcessDataStore$readAndInit$api$1$updateData$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                singleProcessDataStore$readAndInit$api$1$updateData$1.label = i10 - Integer.MIN_VALUE;
            } else {
                singleProcessDataStore$readAndInit$api$1$updateData$1 = new SingleProcessDataStore$readAndInit$api$1$updateData$1(this, dVar);
            }
        } else {
            singleProcessDataStore$readAndInit$api$1$updateData$1 = new SingleProcessDataStore$readAndInit$api$1$updateData$1(this, dVar);
        }
        Object obj = singleProcessDataStore$readAndInit$api$1$updateData$1.result;
        Object objE = kotlin.coroutines.intrinsics.d.e();
        int i11 = singleProcessDataStore$readAndInit$api$1$updateData$1.label;
        try {
            if (i11 == 0) {
                w.b(obj);
                aVar = this.$updateLock;
                k0 k0Var2 = this.$initializationComplete;
                p0<T> p0Var3 = this.$initData;
                singleProcessDataStore = this.this$0;
                singleProcessDataStore$readAndInit$api$1$updateData$1.L$0 = pVar;
                singleProcessDataStore$readAndInit$api$1$updateData$1.L$1 = aVar;
                singleProcessDataStore$readAndInit$api$1$updateData$1.L$2 = k0Var2;
                singleProcessDataStore$readAndInit$api$1$updateData$1.L$3 = p0Var3;
                singleProcessDataStore$readAndInit$api$1$updateData$1.L$4 = singleProcessDataStore;
                singleProcessDataStore$readAndInit$api$1$updateData$1.label = 1;
                if (aVar.d(null, singleProcessDataStore$readAndInit$api$1$updateData$1) == objE) {
                    return objE;
                }
                k0Var = k0Var2;
                p0Var = p0Var3;
            } else {
                if (i11 != 1) {
                    if (i11 != 2) {
                        if (i11 != 3) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        t5 = (T) singleProcessDataStore$readAndInit$api$1$updateData$1.L$2;
                        p0Var2 = (p0) singleProcessDataStore$readAndInit$api$1$updateData$1.L$1;
                        aVar2 = (a) singleProcessDataStore$readAndInit$api$1$updateData$1.L$0;
                        try {
                            w.b(obj);
                            p0Var2.element = t5;
                            p0Var = p0Var2;
                            T t10 = p0Var.element;
                            aVar2.e(null);
                            return t10;
                        } catch (Throwable th) {
                            th = th;
                            aVar2.e(null);
                            throw th;
                        }
                    }
                    SingleProcessDataStore singleProcessDataStore3 = (SingleProcessDataStore) singleProcessDataStore$readAndInit$api$1$updateData$1.L$2;
                    p0Var = (p0) singleProcessDataStore$readAndInit$api$1$updateData$1.L$1;
                    aVar3 = (a) singleProcessDataStore$readAndInit$api$1$updateData$1.L$0;
                    try {
                        w.b(obj);
                        singleProcessDataStore2 = singleProcessDataStore3;
                        if (t.e(obj, p0Var.element)) {
                            aVar2 = aVar3;
                        } else {
                            singleProcessDataStore$readAndInit$api$1$updateData$1.L$0 = aVar3;
                            singleProcessDataStore$readAndInit$api$1$updateData$1.L$1 = p0Var;
                            singleProcessDataStore$readAndInit$api$1$updateData$1.L$2 = obj;
                            singleProcessDataStore$readAndInit$api$1$updateData$1.label = 3;
                            if (singleProcessDataStore2.z(obj, singleProcessDataStore$readAndInit$api$1$updateData$1) == objE) {
                                return objE;
                            }
                            t5 = (T) obj;
                            p0Var2 = p0Var;
                            aVar2 = aVar3;
                            p0Var2.element = t5;
                            p0Var = p0Var2;
                        }
                        T t11 = p0Var.element;
                        aVar2.e(null);
                        return t11;
                    } catch (Throwable th2) {
                        th = th2;
                        aVar2 = aVar3;
                        aVar2.e(null);
                        throw th;
                    }
                }
                SingleProcessDataStore singleProcessDataStore4 = (SingleProcessDataStore) singleProcessDataStore$readAndInit$api$1$updateData$1.L$4;
                p0Var = (p0) singleProcessDataStore$readAndInit$api$1$updateData$1.L$3;
                k0Var = (k0) singleProcessDataStore$readAndInit$api$1$updateData$1.L$2;
                a aVar4 = (a) singleProcessDataStore$readAndInit$api$1$updateData$1.L$1;
                p<? super T, ? super d<? super T>, ? extends Object> pVar2 = (p) singleProcessDataStore$readAndInit$api$1$updateData$1.L$0;
                w.b(obj);
                aVar = aVar4;
                singleProcessDataStore = singleProcessDataStore4;
                pVar = pVar2;
            }
            if (k0Var.element) {
                throw new IllegalStateException("InitializerApi.updateData should not be called after initialization is complete.");
            }
            T t12 = p0Var.element;
            singleProcessDataStore$readAndInit$api$1$updateData$1.L$0 = aVar;
            singleProcessDataStore$readAndInit$api$1$updateData$1.L$1 = p0Var;
            singleProcessDataStore$readAndInit$api$1$updateData$1.L$2 = singleProcessDataStore;
            singleProcessDataStore$readAndInit$api$1$updateData$1.L$3 = null;
            singleProcessDataStore$readAndInit$api$1$updateData$1.L$4 = null;
            singleProcessDataStore$readAndInit$api$1$updateData$1.label = 2;
            Object objInvoke = pVar.invoke(t12, singleProcessDataStore$readAndInit$api$1$updateData$1);
            if (objInvoke == objE) {
                return objE;
            }
            aVar3 = aVar;
            obj = objInvoke;
            singleProcessDataStore2 = singleProcessDataStore;
            if (t.e(obj, p0Var.element)) {
                singleProcessDataStore$readAndInit$api$1$updateData$1.L$0 = aVar3;
                singleProcessDataStore$readAndInit$api$1$updateData$1.L$1 = p0Var;
                singleProcessDataStore$readAndInit$api$1$updateData$1.L$2 = obj;
                singleProcessDataStore$readAndInit$api$1$updateData$1.label = 3;
                if (singleProcessDataStore2.z(obj, singleProcessDataStore$readAndInit$api$1$updateData$1) == objE) {
                    return objE;
                }
                t5 = (T) obj;
                p0Var2 = p0Var;
                aVar2 = aVar3;
                p0Var2.element = t5;
                p0Var = p0Var2;
            } else {
                aVar2 = aVar3;
            }
            T t13 = p0Var.element;
            aVar2.e(null);
            return t13;
        } catch (Throwable th3) {
            th = th3;
            aVar2 = aVar;
            aVar2.e(null);
            throw th;
        }
    }
}
