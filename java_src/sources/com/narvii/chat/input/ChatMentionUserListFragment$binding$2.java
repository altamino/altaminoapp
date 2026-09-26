package com.narvii.chat.input;

import android.view.LayoutInflater;
import com.narvii.amino.databinding.FragmentMentionedMembersBinding;
import kotlin.jvm.internal.q;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes6.dex */
/* synthetic */ class ChatMentionUserListFragment$binding$2 extends q implements e8.l<LayoutInflater, FragmentMentionedMembersBinding> {
    public static final ChatMentionUserListFragment$binding$2 INSTANCE = new ChatMentionUserListFragment$binding$2();

    ChatMentionUserListFragment$binding$2() {
        super(1, FragmentMentionedMembersBinding.class, "inflate", "inflate(Landroid/view/LayoutInflater;)Lcom/narvii/amino/databinding/FragmentMentionedMembersBinding;", 0);
    }

    @Override // e8.l
    @NotNull
    public final FragmentMentionedMembersBinding invoke(@NotNull LayoutInflater p0) {
        t.j(p0, "p0");
        return FragmentMentionedMembersBinding.inflate(p0);
    }
}
