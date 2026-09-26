package androidx.compose.ui.focus;

import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes6.dex */
final class FocusModifier$Companion$RefreshFocusProperties$1 extends v implements l<FocusModifier, l0> {
    public static final FocusModifier$Companion$RefreshFocusProperties$1 INSTANCE = new FocusModifier$Companion$RefreshFocusProperties$1();

    FocusModifier$Companion$RefreshFocusProperties$1() {
        super(1);
    }

    public final void a(@NotNull FocusModifier focusModifier) {
        t.j(focusModifier, "focusModifier");
        FocusPropertiesKt.d(focusModifier);
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(FocusModifier focusModifier) {
        a(focusModifier);
        return l0.INSTANCE;
    }
}
