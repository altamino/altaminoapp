package androidx.privacysandbox.ads.adservices.java.internal;

import androidx.concurrent.futures.CallbackToFutureAdapter;
import com.google.common.util.concurrent.k;
import kotlin.jvm.internal.t;
import kotlinx.coroutines.v0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes2.dex */
public final class CoroutineAdapterKt {
    @NotNull
    public static final <T> k<T> b(@NotNull final v0<? extends T> v0Var, @Nullable final Object obj) {
        t.j(v0Var, "<this>");
        k<T> kVarA = CallbackToFutureAdapter.a(new CallbackToFutureAdapter.Resolver() { // from class: androidx.privacysandbox.ads.adservices.java.internal.a
            @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
            public final Object a(CallbackToFutureAdapter.Completer completer) {
                return CoroutineAdapterKt.d(v0Var, obj, completer);
            }
        });
        t.i(kVarA, "getFuture { completer ->…        }\n    }\n    tag\n}");
        return kVarA;
    }

    public static /* synthetic */ k c(v0 v0Var, Object obj, int i10, Object obj2) {
        if ((i10 & 1) != 0) {
            obj = "Deferred.asListenableFuture";
        }
        return b(v0Var, obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Object d(v0 this_asListenableFuture, Object obj, CallbackToFutureAdapter.Completer completer) {
        t.j(this_asListenableFuture, "$this_asListenableFuture");
        t.j(completer, "completer");
        this_asListenableFuture.U(new CoroutineAdapterKt$asListenableFuture$1$1(completer, this_asListenableFuture));
        return obj;
    }
}
