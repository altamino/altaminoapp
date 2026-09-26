package androidx.compose.ui.platform;

import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
final class AndroidCompositionLocals_androidKt$ProvideAndroidCompositionLocals$3 extends kotlin.jvm.internal.v implements e8.p<Composer, Integer, w7.l0> {
    final /* synthetic */ int $$dirty;
    final /* synthetic */ e8.p<Composer, Integer, w7.l0> $content;
    final /* synthetic */ AndroidComposeView $owner;
    final /* synthetic */ AndroidUriHandler $uriHandler;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    AndroidCompositionLocals_androidKt$ProvideAndroidCompositionLocals$3(AndroidComposeView androidComposeView, AndroidUriHandler androidUriHandler, e8.p<? super Composer, ? super Integer, w7.l0> pVar, int i10) {
        super(2);
        this.$owner = androidComposeView;
        this.$uriHandler = androidUriHandler;
        this.$content = pVar;
        this.$$dirty = i10;
    }

    @Composable
    public final void a(@Nullable Composer composer, int i10) {
        if ((i10 & 11) == 2 && composer.b()) {
            composer.g();
        } else {
            CompositionLocalsKt.a(this.$owner, this.$uriHandler, this.$content, composer, ((this.$$dirty << 3) & 896) | 72);
        }
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ w7.l0 invoke(Composer composer, Integer num) {
        a(composer, num.intValue());
        return w7.l0.INSTANCE;
    }
}
