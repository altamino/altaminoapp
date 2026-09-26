package com.narvii.notice;

import com.narvii.amino.databinding.FragmentAggrefationBaseBinding;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes7.dex */
final class AggregationNoticeFragment$baseBinding$1 extends v implements e8.a<FragmentAggrefationBaseBinding> {
    final /* synthetic */ AggregationNoticeFragment this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    AggregationNoticeFragment$baseBinding$1(AggregationNoticeFragment aggregationNoticeFragment) {
        super(0);
        this.this$0 = aggregationNoticeFragment;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // e8.a
    @NotNull
    public final FragmentAggrefationBaseBinding invoke() {
        return this.this$0.getBaseBinding();
    }
}
