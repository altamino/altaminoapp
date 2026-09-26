package androidx.compose.foundation.lazy;

import androidx.compose.foundation.ExperimentalFoundationApi;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.State;
import java.util.List;
import java.util.Map;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes2.dex */
@ExperimentalFoundationApi
public final class LazyListItemProviderImpl implements LazyListItemProvider {

    @NotNull
    private final LazyItemScopeImpl itemScope;

    @NotNull
    private final State<LazyListItemsSnapshot> itemsSnapshot;

    @Override // androidx.compose.foundation.lazy.LazyListItemProvider
    @NotNull
    public LazyItemScopeImpl e() {
        return this.itemScope;
    }

    public LazyListItemProviderImpl(@NotNull State<LazyListItemsSnapshot> itemsSnapshot) {
        t.j(itemsSnapshot, "itemsSnapshot");
        this.itemsSnapshot = itemsSnapshot;
        this.itemScope = new LazyItemScopeImpl();
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutItemProvider
    @Nullable
    public Object a(int i10) {
        return this.itemsSnapshot.getValue().b(i10);
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutItemProvider
    @NotNull
    public Map<Object, Integer> c() {
        return this.itemsSnapshot.getValue().f();
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutItemProvider
    @NotNull
    public Object d(int i10) {
        return this.itemsSnapshot.getValue().e(i10);
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutItemProvider
    public int f() {
        return this.itemsSnapshot.getValue().d();
    }

    @Override // androidx.compose.foundation.lazy.LazyListItemProvider
    @NotNull
    public List<Integer> g() {
        return this.itemsSnapshot.getValue().c();
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutItemProvider
    @Composable
    public void b(int i10, @Nullable Composer composer, int i11) {
        int i12;
        int i13;
        int i14;
        Composer composerS = composer.s(1704733014);
        if ((i11 & 14) == 0) {
            if (composerS.p(i10)) {
                i14 = 4;
            } else {
                i14 = 2;
            }
            i12 = i14 | i11;
        } else {
            i12 = i11;
        }
        if ((i11 & 112) == 0) {
            if (composerS.k(this)) {
                i13 = 32;
            } else {
                i13 = 16;
            }
            i12 |= i13;
        }
        if ((i12 & 91) == 18 && composerS.b()) {
            composerS.g();
        } else {
            this.itemsSnapshot.getValue().a(e(), i10, composerS, ((i12 << 3) & 112) | 512);
        }
        ScopeUpdateScope scopeUpdateScopeU = composerS.u();
        if (scopeUpdateScopeU != null) {
            scopeUpdateScopeU.a(new LazyListItemProviderImpl$Item$1(this, i10, i11));
        }
    }
}
