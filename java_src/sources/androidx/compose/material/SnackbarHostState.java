package androidx.compose.material;

import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.Stable;
import kotlin.coroutines.d;
import kotlin.coroutines.jvm.internal.h;
import kotlin.jvm.internal.t;
import kotlinx.coroutines.o;
import kotlinx.coroutines.p;
import kotlinx.coroutines.sync.a;
import kotlinx.coroutines.sync.c;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.v;
import w7.w;

/* JADX INFO: loaded from: classes6.dex */
@Stable
public final class SnackbarHostState {

    @NotNull
    private final a mutex = c.b(false, 1, null);

    @NotNull
    private final MutableState currentSnackbarData$delegate = SnapshotStateKt__SnapshotStateKt.e(null, null, 2, null);

    @Stable
    private static final class SnackbarDataImpl implements SnackbarData {

        @Nullable
        private final String actionLabel;

        @NotNull
        private final o<SnackbarResult> continuation;

        @NotNull
        private final SnackbarDuration duration;

        @NotNull
        private final String message;

        @Override // androidx.compose.material.SnackbarData
        @Nullable
        public String b() {
            return this.actionLabel;
        }

        @Override // androidx.compose.material.SnackbarData
        @NotNull
        public SnackbarDuration getDuration() {
            return this.duration;
        }

        @Override // androidx.compose.material.SnackbarData
        @NotNull
        public String getMessage() {
            return this.message;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public SnackbarDataImpl(@NotNull String message, @Nullable String str, @NotNull SnackbarDuration duration, @NotNull o<? super SnackbarResult> continuation) {
            t.j(message, "message");
            t.j(duration, "duration");
            t.j(continuation, "continuation");
            this.message = message;
            this.actionLabel = str;
            this.duration = duration;
            this.continuation = continuation;
        }

        @Override // androidx.compose.material.SnackbarData
        public void a() {
            if (this.continuation.isActive()) {
                o<SnackbarResult> oVar = this.continuation;
                v.a aVar = v.Companion;
                oVar.resumeWith(v.b(SnackbarResult.ActionPerformed));
            }
        }

        @Override // androidx.compose.material.SnackbarData
        public void dismiss() {
            if (this.continuation.isActive()) {
                o<SnackbarResult> oVar = this.continuation;
                v.a aVar = v.Companion;
                oVar.resumeWith(v.b(SnackbarResult.Dismissed));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void c(SnackbarData snackbarData) {
        this.currentSnackbarData$delegate.setValue(snackbarData);
    }

    @Nullable
    public final SnackbarData b() {
        return (SnackbarData) this.currentSnackbarData$delegate.getValue();
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Multi-variable type inference failed */
    @Nullable
    public final Object d(@NotNull String str, @Nullable String str2, @NotNull SnackbarDuration snackbarDuration, @NotNull d<? super SnackbarResult> dVar) {
        SnackbarHostState$showSnackbar$1 snackbarHostState$showSnackbar$1;
        a aVar;
        SnackbarDuration snackbarDuration2;
        String str3;
        SnackbarHostState snackbarHostState;
        String str4;
        a aVar2;
        if (dVar instanceof SnackbarHostState$showSnackbar$1) {
            snackbarHostState$showSnackbar$1 = (SnackbarHostState$showSnackbar$1) dVar;
            int i10 = snackbarHostState$showSnackbar$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                snackbarHostState$showSnackbar$1.label = i10 - Integer.MIN_VALUE;
            } else {
                snackbarHostState$showSnackbar$1 = new SnackbarHostState$showSnackbar$1(this, dVar);
            }
        } else {
            snackbarHostState$showSnackbar$1 = new SnackbarHostState$showSnackbar$1(this, dVar);
        }
        Object obj = snackbarHostState$showSnackbar$1.result;
        Object objE = kotlin.coroutines.intrinsics.d.e();
        int i11 = snackbarHostState$showSnackbar$1.label;
        try {
            try {
                if (i11 == 0) {
                    w.b(obj);
                    aVar = this.mutex;
                    snackbarHostState$showSnackbar$1.L$0 = this;
                    snackbarHostState$showSnackbar$1.L$1 = str;
                    snackbarHostState$showSnackbar$1.L$2 = str2;
                    snackbarHostState$showSnackbar$1.L$3 = snackbarDuration;
                    snackbarHostState$showSnackbar$1.L$4 = aVar;
                    snackbarHostState$showSnackbar$1.label = 1;
                    if (aVar.d(null, snackbarHostState$showSnackbar$1) == objE) {
                        return objE;
                    }
                    snackbarDuration2 = snackbarDuration;
                    str3 = str2;
                    snackbarHostState = this;
                    str4 = str;
                } else {
                    if (i11 != 1) {
                        if (i11 != 2) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        aVar2 = (a) snackbarHostState$showSnackbar$1.L$4;
                        snackbarHostState = (SnackbarHostState) snackbarHostState$showSnackbar$1.L$0;
                        try {
                            w.b(obj);
                            snackbarHostState.c(null);
                            aVar2.e(null);
                            return obj;
                        } catch (Throwable th) {
                            th = th;
                            snackbarHostState.c(null);
                            throw th;
                        }
                    }
                    a aVar3 = (a) snackbarHostState$showSnackbar$1.L$4;
                    SnackbarDuration snackbarDuration3 = (SnackbarDuration) snackbarHostState$showSnackbar$1.L$3;
                    String str5 = (String) snackbarHostState$showSnackbar$1.L$2;
                    String str6 = (String) snackbarHostState$showSnackbar$1.L$1;
                    SnackbarHostState snackbarHostState2 = (SnackbarHostState) snackbarHostState$showSnackbar$1.L$0;
                    w.b(obj);
                    aVar = aVar3;
                    str4 = str6;
                    snackbarDuration2 = snackbarDuration3;
                    str3 = str5;
                    snackbarHostState = snackbarHostState2;
                }
                snackbarHostState$showSnackbar$1.L$0 = snackbarHostState;
                snackbarHostState$showSnackbar$1.L$1 = str4;
                snackbarHostState$showSnackbar$1.L$2 = str3;
                snackbarHostState$showSnackbar$1.L$3 = snackbarDuration2;
                snackbarHostState$showSnackbar$1.L$4 = aVar;
                snackbarHostState$showSnackbar$1.L$5 = snackbarHostState$showSnackbar$1;
                snackbarHostState$showSnackbar$1.label = 2;
                p pVar = new p(kotlin.coroutines.intrinsics.c.c(snackbarHostState$showSnackbar$1), 1);
                pVar.x();
                snackbarHostState.c(new SnackbarDataImpl(str4, str3, snackbarDuration2, pVar));
                Object objU = pVar.u();
                if (objU == kotlin.coroutines.intrinsics.d.e()) {
                    h.c(snackbarHostState$showSnackbar$1);
                }
                if (objU == objE) {
                    return objE;
                }
                a aVar4 = aVar;
                obj = objU;
                aVar2 = aVar4;
                snackbarHostState.c(null);
                aVar2.e(null);
                return obj;
            } catch (Throwable th2) {
                th = th2;
                snackbarHostState.c(null);
                throw th;
            }
        } catch (Throwable th3) {
            str.e(null);
            throw th3;
        }
    }
}
