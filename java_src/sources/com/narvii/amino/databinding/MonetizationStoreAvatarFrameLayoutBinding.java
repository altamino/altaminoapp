package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.monetization.StoreItemStatusView;
import com.narvii.monetization.utils.StoreItemNameView;
import com.narvii.widget.MoodView;
import com.narvii.widget.SpinningView;

/* JADX INFO: loaded from: classes7.dex */
public final class MonetizationStoreAvatarFrameLayoutBinding implements ViewBinding {

    @NonNull
    public final ImageView avatarFrameError;

    @NonNull
    public final SpinningView avatarFrameLoading;

    @NonNull
    public final StoreItemNameView itemName;

    @NonNull
    public final StoreItemStatusView itemStatusView;

    @NonNull
    public final MoodView mood;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public static MonetizationStoreAvatarFrameLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static MonetizationStoreAvatarFrameLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.monetization_store_avatar_frame_layout, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private MonetizationStoreAvatarFrameLayoutBinding(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull SpinningView spinningView, @NonNull StoreItemNameView storeItemNameView, @NonNull StoreItemStatusView storeItemStatusView, @NonNull MoodView moodView) {
        this.rootView = linearLayout;
        this.avatarFrameError = imageView;
        this.avatarFrameLoading = spinningView;
        this.itemName = storeItemNameView;
        this.itemStatusView = storeItemStatusView;
        this.mood = moodView;
    }

    @NonNull
    public static MonetizationStoreAvatarFrameLayoutBinding bind(@NonNull View view) {
        int i10 = R.id.avatar_frame_error;
        ImageView imageView = (ImageView) ViewBindings.a(view, R.id.avatar_frame_error);
        if (imageView != null) {
            i10 = R.id.avatar_frame_loading;
            SpinningView spinningView = (SpinningView) ViewBindings.a(view, R.id.avatar_frame_loading);
            if (spinningView != null) {
                i10 = R.id.item_name;
                StoreItemNameView storeItemNameView = (StoreItemNameView) ViewBindings.a(view, R.id.item_name);
                if (storeItemNameView != null) {
                    i10 = R.id.item_status_view;
                    StoreItemStatusView storeItemStatusView = (StoreItemStatusView) ViewBindings.a(view, R.id.item_status_view);
                    if (storeItemStatusView != null) {
                        i10 = R.id.mood;
                        MoodView moodView = (MoodView) ViewBindings.a(view, R.id.mood);
                        if (moodView != null) {
                            return new MonetizationStoreAvatarFrameLayoutBinding((LinearLayout) view, imageView, spinningView, storeItemNameView, storeItemStatusView, moodView);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
