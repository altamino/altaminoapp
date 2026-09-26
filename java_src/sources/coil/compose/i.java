package coil.compose;

import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.ColorFilter;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.layout.ContentScale;
import e8.l;
import e8.p;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes5.dex */
public final class i {

    static final class a extends v implements p<Composer, Integer, l0> {
        final /* synthetic */ int $$changed;
        final /* synthetic */ int $$default;
        final /* synthetic */ Alignment $alignment;
        final /* synthetic */ float $alpha;
        final /* synthetic */ ColorFilter $colorFilter;
        final /* synthetic */ String $contentDescription;
        final /* synthetic */ ContentScale $contentScale;
        final /* synthetic */ int $filterQuality;
        final /* synthetic */ Object $model;
        final /* synthetic */ Modifier $modifier;
        final /* synthetic */ l<b.c, l0> $onState;
        final /* synthetic */ l<b.c, b.c> $transform;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        a(Object obj, String str, Modifier modifier, l<? super b.c, ? extends b.c> lVar, l<? super b.c, l0> lVar2, Alignment alignment, ContentScale contentScale, float f, ColorFilter colorFilter, int i10, int i11, int i12) {
            super(2);
            this.$model = obj;
            this.$contentDescription = str;
            this.$modifier = modifier;
            this.$transform = lVar;
            this.$onState = lVar2;
            this.$alignment = alignment;
            this.$contentScale = contentScale;
            this.$alpha = f;
            this.$colorFilter = colorFilter;
            this.$filterQuality = i10;
            this.$$changed = i11;
            this.$$default = i12;
        }

        public final void a(@Nullable Composer composer, int i10) {
            i.a(this.$model, this.$contentDescription, this.$modifier, this.$transform, this.$onState, this.$alignment, this.$contentScale, this.$alpha, this.$colorFilter, this.$filterQuality, composer, this.$$changed | 1, this.$$default);
        }

        @Override // e8.p
        public /* bridge */ /* synthetic */ l0 invoke(Composer composer, Integer num) {
            a(composer, num.intValue());
            return l0.INSTANCE;
        }
    }

    @Composable
    public static final void a(@Nullable Object obj, @Nullable String str, @Nullable Modifier modifier, @Nullable l<? super b.c, ? extends b.c> lVar, @Nullable l<? super b.c, l0> lVar2, @Nullable Alignment alignment, @Nullable ContentScale contentScale, float f, @Nullable ColorFilter colorFilter, int i10, @Nullable Composer composer, int i11, int i12) {
        l<? super b.c, ? extends b.c> lVarA;
        int i13;
        int iB;
        Composer composerS = composer.s(-941517612);
        Modifier modifier2 = (i12 & 4) != 0 ? Modifier.Companion : modifier;
        if ((i12 & 8) != 0) {
            i13 = i11 & (-7169);
            lVarA = b.Companion.a();
        } else {
            lVarA = lVar;
            i13 = i11;
        }
        l<? super b.c, l0> lVar3 = (i12 & 16) != 0 ? null : lVar2;
        Alignment alignmentE = (i12 & 32) != 0 ? Alignment.Companion.e() : alignment;
        ContentScale contentScaleB = (i12 & 64) != 0 ? ContentScale.Companion.b() : contentScale;
        float f6 = (i12 & 128) != 0 ? 1.0f : f;
        ColorFilter colorFilter2 = (i12 & 256) != 0 ? null : colorFilter;
        if ((i12 & 512) != 0) {
            i13 &= -1879048193;
            iB = DrawScope.Companion.b();
        } else {
            iB = i10;
        }
        if (ComposerKt.O()) {
            ComposerKt.Z(-941517612, i13, -1, "coil.compose.AsyncImage (SingletonAsyncImage.kt:99)");
        }
        int i14 = i13 << 3;
        coil.compose.a.a(obj, str, g.d(h.a(), composerS, 6), modifier2, lVarA, lVar3, alignmentE, contentScaleB, f6, colorFilter2, iB, composerS, (i13 & 112) | 520 | (i14 & 7168) | (57344 & i14) | (458752 & i14) | (3670016 & i14) | (29360128 & i14) | (234881024 & i14) | (i14 & 1879048192), (i13 >> 27) & 14, 0);
        if (ComposerKt.O()) {
            ComposerKt.Y();
        }
        ScopeUpdateScope scopeUpdateScopeU = composerS.u();
        if (scopeUpdateScopeU == null) {
            return;
        }
        scopeUpdateScopeU.a(new a(obj, str, modifier2, lVarA, lVar3, alignmentE, contentScaleB, f6, colorFilter2, iB, i11, i12));
    }
}
