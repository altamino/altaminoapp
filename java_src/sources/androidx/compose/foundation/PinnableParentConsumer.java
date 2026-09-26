package androidx.compose.foundation;

import androidx.compose.foundation.lazy.layout.PinnableParent;
import androidx.compose.foundation.lazy.layout.PinnableParentKt;
import androidx.compose.runtime.Stable;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.modifier.ModifierLocalConsumer;
import androidx.compose.ui.modifier.ModifierLocalReadScope;
import e8.l;
import e8.p;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes4.dex */
@Stable
@ExperimentalFoundationApi
final class PinnableParentConsumer implements ModifierLocalConsumer {

    @NotNull
    private final l<PinnableParent, l0> onPinnableParentAvailable;

    @Override // androidx.compose.ui.Modifier
    public /* synthetic */ Modifier B(Modifier modifier) {
        return androidx.compose.ui.a.a(this, modifier);
    }

    @Override // androidx.compose.ui.Modifier
    public /* synthetic */ Object V(Object obj, p pVar) {
        return androidx.compose.ui.b.c(this, obj, pVar);
    }

    @Override // androidx.compose.ui.Modifier
    public /* synthetic */ Object a0(Object obj, p pVar) {
        return androidx.compose.ui.b.b(this, obj, pVar);
    }

    @Override // androidx.compose.ui.Modifier
    public /* synthetic */ boolean d0(l lVar) {
        return androidx.compose.ui.b.a(this, lVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public PinnableParentConsumer(@NotNull l<? super PinnableParent, l0> onPinnableParentAvailable) {
        t.j(onPinnableParentAvailable, "onPinnableParentAvailable");
        this.onPinnableParentAvailable = onPinnableParentAvailable;
    }

    public boolean equals(@Nullable Object obj) {
        return (obj instanceof PinnableParentConsumer) && t.e(((PinnableParentConsumer) obj).onPinnableParentAvailable, this.onPinnableParentAvailable);
    }

    public int hashCode() {
        return this.onPinnableParentAvailable.hashCode();
    }

    @Override // androidx.compose.ui.modifier.ModifierLocalConsumer
    public void z0(@NotNull ModifierLocalReadScope scope) {
        t.j(scope, "scope");
        this.onPinnableParentAvailable.invoke((PinnableParent) scope.a(PinnableParentKt.a()));
    }
}
