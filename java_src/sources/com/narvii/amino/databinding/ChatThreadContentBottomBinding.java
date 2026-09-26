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
import com.narvii.widget.NVImageView;

/* JADX INFO: loaded from: classes7.dex */
public final class ChatThreadContentBottomBinding implements ViewBinding {

    @NonNull
    public final FontAwesomeView chatMuteIcon;

    @NonNull
    public final TextView content;

    @NonNull
    public final TextView disableIndicator;

    @NonNull
    public final NVImageView organizerTransHintIcon;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public static ChatThreadContentBottomBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ChatThreadContentBottomBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.chat_thread_content_bottom, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ChatThreadContentBottomBinding(@NonNull LinearLayout linearLayout, @NonNull FontAwesomeView fontAwesomeView, @NonNull TextView textView, @NonNull TextView textView2, @NonNull NVImageView nVImageView) {
        this.rootView = linearLayout;
        this.chatMuteIcon = fontAwesomeView;
        this.content = textView;
        this.disableIndicator = textView2;
        this.organizerTransHintIcon = nVImageView;
    }

    @NonNull
    public static ChatThreadContentBottomBinding bind(@NonNull View view) {
        int i10 = R.id.chat_mute_icon;
        FontAwesomeView fontAwesomeView = (FontAwesomeView) ViewBindings.a(view, R.id.chat_mute_icon);
        if (fontAwesomeView != null) {
            i10 = R.id.content;
            TextView textView = (TextView) ViewBindings.a(view, R.id.content);
            if (textView != null) {
                i10 = R.id.disable_indicator;
                TextView textView2 = (TextView) ViewBindings.a(view, R.id.disable_indicator);
                if (textView2 != null) {
                    i10 = R.id.organizer_trans_hint_icon;
                    NVImageView nVImageView = (NVImageView) ViewBindings.a(view, R.id.organizer_trans_hint_icon);
                    if (nVImageView != null) {
                        return new ChatThreadContentBottomBinding((LinearLayout) view, fontAwesomeView, textView, textView2, nVImageView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
