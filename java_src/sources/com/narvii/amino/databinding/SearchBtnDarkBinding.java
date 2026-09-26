package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;

/* JADX INFO: loaded from: classes10.dex */
public final class SearchBtnDarkBinding implements ViewBinding {

    @NonNull
    private final RelativeLayout rootView;

    @NonNull
    public final Button searchBtn;

    @NonNull
    public final LinearLayout searchHint;

    @NonNull
    public static SearchBtnDarkBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public RelativeLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static SearchBtnDarkBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.search_btn_dark, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private SearchBtnDarkBinding(@NonNull RelativeLayout relativeLayout, @NonNull Button button, @NonNull LinearLayout linearLayout) {
        this.rootView = relativeLayout;
        this.searchBtn = button;
        this.searchHint = linearLayout;
    }

    @NonNull
    public static SearchBtnDarkBinding bind(@NonNull View view) {
        int i10 = R.id.search_btn;
        Button button = (Button) ViewBindings.a(view, R.id.search_btn);
        if (button != null) {
            i10 = R.id.search_hint;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.search_hint);
            if (linearLayout != null) {
                return new SearchBtnDarkBinding((RelativeLayout) view, button, linearLayout);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
