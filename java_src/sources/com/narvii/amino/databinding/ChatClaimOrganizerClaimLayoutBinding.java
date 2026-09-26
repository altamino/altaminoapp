package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;

/* JADX INFO: loaded from: classes7.dex */
public final class ChatClaimOrganizerClaimLayoutBinding implements ViewBinding {

    @NonNull
    public final FrameLayout claimOrganizerClaim;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public static ChatClaimOrganizerClaimLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ChatClaimOrganizerClaimLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.chat_claim_organizer_claim_layout, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ChatClaimOrganizerClaimLayoutBinding(@NonNull LinearLayout linearLayout, @NonNull FrameLayout frameLayout) {
        this.rootView = linearLayout;
        this.claimOrganizerClaim = frameLayout;
    }

    @NonNull
    public static ChatClaimOrganizerClaimLayoutBinding bind(@NonNull View view) {
        FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, R.id.claim_organizer_claim);
        if (frameLayout != null) {
            return new ChatClaimOrganizerClaimLayoutBinding((LinearLayout) view, frameLayout);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.claim_organizer_claim)));
    }
}
