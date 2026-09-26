package com.narvii.mediaeditor.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.github.mmin18.widget.FlexLayout;
import com.narvii.mediaeditor.R;

/* JADX INFO: loaded from: classes7.dex */
public final class DialogAddAttachDataBinding implements ViewBinding {

    @NonNull
    public final ImageView ivDelete;

    @NonNull
    public final LinearLayout layoutNewPoll;

    @NonNull
    public final LinearLayout layoutNewQuiz;

    @NonNull
    public final FlexLayout root;

    @NonNull
    private final FlexLayout rootView;

    @NonNull
    public static DialogAddAttachDataBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FlexLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static DialogAddAttachDataBinding bind(@NonNull View view) {
        int i10 = R.id.iv_delete;
        ImageView imageView = (ImageView) ViewBindings.a(view, i10);
        if (imageView != null) {
            i10 = R.id.layout_new_poll;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, i10);
            if (linearLayout != null) {
                i10 = R.id.layout_new_quiz;
                LinearLayout linearLayout2 = (LinearLayout) ViewBindings.a(view, i10);
                if (linearLayout2 != null) {
                    FlexLayout flexLayout = (FlexLayout) view;
                    return new DialogAddAttachDataBinding(flexLayout, imageView, linearLayout, linearLayout2, flexLayout);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static DialogAddAttachDataBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.dialog_add_attach_data, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private DialogAddAttachDataBinding(@NonNull FlexLayout flexLayout, @NonNull ImageView imageView, @NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull FlexLayout flexLayout2) {
        this.rootView = flexLayout;
        this.ivDelete = imageView;
        this.layoutNewPoll = linearLayout;
        this.layoutNewQuiz = linearLayout2;
        this.root = flexLayout2;
    }
}
