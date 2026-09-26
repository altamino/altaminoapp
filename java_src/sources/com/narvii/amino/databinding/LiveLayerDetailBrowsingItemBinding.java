package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.livelayer.detailview.LiveLayerDetailListItemView;
import com.narvii.widget.NVImageSwitcher;

/* JADX INFO: loaded from: classes7.dex */
public final class LiveLayerDetailBrowsingItemBinding implements ViewBinding {

    @NonNull
    public final ImageView browsingLabel;

    @NonNull
    public final NVImageSwitcher imageSwitcher;

    @NonNull
    public final FrameLayout liveLayerAdditionalLayout;

    @NonNull
    private final LiveLayerDetailListItemView rootView;

    @NonNull
    public final TextView title;

    @NonNull
    public static LiveLayerDetailBrowsingItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LiveLayerDetailListItemView getRoot() {
        return this.rootView;
    }

    @NonNull
    public static LiveLayerDetailBrowsingItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.live_layer_detail_browsing_item, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private LiveLayerDetailBrowsingItemBinding(@NonNull LiveLayerDetailListItemView liveLayerDetailListItemView, @NonNull ImageView imageView, @NonNull NVImageSwitcher nVImageSwitcher, @NonNull FrameLayout frameLayout, @NonNull TextView textView) {
        this.rootView = liveLayerDetailListItemView;
        this.browsingLabel = imageView;
        this.imageSwitcher = nVImageSwitcher;
        this.liveLayerAdditionalLayout = frameLayout;
        this.title = textView;
    }

    @NonNull
    public static LiveLayerDetailBrowsingItemBinding bind(@NonNull View view) {
        int i10 = R.id.browsing_label;
        ImageView imageView = (ImageView) ViewBindings.a(view, R.id.browsing_label);
        if (imageView != null) {
            i10 = R.id.image_switcher;
            NVImageSwitcher nVImageSwitcher = (NVImageSwitcher) ViewBindings.a(view, R.id.image_switcher);
            if (nVImageSwitcher != null) {
                i10 = R.id.live_layer_additional_layout;
                FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, R.id.live_layer_additional_layout);
                if (frameLayout != null) {
                    i10 = R.id.title;
                    TextView textView = (TextView) ViewBindings.a(view, R.id.title);
                    if (textView != null) {
                        return new LiveLayerDetailBrowsingItemBinding((LiveLayerDetailListItemView) view, imageView, nVImageSwitcher, frameLayout, textView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
