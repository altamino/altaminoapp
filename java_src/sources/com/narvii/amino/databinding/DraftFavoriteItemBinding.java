package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.CardView;
import com.narvii.widget.ThumbImageView;

/* JADX INFO: loaded from: classes.dex */
public final class DraftFavoriteItemBinding implements ViewBinding {

    @NonNull
    public final CardView cardView;

    @NonNull
    public final ImageView delete;

    @NonNull
    public final ThumbImageView image;

    @NonNull
    public final ThumbImageView imageEmpty;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final TextView title;

    @NonNull
    public static DraftFavoriteItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static DraftFavoriteItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.draft_favorite_item, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private DraftFavoriteItemBinding(@NonNull LinearLayout linearLayout, @NonNull CardView cardView, @NonNull ImageView imageView, @NonNull ThumbImageView thumbImageView, @NonNull ThumbImageView thumbImageView2, @NonNull TextView textView) {
        this.rootView = linearLayout;
        this.cardView = cardView;
        this.delete = imageView;
        this.image = thumbImageView;
        this.imageEmpty = thumbImageView2;
        this.title = textView;
    }

    @NonNull
    public static DraftFavoriteItemBinding bind(@NonNull View view) {
        int i10 = R.id.card_view;
        CardView cardView = (CardView) ViewBindings.a(view, R.id.card_view);
        if (cardView != null) {
            i10 = R.id.delete;
            ImageView imageView = (ImageView) ViewBindings.a(view, R.id.delete);
            if (imageView != null) {
                i10 = R.id.image;
                ThumbImageView thumbImageView = (ThumbImageView) ViewBindings.a(view, R.id.image);
                if (thumbImageView != null) {
                    i10 = R.id.image_empty;
                    ThumbImageView thumbImageView2 = (ThumbImageView) ViewBindings.a(view, R.id.image_empty);
                    if (thumbImageView2 != null) {
                        i10 = R.id.title;
                        TextView textView = (TextView) ViewBindings.a(view, R.id.title);
                        if (textView != null) {
                            return new DraftFavoriteItemBinding((LinearLayout) view, cardView, imageView, thumbImageView, thumbImageView2, textView);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
