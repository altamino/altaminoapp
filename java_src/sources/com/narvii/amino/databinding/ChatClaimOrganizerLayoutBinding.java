package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;

/* JADX INFO: loaded from: classes9.dex */
public final class ChatClaimOrganizerLayoutBinding implements ViewBinding {

    @NonNull
    public final ChatClaimOrganizerClaimLayoutBinding organizerTransClaimLayout;

    @NonNull
    public final ChatClaimOrganizerConfirmLayoutBinding organizerTransConfirmLayout;

    @NonNull
    public final ChatClaimOrganizerRequestLayoutBinding organizerTransRequestLayout;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public static ChatClaimOrganizerLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ChatClaimOrganizerLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.chat_claim_organizer_layout, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ChatClaimOrganizerLayoutBinding(@NonNull FrameLayout frameLayout, @NonNull ChatClaimOrganizerClaimLayoutBinding chatClaimOrganizerClaimLayoutBinding, @NonNull ChatClaimOrganizerConfirmLayoutBinding chatClaimOrganizerConfirmLayoutBinding, @NonNull ChatClaimOrganizerRequestLayoutBinding chatClaimOrganizerRequestLayoutBinding) {
        this.rootView = frameLayout;
        this.organizerTransClaimLayout = chatClaimOrganizerClaimLayoutBinding;
        this.organizerTransConfirmLayout = chatClaimOrganizerConfirmLayoutBinding;
        this.organizerTransRequestLayout = chatClaimOrganizerRequestLayoutBinding;
    }

    @NonNull
    public static ChatClaimOrganizerLayoutBinding bind(@NonNull View view) {
        int i10 = R.id.organizer_trans_claim_layout;
        View viewA = ViewBindings.a(view, R.id.organizer_trans_claim_layout);
        if (viewA != null) {
            ChatClaimOrganizerClaimLayoutBinding chatClaimOrganizerClaimLayoutBindingBind = ChatClaimOrganizerClaimLayoutBinding.bind(viewA);
            View viewA2 = ViewBindings.a(view, R.id.organizer_trans_confirm_layout);
            if (viewA2 != null) {
                ChatClaimOrganizerConfirmLayoutBinding chatClaimOrganizerConfirmLayoutBindingBind = ChatClaimOrganizerConfirmLayoutBinding.bind(viewA2);
                View viewA3 = ViewBindings.a(view, R.id.organizer_trans_request_layout);
                if (viewA3 != null) {
                    return new ChatClaimOrganizerLayoutBinding((FrameLayout) view, chatClaimOrganizerClaimLayoutBindingBind, chatClaimOrganizerConfirmLayoutBindingBind, ChatClaimOrganizerRequestLayoutBinding.bind(viewA3));
                }
                i10 = R.id.organizer_trans_request_layout;
            } else {
                i10 = R.id.organizer_trans_confirm_layout;
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
