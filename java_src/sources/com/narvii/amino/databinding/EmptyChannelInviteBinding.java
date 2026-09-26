package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;

/* JADX INFO: loaded from: classes9.dex */
public final class EmptyChannelInviteBinding implements ViewBinding {

    @NonNull
    public final LinearLayout inviteJoin;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public static EmptyChannelInviteBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static EmptyChannelInviteBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.empty_channel_invite, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private EmptyChannelInviteBinding(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2) {
        this.rootView = linearLayout;
        this.inviteJoin = linearLayout2;
    }

    @NonNull
    public static EmptyChannelInviteBinding bind(@NonNull View view) {
        LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.invite_join);
        if (linearLayout != null) {
            return new EmptyChannelInviteBinding((LinearLayout) view, linearLayout);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.invite_join)));
    }
}
