package com.narvii.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.lib.R;
import com.narvii.widget.ThumbImageView;

/* JADX INFO: loaded from: classes11.dex */
public final class CbbPostEntryBinding implements ViewBinding {

    @NonNull
    public final ThumbImageView postEntryBtn2;

    @NonNull
    public final FrameLayout postEntryFrame;

    @NonNull
    public final ImageView postEntryIcon;

    @NonNull
    private final RelativeLayout rootView;

    @NonNull
    public final View themeBg;

    @NonNull
    public static CbbPostEntryBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public RelativeLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static CbbPostEntryBinding bind(@NonNull View view) {
        View viewA;
        int i10 = R.id.post_entry_btn2;
        ThumbImageView thumbImageView = (ThumbImageView) ViewBindings.a(view, i10);
        if (thumbImageView != null) {
            i10 = R.id.post_entry_frame;
            FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, i10);
            if (frameLayout != null) {
                i10 = R.id.post_entry_icon;
                ImageView imageView = (ImageView) ViewBindings.a(view, i10);
                if (imageView != null && (viewA = ViewBindings.a(view, (i10 = R.id.theme_bg))) != null) {
                    return new CbbPostEntryBinding((RelativeLayout) view, thumbImageView, frameLayout, imageView, viewA);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static CbbPostEntryBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.cbb_post_entry, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private CbbPostEntryBinding(@NonNull RelativeLayout relativeLayout, @NonNull ThumbImageView thumbImageView, @NonNull FrameLayout frameLayout, @NonNull ImageView imageView, @NonNull View view) {
        this.rootView = relativeLayout;
        this.postEntryBtn2 = thumbImageView;
        this.postEntryFrame = frameLayout;
        this.postEntryIcon = imageView;
        this.themeBg = view;
    }
}
