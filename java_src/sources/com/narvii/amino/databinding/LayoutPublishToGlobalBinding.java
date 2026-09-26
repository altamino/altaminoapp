package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.PublishToGlobalLayout;
import com.narvii.widget.TintButton;

/* JADX INFO: loaded from: classes11.dex */
public final class LayoutPublishToGlobalBinding implements ViewBinding {

    @NonNull
    public final ImageView checkPtg;

    @NonNull
    public final TintButton publishToGlobalIndicator;

    @NonNull
    public final PublishToGlobalLayout publishToGlobalLayout;

    @NonNull
    public final TextView publishToGlobalText;

    @NonNull
    private final PublishToGlobalLayout rootView;

    @NonNull
    public static LayoutPublishToGlobalBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public PublishToGlobalLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static LayoutPublishToGlobalBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.layout_publish_to_global, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private LayoutPublishToGlobalBinding(@NonNull PublishToGlobalLayout publishToGlobalLayout, @NonNull ImageView imageView, @NonNull TintButton tintButton, @NonNull PublishToGlobalLayout publishToGlobalLayout2, @NonNull TextView textView) {
        this.rootView = publishToGlobalLayout;
        this.checkPtg = imageView;
        this.publishToGlobalIndicator = tintButton;
        this.publishToGlobalLayout = publishToGlobalLayout2;
        this.publishToGlobalText = textView;
    }

    @NonNull
    public static LayoutPublishToGlobalBinding bind(@NonNull View view) {
        int i10 = R.id.check_ptg;
        ImageView imageView = (ImageView) ViewBindings.a(view, R.id.check_ptg);
        if (imageView != null) {
            i10 = R.id.publish_to_global_indicator;
            TintButton tintButton = (TintButton) ViewBindings.a(view, R.id.publish_to_global_indicator);
            if (tintButton != null) {
                PublishToGlobalLayout publishToGlobalLayout = (PublishToGlobalLayout) view;
                i10 = R.id.publish_to_global_text;
                TextView textView = (TextView) ViewBindings.a(view, R.id.publish_to_global_text);
                if (textView != null) {
                    return new LayoutPublishToGlobalBinding(publishToGlobalLayout, imageView, tintButton, publishToGlobalLayout, textView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
