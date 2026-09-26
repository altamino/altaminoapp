package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.StatusBarPlaceHolder;
import com.narvii.widget.TintButton;

/* JADX INFO: loaded from: classes11.dex */
public final class IncubatorCommunityExplorerBinding implements ViewBinding {

    @NonNull
    public final TintButton back;

    @NonNull
    public final StatusBarPlaceHolder fakeStatusPlaceholder;

    @NonNull
    public final FrameLayout masterBackground;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public final TintButton search;

    @NonNull
    public final FrameLayout searchBg;

    @NonNull
    public final RelativeLayout topBar;

    @NonNull
    public static IncubatorCommunityExplorerBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static IncubatorCommunityExplorerBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.incubator_community_explorer, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private IncubatorCommunityExplorerBinding(@NonNull FrameLayout frameLayout, @NonNull TintButton tintButton, @NonNull StatusBarPlaceHolder statusBarPlaceHolder, @NonNull FrameLayout frameLayout2, @NonNull TintButton tintButton2, @NonNull FrameLayout frameLayout3, @NonNull RelativeLayout relativeLayout) {
        this.rootView = frameLayout;
        this.back = tintButton;
        this.fakeStatusPlaceholder = statusBarPlaceHolder;
        this.masterBackground = frameLayout2;
        this.search = tintButton2;
        this.searchBg = frameLayout3;
        this.topBar = relativeLayout;
    }

    @NonNull
    public static IncubatorCommunityExplorerBinding bind(@NonNull View view) {
        int i10 = R.id.back;
        TintButton tintButton = (TintButton) ViewBindings.a(view, R.id.back);
        if (tintButton != null) {
            i10 = R.id.fake_status_placeholder;
            StatusBarPlaceHolder statusBarPlaceHolder = (StatusBarPlaceHolder) ViewBindings.a(view, R.id.fake_status_placeholder);
            if (statusBarPlaceHolder != null) {
                i10 = R.id.master_background;
                FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, R.id.master_background);
                if (frameLayout != null) {
                    i10 = R.id.search;
                    TintButton tintButton2 = (TintButton) ViewBindings.a(view, R.id.search);
                    if (tintButton2 != null) {
                        i10 = R.id.search_bg;
                        FrameLayout frameLayout2 = (FrameLayout) ViewBindings.a(view, R.id.search_bg);
                        if (frameLayout2 != null) {
                            i10 = R.id.top_bar;
                            RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.a(view, R.id.top_bar);
                            if (relativeLayout != null) {
                                return new IncubatorCommunityExplorerBinding((FrameLayout) view, tintButton, statusBarPlaceHolder, frameLayout, tintButton2, frameLayout2, relativeLayout);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
