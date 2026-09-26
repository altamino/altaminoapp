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
import com.narvii.widget.FontAwesomeView;

/* JADX INFO: loaded from: classes8.dex */
public final class ChatAnnouncementPinBinding implements ViewBinding {

    @NonNull
    public final LinearLayout announcementContainer;

    @NonNull
    public final TextView announcementContent;

    @NonNull
    public final FontAwesomeView announcementRightIcon;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public static ChatAnnouncementPinBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ChatAnnouncementPinBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.chat_announcement_pin, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ChatAnnouncementPinBinding(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull TextView textView, @NonNull FontAwesomeView fontAwesomeView) {
        this.rootView = linearLayout;
        this.announcementContainer = linearLayout2;
        this.announcementContent = textView;
        this.announcementRightIcon = fontAwesomeView;
    }

    @NonNull
    public static ChatAnnouncementPinBinding bind(@NonNull View view) {
        int i10 = R.id.announcement_container;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.announcement_container);
        if (linearLayout != null) {
            i10 = R.id.announcement_content;
            TextView textView = (TextView) ViewBindings.a(view, R.id.announcement_content);
            if (textView != null) {
                i10 = R.id.announcement_right_icon;
                FontAwesomeView fontAwesomeView = (FontAwesomeView) ViewBindings.a(view, R.id.announcement_right_icon);
                if (fontAwesomeView != null) {
                    return new ChatAnnouncementPinBinding((LinearLayout) view, linearLayout, textView, fontAwesomeView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
