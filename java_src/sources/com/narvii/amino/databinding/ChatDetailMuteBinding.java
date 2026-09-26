package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.FontAwesomeView;

/* JADX INFO: loaded from: classes9.dex */
public final class ChatDetailMuteBinding implements ViewBinding {

    @NonNull
    public final CheckBox chatMute;

    @NonNull
    public final FontAwesomeView chatMuteIcon;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public static ChatDetailMuteBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ChatDetailMuteBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.chat_detail_mute, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ChatDetailMuteBinding(@NonNull LinearLayout linearLayout, @NonNull CheckBox checkBox, @NonNull FontAwesomeView fontAwesomeView) {
        this.rootView = linearLayout;
        this.chatMute = checkBox;
        this.chatMuteIcon = fontAwesomeView;
    }

    @NonNull
    public static ChatDetailMuteBinding bind(@NonNull View view) {
        int i10 = R.id.chat_mute;
        CheckBox checkBox = (CheckBox) ViewBindings.a(view, R.id.chat_mute);
        if (checkBox != null) {
            i10 = R.id.chat_mute_icon;
            FontAwesomeView fontAwesomeView = (FontAwesomeView) ViewBindings.a(view, R.id.chat_mute_icon);
            if (fontAwesomeView != null) {
                return new ChatDetailMuteBinding((LinearLayout) view, checkBox, fontAwesomeView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
