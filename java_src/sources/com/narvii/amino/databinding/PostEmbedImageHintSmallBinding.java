package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import com.narvii.amino.master.R;

/* JADX INFO: loaded from: classes5.dex */
public final class PostEmbedImageHintSmallBinding implements ViewBinding {

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public static PostEmbedImageHintSmallBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static PostEmbedImageHintSmallBinding bind(@NonNull View view) {
        if (view != null) {
            return new PostEmbedImageHintSmallBinding((LinearLayout) view);
        }
        throw new NullPointerException("rootView");
    }

    @NonNull
    public static PostEmbedImageHintSmallBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.post_embed_image_hint_small, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private PostEmbedImageHintSmallBinding(@NonNull LinearLayout linearLayout) {
        this.rootView = linearLayout;
    }
}
