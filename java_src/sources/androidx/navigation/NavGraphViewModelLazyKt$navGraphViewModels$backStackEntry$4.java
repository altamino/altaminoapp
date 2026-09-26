package androidx.navigation;

import androidx.fragment.app.Fragment;
import androidx.navigation.fragment.FragmentKt;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes4.dex */
public final class NavGraphViewModelLazyKt$navGraphViewModels$backStackEntry$4 extends v implements e8.a<NavBackStackEntry> {
    final /* synthetic */ int $navGraphId;
    final /* synthetic */ Fragment $this_navGraphViewModels;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NavGraphViewModelLazyKt$navGraphViewModels$backStackEntry$4(Fragment fragment, int i10) {
        super(0);
        this.$this_navGraphViewModels = fragment;
        this.$navGraphId = i10;
    }

    @Override // e8.a
    @NotNull
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final NavBackStackEntry invoke() {
        return FragmentKt.a(this.$this_navGraphViewModels).w(this.$navGraphId);
    }
}
