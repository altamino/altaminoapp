package com.narvii.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.lib.R;
import com.narvii.list.overlay.OverlayListPlaceholder;
import com.narvii.widget.FullsizeImageView;
import com.narvii.widget.SpinningView;

/* JADX INFO: loaded from: classes7.dex */
public final class ListCheckinRegionLayoutBinding implements ViewBinding {

    @NonNull
    public final OverlayListPlaceholder actionbarShareMask;

    @NonNull
    public final TextView checkinStreakTitle;

    @NonNull
    public final FullsizeImageView listBg;

    @NonNull
    public final FrameLayout listFrame;

    @NonNull
    public final SpinningView progress;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public static ListCheckinRegionLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ListCheckinRegionLayoutBinding bind(@NonNull View view) {
        int i10 = R.id.actionbar_share_mask;
        OverlayListPlaceholder overlayListPlaceholder = (OverlayListPlaceholder) ViewBindings.a(view, i10);
        if (overlayListPlaceholder != null) {
            i10 = R.id.checkin_streak_title;
            TextView textView = (TextView) ViewBindings.a(view, i10);
            if (textView != null) {
                i10 = R.id.list_bg;
                FullsizeImageView fullsizeImageView = (FullsizeImageView) ViewBindings.a(view, i10);
                if (fullsizeImageView != null) {
                    FrameLayout frameLayout = (FrameLayout) view;
                    i10 = android.R.id.progress;
                    SpinningView spinningView = (SpinningView) ViewBindings.a(view, android.R.id.progress);
                    if (spinningView != null) {
                        return new ListCheckinRegionLayoutBinding(frameLayout, overlayListPlaceholder, textView, fullsizeImageView, frameLayout, spinningView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static ListCheckinRegionLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.list_checkin_region_layout, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ListCheckinRegionLayoutBinding(@NonNull FrameLayout frameLayout, @NonNull OverlayListPlaceholder overlayListPlaceholder, @NonNull TextView textView, @NonNull FullsizeImageView fullsizeImageView, @NonNull FrameLayout frameLayout2, @NonNull SpinningView spinningView) {
        this.rootView = frameLayout;
        this.actionbarShareMask = overlayListPlaceholder;
        this.checkinStreakTitle = textView;
        this.listBg = fullsizeImageView;
        this.listFrame = frameLayout2;
        this.progress = spinningView;
    }
}
