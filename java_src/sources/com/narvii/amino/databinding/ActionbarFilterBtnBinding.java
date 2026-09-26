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

/* JADX INFO: loaded from: classes6.dex */
public final class ActionbarFilterBtnBinding implements ViewBinding {

    @NonNull
    public final LinearLayout actionbarRightBtn;

    @NonNull
    public final TextView filterText;

    @NonNull
    public final LinearLayout filterView;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public static ActionbarFilterBtnBinding bind(@NonNull View view) {
        LinearLayout linearLayout = (LinearLayout) view;
        int i10 = R.id.filter_text;
        TextView textView = (TextView) ViewBindings.a(view, R.id.filter_text);
        if (textView != null) {
            i10 = R.id.filter_view;
            LinearLayout linearLayout2 = (LinearLayout) ViewBindings.a(view, R.id.filter_view);
            if (linearLayout2 != null) {
                return new ActionbarFilterBtnBinding(linearLayout, linearLayout, textView, linearLayout2);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static ActionbarFilterBtnBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ActionbarFilterBtnBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.actionbar_filter_btn, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ActionbarFilterBtnBinding(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull TextView textView, @NonNull LinearLayout linearLayout3) {
        this.rootView = linearLayout;
        this.actionbarRightBtn = linearLayout2;
        this.filterText = textView;
        this.filterView = linearLayout3;
    }
}
