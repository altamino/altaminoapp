package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;

/* JADX INFO: loaded from: classes8.dex */
public final class ChatClaimOrganizerConfirmLayoutBinding implements ViewBinding {

    @NonNull
    public final FrameLayout claimOrganizerConfirm;

    @NonNull
    public final FrameLayout claimOrganizerConfirmDecline;

    @NonNull
    public final TextView organizerTransClaimHint;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public static ChatClaimOrganizerConfirmLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ChatClaimOrganizerConfirmLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.chat_claim_organizer_confirm_layout, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ChatClaimOrganizerConfirmLayoutBinding(@NonNull LinearLayout linearLayout, @NonNull FrameLayout frameLayout, @NonNull FrameLayout frameLayout2, @NonNull TextView textView) {
        this.rootView = linearLayout;
        this.claimOrganizerConfirm = frameLayout;
        this.claimOrganizerConfirmDecline = frameLayout2;
        this.organizerTransClaimHint = textView;
    }

    @NonNull
    public static ChatClaimOrganizerConfirmLayoutBinding bind(@NonNull View view) {
        int i10 = R.id.claim_organizer_confirm;
        FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, R.id.claim_organizer_confirm);
        if (frameLayout != null) {
            i10 = R.id.claim_organizer_confirm_decline;
            FrameLayout frameLayout2 = (FrameLayout) ViewBindings.a(view, R.id.claim_organizer_confirm_decline);
            if (frameLayout2 != null) {
                i10 = R.id.organizer_trans_claim_hint;
                TextView textView = (TextView) ViewBindings.a(view, R.id.organizer_trans_claim_hint);
                if (textView != null) {
                    return new ChatClaimOrganizerConfirmLayoutBinding((LinearLayout) view, frameLayout, frameLayout2, textView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
