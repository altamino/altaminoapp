package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.github.mmin18.widget.RealtimeBlurView;
import com.narvii.amino.master.R;
import com.narvii.widget.FeedBottomLayout;

/* JADX INFO: loaded from: classes11.dex */
public final class FeedDetailBottomLayoutBinding implements ViewBinding {

    @NonNull
    public final View divider;

    @NonNull
    public final View dividerGd;

    @NonNull
    private final FeedBottomLayout rootView;

    @NonNull
    public final RealtimeBlurView sbbBlurBg;

    @NonNull
    public static FeedDetailBottomLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FeedBottomLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FeedDetailBottomLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.feed_detail_bottom_layout, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private FeedDetailBottomLayoutBinding(@NonNull FeedBottomLayout feedBottomLayout, @NonNull View view, @NonNull View view2, @NonNull RealtimeBlurView realtimeBlurView) {
        this.rootView = feedBottomLayout;
        this.divider = view;
        this.dividerGd = view2;
        this.sbbBlurBg = realtimeBlurView;
    }

    @NonNull
    public static FeedDetailBottomLayoutBinding bind(@NonNull View view) {
        int i10 = R.id.divider;
        View viewA = ViewBindings.a(view, R.id.divider);
        if (viewA != null) {
            i10 = R.id.divider_gd;
            View viewA2 = ViewBindings.a(view, R.id.divider_gd);
            if (viewA2 != null) {
                i10 = R.id.sbb_blur_bg;
                RealtimeBlurView realtimeBlurView = (RealtimeBlurView) ViewBindings.a(view, R.id.sbb_blur_bg);
                if (realtimeBlurView != null) {
                    return new FeedDetailBottomLayoutBinding((FeedBottomLayout) view, viewA, viewA2, realtimeBlurView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
