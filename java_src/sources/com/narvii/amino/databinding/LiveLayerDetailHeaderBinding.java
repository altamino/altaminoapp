package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.github.mmin18.widget.RealtimeBlurView;
import com.narvii.amino.master.R;
import com.narvii.livelayer.detailview.HeaderLayout;
import com.narvii.widget.NVImageView;
import com.narvii.widget.TintButton;

/* JADX INFO: loaded from: classes3.dex */
public final class LiveLayerDetailHeaderBinding implements ViewBinding {

    @NonNull
    public final TintButton actionbarBack;

    @NonNull
    public final RealtimeBlurView blur;

    @NonNull
    public final NVImageView detailIcon;

    @NonNull
    public final TextView detailTitle;

    @NonNull
    public final FrameLayout detailTitleWrapper;

    @NonNull
    public final HeaderLayout liveLayerDetailHeader;

    @NonNull
    public final TintButton minimize;

    @NonNull
    private final HeaderLayout rootView;

    @NonNull
    public static LiveLayerDetailHeaderBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public HeaderLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static LiveLayerDetailHeaderBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.live_layer_detail_header, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private LiveLayerDetailHeaderBinding(@NonNull HeaderLayout headerLayout, @NonNull TintButton tintButton, @NonNull RealtimeBlurView realtimeBlurView, @NonNull NVImageView nVImageView, @NonNull TextView textView, @NonNull FrameLayout frameLayout, @NonNull HeaderLayout headerLayout2, @NonNull TintButton tintButton2) {
        this.rootView = headerLayout;
        this.actionbarBack = tintButton;
        this.blur = realtimeBlurView;
        this.detailIcon = nVImageView;
        this.detailTitle = textView;
        this.detailTitleWrapper = frameLayout;
        this.liveLayerDetailHeader = headerLayout2;
        this.minimize = tintButton2;
    }

    @NonNull
    public static LiveLayerDetailHeaderBinding bind(@NonNull View view) {
        int i10 = R.id.actionbar_back;
        TintButton tintButton = (TintButton) ViewBindings.a(view, R.id.actionbar_back);
        if (tintButton != null) {
            i10 = R.id.blur;
            RealtimeBlurView realtimeBlurView = (RealtimeBlurView) ViewBindings.a(view, R.id.blur);
            if (realtimeBlurView != null) {
                i10 = R.id.detail_icon;
                NVImageView nVImageView = (NVImageView) ViewBindings.a(view, R.id.detail_icon);
                if (nVImageView != null) {
                    i10 = R.id.detail_title;
                    TextView textView = (TextView) ViewBindings.a(view, R.id.detail_title);
                    if (textView != null) {
                        i10 = R.id.detail_title_wrapper;
                        FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, R.id.detail_title_wrapper);
                        if (frameLayout != null) {
                            HeaderLayout headerLayout = (HeaderLayout) view;
                            i10 = R.id.minimize;
                            TintButton tintButton2 = (TintButton) ViewBindings.a(view, R.id.minimize);
                            if (tintButton2 != null) {
                                return new LiveLayerDetailHeaderBinding(headerLayout, tintButton, realtimeBlurView, nVImageView, textView, frameLayout, headerLayout, tintButton2);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
