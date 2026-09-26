package coil.compose;

import androidx.compose.runtime.Applier;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposableTarget;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.Stable;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.graphics.ColorFilter;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.layout.IntrinsicMeasureScope;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.platform.ViewConfiguration;
import androidx.compose.ui.semantics.Role;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import coil.size.k;
import e8.l;
import e8.p;
import java.util.List;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes5.dex */
public final class a {

    /* JADX INFO: renamed from: coil.compose.a$a, reason: collision with other inner class name */
    static final class C0088a extends v implements p<Composer, Integer, l0> {
        final /* synthetic */ int $$changed;
        final /* synthetic */ int $$changed1;
        final /* synthetic */ int $$default;
        final /* synthetic */ Alignment $alignment;
        final /* synthetic */ float $alpha;
        final /* synthetic */ ColorFilter $colorFilter;
        final /* synthetic */ String $contentDescription;
        final /* synthetic */ ContentScale $contentScale;
        final /* synthetic */ int $filterQuality;
        final /* synthetic */ coil.e $imageLoader;
        final /* synthetic */ Object $model;
        final /* synthetic */ Modifier $modifier;
        final /* synthetic */ l<coil.compose.b.c, l0> $onState;
        final /* synthetic */ l<coil.compose.b.c, coil.compose.b.c> $transform;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        C0088a(Object obj, String str, coil.e eVar, Modifier modifier, l<? super coil.compose.b.c, ? extends coil.compose.b.c> lVar, l<? super coil.compose.b.c, l0> lVar2, Alignment alignment, ContentScale contentScale, float f, ColorFilter colorFilter, int i10, int i11, int i12, int i13) {
            super(2);
            this.$model = obj;
            this.$contentDescription = str;
            this.$imageLoader = eVar;
            this.$modifier = modifier;
            this.$transform = lVar;
            this.$onState = lVar2;
            this.$alignment = alignment;
            this.$contentScale = contentScale;
            this.$alpha = f;
            this.$colorFilter = colorFilter;
            this.$filterQuality = i10;
            this.$$changed = i11;
            this.$$changed1 = i12;
            this.$$default = i13;
        }

        public final void a(@Nullable Composer composer, int i10) {
            a.a(this.$model, this.$contentDescription, this.$imageLoader, this.$modifier, this.$transform, this.$onState, this.$alignment, this.$contentScale, this.$alpha, this.$colorFilter, this.$filterQuality, composer, this.$$changed | 1, this.$$changed1, this.$$default);
        }

        @Override // e8.p
        public /* bridge */ /* synthetic */ l0 invoke(Composer composer, Integer num) {
            a(composer, num.intValue());
            return l0.INSTANCE;
        }
    }

    public static final class b extends v implements e8.a<ComposeUiNode> {
        final /* synthetic */ e8.a $factory;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(e8.a aVar) {
            super(0);
            this.$factory = aVar;
        }

        /* JADX WARN: Type inference failed for: r0v1, types: [androidx.compose.ui.node.ComposeUiNode, java.lang.Object] */
        @Override // e8.a
        @NotNull
        public final ComposeUiNode invoke() {
            return this.$factory.invoke();
        }
    }

    static final class d extends v implements p<Composer, Integer, l0> {
        final /* synthetic */ int $$changed;
        final /* synthetic */ Alignment $alignment;
        final /* synthetic */ float $alpha;
        final /* synthetic */ ColorFilter $colorFilter;
        final /* synthetic */ String $contentDescription;
        final /* synthetic */ ContentScale $contentScale;
        final /* synthetic */ Modifier $modifier;
        final /* synthetic */ Painter $painter;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        d(Modifier modifier, Painter painter, String str, Alignment alignment, ContentScale contentScale, float f, ColorFilter colorFilter, int i10) {
            super(2);
            this.$modifier = modifier;
            this.$painter = painter;
            this.$contentDescription = str;
            this.$alignment = alignment;
            this.$contentScale = contentScale;
            this.$alpha = f;
            this.$colorFilter = colorFilter;
            this.$$changed = i10;
        }

        public final void a(@Nullable Composer composer, int i10) {
            a.b(this.$modifier, this.$painter, this.$contentDescription, this.$alignment, this.$contentScale, this.$alpha, this.$colorFilter, composer, this.$$changed | 1);
        }

        @Override // e8.p
        public /* bridge */ /* synthetic */ l0 invoke(Composer composer, Integer num) {
            a(composer, num.intValue());
            return l0.INSTANCE;
        }
    }

    static final class e extends v implements l<SemanticsPropertyReceiver, l0> {
        final /* synthetic */ String $contentDescription;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        e(String str) {
            super(1);
            this.$contentDescription = str;
        }

        public final void a(@NotNull SemanticsPropertyReceiver semanticsPropertyReceiver) {
            SemanticsPropertiesKt.G(semanticsPropertyReceiver, this.$contentDescription);
            SemanticsPropertiesKt.Q(semanticsPropertyReceiver, Role.Companion.c());
        }

        @Override // e8.l
        public /* bridge */ /* synthetic */ l0 invoke(SemanticsPropertyReceiver semanticsPropertyReceiver) {
            a(semanticsPropertyReceiver);
            return l0.INSTANCE;
        }
    }

    @Composable
    public static final void a(@Nullable Object obj, @Nullable String str, @NotNull coil.e eVar, @Nullable Modifier modifier, @Nullable l<? super coil.compose.b.c, ? extends coil.compose.b.c> lVar, @Nullable l<? super coil.compose.b.c, l0> lVar2, @Nullable Alignment alignment, @Nullable ContentScale contentScale, float f, @Nullable ColorFilter colorFilter, int i10, @Nullable Composer composer, int i11, int i12, int i13) {
        int iB;
        int i14;
        Composer composerS = composer.s(-2030202961);
        Modifier modifier2 = (i13 & 8) != 0 ? Modifier.Companion : modifier;
        l<? super coil.compose.b.c, ? extends coil.compose.b.c> lVarA = (i13 & 16) != 0 ? coil.compose.b.Companion.a() : lVar;
        l<? super coil.compose.b.c, l0> lVar3 = (i13 & 32) != 0 ? null : lVar2;
        Alignment alignmentE = (i13 & 64) != 0 ? Alignment.Companion.e() : alignment;
        ContentScale contentScaleB = (i13 & 128) != 0 ? ContentScale.Companion.b() : contentScale;
        float f6 = (i13 & 256) != 0 ? 1.0f : f;
        ColorFilter colorFilter2 = (i13 & 512) != 0 ? null : colorFilter;
        if ((i13 & 1024) != 0) {
            i14 = i12 & (-15);
            iB = DrawScope.Companion.b();
        } else {
            iB = i10;
            i14 = i12;
        }
        if (ComposerKt.O()) {
            ComposerKt.Z(-2030202961, i11, i14, "coil.compose.AsyncImage (AsyncImage.kt:116)");
        }
        coil.request.h hVarF = f(j.d(obj, composerS, 8), contentScaleB, composerS, 8 | ((i11 >> 18) & 112));
        int i15 = i11 >> 6;
        int i16 = i11 >> 9;
        int i17 = i16 & 57344;
        l<? super coil.compose.b.c, ? extends coil.compose.b.c> lVar4 = lVarA;
        l<? super coil.compose.b.c, l0> lVar5 = lVar3;
        ContentScale contentScale2 = contentScaleB;
        int i18 = iB;
        coil.compose.b bVarD = coil.compose.c.d(hVarF, eVar, lVar4, lVar5, contentScale2, i18, composerS, ((i14 << 15) & 458752) | (i15 & 7168) | (i15 & 896) | 72 | i17, 0);
        coil.size.j jVarK = hVarF.K();
        b(jVarK instanceof coil.compose.d ? modifier2.B((Modifier) jVarK) : modifier2, bVarD, str, alignmentE, contentScaleB, f6, colorFilter2, composerS, (i16 & 7168) | ((i11 << 3) & 896) | i17 | (i16 & 458752) | (3670016 & i16));
        if (ComposerKt.O()) {
            ComposerKt.Y();
        }
        ScopeUpdateScope scopeUpdateScopeU = composerS.u();
        if (scopeUpdateScopeU == null) {
            return;
        }
        scopeUpdateScopeU.a(new C0088a(obj, str, eVar, modifier2, lVarA, lVar3, alignmentE, contentScaleB, f6, colorFilter2, iB, i11, i12, i13));
    }

    static final class c implements MeasurePolicy {
        public static final c INSTANCE = new c();

        /* JADX INFO: renamed from: coil.compose.a$c$a, reason: collision with other inner class name */
        static final class C0089a extends v implements l<Placeable.PlacementScope, l0> {
            public static final C0089a INSTANCE = new C0089a();

            C0089a() {
                super(1);
            }

            public final void a(@NotNull Placeable.PlacementScope placementScope) {
            }

            @Override // e8.l
            public /* bridge */ /* synthetic */ l0 invoke(Placeable.PlacementScope placementScope) {
                a(placementScope);
                return l0.INSTANCE;
            }
        }

        c() {
        }

        @Override // androidx.compose.ui.layout.MeasurePolicy
        public /* synthetic */ int b(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i10) {
            return androidx.compose.ui.layout.c.c(this, intrinsicMeasureScope, list, i10);
        }

        @Override // androidx.compose.ui.layout.MeasurePolicy
        public /* synthetic */ int c(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i10) {
            return androidx.compose.ui.layout.c.d(this, intrinsicMeasureScope, list, i10);
        }

        @Override // androidx.compose.ui.layout.MeasurePolicy
        public /* synthetic */ int d(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i10) {
            return androidx.compose.ui.layout.c.a(this, intrinsicMeasureScope, list, i10);
        }

        @Override // androidx.compose.ui.layout.MeasurePolicy
        public /* synthetic */ int e(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i10) {
            return androidx.compose.ui.layout.c.b(this, intrinsicMeasureScope, list, i10);
        }

        @Override // androidx.compose.ui.layout.MeasurePolicy
        @NotNull
        public final MeasureResult a(@NotNull MeasureScope measureScope, @NotNull List<? extends Measurable> list, long j6) {
            return MeasureScope.CC.b(measureScope, Constraints.p(j6), Constraints.o(j6), null, C0089a.INSTANCE, 4, null);
        }
    }

    @Stable
    private static final Modifier d(Modifier modifier, String str) {
        return str != null ? SemanticsModifierKt.c(modifier, false, new e(str), 1, null) : modifier;
    }

    @ComposableTarget
    @Composable
    public static final void b(@NotNull Modifier modifier, @NotNull Painter painter, @Nullable String str, @NotNull Alignment alignment, @NotNull ContentScale contentScale, float f, @Nullable ColorFilter colorFilter, @Nullable Composer composer, int i10) {
        Composer composerS = composer.s(10290533);
        if (ComposerKt.O()) {
            ComposerKt.Z(10290533, i10, -1, "coil.compose.Content (AsyncImage.kt:154)");
        }
        Modifier modifierB = ClipKt.b(d(modifier, str)).B(new coil.compose.e(painter, alignment, contentScale, f, colorFilter));
        c cVar = c.INSTANCE;
        composerS.G(544976794);
        Density density = (Density) composerS.x(CompositionLocalsKt.e());
        LayoutDirection layoutDirection = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
        ViewConfiguration viewConfiguration = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
        Modifier modifierE = ComposedModifierKt.e(composerS, modifierB);
        ComposeUiNode.Companion companion = ComposeUiNode.Companion;
        e8.a<ComposeUiNode> aVarA = companion.a();
        composerS.G(1405779621);
        if (!(composerS.t() instanceof Applier)) {
            ComposablesKt.c();
        }
        composerS.e();
        if (composerS.r()) {
            composerS.w(new b(aVarA));
        } else {
            composerS.c();
        }
        composerS.L();
        Composer composerA = Updater.a(composerS);
        Updater.e(composerA, cVar, companion.d());
        Updater.e(composerA, density, companion.b());
        Updater.e(composerA, layoutDirection, companion.c());
        Updater.e(composerA, viewConfiguration, companion.f());
        Updater.e(composerA, modifierE, companion.e());
        composerS.o();
        composerS.d();
        composerS.Q();
        composerS.Q();
        if (ComposerKt.O()) {
            ComposerKt.Y();
        }
        ScopeUpdateScope scopeUpdateScopeU = composerS.u();
        if (scopeUpdateScopeU != null) {
            scopeUpdateScopeU.a(new d(modifier, painter, str, alignment, contentScale, f, colorFilter, i10));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Stable
    public static final coil.size.i e(long j6) {
        coil.size.c cVarA;
        coil.size.c cVarA2;
        if (Constraints.r(j6)) {
            return null;
        }
        if (Constraints.j(j6)) {
            cVarA = coil.size.a.a(Constraints.n(j6));
        } else {
            cVarA = coil.size.c.b.INSTANCE;
        }
        if (Constraints.i(j6)) {
            cVarA2 = coil.size.a.a(Constraints.m(j6));
        } else {
            cVarA2 = coil.size.c.b.INSTANCE;
        }
        return new coil.size.i(cVarA, cVarA2);
    }

    @Composable
    @NotNull
    public static final coil.request.h f(@NotNull coil.request.h hVar, @NotNull ContentScale contentScale, @Nullable Composer composer, int i10) {
        coil.size.j jVarA;
        composer.G(402368983);
        if (ComposerKt.O()) {
            ComposerKt.Z(402368983, i10, -1, "coil.compose.updateRequest (AsyncImage.kt:181)");
        }
        if (hVar.q().m() == null) {
            if (t.e(contentScale, ContentScale.Companion.d())) {
                jVarA = k.a(coil.size.i.ORIGINAL);
            } else {
                composer.G(-492369756);
                Object objH = composer.H();
                if (objH == Composer.Companion.a()) {
                    objH = new coil.compose.d();
                    composer.z(objH);
                }
                composer.Q();
                jVarA = (coil.size.j) objH;
            }
            hVar = coil.request.h.R(hVar, null, 1, null).k(jVarA).a();
        }
        if (ComposerKt.O()) {
            ComposerKt.Y();
        }
        composer.Q();
        return hVar;
    }
}
