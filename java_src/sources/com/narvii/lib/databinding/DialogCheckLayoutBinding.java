package com.narvii.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.lib.R;
import com.narvii.widget.AutoSizingTextView;

/* JADX INFO: loaded from: classes8.dex */
public final class DialogCheckLayoutBinding implements ViewBinding {

    @NonNull
    public final AutoSizingTextView checkDialogContent;

    @NonNull
    public final ImageView checkDialogImage;

    @NonNull
    public final RelativeLayout checkDialogLayout;

    @NonNull
    private final RelativeLayout rootView;

    @NonNull
    public static DialogCheckLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public RelativeLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static DialogCheckLayoutBinding bind(@NonNull View view) {
        int i10 = R.id.check_dialog_content;
        AutoSizingTextView autoSizingTextView = (AutoSizingTextView) ViewBindings.a(view, i10);
        if (autoSizingTextView != null) {
            i10 = R.id.check_dialog_image;
            ImageView imageView = (ImageView) ViewBindings.a(view, i10);
            if (imageView != null) {
                RelativeLayout relativeLayout = (RelativeLayout) view;
                return new DialogCheckLayoutBinding(relativeLayout, autoSizingTextView, imageView, relativeLayout);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static DialogCheckLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.dialog_check_layout, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private DialogCheckLayoutBinding(@NonNull RelativeLayout relativeLayout, @NonNull AutoSizingTextView autoSizingTextView, @NonNull ImageView imageView, @NonNull RelativeLayout relativeLayout2) {
        this.rootView = relativeLayout;
        this.checkDialogContent = autoSizingTextView;
        this.checkDialogImage = imageView;
        this.checkDialogLayout = relativeLayout2;
    }
}
