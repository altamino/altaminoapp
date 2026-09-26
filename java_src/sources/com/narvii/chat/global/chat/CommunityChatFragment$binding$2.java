package com.narvii.chat.global.chat;

import android.view.LayoutInflater;
import com.narvii.amino.databinding.FragmentCommunityChatBinding;
import kotlin.jvm.internal.q;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes3.dex */
/* synthetic */ class CommunityChatFragment$binding$2 extends q implements e8.l<LayoutInflater, FragmentCommunityChatBinding> {
    public static final CommunityChatFragment$binding$2 INSTANCE = new CommunityChatFragment$binding$2();

    CommunityChatFragment$binding$2() {
        super(1, FragmentCommunityChatBinding.class, "inflate", "inflate(Landroid/view/LayoutInflater;)Lcom/narvii/amino/databinding/FragmentCommunityChatBinding;", 0);
    }

    @Override // e8.l
    @NotNull
    public final FragmentCommunityChatBinding invoke(@NotNull LayoutInflater p0) {
        t.j(p0, "p0");
        return FragmentCommunityChatBinding.inflate(p0);
    }
}
