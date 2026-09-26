package androidx.navigation;

import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes8.dex */
final class NavOptionsBuilder$popUpTo$2 extends v implements l<PopUpToBuilder, l0> {
    public static final NavOptionsBuilder$popUpTo$2 INSTANCE = new NavOptionsBuilder$popUpTo$2();

    NavOptionsBuilder$popUpTo$2() {
        super(1);
    }

    public final void a(@NotNull PopUpToBuilder popUpToBuilder) {
        t.j(popUpToBuilder, "$this$null");
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(PopUpToBuilder popUpToBuilder) {
        a(popUpToBuilder);
        return l0.INSTANCE;
    }
}
