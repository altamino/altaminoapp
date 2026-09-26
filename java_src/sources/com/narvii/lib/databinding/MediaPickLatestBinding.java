package com.narvii.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.lib.R;

/* JADX INFO: loaded from: classes11.dex */
public final class MediaPickLatestBinding implements ViewBinding {

    @NonNull
    public final ImageView image;

    @NonNull
    public final LinearLayout mediaPickLatest;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public static MediaPickLatestBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static MediaPickLatestBinding bind(@NonNull View view) {
        int i10 = R.id.image;
        ImageView imageView = (ImageView) ViewBindings.a(view, i10);
        if (imageView == null) {
            throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
        }
        LinearLayout linearLayout = (LinearLayout) view;
        return new MediaPickLatestBinding(linearLayout, imageView, linearLayout);
    }

    @NonNull
    public static MediaPickLatestBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.media_pick_latest, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private MediaPickLatestBinding(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull LinearLayout linearLayout2) {
        this.rootView = linearLayout;
        this.image = imageView;
        this.mediaPickLatest = linearLayout2;
    }
}
