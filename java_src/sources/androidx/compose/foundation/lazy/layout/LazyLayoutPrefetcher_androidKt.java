package androidx.compose.foundation.lazy.layout;

import android.view.View;
import androidx.compose.foundation.ExperimentalFoundationApi;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.ui.layout.SubcomposeLayoutState;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes5.dex */
public final class LazyLayoutPrefetcher_androidKt {
    @Composable
    @ExperimentalFoundationApi
    public static final void a(@NotNull LazyLayoutPrefetchState prefetchState, @NotNull LazyLayoutItemContentFactory itemContentFactory, @NotNull SubcomposeLayoutState subcomposeLayoutState, @Nullable Composer composer, int i10) {
        t.j(prefetchState, "prefetchState");
        t.j(itemContentFactory, "itemContentFactory");
        t.j(subcomposeLayoutState, "subcomposeLayoutState");
        Composer composerS = composer.s(1113453182);
        View view = (View) composerS.x(AndroidCompositionLocals_androidKt.k());
        int i11 = SubcomposeLayoutState.$stable;
        composerS.G(1618982084);
        boolean zK = composerS.k(subcomposeLayoutState) | composerS.k(prefetchState) | composerS.k(view);
        Object objH = composerS.H();
        if (zK || objH == Composer.Companion.a()) {
            composerS.z(new LazyLayoutPrefetcher(prefetchState, subcomposeLayoutState, itemContentFactory, view));
        }
        composerS.Q();
        ScopeUpdateScope scopeUpdateScopeU = composerS.u();
        if (scopeUpdateScopeU == null) {
            return;
        }
        scopeUpdateScopeU.a(new LazyLayoutPrefetcher_androidKt$LazyLayoutPrefetcher$2(prefetchState, itemContentFactory, subcomposeLayoutState, i10));
    }
}
