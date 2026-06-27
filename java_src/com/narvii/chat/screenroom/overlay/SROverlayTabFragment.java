package com.narvii.chat.screenroom.overlay;

import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.support.v4.view.ViewPager;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVFragment;
import com.narvii.app.NVScrollableTabFragment;
import com.narvii.chat.video.overlay.VideoOverLayPlaceHolderFragment;
import com.narvii.widget.NVViewPager;

/* loaded from: classes2.dex */
public class SROverlayTabFragment extends NVScrollableTabFragment {
    private static final int INDEX_MAIN = 0;
    private static final int INDEX_PLACE_HOLDER = 1;
    View avMainLayout;
    ViewPager.OnPageChangeListener onPageChangeListener;
    NVViewPager.ScrollCheckListener scrollCheckListener;

    @Override // com.narvii.app.NVBaseScrollableTabFragment
    public int defaultTabIndex() {
        return 0;
    }

    @Override // com.narvii.app.NVScrollableTabFragment
    protected String getTabLabel(int i) {
        if (i == 0) {
            return "main";
        }
        if (i != 1) {
            return null;
        }
        return "holder";
    }

    public void setOnPageChangeListener(ViewPager.OnPageChangeListener onPageChangeListener) {
        this.onPageChangeListener = onPageChangeListener;
        NVViewPager nVViewPager = this.mViewPager;
        if (nVViewPager != null) {
            nVViewPager.addOnPageChangeListener(onPageChangeListener);
        }
    }

    public void setAvMainLayout(View view) {
        this.avMainLayout = view;
        NVViewPager nVViewPager = this.mViewPager;
        if (nVViewPager != null) {
            nVViewPager.setTouchEventPassView(view);
        }
    }

    public ViewPager getViewPager() {
        return this.mViewPager;
    }

    public void setScrollCheckListener(NVViewPager.ScrollCheckListener scrollCheckListener) {
        this.scrollCheckListener = scrollCheckListener;
        NVViewPager nVViewPager = this.mViewPager;
        if (nVViewPager != null) {
            nVViewPager.setScrollCheckListener(scrollCheckListener);
        }
    }

    @Override // com.narvii.app.NVBaseScrollableTabFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) throws Resources.NotFoundException {
        super.onViewCreated(view, bundle);
        this.mViewPager.setTouchEventPassView(this.avMainLayout);
        this.mViewPager.setScrollCheckListener(this.scrollCheckListener);
        this.mViewPager.addOnPageChangeListener(this.onPageChangeListener);
    }

    @Override // com.narvii.app.NVBaseScrollableTabFragment, android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.fragment_sr_overlay_tab, viewGroup, false);
    }

    @Override // com.narvii.app.NVScrollableTabFragment
    protected Class<? extends NVFragment> getFragment(int i) {
        if (i == 0) {
            return SROverlayMainFragment.class;
        }
        if (i != 1) {
            return null;
        }
        return VideoOverLayPlaceHolderFragment.class;
    }

    @Override // com.narvii.app.NVScrollableTabFragment
    protected View getTabView(String str, Drawable drawable) {
        return new View(getContext());
    }
}
