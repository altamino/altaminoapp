package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.TintButton;

/* JADX INFO: loaded from: classes9.dex */
public final class FragmentLivePermissionBinding implements ViewBinding {

    @NonNull
    public final TextView freeTalk;

    @NonNull
    public final TintButton freeTalkBtn;

    @NonNull
    public final RelativeLayout freeTalkLayout;

    @NonNull
    public final TextView inviteOnly;

    @NonNull
    public final TintButton inviteOnlyBtn;

    @NonNull
    public final RelativeLayout inviteOnlyLayout;

    @NonNull
    public final TextView requireApproval;

    @NonNull
    public final TintButton requireApprovalBtn;

    @NonNull
    public final RelativeLayout requireApprovalLayout;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public static FragmentLivePermissionBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FragmentLivePermissionBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_live_permission, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private FragmentLivePermissionBinding(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull TintButton tintButton, @NonNull RelativeLayout relativeLayout, @NonNull TextView textView2, @NonNull TintButton tintButton2, @NonNull RelativeLayout relativeLayout2, @NonNull TextView textView3, @NonNull TintButton tintButton3, @NonNull RelativeLayout relativeLayout3) {
        this.rootView = linearLayout;
        this.freeTalk = textView;
        this.freeTalkBtn = tintButton;
        this.freeTalkLayout = relativeLayout;
        this.inviteOnly = textView2;
        this.inviteOnlyBtn = tintButton2;
        this.inviteOnlyLayout = relativeLayout2;
        this.requireApproval = textView3;
        this.requireApprovalBtn = tintButton3;
        this.requireApprovalLayout = relativeLayout3;
    }

    @NonNull
    public static FragmentLivePermissionBinding bind(@NonNull View view) {
        int i10 = R.id.free_talk;
        TextView textView = (TextView) ViewBindings.a(view, R.id.free_talk);
        if (textView != null) {
            i10 = R.id.free_talk_btn;
            TintButton tintButton = (TintButton) ViewBindings.a(view, R.id.free_talk_btn);
            if (tintButton != null) {
                i10 = R.id.free_talk_layout;
                RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.a(view, R.id.free_talk_layout);
                if (relativeLayout != null) {
                    i10 = R.id.invite_only;
                    TextView textView2 = (TextView) ViewBindings.a(view, R.id.invite_only);
                    if (textView2 != null) {
                        i10 = R.id.invite_only_btn;
                        TintButton tintButton2 = (TintButton) ViewBindings.a(view, R.id.invite_only_btn);
                        if (tintButton2 != null) {
                            i10 = R.id.invite_only_layout;
                            RelativeLayout relativeLayout2 = (RelativeLayout) ViewBindings.a(view, R.id.invite_only_layout);
                            if (relativeLayout2 != null) {
                                i10 = R.id.require_approval;
                                TextView textView3 = (TextView) ViewBindings.a(view, R.id.require_approval);
                                if (textView3 != null) {
                                    i10 = R.id.require_approval_btn;
                                    TintButton tintButton3 = (TintButton) ViewBindings.a(view, R.id.require_approval_btn);
                                    if (tintButton3 != null) {
                                        i10 = R.id.require_approval_layout;
                                        RelativeLayout relativeLayout3 = (RelativeLayout) ViewBindings.a(view, R.id.require_approval_layout);
                                        if (relativeLayout3 != null) {
                                            return new FragmentLivePermissionBinding((LinearLayout) view, textView, tintButton, relativeLayout, textView2, tintButton2, relativeLayout2, textView3, tintButton3, relativeLayout3);
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
}
