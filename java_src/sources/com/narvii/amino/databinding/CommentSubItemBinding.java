package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import com.narvii.amino.master.R;
import com.narvii.comment.list.CommentItem;

/* JADX INFO: loaded from: classes5.dex */
public final class CommentSubItemBinding implements ViewBinding {

    @NonNull
    public final CommentItem commentItem;

    @NonNull
    private final CommentItem rootView;

    @NonNull
    public static CommentSubItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public CommentItem getRoot() {
        return this.rootView;
    }

    @NonNull
    public static CommentSubItemBinding bind(@NonNull View view) {
        if (view == null) {
            throw new NullPointerException("rootView");
        }
        CommentItem commentItem = (CommentItem) view;
        return new CommentSubItemBinding(commentItem, commentItem);
    }

    @NonNull
    public static CommentSubItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.comment_sub_item, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private CommentSubItemBinding(@NonNull CommentItem commentItem, @NonNull CommentItem commentItem2) {
        this.rootView = commentItem;
        this.commentItem = commentItem2;
    }
}
