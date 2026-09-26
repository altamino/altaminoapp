package androidx.compose.foundation;

import androidx.compose.foundation.interaction.FocusInteractionKt;
import androidx.compose.foundation.interaction.HoverInteractionKt;
import androidx.compose.foundation.interaction.InteractionSource;
import androidx.compose.foundation.interaction.PressInteractionKt;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.State;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.drawscope.ContentDrawScope;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
final class DefaultDebugIndication implements Indication {

    @NotNull
    public static final DefaultDebugIndication INSTANCE = new DefaultDebugIndication();

    private static final class DefaultDebugIndicationInstance implements IndicationInstance {

        @NotNull
        private final State<Boolean> isFocused;

        @NotNull
        private final State<Boolean> isHovered;

        @NotNull
        private final State<Boolean> isPressed;

        @Override // androidx.compose.foundation.IndicationInstance
        public void a(@NotNull ContentDrawScope contentDrawScope) {
            t.j(contentDrawScope, "<this>");
            contentDrawScope.Z();
            if (this.isPressed.getValue().booleanValue()) {
                androidx.compose.ui.graphics.drawscope.a.n(contentDrawScope, Color.l(Color.Companion.a(), 0.3f, 0.0f, 0.0f, 0.0f, 14, null), 0L, contentDrawScope.c(), 0.0f, null, null, 0, 122, null);
            } else if (this.isHovered.getValue().booleanValue() || this.isFocused.getValue().booleanValue()) {
                androidx.compose.ui.graphics.drawscope.a.n(contentDrawScope, Color.l(Color.Companion.a(), 0.1f, 0.0f, 0.0f, 0.0f, 14, null), 0L, contentDrawScope.c(), 0.0f, null, null, 0, 122, null);
            }
        }

        public DefaultDebugIndicationInstance(@NotNull State<Boolean> isPressed, @NotNull State<Boolean> isHovered, @NotNull State<Boolean> isFocused) {
            t.j(isPressed, "isPressed");
            t.j(isHovered, "isHovered");
            t.j(isFocused, "isFocused");
            this.isPressed = isPressed;
            this.isHovered = isHovered;
            this.isFocused = isFocused;
        }
    }

    @Override // androidx.compose.foundation.Indication
    @Composable
    @NotNull
    public IndicationInstance a(@NotNull InteractionSource interactionSource, @Nullable Composer composer, int i10) {
        t.j(interactionSource, "interactionSource");
        composer.G(1683566979);
        int i11 = i10 & 14;
        State<Boolean> stateA = PressInteractionKt.a(interactionSource, composer, i11);
        State<Boolean> stateA2 = HoverInteractionKt.a(interactionSource, composer, i11);
        State<Boolean> stateA3 = FocusInteractionKt.a(interactionSource, composer, i11);
        composer.G(1157296644);
        boolean zK = composer.k(interactionSource);
        Object objH = composer.H();
        if (zK || objH == Composer.Companion.a()) {
            objH = new DefaultDebugIndicationInstance(stateA, stateA2, stateA3);
            composer.z(objH);
        }
        composer.Q();
        DefaultDebugIndicationInstance defaultDebugIndicationInstance = (DefaultDebugIndicationInstance) objH;
        composer.Q();
        return defaultDebugIndicationInstance;
    }

    private DefaultDebugIndication() {
    }
}
