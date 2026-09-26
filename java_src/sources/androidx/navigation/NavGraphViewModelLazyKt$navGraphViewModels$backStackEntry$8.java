package androidx.navigation;

import androidx.fragment.app.Fragment;
import androidx.navigation.fragment.FragmentKt;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes4.dex */
public final class NavGraphViewModelLazyKt$navGraphViewModels$backStackEntry$8 extends v implements e8.a<NavBackStackEntry> {
    final /* synthetic */ String $navGraphRoute;
    final /* synthetic */ Fragment $this_navGraphViewModels;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NavGraphViewModelLazyKt$navGraphViewModels$backStackEntry$8(Fragment fragment, String str) {
        super(0);
        this.$this_navGraphViewModels = fragment;
        this.$navGraphRoute = str;
    }

    @Override // e8.a
    @NotNull
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final NavBackStackEntry invoke() {
        return FragmentKt.a(this.$this_navGraphViewModels).x(this.$navGraphRoute);
    }
}
