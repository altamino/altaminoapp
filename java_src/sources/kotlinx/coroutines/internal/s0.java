package kotlinx.coroutines.internal;

import kotlinx.coroutines.z2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes7.dex */
final class s0 {

    @NotNull
    public final kotlin.coroutines.g context;

    @NotNull
    private final z2<Object>[] elements;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f3262i;

    @NotNull
    private final Object[] values;

    public final void a(@NotNull z2<?> z2Var, @Nullable Object obj) {
        Object[] objArr = this.values;
        int i10 = this.f3262i;
        objArr[i10] = obj;
        z2<Object>[] z2VarArr = this.elements;
        this.f3262i = i10 + 1;
        kotlin.jvm.internal.t.h(z2Var, "null cannot be cast to non-null type kotlinx.coroutines.ThreadContextElement<kotlin.Any?>");
        z2VarArr[i10] = z2Var;
    }

    public final void b(@NotNull kotlin.coroutines.g gVar) {
        int length = this.elements.length - 1;
        if (length < 0) {
            return;
        }
        while (true) {
            int i10 = length - 1;
            z2<Object> z2Var = this.elements[length];
            kotlin.jvm.internal.t.g(z2Var);
            z2Var.n(gVar, this.values[length]);
            if (i10 < 0) {
                return;
            } else {
                length = i10;
            }
        }
    }

    public s0(@NotNull kotlin.coroutines.g gVar, int i10) {
        this.context = gVar;
        this.values = new Object[i10];
        this.elements = new z2[i10];
    }
}
