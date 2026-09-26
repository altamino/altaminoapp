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

/* JADX INFO: loaded from: classes6.dex */
public final class UserProfileSharePreviewBinding implements ViewBinding {

    @NonNull
    public final ImageView image;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public static UserProfileSharePreviewBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static UserProfileSharePreviewBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.user_profile_share_preview, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private UserProfileSharePreviewBinding(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView) {
        this.rootView = linearLayout;
        this.image = imageView;
    }

    @NonNull
    public static UserProfileSharePreviewBinding bind(@NonNull View view) {
        ImageView imageView = (ImageView) ViewBindings.a(view, R.id.image);
        if (imageView != null) {
            return new UserProfileSharePreviewBinding((LinearLayout) view, imageView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.image)));
    }
}
