package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.chat.video.floating.ThreadFloatingLayout;
import com.narvii.widget.ThumbImageView;

/* JADX INFO: loaded from: classes9.dex */
public final class FloatingThreadWindowBinding implements ViewBinding {

    @NonNull
    public final ThumbImageView avatar;

    @NonNull
    public final ImageView close;

    @NonNull
    private final ThreadFloatingLayout rootView;

    @NonNull
    public static FloatingThreadWindowBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public ThreadFloatingLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FloatingThreadWindowBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.floating_thread_window, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private FloatingThreadWindowBinding(@NonNull ThreadFloatingLayout threadFloatingLayout, @NonNull ThumbImageView thumbImageView, @NonNull ImageView imageView) {
        this.rootView = threadFloatingLayout;
        this.avatar = thumbImageView;
        this.close = imageView;
    }

    @NonNull
    public static FloatingThreadWindowBinding bind(@NonNull View view) {
        int i10 = R.id.avatar;
        ThumbImageView thumbImageView = (ThumbImageView) ViewBindings.a(view, R.id.avatar);
        if (thumbImageView != null) {
            i10 = R.id.close;
            ImageView imageView = (ImageView) ViewBindings.a(view, R.id.close);
            if (imageView != null) {
                return new FloatingThreadWindowBinding((ThreadFloatingLayout) view, thumbImageView, imageView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
