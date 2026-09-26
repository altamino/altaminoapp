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
import com.github.mmin18.widget.FlexLayout;
import com.narvii.amino.master.R;
import com.narvii.widget.FlexSizeImageView;

/* JADX INFO: loaded from: classes11.dex */
public final class FeedImage3ExternalPostBinding implements ViewBinding {

    @NonNull
    public final TextView feedCaption1;

    @NonNull
    public final TextView feedCaption2;

    @NonNull
    public final TextView feedCaption3;

    @NonNull
    public final FrameLayout feedImage1;

    @NonNull
    public final FrameLayout feedImage2;

    @NonNull
    public final FrameLayout feedImage3;

    @NonNull
    public final FlexLayout feedImages;

    @NonNull
    public final FlexSizeImageView image;

    @NonNull
    public final FlexSizeImageView image1;

    @NonNull
    public final FlexSizeImageView image2;

    @NonNull
    private final FlexLayout rootView;

    @NonNull
    public static FeedImage3ExternalPostBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FlexLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FeedImage3ExternalPostBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.feed_image3_external_post, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private FeedImage3ExternalPostBinding(@NonNull FlexLayout flexLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull FrameLayout frameLayout, @NonNull FrameLayout frameLayout2, @NonNull FrameLayout frameLayout3, @NonNull FlexLayout flexLayout2, @NonNull FlexSizeImageView flexSizeImageView, @NonNull FlexSizeImageView flexSizeImageView2, @NonNull FlexSizeImageView flexSizeImageView3) {
        this.rootView = flexLayout;
        this.feedCaption1 = textView;
        this.feedCaption2 = textView2;
        this.feedCaption3 = textView3;
        this.feedImage1 = frameLayout;
        this.feedImage2 = frameLayout2;
        this.feedImage3 = frameLayout3;
        this.feedImages = flexLayout2;
        this.image = flexSizeImageView;
        this.image1 = flexSizeImageView2;
        this.image2 = flexSizeImageView3;
    }

    @NonNull
    public static FeedImage3ExternalPostBinding bind(@NonNull View view) {
        int i10 = R.id.feed_caption1;
        TextView textView = (TextView) ViewBindings.a(view, R.id.feed_caption1);
        if (textView != null) {
            i10 = R.id.feed_caption2;
            TextView textView2 = (TextView) ViewBindings.a(view, R.id.feed_caption2);
            if (textView2 != null) {
                i10 = R.id.feed_caption3;
                TextView textView3 = (TextView) ViewBindings.a(view, R.id.feed_caption3);
                if (textView3 != null) {
                    i10 = R.id.feed_image1;
                    FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, R.id.feed_image1);
                    if (frameLayout != null) {
                        i10 = R.id.feed_image2;
                        FrameLayout frameLayout2 = (FrameLayout) ViewBindings.a(view, R.id.feed_image2);
                        if (frameLayout2 != null) {
                            i10 = R.id.feed_image3;
                            FrameLayout frameLayout3 = (FrameLayout) ViewBindings.a(view, R.id.feed_image3);
                            if (frameLayout3 != null) {
                                FlexLayout flexLayout = (FlexLayout) view;
                                i10 = R.id.image;
                                FlexSizeImageView flexSizeImageView = (FlexSizeImageView) ViewBindings.a(view, R.id.image);
                                if (flexSizeImageView != null) {
                                    i10 = R.id.image1;
                                    FlexSizeImageView flexSizeImageView2 = (FlexSizeImageView) ViewBindings.a(view, R.id.image1);
                                    if (flexSizeImageView2 != null) {
                                        i10 = R.id.image2;
                                        FlexSizeImageView flexSizeImageView3 = (FlexSizeImageView) ViewBindings.a(view, R.id.image2);
                                        if (flexSizeImageView3 != null) {
                                            return new FeedImage3ExternalPostBinding(flexLayout, textView, textView2, textView3, frameLayout, frameLayout2, frameLayout3, flexLayout, flexSizeImageView, flexSizeImageView2, flexSizeImageView3);
                                        }
                                    }
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
