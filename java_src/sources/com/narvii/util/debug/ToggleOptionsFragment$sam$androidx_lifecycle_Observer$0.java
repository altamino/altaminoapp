package com.narvii.util.debug;

import androidx.lifecycle.Observer;
import e8.l;
import kotlin.jvm.internal.n;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.g;

/* JADX INFO: loaded from: classes6.dex */
final class ToggleOptionsFragment$sam$androidx_lifecycle_Observer$0 implements Observer, n {
    private final /* synthetic */ l function;

    ToggleOptionsFragment$sam$androidx_lifecycle_Observer$0(l function) {
        t.j(function, "function");
        this.function = function;
    }

    public final boolean equals(@Nullable Object obj) {
        if ((obj instanceof Observer) && (obj instanceof n)) {
            return t.e(getFunctionDelegate(), ((n) obj).getFunctionDelegate());
        }
        return false;
    }

    @Override // kotlin.jvm.internal.n
    @NotNull
    public final g<?> getFunctionDelegate() {
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
