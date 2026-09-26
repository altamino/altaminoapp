package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;

/* JADX INFO: loaded from: classes8.dex */
public final class CommentSubDividerBinding implements ViewBinding {

    @NonNull
    public final View marginLeft;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public static CommentSubDividerBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static CommentSubDividerBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.comment_sub_divider, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private CommentSubDividerBinding(@NonNull LinearLayout linearLayout, @NonNull View view) {
        this.rootView = linearLayout;
        this.marginLeft = view;
    }

    @NonNull
    public static CommentSubDividerBinding bind(@NonNull View view) {
        View viewA = ViewBindings.a(view, R.id.margin_left);
        if (viewA != null) {
            return new CommentSubDividerBinding((LinearLayout) view, viewA);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.margin_left)));
    }
}
