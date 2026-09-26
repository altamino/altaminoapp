package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.github.mmin18.widget.FlexLayout;
import com.narvii.amino.master.R;
import com.narvii.app.theme.view.NVThemeLinearLayout;

/* JADX INFO: loaded from: classes8.dex */
public final class NotificationListViewBinding implements ViewBinding {

    @NonNull
    public final TextView notLoginButton;

    @NonNull
    public final TextView notLoginHint;

    @NonNull
    public final FlexLayout notLoginView;

    @NonNull
    public final FrameLayout notificationTurnedOffWarningFrame;

    @NonNull
    private final NVThemeLinearLayout rootView;

    @NonNull
    public static NotificationListViewBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public NVThemeLinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static NotificationListViewBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.notification_list_view, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private NotificationListViewBinding(@NonNull NVThemeLinearLayout nVThemeLinearLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull FlexLayout flexLayout, @NonNull FrameLayout frameLayout) {
        this.rootView = nVThemeLinearLayout;
        this.notLoginButton = textView;
        this.notLoginHint = textView2;
        this.notLoginView = flexLayout;
        this.notificationTurnedOffWarningFrame = frameLayout;
    }

    @NonNull
    public static NotificationListViewBinding bind(@NonNull View view) {
        int i10 = R.id.not_login_button;
        TextView textView = (TextView) ViewBindings.a(view, R.id.not_login_button);
        if (textView != null) {
            i10 = R.id.not_login_hint;
            TextView textView2 = (TextView) ViewBindings.a(view, R.id.not_login_hint);
            if (textView2 != null) {
                i10 = R.id.not_login_view;
                FlexLayout flexLayout = (FlexLayout) ViewBindings.a(view, R.id.not_login_view);
                if (flexLayout != null) {
                    i10 = R.id.notification_turned_off_warning_frame;
                    FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, R.id.notification_turned_off_warning_frame);
                    if (frameLayout != null) {
                        return new NotificationListViewBinding((NVThemeLinearLayout) view, textView, textView2, flexLayout, frameLayout);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
