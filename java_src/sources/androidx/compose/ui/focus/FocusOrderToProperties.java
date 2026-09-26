package androidx.compose.ui.focus;

import e8.l;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes9.dex */
public final class FocusOrderToProperties implements l<FocusProperties, l0> {

    @NotNull
    private final l<FocusOrder, l0> focusOrderReceiver;

    /* JADX WARN: Multi-variable type inference failed */
    public FocusOrderToProperties(@NotNull l<? super FocusOrder, l0> focusOrderReceiver) {
        t.j(focusOrderReceiver, "focusOrderReceiver");
        this.focusOrderReceiver = focusOrderReceiver;
    }

    public void a(@NotNull FocusProperties focusProperties) {
        t.j(focusProperties, "focusProperties");
        this.focusOrderReceiver.invoke(new FocusOrder(focusProperties));
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(FocusProperties focusProperties) {
        a(focusProperties);
        return l0.INSTANCE;
    }
}
