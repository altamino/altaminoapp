package androidx.compose.ui.focus;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.modifier.ModifierLocalKt;
import androidx.compose.ui.modifier.ProvidableModifierLocal;
import androidx.compose.ui.node.LayoutNodeWrapper;
import androidx.compose.ui.node.Owner;
import androidx.compose.ui.node.OwnerSnapshotObserver;
import androidx.compose.ui.platform.InspectableValueKt;
import e8.l;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes4.dex */
public final class FocusPropertiesKt {

    @NotNull
    private static final ProvidableModifierLocal<FocusPropertiesModifier> ModifierLocalFocusProperties = ModifierLocalKt.a(FocusPropertiesKt$ModifierLocalFocusProperties$1.INSTANCE);

    @NotNull
    public static final ProvidableModifierLocal<FocusPropertiesModifier> c() {
        return ModifierLocalFocusProperties;
    }

    public static final void a(@NotNull FocusProperties focusProperties) {
        t.j(focusProperties, "<this>");
        focusProperties.g(true);
        FocusRequester.Companion companion = FocusRequester.Companion;
        focusProperties.q(companion.a());
        focusProperties.l(companion.a());
        focusProperties.e(companion.a());
        focusProperties.h(companion.a());
        focusProperties.n(companion.a());
        focusProperties.o(companion.a());
        focusProperties.i(companion.a());
        focusProperties.m(companion.a());
    }

    @NotNull
    public static final Modifier b(@NotNull Modifier modifier, @NotNull l<? super FocusProperties, l0> scope) {
        t.j(modifier, "<this>");
        t.j(scope, "scope");
        return modifier.B(new FocusPropertiesModifier(scope, InspectableValueKt.c() ? new FocusPropertiesKt$focusProperties$$inlined$debugInspectorInfo$1(scope) : InspectableValueKt.a()));
    }

    public static final void d(@NotNull FocusModifier focusModifier) {
        OwnerSnapshotObserver snapshotObserver;
        t.j(focusModifier, "<this>");
        LayoutNodeWrapper layoutNodeWrapperL = focusModifier.l();
        if (layoutNodeWrapperL == null) {
            return;
        }
        a(focusModifier.f());
        Owner ownerS0 = layoutNodeWrapperL.x1().s0();
        if (ownerS0 != null && (snapshotObserver = ownerS0.getSnapshotObserver()) != null) {
            snapshotObserver.e(focusModifier, FocusModifier.Companion.a(), new FocusPropertiesKt$refreshFocusProperties$1(focusModifier));
        }
        e(focusModifier, focusModifier.f());
    }

    public static final void e(@NotNull FocusModifier focusModifier, @NotNull FocusProperties properties) {
        t.j(focusModifier, "<this>");
        t.j(properties, "properties");
        if (properties.p()) {
            FocusTransactionsKt.a(focusModifier);
        } else {
            FocusTransactionsKt.e(focusModifier);
        }
    }
}
