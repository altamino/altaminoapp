package com.narvii.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.lib.R;
import com.narvii.util.layouts.NVFlowLayout;

/* JADX INFO: loaded from: classes11.dex */
public final class ItemInviteContactInviteeBinding implements ViewBinding {

    @NonNull
    public final NVFlowLayout inviteeLayout;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public static ItemInviteContactInviteeBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ItemInviteContactInviteeBinding bind(@NonNull View view) {
        int i10 = R.id.invitee_layout;
        NVFlowLayout nVFlowLayout = (NVFlowLayout) ViewBindings.a(view, i10);
        if (nVFlowLayout != null) {
            return new ItemInviteContactInviteeBinding((LinearLayout) view, nVFlowLayout);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static ItemInviteContactInviteeBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.item_invite_contact_invitee, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ItemInviteContactInviteeBinding(@NonNull LinearLayout linearLayout, @NonNull NVFlowLayout nVFlowLayout) {
        this.rootView = linearLayout;
        this.inviteeLayout = nVFlowLayout;
    }
}
