package androidx.compose.ui.text.input;

import e8.l;
import java.util.List;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
final class TextInputServiceAndroid$stopInput$1 extends v implements l<List<? extends EditCommand>, l0> {
    public static final TextInputServiceAndroid$stopInput$1 INSTANCE = new TextInputServiceAndroid$stopInput$1();

    TextInputServiceAndroid$stopInput$1() {
        super(1);
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(@NotNull List<? extends EditCommand> it) {
        t.j(it, "it");
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(List<? extends EditCommand> list) {
        invoke2(list);
        return l0.INSTANCE;
    }
}
