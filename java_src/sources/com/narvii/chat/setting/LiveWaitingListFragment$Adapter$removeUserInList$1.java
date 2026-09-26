package com.narvii.chat.setting;

import android.text.TextUtils;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes2.dex */
final class LiveWaitingListFragment$Adapter$removeUserInList$1 extends v implements e8.l<String, Boolean> {
    final /* synthetic */ String $uid;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    LiveWaitingListFragment$Adapter$removeUserInList$1(String str) {
        super(1);
        this.$uid = str;
    }

    @Override // e8.l
    @NotNull
    public final Boolean invoke(@NotNull String it) {
        t.j(it, "it");
        return Boolean.valueOf(TextUtils.equals(it, this.$uid));
    }
}
