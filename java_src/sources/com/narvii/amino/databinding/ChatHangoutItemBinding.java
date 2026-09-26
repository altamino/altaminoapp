package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import com.narvii.amino.master.R;
import com.narvii.chat.hangout.HangoutItem;

/* JADX INFO: loaded from: classes7.dex */
public final class ChatHangoutItemBinding implements ViewBinding {

    @NonNull
    public final HangoutItem chatItem;

    @NonNull
    private final HangoutItem rootView;

    @NonNull
    public static ChatHangoutItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public HangoutItem getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ChatHangoutItemBinding bind(@NonNull View view) {
        if (view == null) {
            throw new NullPointerException("rootView");
        }
        HangoutItem hangoutItem = (HangoutItem) view;
        return new ChatHangoutItemBinding(hangoutItem, hangoutItem);
    }

    @NonNull
    public static ChatHangoutItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.chat_hangout_item, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ChatHangoutItemBinding(@NonNull HangoutItem hangoutItem, @NonNull HangoutItem hangoutItem2) {
        this.rootView = hangoutItem;
        this.chatItem = hangoutItem2;
    }
}
