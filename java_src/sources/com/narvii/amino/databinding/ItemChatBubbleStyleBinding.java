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
import com.narvii.widget.FontAwesomeView;
import com.narvii.widget.NVImageView;

/* JADX INFO: loaded from: classes8.dex */
public final class ItemChatBubbleStyleBinding implements ViewBinding {

    @NonNull
    public final LinearLayout action;

    @NonNull
    public final FontAwesomeView chatMuteIcon;

    @NonNull
    public final NVImageView curBubble;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public static ItemChatBubbleStyleBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ItemChatBubbleStyleBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.item_chat_bubble_style, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ItemChatBubbleStyleBinding(@NonNull FrameLayout frameLayout, @NonNull LinearLayout linearLayout, @NonNull FontAwesomeView fontAwesomeView, @NonNull NVImageView nVImageView) {
        this.rootView = frameLayout;
        this.action = linearLayout;
        this.chatMuteIcon = fontAwesomeView;
        this.curBubble = nVImageView;
    }

    @NonNull
    public static ItemChatBubbleStyleBinding bind(@NonNull View view) {
        int i10 = R.id.action;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.action);
        if (linearLayout != null) {
            i10 = R.id.chat_mute_icon;
            FontAwesomeView fontAwesomeView = (FontAwesomeView) ViewBindings.a(view, R.id.chat_mute_icon);
            if (fontAwesomeView != null) {
                i10 = R.id.cur_bubble;
                NVImageView nVImageView = (NVImageView) ViewBindings.a(view, R.id.cur_bubble);
                if (nVImageView != null) {
                    return new ItemChatBubbleStyleBinding((FrameLayout) view, linearLayout, fontAwesomeView, nVImageView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
