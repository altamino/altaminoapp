package io.ktor.utils.io.internal;

import j8.o;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.w;

/* JADX INFO: loaded from: classes5.dex */
public final class j {

    @kotlin.coroutines.jvm.internal.f(c = "io.ktor.utils.io.internal.SequentialCopyToKt", f = "SequentialCopyTo.kt", l = {26, 31, 39}, m = "copyToSequentialImpl")
    static final class a extends kotlin.coroutines.jvm.internal.d {
        long J$0;
        long J$1;
        long J$2;
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        a(kotlin.coroutines.d<? super a> dVar) {
            super(dVar);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return j.b(null, null, 0L, this);
        }
    }

    @kotlin.coroutines.jvm.internal.f(c = "io.ktor.utils.io.internal.SequentialCopyToKt", f = "SequentialCopyTo.kt", l = {60, 66}, m = "copyToTail")
    static final class b extends kotlin.coroutines.jvm.internal.d {
        int I$0;
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        b(kotlin.coroutines.d<? super b> dVar) {
            super(dVar);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return j.c(null, null, 0L, this);
        }
    }

    /* JADX WARN: Code duplicated, block: B:27:0x0091  */
    /* JADX WARN: Code duplicated, block: B:29:0x00a1 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:30:0x00a2  */
    /* JADX WARN: Code duplicated, block: B:33:0x00b6  */
    /* JADX WARN: Code duplicated, block: B:34:0x00ba  */
    /* JADX WARN: Code duplicated, block: B:36:0x00c2  */
    /* JADX WARN: Code duplicated, block: B:38:0x00d2 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:39:0x00d3  */
    /* JADX WARN: Code duplicated, block: B:42:0x00df  */
    /* JADX WARN: Code duplicated, block: B:43:0x00e2  */
    /* JADX WARN: Code duplicated, block: B:44:0x00e5  */
    /* JADX WARN: Code duplicated, block: B:46:0x00eb  */
    /* JADX WARN: Code duplicated, block: B:48:0x00fd A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:52:0x010b  */
    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:43:0x00e2 -> B:50:0x0106). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:45:0x00e9 -> B:49:0x00fe). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:47:0x00fb -> B:49:0x00fe). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    @org.jetbrains.annotations.Nullable
    public static final java.lang.Object b(@org.jetbrains.annotations.NotNull io.ktor.utils.io.f r19, @org.jetbrains.annotations.NotNull io.ktor.utils.io.f r20, long r21, @org.jetbrains.annotations.NotNull kotlin.coroutines.d<? super java.lang.Long> r23) {
        /*
            Method dump skipped, instruction units count: 296
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.utils.io.internal.j.b(io.ktor.utils.io.f, io.ktor.utils.io.f, long, kotlin.coroutines.d):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r9v10, types: [s7.a] */
    /* JADX WARN: Type inference failed for: r9v17 */
    public static final Object c(io.ktor.utils.io.f fVar, io.ktor.utils.io.f fVar2, long j6, kotlin.coroutines.d<? super Long> dVar) throws Throwable {
        b bVar;
        s7.a aVarS0;
        Object objG;
        io.ktor.utils.io.f fVar3;
        int iIntValue;
        if (dVar instanceof b) {
            bVar = (b) dVar;
            int i10 = bVar.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                bVar.label = i10 - Integer.MIN_VALUE;
            } else {
                bVar = new b(dVar);
            }
        } else {
            bVar = new b(dVar);
        }
        Object obj = bVar.result;
        Object objE = kotlin.coroutines.intrinsics.d.e();
        int i11 = bVar.label;
        try {
            if (i11 != 0) {
                if (i11 == 1) {
                    s7.a aVar = (s7.a) bVar.L$1;
                    io.ktor.utils.io.f fVar4 = (io.ktor.utils.io.f) bVar.L$0;
                    w.b(obj);
                    fVar3 = fVar4;
                    objG = obj;
                    aVarS0 = aVar;
                } else {
                    if (i11 != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    iIntValue = bVar.I$0;
                    s7.a aVar2 = (s7.a) bVar.L$0;
                    w.b(obj);
                    fVar2 = aVar2;
                }
                Long lE = kotlin.coroutines.jvm.internal.b.e(iIntValue);
                fVar2.A(s7.a.Companion.c());
                return lE;
            }
            w.b(obj);
            aVarS0 = s7.a.Companion.c().s0();
            try {
                aVarS0.s((int) o.k(j6, aVarS0.e()));
                bVar.L$0 = fVar2;
                bVar.L$1 = aVarS0;
                bVar.label = 1;
                objG = fVar.g(aVarS0, bVar);
                fVar3 = fVar2;
                if (objG == objE) {
                    return objE;
                }
            } catch (Throwable th) {
                th = th;
                fVar2 = aVarS0;
                fVar2.A(s7.a.Companion.c());
                throw th;
            }
            iIntValue = ((Number) objG).intValue();
            if (iIntValue == -1) {
                s7.a.d dVar2 = s7.a.Companion;
                aVarS0.A(dVar2.c());
                Long lE2 = kotlin.coroutines.jvm.internal.b.e(0L);
                aVarS0.A(dVar2.c());
                return lE2;
            }
            bVar.L$0 = aVarS0;
            bVar.L$1 = null;
            bVar.I$0 = iIntValue;
            bVar.label = 2;
            if (fVar3.n(aVarS0, bVar) == objE) {
                return objE;
            }
            fVar2 = aVarS0;
            Long lE3 = kotlin.coroutines.jvm.internal.b.e(iIntValue);
            fVar2.A(s7.a.Companion.c());
            return lE3;
        } catch (Throwable th2) {
            th = th2;
        }
    }
}
