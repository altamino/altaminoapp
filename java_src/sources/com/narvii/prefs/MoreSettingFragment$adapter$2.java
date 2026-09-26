package com.narvii.prefs;

import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes7.dex */
final class MoreSettingFragment$adapter$2 extends v implements e8.a<MoreSettingFragment.Adapter> {
    final /* synthetic */ MoreSettingFragment this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    MoreSettingFragment$adapter$2(MoreSettingFragment moreSettingFragment) {
        super(0);
        this.this$0 = moreSettingFragment;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // e8.a
    @NotNull
    public final MoreSettingFragment.Adapter invoke() {
        MoreSettingFragment moreSettingFragment = this.this$0;
        return new MoreSettingFragment.Adapter(moreSettingFragment, moreSettingFragment);
    }
}
