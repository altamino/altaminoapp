package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.ThumbImageView;
import com.narvii.widget.TintButton;

/* JADX INFO: loaded from: classes10.dex */
public final class GallerySeeAllBinding implements ViewBinding {

    @NonNull
    public final TintButton icon;

    @NonNull
    public final ThumbImageView image;

    @NonNull
    public final LinearLayout layout;

    @NonNull
    public final TextView name;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public static GallerySeeAllBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static GallerySeeAllBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.gallery_see_all, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private GallerySeeAllBinding(@NonNull FrameLayout frameLayout, @NonNull TintButton tintButton, @NonNull ThumbImageView thumbImageView, @NonNull LinearLayout linearLayout, @NonNull TextView textView) {
        this.rootView = frameLayout;
        this.icon = tintButton;
        this.image = thumbImageView;
        this.layout = linearLayout;
        this.name = textView;
    }

    @NonNull
    public static GallerySeeAllBinding bind(@NonNull View view) {
        int i10 = R.id.icon;
        TintButton tintButton = (TintButton) ViewBindings.a(view, R.id.icon);
        if (tintButton != null) {
            i10 = R.id.image;
            ThumbImageView thumbImageView = (ThumbImageView) ViewBindings.a(view, R.id.image);
            if (thumbImageView != null) {
                i10 = R.id.layout;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.layout);
                if (linearLayout != null) {
                    i10 = R.id.name;
                    TextView textView = (TextView) ViewBindings.a(view, R.id.name);
                    if (textView != null) {
                        return new GallerySeeAllBinding((FrameLayout) view, tintButton, thumbImageView, linearLayout, textView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
