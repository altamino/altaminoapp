package io.ktor.client.call;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import r7.j;
import r7.s;
import w7.w;

/* JADX INFO: loaded from: classes5.dex */
public final class d {

    @kotlin.coroutines.jvm.internal.f(c = "io.ktor.client.call.SavedCallKt", f = "SavedCall.kt", l = {73}, m = "save")
    static final class a extends kotlin.coroutines.jvm.internal.d {
        Object L$0;
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
            return d.a(null, this);
        }
    }

    /* JADX WARN: Code duplicated, block: B:8:0x0014  */
    @Nullable
    public static final Object a(@NotNull b bVar, @NotNull kotlin.coroutines.d<? super b> dVar) {
        a aVar;
        if (dVar instanceof a) {
            aVar = (a) dVar;
            int i10 = aVar.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                aVar.label = i10 - Integer.MIN_VALUE;
            } else {
                aVar = new a(dVar);
            }
        } else {
            aVar = new a(dVar);
        }
        a aVar2 = aVar;
        Object objA = aVar2.result;
        Object objE = kotlin.coroutines.intrinsics.d.e();
        int i11 = aVar2.label;
        if (i11 == 0) {
            w.b(objA);
            io.ktor.utils.io.g gVarA = bVar.f().a();
            aVar2.L$0 = bVar;
            aVar2.label = 1;
            objA = io.ktor.utils.io.g.b.a(gVarA, 0L, aVar2, 1, null);
            if (objA == objE) {
                return objE;
            }
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            bVar = (b) aVar2.L$0;
            w.b(objA);
        }
        return new e(bVar.c(), bVar.e(), bVar.f(), s.c((j) objA, 0, 1, null));
    }
}
