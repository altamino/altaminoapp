package com.narvii.topic;

import android.support.v4.app.Fragment;
import android.view.ViewGroup;
import com.narvii.app.NVFragment;
import com.narvii.nested.CoordinateTabFragment;
import com.narvii.nested.NVAppBarLayout;
import com.narvii.paging.state.PageStatusView;
import com.narvii.util.Utils;
import com.narvii.widget.NVPagerTabLayout;
import kotlin.TypeCastException;

/* compiled from: CoordinateFragmentHelper.kt */
/* loaded from: classes3.dex */
public final class CoordinateFragmentHelperKt {
    public static final void setPaddingForChildFragmentInTopic(NVFragment nVFragment, PageStatusView pageStatusView) {
        if (nVFragment == null) {
            return;
        }
        if (nVFragment.getParentFragment() instanceof CoordinateTabFragment) {
            if ((pageStatusView != null ? pageStatusView.getLayoutParams() : null) instanceof ViewGroup.MarginLayoutParams) {
                Fragment parentFragment = nVFragment.getParentFragment();
                if (parentFragment == null) {
                    throw new TypeCastException("null cannot be cast to non-null type com.narvii.nested.CoordinateTabFragment");
                }
                NVPagerTabLayout tabLayout = ((CoordinateTabFragment) parentFragment).getTabLayout();
                int measuredHeight = tabLayout != null ? tabLayout.getMeasuredHeight() : 0;
                Fragment parentFragment2 = nVFragment.getParentFragment();
                if (parentFragment2 == null) {
                    throw new TypeCastException("null cannot be cast to non-null type com.narvii.nested.CoordinateTabFragment");
                }
                NVAppBarLayout appbarLayout = ((CoordinateTabFragment) parentFragment2).getAppbarLayout();
                int screenHeight = ((Utils.getScreenHeight(nVFragment.getContext()) - Utils.dpToPxInt(nVFragment.getContext(), 300.0f)) - measuredHeight) - (appbarLayout != null ? appbarLayout.getMeasuredHeight() : 0);
                pageStatusView.setPadding(0, 0, 0, (int) (screenHeight > 0 ? screenHeight / 2.0f : 0.0f));
            }
        }
        if (pageStatusView != null) {
            pageStatusView.setDarkThemeColor((int) 4292334547L);
        }
    }
}
