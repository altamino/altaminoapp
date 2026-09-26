package androidx.compose.ui.semantics;

import e8.p;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.g;

/* JADX INFO: loaded from: classes5.dex */
public final class SemanticsPropertiesKt$ActionPropertyKey$1 extends v implements p<AccessibilityAction<g<? extends Boolean>>, AccessibilityAction<g<? extends Boolean>>, AccessibilityAction<g<? extends Boolean>>> {
    public static final SemanticsPropertiesKt$ActionPropertyKey$1 INSTANCE = new SemanticsPropertiesKt$ActionPropertyKey$1();

    public SemanticsPropertiesKt$ActionPropertyKey$1() {
        super(2);
    }

    @Override // e8.p
    @Nullable
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final AccessibilityAction<g<? extends Boolean>> invoke(@Nullable AccessibilityAction<g<? extends Boolean>> accessibilityAction, @NotNull AccessibilityAction<g<? extends Boolean>> childValue) {
        String strB;
        g gVarA;
        t.j(childValue, "childValue");
        if (accessibilityAction == null || (strB = accessibilityAction.b()) == null) {
            strB = childValue.b();
        }
        if (accessibilityAction == null || (gVarA = accessibilityAction.a()) == null) {
            gVarA = childValue.a();
        }
        return new AccessibilityAction<>(strB, gVarA);
    }
}
