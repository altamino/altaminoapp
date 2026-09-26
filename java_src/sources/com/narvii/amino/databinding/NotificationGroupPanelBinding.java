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

/* JADX INFO: loaded from: classes10.dex */
public final class NotificationGroupPanelBinding implements ViewBinding {

    @NonNull
    public final LinearLayout groupComment;

    @NonNull
    public final LinearLayout groupFollow;

    @NonNull
    public final LinearLayout groupVote;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public static NotificationGroupPanelBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static NotificationGroupPanelBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.notification_group_panel, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private NotificationGroupPanelBinding(@NonNull FrameLayout frameLayout, @NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull LinearLayout linearLayout3) {
        this.rootView = frameLayout;
        this.groupComment = linearLayout;
        this.groupFollow = linearLayout2;
        this.groupVote = linearLayout3;
    }

    @NonNull
    public static NotificationGroupPanelBinding bind(@NonNull View view) {
        int i10 = R.id.group_comment;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.group_comment);
        if (linearLayout != null) {
            i10 = R.id.group_follow;
            LinearLayout linearLayout2 = (LinearLayout) ViewBindings.a(view, R.id.group_follow);
            if (linearLayout2 != null) {
                i10 = R.id.group_vote;
                LinearLayout linearLayout3 = (LinearLayout) ViewBindings.a(view, R.id.group_vote);
                if (linearLayout3 != null) {
                    return new NotificationGroupPanelBinding((FrameLayout) view, linearLayout, linearLayout2, linearLayout3);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
