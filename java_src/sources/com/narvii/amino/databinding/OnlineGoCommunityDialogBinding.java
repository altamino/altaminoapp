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
import com.narvii.widget.PushButton;

/* JADX INFO: loaded from: classes6.dex */
public final class OnlineGoCommunityDialogBinding implements ViewBinding {

    @NonNull
    public final PushButton action;

    @NonNull
    private final FlexLayout rootView;

    @NonNull
    public static OnlineGoCommunityDialogBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FlexLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static OnlineGoCommunityDialogBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.online_go_community_dialog, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private OnlineGoCommunityDialogBinding(@NonNull FlexLayout flexLayout, @NonNull PushButton pushButton) {
        this.rootView = flexLayout;
        this.action = pushButton;
    }

    @NonNull
    public static OnlineGoCommunityDialogBinding bind(@NonNull View view) {
        PushButton pushButton = (PushButton) ViewBindings.a(view, R.id.action);
        if (pushButton != null) {
            return new OnlineGoCommunityDialogBinding((FlexLayout) view, pushButton);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.action)));
    }
}
