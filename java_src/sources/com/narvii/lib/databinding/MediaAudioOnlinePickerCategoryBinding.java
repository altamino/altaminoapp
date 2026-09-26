package com.narvii.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.lib.R;
import com.narvii.widget.NVPagerTabLayout;
import com.narvii.widget.NVViewPager;
import com.narvii.widget.RadiusLayout;
import com.narvii.widget.SpinningView;

/* JADX INFO: loaded from: classes11.dex */
public final class MediaAudioOnlinePickerCategoryBinding implements ViewBinding {

    @NonNull
    public final LinearLayout musicCategoryPages;

    @NonNull
    public final FrameLayout openLocalAudioPicker;

    @NonNull
    public final SpinningView progress;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final RadiusLayout searchLayoutContainer;

    @NonNull
    public final NVPagerTabLayout tabs;

    @NonNull
    public final NVViewPager viewpager;

    @NonNull
    public static MediaAudioOnlinePickerCategoryBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static MediaAudioOnlinePickerCategoryBinding bind(@NonNull View view) {
        int i10 = R.id.music_category_pages;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, i10);
        if (linearLayout != null) {
            i10 = R.id.open_local_audio_picker;
            FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, i10);
            if (frameLayout != null) {
                i10 = android.R.id.progress;
                SpinningView spinningView = (SpinningView) ViewBindings.a(view, android.R.id.progress);
                if (spinningView != null) {
                    i10 = R.id.search_layout_container;
                    RadiusLayout radiusLayout = (RadiusLayout) ViewBindings.a(view, i10);
                    if (radiusLayout != null) {
                        i10 = R.id.tabs;
                        NVPagerTabLayout nVPagerTabLayout = (NVPagerTabLayout) ViewBindings.a(view, i10);
                        if (nVPagerTabLayout != null) {
                            i10 = R.id.viewpager;
                            NVViewPager nVViewPager = (NVViewPager) ViewBindings.a(view, i10);
                            if (nVViewPager != null) {
                                return new MediaAudioOnlinePickerCategoryBinding((LinearLayout) view, linearLayout, frameLayout, spinningView, radiusLayout, nVPagerTabLayout, nVViewPager);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static MediaAudioOnlinePickerCategoryBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.media_audio_online_picker_category, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private MediaAudioOnlinePickerCategoryBinding(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull FrameLayout frameLayout, @NonNull SpinningView spinningView, @NonNull RadiusLayout radiusLayout, @NonNull NVPagerTabLayout nVPagerTabLayout, @NonNull NVViewPager nVViewPager) {
        this.rootView = linearLayout;
        this.musicCategoryPages = linearLayout2;
        this.openLocalAudioPicker = frameLayout;
        this.progress = spinningView;
        this.searchLayoutContainer = radiusLayout;
        this.tabs = nVPagerTabLayout;
        this.viewpager = nVViewPager;
    }
}
