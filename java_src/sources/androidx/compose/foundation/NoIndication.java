package androidx.compose.foundation;

import androidx.compose.foundation.interaction.InteractionSource;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.ui.graphics.drawscope.ContentDrawScope;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes7.dex */
final class NoIndication implements Indication {

    @NotNull
    public static final NoIndication INSTANCE = new NoIndication();

    private static final class NoIndicationInstance implements IndicationInstance {

        @NotNull
        public static final NoIndicationInstance INSTANCE = new NoIndicationInstance();

        @Override // androidx.compose.foundation.IndicationInstance
        public void a(@NotNull ContentDrawScope contentDrawScope) {
            t.j(contentDrawScope, "<this>");
            contentDrawScope.Z();
        }

        private NoIndicationInstance() {
        }
    }

    @Override // androidx.compose.foundation.Indication
    @Composable
    @NotNull
    public IndicationInstance a(@NotNull InteractionSource interactionSource, @Nullable Composer composer, int i10) {
        t.j(interactionSource, "interactionSource");
        composer.G(285654452);
        NoIndicationInstance noIndicationInstance = NoIndicationInstance.INSTANCE;
        composer.Q();
        return noIndicationInstance;
    }

    private NoIndication() {
    }
}
