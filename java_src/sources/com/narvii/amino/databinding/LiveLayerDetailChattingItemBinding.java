package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.livelayer.detailview.AutoBubbleView;
import com.narvii.livelayer.detailview.LiveLayerDetailListItemView;
import com.narvii.widget.ThumbImageView;

/* JADX INFO: loaded from: classes8.dex */
public final class LiveLayerDetailChattingItemBinding implements ViewBinding {

    @NonNull
    public final ThumbImageView image;

    @NonNull
    public final AutoBubbleView liveLayerAutoBubble;

    @NonNull
    private final LiveLayerDetailListItemView rootView;

    @NonNull
    public final TextView title;

    @NonNull
    public static LiveLayerDetailChattingItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LiveLayerDetailListItemView getRoot() {
        return this.rootView;
    }

    @NonNull
    public static LiveLayerDetailChattingItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.live_layer_detail_chatting_item, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private LiveLayerDetailChattingItemBinding(@NonNull LiveLayerDetailListItemView liveLayerDetailListItemView, @NonNull ThumbImageView thumbImageView, @NonNull AutoBubbleView autoBubbleView, @NonNull TextView textView) {
        this.rootView = liveLayerDetailListItemView;
        this.image = thumbImageView;
        this.liveLayerAutoBubble = autoBubbleView;
        this.title = textView;
    }

    @NonNull
    public static LiveLayerDetailChattingItemBinding bind(@NonNull View view) {
        int i10 = R.id.image;
        ThumbImageView thumbImageView = (ThumbImageView) ViewBindings.a(view, R.id.image);
        if (thumbImageView != null) {
            i10 = R.id.live_layer_auto_bubble;
            AutoBubbleView autoBubbleView = (AutoBubbleView) ViewBindings.a(view, R.id.live_layer_auto_bubble);
            if (autoBubbleView != null) {
                i10 = R.id.title;
                TextView textView = (TextView) ViewBindings.a(view, R.id.title);
                if (textView != null) {
                    return new LiveLayerDetailChattingItemBinding((LiveLayerDetailListItemView) view, thumbImageView, autoBubbleView, textView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
