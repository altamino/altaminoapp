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
import com.narvii.widget.SecretImageView;

/* JADX INFO: loaded from: classes9.dex */
public final class ItemFeedLessImageBinding implements ViewBinding {

    @NonNull
    public final TextView feedCaption1;

    @NonNull
    public final FrameLayout feedImage1;

    @NonNull
    public final SecretImageView image;

    @NonNull
    private final FlexLayout rootView;

    @NonNull
    public final TextView title;

    @NonNull
    public static ItemFeedLessImageBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FlexLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ItemFeedLessImageBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.item_feed_less_image, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ItemFeedLessImageBinding(@NonNull FlexLayout flexLayout, @NonNull TextView textView, @NonNull FrameLayout frameLayout, @NonNull SecretImageView secretImageView, @NonNull TextView textView2) {
        this.rootView = flexLayout;
        this.feedCaption1 = textView;
        this.feedImage1 = frameLayout;
        this.image = secretImageView;
        this.title = textView2;
    }

    @NonNull
    public static ItemFeedLessImageBinding bind(@NonNull View view) {
        int i10 = R.id.feed_caption1;
        TextView textView = (TextView) ViewBindings.a(view, R.id.feed_caption1);
        if (textView != null) {
            i10 = R.id.feed_image1;
            FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, R.id.feed_image1);
            if (frameLayout != null) {
                i10 = R.id.image;
                SecretImageView secretImageView = (SecretImageView) ViewBindings.a(view, R.id.image);
                if (secretImageView != null) {
                    i10 = R.id.title;
                    TextView textView2 = (TextView) ViewBindings.a(view, R.id.title);
                    if (textView2 != null) {
                        return new ItemFeedLessImageBinding((FlexLayout) view, textView, frameLayout, secretImageView, textView2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
