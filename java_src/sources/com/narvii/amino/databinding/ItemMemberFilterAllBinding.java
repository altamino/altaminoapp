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
import com.narvii.widget.FontAwesomeView;

/* JADX INFO: loaded from: classes5.dex */
public final class ItemMemberFilterAllBinding implements ViewBinding {

    @NonNull
    public final TextView all;

    @NonNull
    public final FontAwesomeView checkmark;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public static ItemMemberFilterAllBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ItemMemberFilterAllBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.item_member_filter_all, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ItemMemberFilterAllBinding(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull FontAwesomeView fontAwesomeView) {
        this.rootView = linearLayout;
        this.all = textView;
        this.checkmark = fontAwesomeView;
    }

    @NonNull
    public static ItemMemberFilterAllBinding bind(@NonNull View view) {
        int i10 = R.id.all;
        TextView textView = (TextView) ViewBindings.a(view, R.id.all);
        if (textView != null) {
            i10 = R.id.checkmark;
            FontAwesomeView fontAwesomeView = (FontAwesomeView) ViewBindings.a(view, R.id.checkmark);
            if (fontAwesomeView != null) {
                return new ItemMemberFilterAllBinding((LinearLayout) view, textView, fontAwesomeView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
