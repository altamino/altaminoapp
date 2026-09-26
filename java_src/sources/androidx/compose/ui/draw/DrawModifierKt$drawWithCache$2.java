package androidx.compose.ui.draw;

import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.ui.Modifier;
import e8.l;
import e8.q;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes7.dex */
final class DrawModifierKt$drawWithCache$2 extends v implements q<Modifier, Composer, Integer, Modifier> {
    final /* synthetic */ l<CacheDrawScope, DrawResult> $onBuildDrawCache;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    DrawModifierKt$drawWithCache$2(l<? super CacheDrawScope, DrawResult> lVar) {
        super(3);
        this.$onBuildDrawCache = lVar;
    }

    @Composable
    @NotNull
    public final Modifier a(@NotNull Modifier composed, @Nullable Composer composer, int i10) {
        t.j(composed, "$this$composed");
        composer.G(-1689569019);
        composer.G(-492369756);
        Object objH = composer.H();
        if (objH == Composer.Companion.a()) {
            objH = new CacheDrawScope();
            composer.z(objH);
        }
        composer.Q();
        Modifier modifierB = composed.B(new DrawContentCacheModifier((CacheDrawScope) objH, this.$onBuildDrawCache));
        composer.Q();
        return modifierB;
    }

    @Override // e8.q
    public /* bridge */ /* synthetic */ Modifier invoke(Modifier modifier, Composer composer, Integer num) {
        return a(modifier, composer, num.intValue());
    }
}
