package com.narvii.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.lib.R;

/* JADX INFO: loaded from: classes6.dex */
public final class ToastImageTextBinding implements ViewBinding {

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final LinearLayout toastFrame;

    @NonNull
    public final ImageView toastImage;

    @NonNull
    public final TextView toastText;

    @NonNull
    public static ToastImageTextBinding bind(@NonNull View view) {
        LinearLayout linearLayout = (LinearLayout) view;
        int i10 = R.id.toast_image;
        ImageView imageView = (ImageView) ViewBindings.a(view, i10);
        if (imageView != null) {
            i10 = R.id.toast_text;
            TextView textView = (TextView) ViewBindings.a(view, i10);
            if (textView != null) {
                return new ToastImageTextBinding(linearLayout, linearLayout, imageView, textView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static ToastImageTextBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ToastImageTextBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.toast_image_text, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ToastImageTextBinding(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull ImageView imageView, @NonNull TextView textView) {
        this.rootView = linearLayout;
        this.toastFrame = linearLayout2;
        this.toastImage = imageView;
        this.toastText = textView;
    }
}
