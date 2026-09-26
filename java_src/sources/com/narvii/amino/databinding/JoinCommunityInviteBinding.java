package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;

/* JADX INFO: loaded from: classes10.dex */
public final class JoinCommunityInviteBinding implements ViewBinding {

    @NonNull
    public final EditText inviteEdit;

    @NonNull
    public final Button inviteSubmit;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public static JoinCommunityInviteBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static JoinCommunityInviteBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.join_community_invite, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private JoinCommunityInviteBinding(@NonNull LinearLayout linearLayout, @NonNull EditText editText, @NonNull Button button) {
        this.rootView = linearLayout;
        this.inviteEdit = editText;
        this.inviteSubmit = button;
    }

    @NonNull
    public static JoinCommunityInviteBinding bind(@NonNull View view) {
        int i10 = R.id.invite_edit;
        EditText editText = (EditText) ViewBindings.a(view, R.id.invite_edit);
        if (editText != null) {
            i10 = R.id.invite_submit;
            Button button = (Button) ViewBindings.a(view, R.id.invite_submit);
            if (button != null) {
                return new JoinCommunityInviteBinding((LinearLayout) view, editText, button);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
