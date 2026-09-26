package androidx.compose.ui.focus;

import kotlin.jvm.internal.v;
import w7.l0;

/* JADX INFO: loaded from: classes4.dex */
final class FocusPropertiesKt$refreshFocusProperties$1 extends v implements e8.a<l0> {
    final /* synthetic */ FocusModifier $this_refreshFocusProperties;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    FocusPropertiesKt$refreshFocusProperties$1(FocusModifier focusModifier) {
        super(0);
        this.$this_refreshFocusProperties = focusModifier;
    }

    @Override // e8.a
    public /* bridge */ /* synthetic */ l0 invoke() {
        invoke2();
        return l0.INSTANCE;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2() {
        FocusPropertiesModifier focusPropertiesModifierG = this.$this_refreshFocusProperties.g();
        if (focusPropertiesModifierG != null) {
            focusPropertiesModifierG.a(this.$this_refreshFocusProperties.f());
        }
    }
}
