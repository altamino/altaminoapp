package com.narvii.chat.screenroom.overlay;

import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.Nullable;
import androidx.viewpager.widget.ViewPager;
import com.narvii.amino.master.R;
import com.narvii.app.NVFragment;
import com.narvii.app.NVScrollableTabFragment;
import com.narvii.chat.video.overlay.VideoOverLayPlaceHolderFragment;
import com.narvii.widget.NVViewPager;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
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
    protected Class<? extends NVFragment> getFragment(int i10) {
        if (i10 == 0) {
            return SROverlayMainFragment.class;
        }
        if (i10 != 1) {
            return null;
        }
        return VideoOverLayPlaceHolderFragment.class;
    }

    @Override // com.narvii.app.NVScrollableTabFragment
    protected String getTabLabel(int i10) {
        if (i10 == 0) {
            return "main";
        }
        if (i10 != 1) {
            return null;
        }
        return "holder";
    }

    public ViewPager getViewPager() {
        return this.mViewPager;
    }

    @Override // com.narvii.app.NVScrollableTabFragment
    protected View getTabView(String str, Drawable drawable) {
        return new View(getContext());
    }

    public void setAvMainLayout(View view) {
        this.avMainLayout = view;
        NVViewPager nVViewPager = this.mViewPager;
        if (nVViewPager != null) {
            nVViewPager.setTouchEventPassView(view);
        }
    }

    public void setOnPageChangeListener(ViewPager.OnPageChangeListener onPageChangeListener) {
        this.onPageChangeListener = onPageChangeListener;
        NVViewPager nVViewPager = this.mViewPager;
        if (nVViewPager != null) {
            nVViewPager.addOnPageChangeListener(onPageChangeListener);
        }
    }

    public void setScrollCheckListener(NVViewPager.ScrollCheckListener scrollCheckListener) {
        this.scrollCheckListener = scrollCheckListener;
        NVViewPager nVViewPager = this.mViewPager;
        if (nVViewPager != null) {
            nVViewPager.setScrollCheckListener(scrollCheckListener);
        }
    }

    @Override // com.narvii.app.NVBaseScrollableTabFragment, androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        return layoutInflater.inflate(R.layout.fragment_sr_overlay_tab, viewGroup, false);
    }

    @Override // com.narvii.app.NVBaseScrollableTabFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.mViewPager.setTouchEventPassView(this.avMainLayout);
        this.mViewPager.setScrollCheckListener(this.scrollCheckListener);
        this.mViewPager.addOnPageChangeListener(this.onPageChangeListener);
    }
}
