package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.github.mmin18.widget.FlexLayout;
import com.narvii.amino.master.R;
import com.narvii.widget.SecretImageView;

/* JADX INFO: loaded from: classes9.dex */
public final class FeedMoreItemThumb4Binding implements ViewBinding {

    @NonNull
    public final SecretImageView image1;

    @NonNull
    public final SecretImageView image2;

    @NonNull
    public final SecretImageView image3;

    @NonNull
    public final SecretImageView image4;

    @NonNull
    private final FlexLayout rootView;

    @NonNull
    public static FeedMoreItemThumb4Binding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FlexLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FeedMoreItemThumb4Binding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.feed_more_item_thumb_4, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private FeedMoreItemThumb4Binding(@NonNull FlexLayout flexLayout, @NonNull SecretImageView secretImageView, @NonNull SecretImageView secretImageView2, @NonNull SecretImageView secretImageView3, @NonNull SecretImageView secretImageView4) {
        this.rootView = flexLayout;
        this.image1 = secretImageView;
        this.image2 = secretImageView2;
        this.image3 = secretImageView3;
        this.image4 = secretImageView4;
    }

    @NonNull
    public static FeedMoreItemThumb4Binding bind(@NonNull View view) {
        int i10 = R.id.image1;
        SecretImageView secretImageView = (SecretImageView) ViewBindings.a(view, R.id.image1);
        if (secretImageView != null) {
            i10 = R.id.image2;
            SecretImageView secretImageView2 = (SecretImageView) ViewBindings.a(view, R.id.image2);
            if (secretImageView2 != null) {
                i10 = R.id.image3;
                SecretImageView secretImageView3 = (SecretImageView) ViewBindings.a(view, R.id.image3);
                if (secretImageView3 != null) {
                    i10 = R.id.image4;
                    SecretImageView secretImageView4 = (SecretImageView) ViewBindings.a(view, R.id.image4);
                    if (secretImageView4 != null) {
                        return new FeedMoreItemThumb4Binding((FlexLayout) view, secretImageView, secretImageView2, secretImageView3, secretImageView4);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
