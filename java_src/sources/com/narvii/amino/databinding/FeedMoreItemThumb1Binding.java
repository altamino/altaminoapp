package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.SecretImageView;

/* JADX INFO: loaded from: classes7.dex */
public final class FeedMoreItemThumb1Binding implements ViewBinding {

    @NonNull
    public final SecretImageView image1;

    @NonNull
    private final View rootView;

    @NonNull
    public View getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FeedMoreItemThumb1Binding inflate(@NonNull LayoutInflater layoutInflater, @NonNull ViewGroup viewGroup) {
        if (viewGroup == null) {
            throw new NullPointerException("parent");
        }
        layoutInflater.inflate(R.layout.feed_more_item_thumb_1, viewGroup);
        return bind(viewGroup);
    }

    private FeedMoreItemThumb1Binding(@NonNull View view, @NonNull SecretImageView secretImageView) {
        this.rootView = view;
        this.image1 = secretImageView;
    }

    @NonNull
    public static FeedMoreItemThumb1Binding bind(@NonNull View view) {
        SecretImageView secretImageView = (SecretImageView) ViewBindings.a(view, R.id.image1);
        if (secretImageView != null) {
            return new FeedMoreItemThumb1Binding(view, secretImageView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.image1)));
    }
}
