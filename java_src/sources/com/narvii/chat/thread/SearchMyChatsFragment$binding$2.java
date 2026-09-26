package com.narvii.chat.thread;

import android.view.LayoutInflater;
import com.narvii.amino.databinding.FragmentSearchMyChatsBinding;
import e8.l;
import kotlin.jvm.internal.q;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes.dex */
/* synthetic */ class SearchMyChatsFragment$binding$2 extends q implements l<LayoutInflater, FragmentSearchMyChatsBinding> {
    public static final SearchMyChatsFragment$binding$2 INSTANCE = new SearchMyChatsFragment$binding$2();

    SearchMyChatsFragment$binding$2() {
        super(1, FragmentSearchMyChatsBinding.class, "inflate", "inflate(Landroid/view/LayoutInflater;)Lcom/narvii/amino/databinding/FragmentSearchMyChatsBinding;", 0);
    }

    @Override // e8.l
    @NotNull
    public final FragmentSearchMyChatsBinding invoke(@NotNull LayoutInflater p0) {
        t.j(p0, "p0");
        return FragmentSearchMyChatsBinding.inflate(p0);
    }
}
