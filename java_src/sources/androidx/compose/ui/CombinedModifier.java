package androidx.compose.ui;

import androidx.compose.runtime.internal.StabilityInferred;
import e8.l;
import e8.p;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes5.dex */
@StabilityInferred
public final class CombinedModifier implements Modifier {
    public static final int $stable = 0;

    @NotNull
    private final Modifier inner;

    @NotNull
    private final Modifier outer;

    /* JADX INFO: renamed from: androidx.compose.ui.CombinedModifier$toString$1, reason: invalid class name */
    static final class AnonymousClass1 extends v implements p<String, Modifier.Element, String> {
        public static final AnonymousClass1 INSTANCE = new AnonymousClass1();

        AnonymousClass1() {
            super(2);
        }

        @Override // e8.p
        @NotNull
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke(@NotNull String acc, @NotNull Modifier.Element element) {
            t.j(acc, "acc");
            t.j(element, "element");
            if (acc.length() == 0) {
                return element.toString();
            }
            return acc + ", " + element;
        }
    }

    @Override // androidx.compose.ui.Modifier
    public /* synthetic */ Modifier B(Modifier modifier) {
        return a.a(this, modifier);
    }

    public CombinedModifier(@NotNull Modifier outer, @NotNull Modifier inner) {
        t.j(outer, "outer");
        t.j(inner, "inner");
        this.outer = outer;
        this.inner = inner;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.compose.ui.Modifier
    public <R> R V(R r, @NotNull p<? super Modifier.Element, ? super R, ? extends R> operation) {
        t.j(operation, "operation");
        return (R) this.outer.V(this.inner.V(r, operation), operation);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.compose.ui.Modifier
    public <R> R a0(R r, @NotNull p<? super R, ? super Modifier.Element, ? extends R> operation) {
        t.j(operation, "operation");
        return (R) this.inner.a0(this.outer.a0(r, operation), operation);
    }

    @Override // androidx.compose.ui.Modifier
    public boolean d0(@NotNull l<? super Modifier.Element, Boolean> predicate) {
        t.j(predicate, "predicate");
        return this.outer.d0(predicate) && this.inner.d0(predicate);
    }

    public boolean equals(@Nullable Object obj) {
        if (obj instanceof CombinedModifier) {
            CombinedModifier combinedModifier = (CombinedModifier) obj;
            if (t.e(this.outer, combinedModifier.outer) && t.e(this.inner, combinedModifier.inner)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return this.outer.hashCode() + (this.inner.hashCode() * 31);
    }

    @NotNull
    public String toString() {
        return kotlinx.serialization.json.internal.b.BEGIN_LIST + ((String) a0("", AnonymousClass1.INSTANCE)) + kotlinx.serialization.json.internal.b.END_LIST;
    }
}
