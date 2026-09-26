package androidx.compose.foundation;

import android.content.Context;
import android.os.Build;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.layout.LayoutModifierKt;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.unit.Velocity;
import kotlin.coroutines.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes5.dex */
public final class AndroidOverscrollKt {

    @NotNull
    private static final AndroidOverscrollKt$NoOpOverscrollEffect$1 NoOpOverscrollEffect = new OverscrollEffect() { // from class: androidx.compose.foundation.AndroidOverscrollKt$NoOpOverscrollEffect$1
        private boolean isEnabled;

        @Override // androidx.compose.foundation.OverscrollEffect
        public boolean b() {
            return false;
        }

        @Override // androidx.compose.foundation.OverscrollEffect
        public void e(long j6, long j10, @Nullable Offset offset, int i10) {
        }

        @Override // androidx.compose.foundation.OverscrollEffect
        public boolean isEnabled() {
            return this.isEnabled;
        }

        @Override // androidx.compose.foundation.OverscrollEffect
        public void setEnabled(boolean z6) {
            this.isEnabled = z6;
        }

        @Override // androidx.compose.foundation.OverscrollEffect
        @Nullable
        public Object a(long j6, @NotNull d<? super l0> dVar) {
            return l0.INSTANCE;
        }

        @Override // androidx.compose.foundation.OverscrollEffect
        @NotNull
        public Modifier c() {
            return Modifier.Companion;
        }

        @Override // androidx.compose.foundation.OverscrollEffect
        public long d(long j6, @Nullable Offset offset, int i10) {
            return Offset.Companion.c();
        }

        @Override // androidx.compose.foundation.OverscrollEffect
        @Nullable
        public Object f(long j6, @NotNull d<? super Velocity> dVar) {
            return Velocity.b(Velocity.Companion.a());
        }
    };

    @NotNull
    private static final Modifier StretchOverscrollNonClippingLayer;

    /* JADX WARN: Type inference failed for: r0v0, types: [androidx.compose.foundation.AndroidOverscrollKt$NoOpOverscrollEffect$1] */
    static {
        StretchOverscrollNonClippingLayer = Build.VERSION.SDK_INT >= 31 ? LayoutModifierKt.a(LayoutModifierKt.a(Modifier.Companion, AndroidOverscrollKt$StretchOverscrollNonClippingLayer$1.INSTANCE), AndroidOverscrollKt$StretchOverscrollNonClippingLayer$2.INSTANCE) : Modifier.Companion;
    }

    @Composable
    @NotNull
    public static final OverscrollEffect b(@Nullable Composer composer, int i10) {
        composer.G(-81138291);
        Context context = (Context) composer.x(AndroidCompositionLocals_androidKt.g());
        OverscrollConfiguration overscrollConfiguration = (OverscrollConfiguration) composer.x(OverscrollConfigurationKt.a());
        composer.G(511388516);
        boolean zK = composer.k(context) | composer.k(overscrollConfiguration);
        Object objH = composer.H();
        if (zK || objH == Composer.Companion.a()) {
            if (overscrollConfiguration != null) {
                objH = new AndroidEdgeEffectOverscrollEffect(context, overscrollConfiguration);
            } else {
                objH = NoOpOverscrollEffect;
            }
            composer.z(objH);
        }
        composer.Q();
        OverscrollEffect overscrollEffect = (OverscrollEffect) objH;
        composer.Q();
        return overscrollEffect;
    }
}
