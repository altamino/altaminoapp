package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;

/* JADX INFO: loaded from: classes8.dex */
public final class LiveLayerRecommendLineBinding implements ViewBinding {

    @NonNull
    public final TextView liveLayerRecommendLineText;

    @NonNull
    private final RelativeLayout rootView;

    @NonNull
    public static LiveLayerRecommendLineBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public RelativeLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static LiveLayerRecommendLineBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.live_layer_recommend_line, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private LiveLayerRecommendLineBinding(@NonNull RelativeLayout relativeLayout, @NonNull TextView textView) {
        this.rootView = relativeLayout;
        this.liveLayerRecommendLineText = textView;
    }

    @NonNull
    public static LiveLayerRecommendLineBinding bind(@NonNull View view) {
        TextView textView = (TextView) ViewBindings.a(view, R.id.live_layer_recommend_line_text);
        if (textView != null) {
            return new LiveLayerRecommendLineBinding((RelativeLayout) view, textView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.live_layer_recommend_line_text)));
    }
}
