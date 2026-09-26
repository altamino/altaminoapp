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

/* JADX INFO: loaded from: classes9.dex */
public final class ItemCommentDetailWithIndicatorBinding implements ViewBinding {

    @NonNull
    public final CommentSubItemBinding commentItem;

    @NonNull
    public final View indicator;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public static ItemCommentDetailWithIndicatorBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ItemCommentDetailWithIndicatorBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.item_comment_detail_with_indicator, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ItemCommentDetailWithIndicatorBinding(@NonNull LinearLayout linearLayout, @NonNull CommentSubItemBinding commentSubItemBinding, @NonNull View view) {
        this.rootView = linearLayout;
        this.commentItem = commentSubItemBinding;
        this.indicator = view;
    }

    @NonNull
    public static ItemCommentDetailWithIndicatorBinding bind(@NonNull View view) {
        int i10 = R.id.comment_item;
        View viewA = ViewBindings.a(view, R.id.comment_item);
        if (viewA != null) {
            CommentSubItemBinding commentSubItemBindingBind = CommentSubItemBinding.bind(viewA);
            View viewA2 = ViewBindings.a(view, R.id.indicator);
            if (viewA2 != null) {
                return new ItemCommentDetailWithIndicatorBinding((LinearLayout) view, commentSubItemBindingBind, viewA2);
            }
            i10 = R.id.indicator;
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
