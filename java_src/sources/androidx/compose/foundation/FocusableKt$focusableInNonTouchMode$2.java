package androidx.compose.foundation;

import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.focus.FocusProperties;
import androidx.compose.ui.focus.FocusPropertiesKt;
import androidx.compose.ui.input.InputMode;
import androidx.compose.ui.input.InputModeManager;
import androidx.compose.ui.platform.CompositionLocalsKt;
import e8.l;
import e8.q;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
final class FocusableKt$focusableInNonTouchMode$2 extends v implements q<Modifier, Composer, Integer, Modifier> {
    final /* synthetic */ boolean $enabled;
    final /* synthetic */ MutableInteractionSource $interactionSource;

    /* JADX INFO: renamed from: androidx.compose.foundation.FocusableKt$focusableInNonTouchMode$2$1, reason: invalid class name */
    static final class AnonymousClass1 extends v implements l<FocusProperties, l0> {
        final /* synthetic */ InputModeManager $inputModeManager;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(InputModeManager inputModeManager) {
            super(1);
            this.$inputModeManager = inputModeManager;
        }

        public final void a(@NotNull FocusProperties focusProperties) {
            t.j(focusProperties, "$this$focusProperties");
            focusProperties.g(!InputMode.f(this.$inputModeManager.a(), InputMode.Companion.b()));
        }

        @Override // e8.l
        public /* bridge */ /* synthetic */ l0 invoke(FocusProperties focusProperties) {
            a(focusProperties);
            return l0.INSTANCE;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    FocusableKt$focusableInNonTouchMode$2(boolean z6, MutableInteractionSource mutableInteractionSource) {
        super(3);
        this.$enabled = z6;
        this.$interactionSource = mutableInteractionSource;
    }

    @Composable
    @NotNull
    public final Modifier a(@NotNull Modifier composed, @Nullable Composer composer, int i10) {
        t.j(composed, "$this$composed");
        composer.G(-618949501);
        Modifier modifierC = FocusableKt.c(FocusPropertiesKt.b(Modifier.Companion, new AnonymousClass1((InputModeManager) composer.x(CompositionLocalsKt.i()))), this.$enabled, this.$interactionSource);
        composer.Q();
        return modifierC;
    }

    @Override // e8.q
    public /* bridge */ /* synthetic */ Modifier invoke(Modifier modifier, Composer composer, Integer num) {
        return a(modifier, composer, num.intValue());
    }
}
