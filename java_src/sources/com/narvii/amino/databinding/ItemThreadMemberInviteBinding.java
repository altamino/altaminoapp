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
import com.github.mmin18.widget.FlexLayout;
import com.narvii.amino.master.R;

/* JADX INFO: loaded from: classes6.dex */
public final class ItemThreadMemberInviteBinding implements ViewBinding {

    @NonNull
    public final FlexLayout chatMemberInvite;

    @NonNull
    private final FlexLayout rootView;

    @NonNull
    public final RelativeLayout stub1;

    @NonNull
    public final TextView text;

    @NonNull
    public static ItemThreadMemberInviteBinding bind(@NonNull View view) {
        FlexLayout flexLayout = (FlexLayout) view;
        int i10 = R.id.stub1;
        RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.a(view, R.id.stub1);
        if (relativeLayout != null) {
            i10 = R.id.text;
            TextView textView = (TextView) ViewBindings.a(view, R.id.text);
            if (textView != null) {
                return new ItemThreadMemberInviteBinding(flexLayout, flexLayout, relativeLayout, textView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static ItemThreadMemberInviteBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FlexLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ItemThreadMemberInviteBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.item_thread_member_invite, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ItemThreadMemberInviteBinding(@NonNull FlexLayout flexLayout, @NonNull FlexLayout flexLayout2, @NonNull RelativeLayout relativeLayout, @NonNull TextView textView) {
        this.rootView = flexLayout;
        this.chatMemberInvite = flexLayout2;
        this.stub1 = relativeLayout;
        this.text = textView;
    }
}
