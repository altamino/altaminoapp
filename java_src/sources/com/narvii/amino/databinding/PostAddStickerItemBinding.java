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

/* JADX INFO: loaded from: classes9.dex */
public final class PostAddStickerItemBinding implements ViewBinding {

    @NonNull
    public final ImageView avatarPlaceholder;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public static PostAddStickerItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static PostAddStickerItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.post_add_sticker_item, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private PostAddStickerItemBinding(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView) {
        this.rootView = linearLayout;
        this.avatarPlaceholder = imageView;
    }

    @NonNull
    public static PostAddStickerItemBinding bind(@NonNull View view) {
        ImageView imageView = (ImageView) ViewBindings.a(view, R.id.avatar_placeholder);
        if (imageView != null) {
            return new PostAddStickerItemBinding((LinearLayout) view, imageView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.avatar_placeholder)));
    }
}
