package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;

/* JADX INFO: loaded from: classes9.dex */
public final class UserProfileMenuOnlineStatusBinding implements ViewBinding {

    @NonNull
    public final LinearLayout menuOnlineStatus;

    @NonNull
    public final View onlineStatusOval;

    @NonNull
    public final TextView onlineStatusText;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public static UserProfileMenuOnlineStatusBinding bind(@NonNull View view) {
        LinearLayout linearLayout = (LinearLayout) view;
        int i10 = R.id.online_status_oval;
        View viewA = ViewBindings.a(view, R.id.online_status_oval);
        if (viewA != null) {
            i10 = R.id.online_status_text;
            TextView textView = (TextView) ViewBindings.a(view, R.id.online_status_text);
            if (textView != null) {
                return new UserProfileMenuOnlineStatusBinding(linearLayout, linearLayout, viewA, textView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static UserProfileMenuOnlineStatusBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static UserProfileMenuOnlineStatusBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.user_profile_menu_online_status, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private UserProfileMenuOnlineStatusBinding(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull View view, @NonNull TextView textView) {
        this.rootView = linearLayout;
        this.menuOnlineStatus = linearLayout2;
        this.onlineStatusOval = view;
        this.onlineStatusText = textView;
    }
}
