package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;

/* JADX INFO: loaded from: classes7.dex */
public final class ActionbarEnterBtnBinding implements ViewBinding {

    @NonNull
    public final Button actionbarEnterBtn;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public static ActionbarEnterBtnBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ActionbarEnterBtnBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.actionbar_enter_btn, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ActionbarEnterBtnBinding(@NonNull LinearLayout linearLayout, @NonNull Button button) {
        this.rootView = linearLayout;
        this.actionbarEnterBtn = button;
    }

    @NonNull
    public static ActionbarEnterBtnBinding bind(@NonNull View view) {
        Button button = (Button) ViewBindings.a(view, R.id.actionbar_enter_btn);
        if (button != null) {
            return new ActionbarEnterBtnBinding((LinearLayout) view, button);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.actionbar_enter_btn)));
    }
}
