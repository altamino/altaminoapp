package androidx.compose.ui.semantics;

import androidx.compose.runtime.internal.StabilityInferred;
import e8.p;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import kotlin.reflect.KProperty;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@StabilityInferred
public final class SemanticsPropertyKey<T> {
    public static final int $stable = 0;

    @NotNull
    private final p<T, T, T> mergePolicy;

    @NotNull
    private final String name;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX INFO: renamed from: androidx.compose.ui.semantics.SemanticsPropertyKey$1, reason: invalid class name */
    public static final class AnonymousClass1 extends v implements p<T, T, T> {
        public static final AnonymousClass1 INSTANCE = new AnonymousClass1();

        AnonymousClass1() {
            super(2);
        }

        @Override // e8.p
        @Nullable
        public final T invoke(@Nullable T t5, T t10) {
            return t5 == null ? t10 : t5;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public SemanticsPropertyKey(@NotNull String name, @NotNull p<? super T, ? super T, ? extends T> mergePolicy) {
        t.j(name, "name");
        t.j(mergePolicy, "mergePolicy");
        this.name = name;
        this.mergePolicy = mergePolicy;
    }

    @NotNull
    public final String a() {
        return this.name;
    }

    public /* synthetic */ SemanticsPropertyKey(String str, p pVar, int i10, k kVar) {
        this(str, (i10 & 2) != 0 ? AnonymousClass1.INSTANCE : pVar);
    }

    @Nullable
    public final T b(@Nullable T t5, T t10) {
        return this.mergePolicy.invoke(t5, t10);
    }

    public final void c(@NotNull SemanticsPropertyReceiver thisRef, @NotNull KProperty<?> property, T t5) {
        t.j(thisRef, "thisRef");
        t.j(property, "property");
        thisRef.a(this, t5);
    }

    @NotNull
    public String toString() {
        return "SemanticsPropertyKey: " + this.name;
    }
}
