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

/* JADX INFO: loaded from: classes9.dex */
public final class SemiActionbarJoinBtnBinding implements ViewBinding {

    @NonNull
    public final Button actionbarJoinBtn;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public static SemiActionbarJoinBtnBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static SemiActionbarJoinBtnBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.semi_actionbar_join_btn, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private SemiActionbarJoinBtnBinding(@NonNull LinearLayout linearLayout, @NonNull Button button) {
        this.rootView = linearLayout;
        this.actionbarJoinBtn = button;
    }

    @NonNull
    public static SemiActionbarJoinBtnBinding bind(@NonNull View view) {
        Button button = (Button) ViewBindings.a(view, R.id.actionbar_join_btn);
        if (button != null) {
            return new SemiActionbarJoinBtnBinding((LinearLayout) view, button);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.actionbar_join_btn)));
    }
}
