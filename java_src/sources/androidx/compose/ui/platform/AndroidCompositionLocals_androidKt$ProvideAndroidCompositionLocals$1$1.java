package androidx.compose.ui.platform;

import android.content.res.Configuration;
import androidx.compose.runtime.MutableState;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes.dex */
final class AndroidCompositionLocals_androidKt$ProvideAndroidCompositionLocals$1$1 extends kotlin.jvm.internal.v implements e8.l<Configuration, w7.l0> {
    final /* synthetic */ MutableState<Configuration> $configuration$delegate;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    AndroidCompositionLocals_androidKt$ProvideAndroidCompositionLocals$1$1(MutableState<Configuration> mutableState) {
        super(1);
        this.$configuration$delegate = mutableState;
    }

    public final void a(@NotNull Configuration it) {
        kotlin.jvm.internal.t.j(it, "it");
        AndroidCompositionLocals_androidKt.c(this.$configuration$delegate, it);
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ w7.l0 invoke(Configuration configuration) {
        a(configuration);
        return w7.l0.INSTANCE;
    }
}
