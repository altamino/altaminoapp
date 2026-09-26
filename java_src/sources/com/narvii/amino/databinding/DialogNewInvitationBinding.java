package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.ThumbImageView;

/* JADX INFO: loaded from: classes9.dex */
public final class DialogNewInvitationBinding implements ViewBinding {

    @NonNull
    public final ThumbImageView communityIcon;

    @NonNull
    public final TextView communityName;

    @NonNull
    public final TextView communityTagline;

    @NonNull
    public final Button invitDialogCancel;

    @NonNull
    public final Button invitDialogOk;

    @NonNull
    public final LinearLayout root;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public static DialogNewInvitationBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static DialogNewInvitationBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.dialog_new_invitation, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private DialogNewInvitationBinding(@NonNull LinearLayout linearLayout, @NonNull ThumbImageView thumbImageView, @NonNull TextView textView, @NonNull TextView textView2, @NonNull Button button, @NonNull Button button2, @NonNull LinearLayout linearLayout2) {
        this.rootView = linearLayout;
        this.communityIcon = thumbImageView;
        this.communityName = textView;
        this.communityTagline = textView2;
        this.invitDialogCancel = button;
        this.invitDialogOk = button2;
        this.root = linearLayout2;
    }

    @NonNull
    public static DialogNewInvitationBinding bind(@NonNull View view) {
        int i10 = R.id.community_icon;
        ThumbImageView thumbImageView = (ThumbImageView) ViewBindings.a(view, R.id.community_icon);
        if (thumbImageView != null) {
            i10 = R.id.community_name;
            TextView textView = (TextView) ViewBindings.a(view, R.id.community_name);
            if (textView != null) {
                i10 = R.id.community_tagline;
                TextView textView2 = (TextView) ViewBindings.a(view, R.id.community_tagline);
                if (textView2 != null) {
                    i10 = R.id.invit_dialog_cancel;
                    Button button = (Button) ViewBindings.a(view, R.id.invit_dialog_cancel);
                    if (button != null) {
                        i10 = R.id.invit_dialog_ok;
                        Button button2 = (Button) ViewBindings.a(view, R.id.invit_dialog_ok);
                        if (button2 != null) {
                            LinearLayout linearLayout = (LinearLayout) view;
                            return new DialogNewInvitationBinding(linearLayout, thumbImageView, textView, textView2, button, button2, linearLayout);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
