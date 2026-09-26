package com.narvii.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.lib.R;

/* JADX INFO: loaded from: classes9.dex */
public final class ActionbarBtnBinding implements ViewBinding {

    @NonNull
    public final LinearLayout actionbarRightBtn;

    @NonNull
    public final Button actionbarRightBtnBtn;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public static ActionbarBtnBinding bind(@NonNull View view) {
        LinearLayout linearLayout = (LinearLayout) view;
        int i10 = R.id.actionbar_right_btn_btn;
        Button button = (Button) ViewBindings.a(view, i10);
        if (button != null) {
            return new ActionbarBtnBinding(linearLayout, linearLayout, button);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static ActionbarBtnBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ActionbarBtnBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.actionbar_btn, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ActionbarBtnBinding(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull Button button) {
        this.rootView = linearLayout;
        this.actionbarRightBtn = linearLayout2;
        this.actionbarRightBtnBtn = button;
    }
}
