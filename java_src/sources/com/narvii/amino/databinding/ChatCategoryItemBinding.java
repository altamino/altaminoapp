package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.chat.global.GlobalChatCategoryItemView;

/* JADX INFO: loaded from: classes7.dex */
public final class ChatCategoryItemBinding implements ViewBinding {

    @NonNull
    public final TextView categoryTitle;

    @NonNull
    private final GlobalChatCategoryItemView rootView;

    @NonNull
    public final ItemShowMoreStoryBinding showAll;

    @NonNull
    public final ChatHangoutItemBinding thread1;

    @NonNull
    public final ChatHangoutItemBinding thread2;

    @NonNull
    public final ChatHangoutItemBinding thread3;

    @NonNull
    public final ChatHangoutItemBinding thread4;

    @NonNull
    public static ChatCategoryItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public GlobalChatCategoryItemView getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ChatCategoryItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.chat_category_item, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ChatCategoryItemBinding(@NonNull GlobalChatCategoryItemView globalChatCategoryItemView, @NonNull TextView textView, @NonNull ItemShowMoreStoryBinding itemShowMoreStoryBinding, @NonNull ChatHangoutItemBinding chatHangoutItemBinding, @NonNull ChatHangoutItemBinding chatHangoutItemBinding2, @NonNull ChatHangoutItemBinding chatHangoutItemBinding3, @NonNull ChatHangoutItemBinding chatHangoutItemBinding4) {
        this.rootView = globalChatCategoryItemView;
        this.categoryTitle = textView;
        this.showAll = itemShowMoreStoryBinding;
        this.thread1 = chatHangoutItemBinding;
        this.thread2 = chatHangoutItemBinding2;
        this.thread3 = chatHangoutItemBinding3;
        this.thread4 = chatHangoutItemBinding4;
    }

    @NonNull
    public static ChatCategoryItemBinding bind(@NonNull View view) {
        int i10 = R.id.category_title;
        TextView textView = (TextView) ViewBindings.a(view, R.id.category_title);
        if (textView != null) {
            i10 = R.id.show_all;
            View viewA = ViewBindings.a(view, R.id.show_all);
            if (viewA != null) {
                ItemShowMoreStoryBinding itemShowMoreStoryBindingBind = ItemShowMoreStoryBinding.bind(viewA);
                i10 = R.id.thread_1;
                View viewA2 = ViewBindings.a(view, R.id.thread_1);
                if (viewA2 != null) {
                    ChatHangoutItemBinding chatHangoutItemBindingBind = ChatHangoutItemBinding.bind(viewA2);
                    i10 = R.id.thread_2;
                    View viewA3 = ViewBindings.a(view, R.id.thread_2);
                    if (viewA3 != null) {
                        ChatHangoutItemBinding chatHangoutItemBindingBind2 = ChatHangoutItemBinding.bind(viewA3);
                        i10 = R.id.thread_3;
                        View viewA4 = ViewBindings.a(view, R.id.thread_3);
                        if (viewA4 != null) {
                            ChatHangoutItemBinding chatHangoutItemBindingBind3 = ChatHangoutItemBinding.bind(viewA4);
                            i10 = R.id.thread_4;
                            View viewA5 = ViewBindings.a(view, R.id.thread_4);
                            if (viewA5 != null) {
                                return new ChatCategoryItemBinding((GlobalChatCategoryItemView) view, textView, itemShowMoreStoryBindingBind, chatHangoutItemBindingBind, chatHangoutItemBindingBind2, chatHangoutItemBindingBind3, ChatHangoutItemBinding.bind(viewA5));
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
