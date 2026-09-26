package androidx.compose.ui.node;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.platform.ViewConfiguration;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import e8.p;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes4.dex */
public interface ComposeUiNode {

    @NotNull
    public static final Companion Companion = Companion.$$INSTANCE;

    void b(@NotNull LayoutDirection layoutDirection);

    void c(@NotNull MeasurePolicy measurePolicy);

    void d(@NotNull Modifier modifier);

    void g(@NotNull Density density);

    void h(@NotNull ViewConfiguration viewConfiguration);

    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();

        @NotNull
        private static final e8.a<ComposeUiNode> Constructor = LayoutNode.Companion.a();

        @NotNull
        private static final p<ComposeUiNode, Modifier, l0> SetModifier = ComposeUiNode$Companion$SetModifier$1.INSTANCE;

        @NotNull
        private static final p<ComposeUiNode, Density, l0> SetDensity = ComposeUiNode$Companion$SetDensity$1.INSTANCE;

        @NotNull
        private static final p<ComposeUiNode, MeasurePolicy, l0> SetMeasurePolicy = ComposeUiNode$Companion$SetMeasurePolicy$1.INSTANCE;

        @NotNull
        private static final p<ComposeUiNode, LayoutDirection, l0> SetLayoutDirection = ComposeUiNode$Companion$SetLayoutDirection$1.INSTANCE;

        @NotNull
        private static final p<ComposeUiNode, ViewConfiguration, l0> SetViewConfiguration = ComposeUiNode$Companion$SetViewConfiguration$1.INSTANCE;

        @NotNull
        public final e8.a<ComposeUiNode> a() {
            return Constructor;
        }

        @NotNull
        public final p<ComposeUiNode, Density, l0> b() {
            return SetDensity;
        }

        @NotNull
        public final p<ComposeUiNode, LayoutDirection, l0> c() {
            return SetLayoutDirection;
        }

        @NotNull
        public final p<ComposeUiNode, MeasurePolicy, l0> d() {
            return SetMeasurePolicy;
        }

        @NotNull
        public final p<ComposeUiNode, Modifier, l0> e() {
            return SetModifier;
        }

        @NotNull
        public final p<ComposeUiNode, ViewConfiguration, l0> f() {
            return SetViewConfiguration;
        }

        private Companion() {
        }
    }
}
