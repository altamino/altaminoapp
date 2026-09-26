package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import com.narvii.amino.master.R;
import com.narvii.chat.global.RecentChatListComponent;

/* JADX INFO: loaded from: classes7.dex */
public final class RecentChatBarBinding implements ViewBinding {

    @NonNull
    private final RecentChatListComponent rootView;

    @NonNull
    public static RecentChatBarBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public RecentChatListComponent getRoot() {
        return this.rootView;
    }

    @NonNull
    public static RecentChatBarBinding bind(@NonNull View view) {
        if (view != null) {
            return new RecentChatBarBinding((RecentChatListComponent) view);
        }
        throw new NullPointerException("rootView");
    }

    @NonNull
    public static RecentChatBarBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.recent_chat_bar, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private RecentChatBarBinding(@NonNull RecentChatListComponent recentChatListComponent) {
        this.rootView = recentChatListComponent;
    }
}
