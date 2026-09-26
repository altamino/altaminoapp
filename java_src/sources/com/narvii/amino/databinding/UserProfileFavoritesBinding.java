package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.user.profile.UserFavoriteGallery;
import com.narvii.widget.SpinningView;
import com.narvii.widget.TintButton;

/* JADX INFO: loaded from: classes11.dex */
public final class UserProfileFavoritesBinding implements ViewBinding {

    @NonNull
    public final RelativeLayout favorites;

    @NonNull
    public final UserFavoriteGallery pager;

    @NonNull
    private final RelativeLayout rootView;

    @NonNull
    public final LinearLayout userCollection;

    @NonNull
    public final TintButton userCollectionChevron;

    @NonNull
    public final TextView userCollectionN;

    @NonNull
    public final SpinningView userLoadingCollection;

    @NonNull
    public final TextView userNoCollection;

    @NonNull
    public static UserProfileFavoritesBinding bind(@NonNull View view) {
        RelativeLayout relativeLayout = (RelativeLayout) view;
        int i10 = R.id.pager;
        UserFavoriteGallery userFavoriteGallery = (UserFavoriteGallery) ViewBindings.a(view, R.id.pager);
        if (userFavoriteGallery != null) {
            i10 = R.id.user_collection;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.user_collection);
            if (linearLayout != null) {
                i10 = R.id.user_collection_chevron;
                TintButton tintButton = (TintButton) ViewBindings.a(view, R.id.user_collection_chevron);
                if (tintButton != null) {
                    i10 = R.id.user_collection_n;
                    TextView textView = (TextView) ViewBindings.a(view, R.id.user_collection_n);
                    if (textView != null) {
                        i10 = R.id.user_loading_collection;
                        SpinningView spinningView = (SpinningView) ViewBindings.a(view, R.id.user_loading_collection);
                        if (spinningView != null) {
                            i10 = R.id.user_no_collection;
                            TextView textView2 = (TextView) ViewBindings.a(view, R.id.user_no_collection);
                            if (textView2 != null) {
                                return new UserProfileFavoritesBinding(relativeLayout, relativeLayout, userFavoriteGallery, linearLayout, tintButton, textView, spinningView, textView2);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static UserProfileFavoritesBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public RelativeLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static UserProfileFavoritesBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.user_profile_favorites, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private UserProfileFavoritesBinding(@NonNull RelativeLayout relativeLayout, @NonNull RelativeLayout relativeLayout2, @NonNull UserFavoriteGallery userFavoriteGallery, @NonNull LinearLayout linearLayout, @NonNull TintButton tintButton, @NonNull TextView textView, @NonNull SpinningView spinningView, @NonNull TextView textView2) {
        this.rootView = relativeLayout;
        this.favorites = relativeLayout2;
        this.pager = userFavoriteGallery;
        this.userCollection = linearLayout;
        this.userCollectionChevron = tintButton;
        this.userCollectionN = textView;
        this.userLoadingCollection = spinningView;
        this.userNoCollection = textView2;
    }
}
