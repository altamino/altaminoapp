package androidx.compose.foundation;

import androidx.compose.foundation.gestures.PressGestureScope;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.interaction.PressInteraction;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.State;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.input.key.KeyInputModifierKt;
import androidx.compose.ui.platform.InspectableValueKt;
import androidx.compose.ui.semantics.Role;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import e8.l;
import kotlin.coroutines.d;
import kotlin.jvm.internal.t;
import kotlinx.coroutines.p0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes2.dex */
public final class ClickableKt {
    @ExperimentalFoundationApi
    @NotNull
    public static final Modifier f(@NotNull Modifier combinedClickable, @NotNull MutableInteractionSource interactionSource, @Nullable Indication indication, boolean z6, @Nullable String str, @Nullable Role role, @Nullable String str2, @Nullable e8.a<l0> aVar, @Nullable e8.a<l0> aVar2, @NotNull e8.a<l0> onClick) {
        t.j(combinedClickable, "$this$combinedClickable");
        t.j(interactionSource, "interactionSource");
        t.j(onClick, "onClick");
        return ComposedModifierKt.c(combinedClickable, InspectableValueKt.c() ? new ClickableKt$combinedClickableXVZzFYc$$inlined$debugInspectorInfo$1(z6, str, role, onClick, aVar2, aVar, str2, indication, interactionSource) : InspectableValueKt.a(), new ClickableKt$combinedClickable$4(onClick, aVar, aVar2, z6, interactionSource, indication, str, role, str2));
    }

    @NotNull
    public static final Modifier g(@NotNull Modifier genericClickableWithoutGesture, @NotNull Modifier gestureModifiers, @NotNull MutableInteractionSource interactionSource, @Nullable Indication indication, boolean z6, @Nullable String str, @Nullable Role role, @Nullable String str2, @Nullable e8.a<l0> aVar, @NotNull e8.a<l0> onClick) {
        t.j(genericClickableWithoutGesture, "$this$genericClickableWithoutGesture");
        t.j(gestureModifiers, "gestureModifiers");
        t.j(interactionSource, "interactionSource");
        t.j(onClick, "onClick");
        return FocusableKt.e(HoverableKt.a(IndicationKt.b(i(h(genericClickableWithoutGesture, role, str, aVar, str2, z6, onClick), z6, onClick), interactionSource, indication), interactionSource, z6), z6, interactionSource).B(gestureModifiers);
    }

    @Composable
    public static final void a(@NotNull MutableInteractionSource interactionSource, @NotNull MutableState<PressInteraction.Press> pressedInteraction, @Nullable Composer composer, int i10) {
        int i11;
        t.j(interactionSource, "interactionSource");
        t.j(pressedInteraction, "pressedInteraction");
        Composer composerS = composer.s(1761107222);
        if ((i10 & 14) == 0) {
            i11 = (composerS.k(interactionSource) ? 4 : 2) | i10;
        } else {
            i11 = i10;
        }
        if ((i10 & 112) == 0) {
            i11 |= composerS.k(pressedInteraction) ? 32 : 16;
        }
        if ((i11 & 91) == 18 && composerS.b()) {
            composerS.g();
        } else {
            composerS.G(511388516);
            boolean zK = composerS.k(pressedInteraction) | composerS.k(interactionSource);
            Object objH = composerS.H();
            if (zK || objH == Composer.Companion.a()) {
                objH = new ClickableKt$PressedInteractionSourceDisposableEffect$1$1(pressedInteraction, interactionSource);
                composerS.z(objH);
            }
            composerS.Q();
            EffectsKt.a(interactionSource, (l) objH, composerS, i11 & 14);
        }
        ScopeUpdateScope scopeUpdateScopeU = composerS.u();
        if (scopeUpdateScopeU == null) {
            return;
        }
        scopeUpdateScopeU.a(new ClickableKt$PressedInteractionSourceDisposableEffect$2(interactionSource, pressedInteraction, i10));
    }

    @NotNull
    public static final Modifier b(@NotNull Modifier clickable, @NotNull MutableInteractionSource interactionSource, @Nullable Indication indication, boolean z6, @Nullable String str, @Nullable Role role, @NotNull e8.a<l0> onClick) {
        t.j(clickable, "$this$clickable");
        t.j(interactionSource, "interactionSource");
        t.j(onClick, "onClick");
        return ComposedModifierKt.c(clickable, InspectableValueKt.c() ? new ClickableKt$clickableO2vRcR0$$inlined$debugInspectorInfo$1(z6, str, role, onClick, indication, interactionSource) : InspectableValueKt.a(), new ClickableKt$clickable$4(onClick, z6, interactionSource, indication, str, role));
    }

    public static /* synthetic */ Modifier c(Modifier modifier, MutableInteractionSource mutableInteractionSource, Indication indication, boolean z6, String str, Role role, e8.a aVar, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            z6 = true;
        }
        return b(modifier, mutableInteractionSource, indication, z6, (i10 & 8) != 0 ? null : str, (i10 & 16) != 0 ? null : role, aVar);
    }

    @NotNull
    public static final Modifier d(@NotNull Modifier clickable, boolean z6, @Nullable String str, @Nullable Role role, @NotNull e8.a<l0> onClick) {
        t.j(clickable, "$this$clickable");
        t.j(onClick, "onClick");
        return ComposedModifierKt.c(clickable, InspectableValueKt.c() ? new ClickableKt$clickableXHw0xAI$$inlined$debugInspectorInfo$1(z6, str, role, onClick) : InspectableValueKt.a(), new ClickableKt$clickable$2(z6, str, role, onClick));
    }

    public static /* synthetic */ Modifier e(Modifier modifier, boolean z6, String str, Role role, e8.a aVar, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z6 = true;
        }
        if ((i10 & 2) != 0) {
            str = null;
        }
        if ((i10 & 4) != 0) {
            role = null;
        }
        return d(modifier, z6, str, role, aVar);
    }

    private static final Modifier h(Modifier modifier, Role role, String str, e8.a<l0> aVar, String str2, boolean z6, e8.a<l0> aVar2) {
        return SemanticsModifierKt.b(modifier, true, new ClickableKt$genericClickableWithoutGesture$clickSemantics$1(role, str, aVar, str2, z6, aVar2));
    }

    private static final Modifier i(Modifier modifier, boolean z6, e8.a<l0> aVar) {
        return KeyInputModifierKt.b(modifier, new ClickableKt$genericClickableWithoutGesture$detectClickFromKey$1(z6, aVar));
    }

    @Nullable
    public static final Object j(@NotNull PressGestureScope pressGestureScope, long j6, @NotNull MutableInteractionSource mutableInteractionSource, @NotNull MutableState<PressInteraction.Press> mutableState, @NotNull State<? extends e8.a<Boolean>> state, @NotNull d<? super l0> dVar) {
        Object objF = p0.f(new ClickableKt$handlePressInteraction$2(pressGestureScope, j6, mutableInteractionSource, mutableState, state, null), dVar);
        return objF == kotlin.coroutines.intrinsics.d.e() ? objF : l0.INSTANCE;
    }
}
