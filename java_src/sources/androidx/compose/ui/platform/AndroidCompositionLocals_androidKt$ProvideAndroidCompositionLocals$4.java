package androidx.compose.ui.platform;

import androidx.compose.runtime.Composer;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
final class AndroidCompositionLocals_androidKt$ProvideAndroidCompositionLocals$4 extends kotlin.jvm.internal.v implements e8.p<Composer, Integer, w7.l0> {
    final /* synthetic */ int $$changed;
    final /* synthetic */ e8.p<Composer, Integer, w7.l0> $content;
    final /* synthetic */ AndroidComposeView $owner;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    AndroidCompositionLocals_androidKt$ProvideAndroidCompositionLocals$4(AndroidComposeView androidComposeView, e8.p<? super Composer, ? super Integer, w7.l0> pVar, int i10) {
        super(2);
        this.$owner = androidComposeView;
        this.$content = pVar;
        this.$$changed = i10;
    }

    public final void a(@Nullable Composer composer, int i10) {
        AndroidCompositionLocals_androidKt.a(this.$owner, this.$content, composer, this.$$changed | 1);
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ w7.l0 invoke(Composer composer, Integer num) {
        a(composer, num.intValue());
        return w7.l0.INSTANCE;
    }
}
