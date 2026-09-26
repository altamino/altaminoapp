package com.narvii.master.home.discover.adapter;

import com.narvii.master.MasterHelper;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes2.dex */
final class CreateCommunityButtonAdapter$masterHelper$2 extends v implements e8.a<MasterHelper> {
    final /* synthetic */ CreateCommunityButtonAdapter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    CreateCommunityButtonAdapter$masterHelper$2(CreateCommunityButtonAdapter createCommunityButtonAdapter) {
        super(0);
        this.this$0 = createCommunityButtonAdapter;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // e8.a
    @NotNull
    public final MasterHelper invoke() {
        return new MasterHelper(this.this$0);
    }
}
