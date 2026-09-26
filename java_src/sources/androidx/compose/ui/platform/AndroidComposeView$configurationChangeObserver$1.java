package androidx.compose.ui.platform;

import android.content.res.Configuration;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes.dex */
final class AndroidComposeView$configurationChangeObserver$1 extends kotlin.jvm.internal.v implements e8.l<Configuration, w7.l0> {
    public static final AndroidComposeView$configurationChangeObserver$1 INSTANCE = new AndroidComposeView$configurationChangeObserver$1();

    AndroidComposeView$configurationChangeObserver$1() {
        super(1);
    }

    public final void a(@NotNull Configuration it) {
        kotlin.jvm.internal.t.j(it, "it");
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ w7.l0 invoke(Configuration configuration) {
        a(configuration);
        return w7.l0.INSTANCE;
    }
}
