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
import com.narvii.widget.CardView;
import com.narvii.widget.SecretImageView;

/* JADX INFO: loaded from: classes9.dex */
public final class GalleryItemCardBinding implements ViewBinding {

    @NonNull
    public final SecretImageView image;

    @NonNull
    private final CardView rootView;

    @NonNull
    public final TextView title;

    @NonNull
    public static GalleryItemCardBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public CardView getRoot() {
        return this.rootView;
    }

    @NonNull
    public static GalleryItemCardBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.gallery_item_card, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private GalleryItemCardBinding(@NonNull CardView cardView, @NonNull SecretImageView secretImageView, @NonNull TextView textView) {
        this.rootView = cardView;
        this.image = secretImageView;
        this.title = textView;
    }

    @NonNull
    public static GalleryItemCardBinding bind(@NonNull View view) {
        int i10 = R.id.image;
        SecretImageView secretImageView = (SecretImageView) ViewBindings.a(view, R.id.image);
        if (secretImageView != null) {
            i10 = R.id.title;
            TextView textView = (TextView) ViewBindings.a(view, R.id.title);
            if (textView != null) {
                return new GalleryItemCardBinding((CardView) view, secretImageView, textView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
