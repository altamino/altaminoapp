package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.detail.DividerItem;
import com.narvii.widget.FontAwesomeView;

/* JADX INFO: loaded from: classes9.dex */
public final class DetailDividerItemBinding implements ViewBinding {

    @NonNull
    private final DividerItem rootView;

    @NonNull
    public final FontAwesomeView stub1;

    @NonNull
    public final FontAwesomeView stub2;

    @NonNull
    public final FontAwesomeView stub3;

    @NonNull
    public final FontAwesomeView stub4;

    @NonNull
    public static DetailDividerItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public DividerItem getRoot() {
        return this.rootView;
    }

    @NonNull
    public static DetailDividerItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.detail_divider_item, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private DetailDividerItemBinding(@NonNull DividerItem dividerItem, @NonNull FontAwesomeView fontAwesomeView, @NonNull FontAwesomeView fontAwesomeView2, @NonNull FontAwesomeView fontAwesomeView3, @NonNull FontAwesomeView fontAwesomeView4) {
        this.rootView = dividerItem;
        this.stub1 = fontAwesomeView;
        this.stub2 = fontAwesomeView2;
        this.stub3 = fontAwesomeView3;
        this.stub4 = fontAwesomeView4;
    }

    @NonNull
    public static DetailDividerItemBinding bind(@NonNull View view) {
        int i10 = R.id.stub1;
        FontAwesomeView fontAwesomeView = (FontAwesomeView) ViewBindings.a(view, R.id.stub1);
        if (fontAwesomeView != null) {
            i10 = R.id.stub2;
            FontAwesomeView fontAwesomeView2 = (FontAwesomeView) ViewBindings.a(view, R.id.stub2);
            if (fontAwesomeView2 != null) {
                i10 = R.id.stub3;
                FontAwesomeView fontAwesomeView3 = (FontAwesomeView) ViewBindings.a(view, R.id.stub3);
                if (fontAwesomeView3 != null) {
                    i10 = R.id.stub4;
                    FontAwesomeView fontAwesomeView4 = (FontAwesomeView) ViewBindings.a(view, R.id.stub4);
                    if (fontAwesomeView4 != null) {
                        return new DetailDividerItemBinding((DividerItem) view, fontAwesomeView, fontAwesomeView2, fontAwesomeView3, fontAwesomeView4);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
