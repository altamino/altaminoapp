package androidx.compose.ui.focus;

import e8.l;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes10.dex */
public final class FocusOrderModifierToProperties implements l<FocusProperties, l0> {

    @NotNull
    private final FocusOrderModifier modifier;

    @NotNull
    public final FocusOrderModifier a() {
        return this.modifier;
    }

    public FocusOrderModifierToProperties(@NotNull FocusOrderModifier modifier) {
        t.j(modifier, "modifier");
        this.modifier = modifier;
    }

    public void b(@NotNull FocusProperties focusProperties) {
        t.j(focusProperties, "focusProperties");
        this.modifier.O(new FocusOrder(focusProperties));
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(FocusProperties focusProperties) {
        b(focusProperties);
        return l0.INSTANCE;
    }
}
