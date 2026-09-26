package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.NVImageView;

/* JADX INFO: loaded from: classes8.dex */
public final class RtcIndicatorBinding implements ViewBinding {

    @NonNull
    public final NVImageView icon;

    @NonNull
    public final TextView indicatorText;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final LinearLayout rtcIndicatorMain;

    @NonNull
    public static RtcIndicatorBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static RtcIndicatorBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.rtc_indicator, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private RtcIndicatorBinding(@NonNull LinearLayout linearLayout, @NonNull NVImageView nVImageView, @NonNull TextView textView, @NonNull LinearLayout linearLayout2) {
        this.rootView = linearLayout;
        this.icon = nVImageView;
        this.indicatorText = textView;
        this.rtcIndicatorMain = linearLayout2;
    }

    @NonNull
    public static RtcIndicatorBinding bind(@NonNull View view) {
        int i10 = R.id.icon;
        NVImageView nVImageView = (NVImageView) ViewBindings.a(view, R.id.icon);
        if (nVImageView != null) {
            i10 = R.id.indicator_text;
            TextView textView = (TextView) ViewBindings.a(view, R.id.indicator_text);
            if (textView != null) {
                LinearLayout linearLayout = (LinearLayout) view;
                return new RtcIndicatorBinding(linearLayout, nVImageView, textView, linearLayout);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
