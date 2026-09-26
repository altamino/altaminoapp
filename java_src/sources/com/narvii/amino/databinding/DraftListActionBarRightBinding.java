package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.AppCompatButton;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;

/* JADX INFO: loaded from: classes9.dex */
public final class DraftListActionBarRightBinding implements ViewBinding {

    @NonNull
    public final AppCompatButton deleteBtn;

    @NonNull
    private final RelativeLayout rootView;

    @NonNull
    public static DraftListActionBarRightBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public RelativeLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static DraftListActionBarRightBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.draft_list_action_bar_right, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private DraftListActionBarRightBinding(@NonNull RelativeLayout relativeLayout, @NonNull AppCompatButton appCompatButton) {
        this.rootView = relativeLayout;
        this.deleteBtn = appCompatButton;
    }

    @NonNull
    public static DraftListActionBarRightBinding bind(@NonNull View view) {
        AppCompatButton appCompatButton = (AppCompatButton) ViewBindings.a(view, R.id.delete_btn);
        if (appCompatButton != null) {
            return new DraftListActionBarRightBinding((RelativeLayout) view, appCompatButton);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.delete_btn)));
    }
}
