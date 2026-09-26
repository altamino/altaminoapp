package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.FlexSizeImageView;

/* JADX INFO: loaded from: classes10.dex */
public final class ItemFeedNormalVideoBinding implements ViewBinding {

    @NonNull
    public final TextView feedCaption1;

    @NonNull
    public final FrameLayout feedImage1;

    @NonNull
    public final FlexSizeImageView image;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final TextView title;

    @NonNull
    public static ItemFeedNormalVideoBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ItemFeedNormalVideoBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.item_feed_normal_video, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ItemFeedNormalVideoBinding(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull FrameLayout frameLayout, @NonNull FlexSizeImageView flexSizeImageView, @NonNull TextView textView2) {
        this.rootView = linearLayout;
        this.feedCaption1 = textView;
        this.feedImage1 = frameLayout;
        this.image = flexSizeImageView;
        this.title = textView2;
    }

    @NonNull
    public static ItemFeedNormalVideoBinding bind(@NonNull View view) {
        int i10 = R.id.feed_caption1;
        TextView textView = (TextView) ViewBindings.a(view, R.id.feed_caption1);
        if (textView != null) {
            i10 = R.id.feed_image1;
            FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, R.id.feed_image1);
            if (frameLayout != null) {
                i10 = R.id.image;
                FlexSizeImageView flexSizeImageView = (FlexSizeImageView) ViewBindings.a(view, R.id.image);
                if (flexSizeImageView != null) {
                    i10 = R.id.title;
                    TextView textView2 = (TextView) ViewBindings.a(view, R.id.title);
                    if (textView2 != null) {
                        return new ItemFeedNormalVideoBinding((LinearLayout) view, textView, frameLayout, flexSizeImageView, textView2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
