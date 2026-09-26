package com.narvii.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.lib.R;

/* JADX INFO: loaded from: classes8.dex */
public final class DialogActionSheetLayoutBinding implements ViewBinding {

    @NonNull
    public final Button actionSheetCancel;

    @NonNull
    public final View actionSheetEmpty;

    @NonNull
    public final LinearLayout actionSheetItems;

    @NonNull
    public final ImageView blurBg;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public static DialogActionSheetLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static DialogActionSheetLayoutBinding bind(@NonNull View view) {
        View viewA;
        int i10 = R.id.action_sheet_cancel;
        Button button = (Button) ViewBindings.a(view, i10);
        if (button != null && (viewA = ViewBindings.a(view, (i10 = R.id.action_sheet_empty))) != null) {
            i10 = R.id.action_sheet_items;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, i10);
            if (linearLayout != null) {
                i10 = R.id.blur_bg;
                ImageView imageView = (ImageView) ViewBindings.a(view, i10);
                if (imageView != null) {
                    return new DialogActionSheetLayoutBinding((FrameLayout) view, button, viewA, linearLayout, imageView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static DialogActionSheetLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.dialog_action_sheet_layout, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private DialogActionSheetLayoutBinding(@NonNull FrameLayout frameLayout, @NonNull Button button, @NonNull View view, @NonNull LinearLayout linearLayout, @NonNull ImageView imageView) {
        this.rootView = frameLayout;
        this.actionSheetCancel = button;
        this.actionSheetEmpty = view;
        this.actionSheetItems = linearLayout;
        this.blurBg = imageView;
    }
}
