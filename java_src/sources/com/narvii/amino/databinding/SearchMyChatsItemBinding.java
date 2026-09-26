package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import com.narvii.amino.master.R;
import com.narvii.chat.thread.ThreadListItem;

/* JADX INFO: loaded from: classes7.dex */
public final class SearchMyChatsItemBinding implements ViewBinding {

    @NonNull
    public final ThreadListItem chatThreadItem;

    @NonNull
    private final ThreadListItem rootView;

    @NonNull
    public static SearchMyChatsItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public ThreadListItem getRoot() {
        return this.rootView;
    }

    @NonNull
    public static SearchMyChatsItemBinding bind(@NonNull View view) {
        if (view == null) {
            throw new NullPointerException("rootView");
        }
        ThreadListItem threadListItem = (ThreadListItem) view;
        return new SearchMyChatsItemBinding(threadListItem, threadListItem);
    }

    @NonNull
    public static SearchMyChatsItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.search_my_chats_item, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private SearchMyChatsItemBinding(@NonNull ThreadListItem threadListItem, @NonNull ThreadListItem threadListItem2) {
        this.rootView = threadListItem;
        this.chatThreadItem = threadListItem2;
    }
}
