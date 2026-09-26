package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.github.mmin18.widget.FlexLayout;
import com.narvii.amino.master.R;
import com.narvii.user.title.UserTitleFlowView;
import com.narvii.widget.PopButton;

/* JADX INFO: loaded from: classes11.dex */
public final class DialogUserTitleBinding implements ViewBinding {

    @NonNull
    public final View bg;

    @NonNull
    public final PopButton close;

    @NonNull
    public final FlexLayout mainLayout;

    @NonNull
    private final FlexLayout rootView;

    @NonNull
    public final UserTitleFlowView userTitleFlow;

    @NonNull
    public static DialogUserTitleBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FlexLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static DialogUserTitleBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.dialog_user_title, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private DialogUserTitleBinding(@NonNull FlexLayout flexLayout, @NonNull View view, @NonNull PopButton popButton, @NonNull FlexLayout flexLayout2, @NonNull UserTitleFlowView userTitleFlowView) {
        this.rootView = flexLayout;
        this.bg = view;
        this.close = popButton;
        this.mainLayout = flexLayout2;
        this.userTitleFlow = userTitleFlowView;
    }

    @NonNull
    public static DialogUserTitleBinding bind(@NonNull View view) {
        int i10 = R.id.bg;
        View viewA = ViewBindings.a(view, R.id.bg);
        if (viewA != null) {
            i10 = R.id.close;
            PopButton popButton = (PopButton) ViewBindings.a(view, R.id.close);
            if (popButton != null) {
                i10 = R.id.main_layout;
                FlexLayout flexLayout = (FlexLayout) ViewBindings.a(view, R.id.main_layout);
                if (flexLayout != null) {
                    i10 = R.id.user_title_flow;
                    UserTitleFlowView userTitleFlowView = (UserTitleFlowView) ViewBindings.a(view, R.id.user_title_flow);
                    if (userTitleFlowView != null) {
                        return new DialogUserTitleBinding((FlexLayout) view, viewA, popButton, flexLayout, userTitleFlowView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
