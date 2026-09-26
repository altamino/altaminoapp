package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.list.overlay.OverlayListPlaceholder;
import com.narvii.widget.NVPagerTabLayout;
import com.narvii.widget.NVViewPager;

/* JADX INFO: loaded from: classes11.dex */
public final class SharedFolderTabLayoutBinding implements ViewBinding {

    @NonNull
    public final OverlayListPlaceholder actionBarOverlay;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final NVPagerTabLayout tabs;

    @NonNull
    public final NVViewPager viewpager;

    @NonNull
    public static SharedFolderTabLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static SharedFolderTabLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.shared_folder_tab_layout, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private SharedFolderTabLayoutBinding(@NonNull LinearLayout linearLayout, @NonNull OverlayListPlaceholder overlayListPlaceholder, @NonNull NVPagerTabLayout nVPagerTabLayout, @NonNull NVViewPager nVViewPager) {
        this.rootView = linearLayout;
        this.actionBarOverlay = overlayListPlaceholder;
        this.tabs = nVPagerTabLayout;
        this.viewpager = nVViewPager;
    }

    @NonNull
    public static SharedFolderTabLayoutBinding bind(@NonNull View view) {
        int i10 = R.id.action_bar_overlay;
        OverlayListPlaceholder overlayListPlaceholder = (OverlayListPlaceholder) ViewBindings.a(view, R.id.action_bar_overlay);
        if (overlayListPlaceholder != null) {
            i10 = R.id.tabs;
            NVPagerTabLayout nVPagerTabLayout = (NVPagerTabLayout) ViewBindings.a(view, R.id.tabs);
            if (nVPagerTabLayout != null) {
                i10 = R.id.viewpager;
                NVViewPager nVViewPager = (NVViewPager) ViewBindings.a(view, R.id.viewpager);
                if (nVViewPager != null) {
                    return new SharedFolderTabLayoutBinding((LinearLayout) view, overlayListPlaceholder, nVPagerTabLayout, nVViewPager);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
