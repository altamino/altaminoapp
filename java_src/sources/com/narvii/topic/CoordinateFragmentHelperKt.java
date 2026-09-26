package com.narvii.topic;

import android.view.ViewGroup;
import androidx.fragment.app.Fragment;
import com.narvii.app.NVFragment;
import com.narvii.nested.CoordinateTabFragment;
import com.narvii.nested.NVAppBarLayout;
import com.narvii.paging.state.PageStatusView;
import com.narvii.util.Utils;
import com.narvii.widget.NVPagerTabLayout;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
public final class CoordinateFragmentHelperKt {
    public static final void setPaddingForChildFragmentInTopic(@Nullable NVFragment nVFragment, @Nullable PageStatusView pageStatusView) {
        if (nVFragment == null) {
            return;
        }
        if (nVFragment.getParentFragment() instanceof CoordinateTabFragment) {
            if ((pageStatusView != null ? pageStatusView.getLayoutParams() : null) instanceof ViewGroup.MarginLayoutParams) {
                Fragment parentFragment = nVFragment.getParentFragment();
                t.h(parentFragment, "null cannot be cast to non-null type com.narvii.nested.CoordinateTabFragment");
                NVPagerTabLayout tabLayout = ((CoordinateTabFragment) parentFragment).getTabLayout();
                int measuredHeight = tabLayout != null ? tabLayout.getMeasuredHeight() : 0;
                Fragment parentFragment2 = nVFragment.getParentFragment();
                t.h(parentFragment2, "null cannot be cast to non-null type com.narvii.nested.CoordinateTabFragment");
                NVAppBarLayout appbarLayout = ((CoordinateTabFragment) parentFragment2).getAppbarLayout();
                int screenHeight = ((Utils.getScreenHeight(nVFragment.getContext()) - Utils.dpToPxInt(nVFragment.getContext(), 300.0f)) - measuredHeight) - (appbarLayout != null ? appbarLayout.getMeasuredHeight() : 0);
                pageStatusView.setPadding(0, 0, 0, (int) (screenHeight > 0 ? screenHeight / 2.0f : 0.0f));
            }
        }
        if (pageStatusView != null) {
            pageStatusView.setDarkThemeColor(-2632749);
        }
    }
}
