package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;

/* JADX INFO: loaded from: classes7.dex */
public final class ItemSearchSimpleSectionBinding implements ViewBinding {

    @NonNull
    public final ListDividerPaddingBinding bottomDivider;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final TextView searchKey;

    @NonNull
    public final TextView title;

    @NonNull
    public final ListDividerPaddingBinding topDivider;

    @NonNull
    public static ItemSearchSimpleSectionBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ItemSearchSimpleSectionBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.item_search_simple_section, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ItemSearchSimpleSectionBinding(@NonNull LinearLayout linearLayout, @NonNull ListDividerPaddingBinding listDividerPaddingBinding, @NonNull TextView textView, @NonNull TextView textView2, @NonNull ListDividerPaddingBinding listDividerPaddingBinding2) {
        this.rootView = linearLayout;
        this.bottomDivider = listDividerPaddingBinding;
        this.searchKey = textView;
        this.title = textView2;
        this.topDivider = listDividerPaddingBinding2;
    }

    @NonNull
    public static ItemSearchSimpleSectionBinding bind(@NonNull View view) {
        int i10 = R.id.bottom_divider;
        View viewA = ViewBindings.a(view, R.id.bottom_divider);
        if (viewA != null) {
            ListDividerPaddingBinding listDividerPaddingBindingBind = ListDividerPaddingBinding.bind(viewA);
            i10 = R.id.search_key;
            TextView textView = (TextView) ViewBindings.a(view, R.id.search_key);
            if (textView != null) {
                i10 = R.id.title;
                TextView textView2 = (TextView) ViewBindings.a(view, R.id.title);
                if (textView2 != null) {
                    i10 = R.id.top_divider;
                    View viewA2 = ViewBindings.a(view, R.id.top_divider);
                    if (viewA2 != null) {
                        return new ItemSearchSimpleSectionBinding((LinearLayout) view, listDividerPaddingBindingBind, textView, textView2, ListDividerPaddingBinding.bind(viewA2));
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
