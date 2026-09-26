package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;

/* JADX INFO: loaded from: classes10.dex */
public final class MoodUnlockInviteFriendsBinding implements ViewBinding {

    @NonNull
    public final LinearLayout emailLayout;

    @NonNull
    public final LinearLayout messageLayout;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public static MoodUnlockInviteFriendsBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static MoodUnlockInviteFriendsBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.mood_unlock_invite_friends, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private MoodUnlockInviteFriendsBinding(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull LinearLayout linearLayout3) {
        this.rootView = linearLayout;
        this.emailLayout = linearLayout2;
        this.messageLayout = linearLayout3;
    }

    @NonNull
    public static MoodUnlockInviteFriendsBinding bind(@NonNull View view) {
        int i10 = R.id.email_layout;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.email_layout);
        if (linearLayout != null) {
            i10 = R.id.message_layout;
            LinearLayout linearLayout2 = (LinearLayout) ViewBindings.a(view, R.id.message_layout);
            if (linearLayout2 != null) {
                return new MoodUnlockInviteFriendsBinding((LinearLayout) view, linearLayout, linearLayout2);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
