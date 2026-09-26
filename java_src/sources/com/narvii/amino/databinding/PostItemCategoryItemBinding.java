package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.lib.databinding.DragSortRemoveBtnBinding;

/* JADX INFO: loaded from: classes11.dex */
public final class PostItemCategoryItemBinding implements ViewBinding {

    @NonNull
    public final RelativeLayout postCategoryItem;

    @NonNull
    public final TextView postCategoryLabel;

    @NonNull
    public final DragSortRemoveBtnBinding postCategoryRemove;

    @NonNull
    private final RelativeLayout rootView;

    @NonNull
    public static PostItemCategoryItemBinding bind(@NonNull View view) {
        RelativeLayout relativeLayout = (RelativeLayout) view;
        int i10 = R.id.post_category_label;
        TextView textView = (TextView) ViewBindings.a(view, R.id.post_category_label);
        if (textView != null) {
            i10 = R.id.post_category_remove;
            View viewA = ViewBindings.a(view, R.id.post_category_remove);
            if (viewA != null) {
                return new PostItemCategoryItemBinding(relativeLayout, relativeLayout, textView, DragSortRemoveBtnBinding.bind(viewA));
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static PostItemCategoryItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public RelativeLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static PostItemCategoryItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.post_item_category_item, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private PostItemCategoryItemBinding(@NonNull RelativeLayout relativeLayout, @NonNull RelativeLayout relativeLayout2, @NonNull TextView textView, @NonNull DragSortRemoveBtnBinding dragSortRemoveBtnBinding) {
        this.rootView = relativeLayout;
        this.postCategoryItem = relativeLayout2;
        this.postCategoryLabel = textView;
        this.postCategoryRemove = dragSortRemoveBtnBinding;
    }
}
