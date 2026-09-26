package com.narvii.chat.global;

import android.view.View;
import kotlin.jvm.internal.v;

/* JADX INFO: Add missing generic type declarations: [T] */
/* JADX INFO: loaded from: classes8.dex */
final class RecentChatListComponent$RecentChatItemHolder$bind$1<T> extends v implements e8.a<T> {
    final /* synthetic */ int $res;
    final /* synthetic */ RecentChatListComponent.RecentChatItemHolder $this_bind;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    RecentChatListComponent$RecentChatItemHolder$bind$1(RecentChatListComponent.RecentChatItemHolder recentChatItemHolder, int i10) {
        super(0);
        this.$this_bind = recentChatItemHolder;
        this.$res = i10;
    }

    /* JADX WARN: Incorrect return type in method signature: ()TT; */
    @Override // e8.a
    public final View invoke() {
        return this.$this_bind.itemView.findViewById(this.$res);
    }
}
