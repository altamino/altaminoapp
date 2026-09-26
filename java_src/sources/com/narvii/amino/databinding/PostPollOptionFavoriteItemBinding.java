package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.CardView;
import com.narvii.widget.SecretImageView;
import com.narvii.widget.SwipeToDeleteLayout;

/* JADX INFO: loaded from: classes6.dex */
public final class PostPollOptionFavoriteItemBinding implements ViewBinding {

    @NonNull
    public final Button delete;

    @NonNull
    public final SecretImageView image;

    @NonNull
    public final CardView pollOptCard;

    @NonNull
    public final LinearLayout pollOptFavorite;

    @NonNull
    public final TextView pollOptTitle;

    @NonNull
    public final SwipeToDeleteLayout postPollOption;

    @NonNull
    private final SwipeToDeleteLayout rootView;

    @NonNull
    public final TextView title;

    @NonNull
    public static PostPollOptionFavoriteItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public SwipeToDeleteLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static PostPollOptionFavoriteItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.post_poll_option_favorite_item, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private PostPollOptionFavoriteItemBinding(@NonNull SwipeToDeleteLayout swipeToDeleteLayout, @NonNull Button button, @NonNull SecretImageView secretImageView, @NonNull CardView cardView, @NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull SwipeToDeleteLayout swipeToDeleteLayout2, @NonNull TextView textView2) {
        this.rootView = swipeToDeleteLayout;
        this.delete = button;
        this.image = secretImageView;
        this.pollOptCard = cardView;
        this.pollOptFavorite = linearLayout;
        this.pollOptTitle = textView;
        this.postPollOption = swipeToDeleteLayout2;
        this.title = textView2;
    }

    @NonNull
    public static PostPollOptionFavoriteItemBinding bind(@NonNull View view) {
        int i10 = R.id.delete;
        Button button = (Button) ViewBindings.a(view, R.id.delete);
        if (button != null) {
            i10 = R.id.image;
            SecretImageView secretImageView = (SecretImageView) ViewBindings.a(view, R.id.image);
            if (secretImageView != null) {
                i10 = R.id.poll_opt_card;
                CardView cardView = (CardView) ViewBindings.a(view, R.id.poll_opt_card);
                if (cardView != null) {
                    i10 = R.id.poll_opt_favorite;
                    LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.poll_opt_favorite);
                    if (linearLayout != null) {
                        i10 = R.id.poll_opt_title;
                        TextView textView = (TextView) ViewBindings.a(view, R.id.poll_opt_title);
                        if (textView != null) {
                            SwipeToDeleteLayout swipeToDeleteLayout = (SwipeToDeleteLayout) view;
                            i10 = R.id.title;
                            TextView textView2 = (TextView) ViewBindings.a(view, R.id.title);
                            if (textView2 != null) {
                                return new PostPollOptionFavoriteItemBinding(swipeToDeleteLayout, button, secretImageView, cardView, linearLayout, textView, swipeToDeleteLayout, textView2);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
