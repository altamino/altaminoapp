package com.narvii.scene;

import android.view.View;
import e8.p;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes3.dex */
final class TemplateListFragment$scaleIncrease$1 extends v implements p<View, Float, l0> {
    final /* synthetic */ TemplateListFragment this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    TemplateListFragment$scaleIncrease$1(TemplateListFragment templateListFragment) {
        super(2);
        this.this$0 = templateListFragment;
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ l0 invoke(View view, Float f) {
        invoke(view, f.floatValue());
        return l0.INSTANCE;
    }

    public final void invoke(@NotNull View v5, float f) {
        t.j(v5, "v");
        double d = 1;
        double d2 = f;
        v5.setScaleX((float) ((d - this.this$0.getAnimRate()) + (this.this$0.getAnimRate() * d2)));
        v5.setScaleY((float) ((d - this.this$0.getAnimRate()) + (this.this$0.getAnimRate() * d2)));
    }
}
