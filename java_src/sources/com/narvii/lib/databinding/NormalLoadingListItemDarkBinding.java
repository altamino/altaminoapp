package com.narvii.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.lib.R;
import com.narvii.widget.SpinningView;

/* JADX INFO: loaded from: classes11.dex */
public final class NormalLoadingListItemDarkBinding implements ViewBinding {

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final SpinningView spinner;

    @NonNull
    public final TextView text;

    @NonNull
    public static NormalLoadingListItemDarkBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static NormalLoadingListItemDarkBinding bind(@NonNull View view) {
        int i10 = R.id.spinner;
        SpinningView spinningView = (SpinningView) ViewBindings.a(view, i10);
        if (spinningView != null) {
            i10 = R.id.text;
            TextView textView = (TextView) ViewBindings.a(view, i10);
            if (textView != null) {
                return new NormalLoadingListItemDarkBinding((LinearLayout) view, spinningView, textView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static NormalLoadingListItemDarkBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.normal_loading_list_item_dark, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private NormalLoadingListItemDarkBinding(@NonNull LinearLayout linearLayout, @NonNull SpinningView spinningView, @NonNull TextView textView) {
        this.rootView = linearLayout;
        this.spinner = spinningView;
        this.text = textView;
    }
}
