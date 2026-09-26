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

/* JADX INFO: loaded from: classes5.dex */
public final class ChatClaimOrganizerRequestLayoutBinding implements ViewBinding {

    @NonNull
    public final FrameLayout claimOrganizerAccept;

    @NonNull
    public final FrameLayout claimOrganizerDecline;

    @NonNull
    public final TextView organizerTransFrom;

    @NonNull
    public final TextView organizerTransTime;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public static ChatClaimOrganizerRequestLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ChatClaimOrganizerRequestLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.chat_claim_organizer_request_layout, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ChatClaimOrganizerRequestLayoutBinding(@NonNull LinearLayout linearLayout, @NonNull FrameLayout frameLayout, @NonNull FrameLayout frameLayout2, @NonNull TextView textView, @NonNull TextView textView2) {
        this.rootView = linearLayout;
        this.claimOrganizerAccept = frameLayout;
        this.claimOrganizerDecline = frameLayout2;
        this.organizerTransFrom = textView;
        this.organizerTransTime = textView2;
    }

    @NonNull
    public static ChatClaimOrganizerRequestLayoutBinding bind(@NonNull View view) {
        int i10 = R.id.claim_organizer_accept;
        FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, R.id.claim_organizer_accept);
        if (frameLayout != null) {
            i10 = R.id.claim_organizer_decline;
            FrameLayout frameLayout2 = (FrameLayout) ViewBindings.a(view, R.id.claim_organizer_decline);
            if (frameLayout2 != null) {
                i10 = R.id.organizer_trans_from;
                TextView textView = (TextView) ViewBindings.a(view, R.id.organizer_trans_from);
                if (textView != null) {
                    i10 = R.id.organizer_trans_time;
                    TextView textView2 = (TextView) ViewBindings.a(view, R.id.organizer_trans_time);
                    if (textView2 != null) {
                        return new ChatClaimOrganizerRequestLayoutBinding((LinearLayout) view, frameLayout, frameLayout2, textView, textView2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
