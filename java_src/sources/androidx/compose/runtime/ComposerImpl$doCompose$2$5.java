package androidx.compose.runtime;

import e8.p;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import kotlin.jvm.internal.v0;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
final class ComposerImpl$doCompose$2$5 extends v implements e8.a<l0> {
    final /* synthetic */ p<Composer, Integer, l0> $content;
    final /* synthetic */ Object $savedContent;
    final /* synthetic */ ComposerImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    ComposerImpl$doCompose$2$5(p<? super Composer, ? super Integer, l0> pVar, ComposerImpl composerImpl, Object obj) {
        super(0);
        this.$content = pVar;
        this.this$0 = composerImpl;
        this.$savedContent = obj;
    }

    @Override // e8.a
    public /* bridge */ /* synthetic */ l0 invoke() {
        invoke2();
        return l0.INSTANCE;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2() {
        Object obj;
        if (this.$content != null) {
            this.this$0.C1(200, ComposerKt.G());
            ActualJvm_jvmKt.b(this.this$0, this.$content);
            this.this$0.v0();
        } else {
            if (!this.this$0.forciblyRecompose || (obj = this.$savedContent) == null || t.e(obj, Composer.Companion.a())) {
                this.this$0.x1();
                return;
            }
            this.this$0.C1(200, ComposerKt.G());
            ComposerImpl composerImpl = this.this$0;
            Object obj2 = this.$savedContent;
            if (obj2 == null) {
                throw new NullPointerException("null cannot be cast to non-null type kotlin.Function2<androidx.compose.runtime.Composer, kotlin.Int, kotlin.Unit>");
            }
            ActualJvm_jvmKt.b(composerImpl, (p) v0.e(obj2, 2));
            this.this$0.v0();
        }
    }
}
