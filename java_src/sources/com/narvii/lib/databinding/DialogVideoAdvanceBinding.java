package com.narvii.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.lib.R;

/* JADX INFO: loaded from: classes8.dex */
public final class DialogVideoAdvanceBinding implements ViewBinding {

    @NonNull
    public final ImageView blurBg;

    @NonNull
    public final LinearLayout contentView;

    @NonNull
    public final LinearLayout layoutInshot;

    @NonNull
    public final LinearLayout layoutStoryboard;

    @NonNull
    public final LinearLayout layoutVue;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public static DialogVideoAdvanceBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static DialogVideoAdvanceBinding bind(@NonNull View view) {
        int i10 = R.id.blur_bg;
        ImageView imageView = (ImageView) ViewBindings.a(view, i10);
        if (imageView != null) {
            i10 = R.id.content_view;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, i10);
            if (linearLayout != null) {
                i10 = R.id.layout_inshot;
                LinearLayout linearLayout2 = (LinearLayout) ViewBindings.a(view, i10);
                if (linearLayout2 != null) {
                    i10 = R.id.layout_storyboard;
                    LinearLayout linearLayout3 = (LinearLayout) ViewBindings.a(view, i10);
                    if (linearLayout3 != null) {
                        i10 = R.id.layout_vue;
                        LinearLayout linearLayout4 = (LinearLayout) ViewBindings.a(view, i10);
                        if (linearLayout4 != null) {
                            return new DialogVideoAdvanceBinding((FrameLayout) view, imageView, linearLayout, linearLayout2, linearLayout3, linearLayout4);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static DialogVideoAdvanceBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.dialog_video_advance, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private DialogVideoAdvanceBinding(@NonNull FrameLayout frameLayout, @NonNull ImageView imageView, @NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull LinearLayout linearLayout3, @NonNull LinearLayout linearLayout4) {
        this.rootView = frameLayout;
        this.blurBg = imageView;
        this.contentView = linearLayout;
        this.layoutInshot = linearLayout2;
        this.layoutStoryboard = linearLayout3;
        this.layoutVue = linearLayout4;
    }
}
