package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;

/* JADX INFO: loaded from: classes4.dex */
public final class ChatDetailMemberInviteBinding implements ViewBinding {

    @NonNull
    public final RelativeLayout chatMemberInvite;

    @NonNull
    private final RelativeLayout rootView;

    @NonNull
    public final RelativeLayout stub1;

    @NonNull
    public final TextView text;

    @NonNull
    public static ChatDetailMemberInviteBinding bind(@NonNull View view) {
        RelativeLayout relativeLayout = (RelativeLayout) view;
        int i10 = R.id.stub1;
        RelativeLayout relativeLayout2 = (RelativeLayout) ViewBindings.a(view, R.id.stub1);
        if (relativeLayout2 != null) {
            i10 = R.id.text;
            TextView textView = (TextView) ViewBindings.a(view, R.id.text);
            if (textView != null) {
                return new ChatDetailMemberInviteBinding(relativeLayout, relativeLayout, relativeLayout2, textView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static ChatDetailMemberInviteBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public RelativeLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ChatDetailMemberInviteBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.chat_detail_member_invite, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ChatDetailMemberInviteBinding(@NonNull RelativeLayout relativeLayout, @NonNull RelativeLayout relativeLayout2, @NonNull RelativeLayout relativeLayout3, @NonNull TextView textView) {
        this.rootView = relativeLayout;
        this.chatMemberInvite = relativeLayout2;
        this.stub1 = relativeLayout3;
        this.text = textView;
    }
}
