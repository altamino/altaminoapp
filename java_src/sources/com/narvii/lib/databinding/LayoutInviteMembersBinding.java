package com.narvii.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.lib.R;
import com.narvii.widget.PushButton;

/* JADX INFO: loaded from: classes10.dex */
public final class LayoutInviteMembersBinding implements ViewBinding {

    @NonNull
    public final TextView code;

    @NonNull
    public final PushButton contact;

    @NonNull
    public final TextView countDown;

    @NonNull
    public final TextView inviteHistory;

    @NonNull
    public final LinearLayout leaderController;

    @NonNull
    public final TextView link;

    @NonNull
    public final LinearLayout linkLayout;

    @NonNull
    public final TextView regenerate;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final PushButton share;

    @NonNull
    public final TextView text;

    @NonNull
    public final TextView validLinks;

    @NonNull
    public static LayoutInviteMembersBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static LayoutInviteMembersBinding bind(@NonNull View view) {
        int i10 = R.id.code;
        TextView textView = (TextView) ViewBindings.a(view, i10);
        if (textView != null) {
            i10 = R.id.contact;
            PushButton pushButton = (PushButton) ViewBindings.a(view, i10);
            if (pushButton != null) {
                i10 = R.id.count_down;
                TextView textView2 = (TextView) ViewBindings.a(view, i10);
                if (textView2 != null) {
                    i10 = R.id.invite_history;
                    TextView textView3 = (TextView) ViewBindings.a(view, i10);
                    if (textView3 != null) {
                        i10 = R.id.leader_controller;
                        LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, i10);
                        if (linearLayout != null) {
                            i10 = R.id.link;
                            TextView textView4 = (TextView) ViewBindings.a(view, i10);
                            if (textView4 != null) {
                                i10 = R.id.link_layout;
                                LinearLayout linearLayout2 = (LinearLayout) ViewBindings.a(view, i10);
                                if (linearLayout2 != null) {
                                    i10 = R.id.regenerate;
                                    TextView textView5 = (TextView) ViewBindings.a(view, i10);
                                    if (textView5 != null) {
                                        i10 = R.id.share;
                                        PushButton pushButton2 = (PushButton) ViewBindings.a(view, i10);
                                        if (pushButton2 != null) {
                                            i10 = R.id.text;
                                            TextView textView6 = (TextView) ViewBindings.a(view, i10);
                                            if (textView6 != null) {
                                                i10 = R.id.valid_links;
                                                TextView textView7 = (TextView) ViewBindings.a(view, i10);
                                                if (textView7 != null) {
                                                    return new LayoutInviteMembersBinding((LinearLayout) view, textView, pushButton, textView2, textView3, linearLayout, textView4, linearLayout2, textView5, pushButton2, textView6, textView7);
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static LayoutInviteMembersBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.layout_invite_members, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private LayoutInviteMembersBinding(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull PushButton pushButton, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull LinearLayout linearLayout2, @NonNull TextView textView4, @NonNull LinearLayout linearLayout3, @NonNull TextView textView5, @NonNull PushButton pushButton2, @NonNull TextView textView6, @NonNull TextView textView7) {
        this.rootView = linearLayout;
        this.code = textView;
        this.contact = pushButton;
        this.countDown = textView2;
        this.inviteHistory = textView3;
        this.leaderController = linearLayout2;
        this.link = textView4;
        this.linkLayout = linearLayout3;
        this.regenerate = textView5;
        this.share = pushButton2;
        this.text = textView6;
        this.validLinks = textView7;
    }
}
