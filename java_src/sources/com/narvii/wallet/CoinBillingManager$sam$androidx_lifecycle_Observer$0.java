package com.narvii.wallet;

import androidx.lifecycle.Observer;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes2.dex */
final class CoinBillingManager$sam$androidx_lifecycle_Observer$0 implements Observer, kotlin.jvm.internal.n {
    private final /* synthetic */ e8.l function;

    CoinBillingManager$sam$androidx_lifecycle_Observer$0(e8.l function) {
        kotlin.jvm.internal.t.j(function, "function");
        this.function = function;
    }

    public final boolean equals(@Nullable Object obj) {
        if ((obj instanceof Observer) && (obj instanceof kotlin.jvm.internal.n)) {
            return kotlin.jvm.internal.t.e(getFunctionDelegate(), ((kotlin.jvm.internal.n) obj).getFunctionDelegate());
        }
        return false;
    }

    @Override // kotlin.jvm.internal.n
    @NotNull
    public final w7.g<?> getFunctionDelegate() {
        return this.function;
    }

    public final int hashCode() {
        return getFunctionDelegate().hashCode();
    }

    @Override // androidx.lifecycle.Observer
    public final /* synthetic */ void onChanged(Object obj) {
        this.function.invoke(obj);
    }
}
