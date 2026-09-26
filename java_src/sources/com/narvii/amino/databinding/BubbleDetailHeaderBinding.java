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
import com.narvii.monetization.bubble.detail.HeaderLayout;
import com.narvii.widget.NVImageView;

/* JADX INFO: loaded from: classes10.dex */
public final class BubbleDetailHeaderBinding implements ViewBinding {

    @NonNull
    public final RealtimeBlurView blur;

    @NonNull
    public final NVImageView bubbleCover;

    @NonNull
    public final NVImageView bubblePreview;

    @NonNull
    public final HeaderLayout detailHeader;

    @NonNull
    private final HeaderLayout rootView;

    @NonNull
    public static BubbleDetailHeaderBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public HeaderLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static BubbleDetailHeaderBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.bubble_detail_header, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private BubbleDetailHeaderBinding(@NonNull HeaderLayout headerLayout, @NonNull RealtimeBlurView realtimeBlurView, @NonNull NVImageView nVImageView, @NonNull NVImageView nVImageView2, @NonNull HeaderLayout headerLayout2) {
        this.rootView = headerLayout;
        this.blur = realtimeBlurView;
        this.bubbleCover = nVImageView;
        this.bubblePreview = nVImageView2;
        this.detailHeader = headerLayout2;
    }

    @NonNull
    public static BubbleDetailHeaderBinding bind(@NonNull View view) {
        int i10 = R.id.blur;
        RealtimeBlurView realtimeBlurView = (RealtimeBlurView) ViewBindings.a(view, R.id.blur);
        if (realtimeBlurView != null) {
            i10 = R.id.bubble_cover;
            NVImageView nVImageView = (NVImageView) ViewBindings.a(view, R.id.bubble_cover);
            if (nVImageView != null) {
                i10 = R.id.bubble_preview;
                NVImageView nVImageView2 = (NVImageView) ViewBindings.a(view, R.id.bubble_preview);
                if (nVImageView2 != null) {
                    HeaderLayout headerLayout = (HeaderLayout) view;
                    return new BubbleDetailHeaderBinding(headerLayout, realtimeBlurView, nVImageView, nVImageView2, headerLayout);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
