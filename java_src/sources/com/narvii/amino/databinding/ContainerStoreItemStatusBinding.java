package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;

/* JADX INFO: loaded from: classes10.dex */
public final class ContainerStoreItemStatusBinding implements ViewBinding {

    @NonNull
    public final ProgressBar downloading;

    @NonNull
    public final ProgressBar loading;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final LinearLayout statusContainer;

    @NonNull
    public final TextView statusExtraHint;

    @NonNull
    public final TextView statusHint;

    @NonNull
    public final ImageView statusIndicator;

    @NonNull
    public final TextView unavailable;

    @NonNull
    public static ContainerStoreItemStatusBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ContainerStoreItemStatusBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.container_store_item_status, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ContainerStoreItemStatusBinding(@NonNull LinearLayout linearLayout, @NonNull ProgressBar progressBar, @NonNull ProgressBar progressBar2, @NonNull LinearLayout linearLayout2, @NonNull TextView textView, @NonNull TextView textView2, @NonNull ImageView imageView, @NonNull TextView textView3) {
        this.rootView = linearLayout;
        this.downloading = progressBar;
        this.loading = progressBar2;
        this.statusContainer = linearLayout2;
        this.statusExtraHint = textView;
        this.statusHint = textView2;
        this.statusIndicator = imageView;
        this.unavailable = textView3;
    }

    @NonNull
    public static ContainerStoreItemStatusBinding bind(@NonNull View view) {
        int i10 = R.id.downloading;
        ProgressBar progressBar = (ProgressBar) ViewBindings.a(view, R.id.downloading);
        if (progressBar != null) {
            i10 = R.id.loading;
            ProgressBar progressBar2 = (ProgressBar) ViewBindings.a(view, R.id.loading);
            if (progressBar2 != null) {
                i10 = R.id.status_container;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.status_container);
                if (linearLayout != null) {
                    i10 = R.id.status_extra_hint;
                    TextView textView = (TextView) ViewBindings.a(view, R.id.status_extra_hint);
                    if (textView != null) {
                        i10 = R.id.status_hint;
                        TextView textView2 = (TextView) ViewBindings.a(view, R.id.status_hint);
                        if (textView2 != null) {
                            i10 = R.id.status_indicator;
                            ImageView imageView = (ImageView) ViewBindings.a(view, R.id.status_indicator);
                            if (imageView != null) {
                                i10 = R.id.unavailable;
                                TextView textView3 = (TextView) ViewBindings.a(view, R.id.unavailable);
                                if (textView3 != null) {
                                    return new ContainerStoreItemStatusBinding((LinearLayout) view, progressBar, progressBar2, linearLayout, textView, textView2, imageView, textView3);
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
