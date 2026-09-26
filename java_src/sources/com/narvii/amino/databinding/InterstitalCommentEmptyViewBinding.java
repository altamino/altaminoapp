package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;

/* JADX INFO: loaded from: classes11.dex */
public final class InterstitalCommentEmptyViewBinding implements ViewBinding {

    @NonNull
    public final TextView noMoreView;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public static InterstitalCommentEmptyViewBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static InterstitalCommentEmptyViewBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.interstital_comment_empty_view, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private InterstitalCommentEmptyViewBinding(@NonNull FrameLayout frameLayout, @NonNull TextView textView) {
        this.rootView = frameLayout;
        this.noMoreView = textView;
    }

    @NonNull
    public static InterstitalCommentEmptyViewBinding bind(@NonNull View view) {
        TextView textView = (TextView) ViewBindings.a(view, R.id.no_more_view);
        if (textView != null) {
            return new InterstitalCommentEmptyViewBinding((FrameLayout) view, textView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.no_more_view)));
    }
}
