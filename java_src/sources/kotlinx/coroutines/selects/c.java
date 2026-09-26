package kotlinx.coroutines.selects;

import e8.l;
import e8.q;
import kotlin.jvm.internal.v;
import kotlinx.coroutines.internal.i0;
import kotlinx.coroutines.o;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes9.dex */
public final class c {
    private static final int TRY_SELECT_ALREADY_SELECTED = 3;
    private static final int TRY_SELECT_CANCELLED = 2;
    private static final int TRY_SELECT_REREGISTER = 1;
    private static final int TRY_SELECT_SUCCESSFUL = 0;

    @NotNull
    private static final q<Object, Object, Object, Object> DUMMY_PROCESS_RESULT_FUNCTION = a.INSTANCE;

    @NotNull
    private static final i0 STATE_REG = new i0("STATE_REG");

    @NotNull
    private static final i0 STATE_COMPLETED = new i0("STATE_COMPLETED");

    @NotNull
    private static final i0 STATE_CANCELLED = new i0("STATE_CANCELLED");

    @NotNull
    private static final i0 NO_RESULT = new i0("NO_RESULT");

    @NotNull
    private static final i0 PARAM_CLAUSE_0 = new i0("PARAM_CLAUSE_0");

    static final class a extends v implements q {
        public static final a INSTANCE = new a();

        a() {
            super(3);
        }

        @Override // e8.q
        @Nullable
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Void invoke(@NotNull Object obj, @Nullable Object obj2, @Nullable Object obj3) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final d a(int i10) {
        if (i10 == 0) {
            return d.SUCCESSFUL;
        }
        if (i10 == 1) {
            return d.REREGISTER;
        }
        if (i10 == 2) {
            return d.CANCELLED;
        }
        if (i10 == 3) {
            return d.ALREADY_SELECTED;
        }
        throw new IllegalStateException(("Unexpected internal result: " + i10).toString());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean h(o<? super l0> oVar, l<? super Throwable, l0> lVar) {
        Object objR = oVar.r(l0.INSTANCE, null, lVar);
        if (objR == null) {
            return false;
        }
        oVar.K(objR);
        return true;
    }
}
