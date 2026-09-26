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
import com.narvii.amino.master.R;
import com.narvii.livelayer.detailview.LiveLayerDetailListItemView;
import com.narvii.widget.SecretImageView;

/* JADX INFO: loaded from: classes.dex */
public final class LiveLayerDetailPostItemBinding implements ViewBinding {

    @NonNull
    public final LiveLayerFeedToolbarBinding feedToolbar;

    @NonNull
    public final SecretImageView image;

    @NonNull
    public final FrameLayout liveLayerAdditionalLayout;

    @NonNull
    private final LiveLayerDetailListItemView rootView;

    @NonNull
    public final TextView title;

    @NonNull
    public static LiveLayerDetailPostItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LiveLayerDetailListItemView getRoot() {
        return this.rootView;
    }

    @NonNull
    public static LiveLayerDetailPostItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.live_layer_detail_post_item, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private LiveLayerDetailPostItemBinding(@NonNull LiveLayerDetailListItemView liveLayerDetailListItemView, @NonNull LiveLayerFeedToolbarBinding liveLayerFeedToolbarBinding, @NonNull SecretImageView secretImageView, @NonNull FrameLayout frameLayout, @NonNull TextView textView) {
        this.rootView = liveLayerDetailListItemView;
        this.feedToolbar = liveLayerFeedToolbarBinding;
        this.image = secretImageView;
        this.liveLayerAdditionalLayout = frameLayout;
        this.title = textView;
    }

    @NonNull
    public static LiveLayerDetailPostItemBinding bind(@NonNull View view) {
        int i10 = R.id.feed_toolbar;
        View viewA = ViewBindings.a(view, R.id.feed_toolbar);
        if (viewA != null) {
            LiveLayerFeedToolbarBinding liveLayerFeedToolbarBindingBind = LiveLayerFeedToolbarBinding.bind(viewA);
            i10 = R.id.image;
            SecretImageView secretImageView = (SecretImageView) ViewBindings.a(view, R.id.image);
            if (secretImageView != null) {
                i10 = R.id.live_layer_additional_layout;
                FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, R.id.live_layer_additional_layout);
                if (frameLayout != null) {
                    i10 = R.id.title;
                    TextView textView = (TextView) ViewBindings.a(view, R.id.title);
                    if (textView != null) {
                        return new LiveLayerDetailPostItemBinding((LiveLayerDetailListItemView) view, liveLayerFeedToolbarBindingBind, secretImageView, frameLayout, textView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
