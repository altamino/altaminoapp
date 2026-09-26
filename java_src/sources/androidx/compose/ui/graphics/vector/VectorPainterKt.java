package androidx.compose.ui.graphics.vector;

import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposableOpenTarget;
import androidx.compose.runtime.ComposableTarget;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.geometry.SizeKt;
import androidx.compose.ui.graphics.BlendMode;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorFilter;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.unit.Density;
import e8.r;
import java.util.List;
import java.util.Map;
import kotlin.collections.s0;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
public final class VectorPainterKt {

    @NotNull
    public static final String RootGroupName = "VectorRootGroup";

    /* JADX WARN: Code duplicated, block: B:35:0x0071  */
    /* JADX WARN: Code duplicated, block: B:37:0x007b  */
    /* JADX WARN: Code duplicated, block: B:39:0x0091  */
    /* JADX WARN: Code duplicated, block: B:42:0x0168  */
    /* JADX WARN: Code duplicated, block: B:44:0x016e  */
    /* JADX WARN: Code duplicated, block: B:46:0x0185  */
    /* JADX WARN: Code duplicated, block: B:49:0x024a  */
    @ComposableTarget
    @Composable
    public static final void a(@NotNull VectorGroup group, @Nullable Map<String, ? extends VectorConfig> map, @Nullable Composer composer, int i10, int i11) {
        int i12;
        Map<String, ? extends VectorConfig> mapH;
        Map<String, ? extends VectorConfig> map2;
        Map<String, ? extends VectorConfig> map3;
        Map<String, ? extends VectorConfig> map4;
        VectorConfig vectorConfig;
        VectorConfig vectorConfig2;
        t.j(group, "group");
        Composer composerS = composer.s(-446179233);
        if ((i11 & 1) != 0) {
            i12 = i10 | 6;
        } else if ((i10 & 14) == 0) {
            i12 = (composerS.k(group) ? 4 : 2) | i10;
        } else {
            i12 = i10;
        }
        int i13 = i11 & 2;
        if (i13 != 0) {
            i12 |= 16;
        }
        if (i13 == 2 && (i12 & 91) == 18 && composerS.b()) {
            composerS.g();
            map2 = map;
        } else {
            composerS.J();
            if ((i10 & 1) == 0 || composerS.h()) {
                if (i13 != 0) {
                    mapH = s0.h();
                }
                composerS.A();
                for (VectorNode vectorNode : group) {
                    if (vectorNode instanceof VectorPath) {
                        composerS.G(-326285835);
                        VectorPath vectorPath = (VectorPath) vectorNode;
                        vectorConfig2 = mapH.get(vectorPath.f());
                        if (vectorConfig2 == null) {
                            vectorConfig2 = new VectorConfig() { // from class: androidx.compose.ui.graphics.vector.VectorPainterKt$RenderVectorGroup$config$1
                                @Override // androidx.compose.ui.graphics.vector.VectorConfig
                                public /* synthetic */ Object a(VectorProperty vectorProperty, Object obj) {
                                    return a.a(this, vectorProperty, obj);
                                }
                            };
                        }
                        VectorConfig vectorConfig3 = vectorConfig2;
                        VectorComposeKt.b((List) vectorConfig3.a(VectorProperty.PathData.INSTANCE, vectorPath.g()), vectorPath.j(), vectorPath.f(), (Brush) vectorConfig3.a(VectorProperty.Fill.INSTANCE, vectorPath.c()), ((Number) vectorConfig3.a(VectorProperty.FillAlpha.INSTANCE, Float.valueOf(vectorPath.e()))).floatValue(), (Brush) vectorConfig3.a(VectorProperty.Stroke.INSTANCE, vectorPath.m()), ((Number) vectorConfig3.a(VectorProperty.StrokeAlpha.INSTANCE, Float.valueOf(vectorPath.p()))).floatValue(), ((Number) vectorConfig3.a(VectorProperty.StrokeLineWidth.INSTANCE, Float.valueOf(vectorPath.t()))).floatValue(), vectorPath.q(), vectorPath.r(), vectorPath.s(), ((Number) vectorConfig3.a(VectorProperty.TrimPathStart.INSTANCE, Float.valueOf(vectorPath.w()))).floatValue(), ((Number) vectorConfig3.a(VectorProperty.TrimPathEnd.INSTANCE, Float.valueOf(vectorPath.u()))).floatValue(), ((Number) vectorConfig3.a(VectorProperty.TrimPathOffset.INSTANCE, Float.valueOf(vectorPath.v()))).floatValue(), composerS, 8, 0, 0);
                        composerS.Q();
                        mapH = mapH;
                    } else {
                        map3 = mapH;
                        if (vectorNode instanceof VectorGroup) {
                            composerS.G(-326283977);
                            VectorGroup vectorGroup = (VectorGroup) vectorNode;
                            map4 = map3;
                            vectorConfig = map4.get(vectorGroup.e());
                            if (vectorConfig == null) {
                                vectorConfig = new VectorConfig() { // from class: androidx.compose.ui.graphics.vector.VectorPainterKt$RenderVectorGroup$config$2
                                    @Override // androidx.compose.ui.graphics.vector.VectorConfig
                                    public /* synthetic */ Object a(VectorProperty vectorProperty, Object obj) {
                                        return a.a(this, vectorProperty, obj);
                                    }
                                };
                            }
                            VectorComposeKt.a(vectorGroup.e(), ((Number) vectorConfig.a(VectorProperty.Rotation.INSTANCE, Float.valueOf(vectorGroup.j()))).floatValue(), ((Number) vectorConfig.a(VectorProperty.PivotX.INSTANCE, Float.valueOf(vectorGroup.f()))).floatValue(), ((Number) vectorConfig.a(VectorProperty.PivotY.INSTANCE, Float.valueOf(vectorGroup.g()))).floatValue(), ((Number) vectorConfig.a(VectorProperty.ScaleX.INSTANCE, Float.valueOf(vectorGroup.m()))).floatValue(), ((Number) vectorConfig.a(VectorProperty.ScaleY.INSTANCE, Float.valueOf(vectorGroup.p()))).floatValue(), ((Number) vectorConfig.a(VectorProperty.TranslateX.INSTANCE, Float.valueOf(vectorGroup.q()))).floatValue(), ((Number) vectorConfig.a(VectorProperty.TranslateY.INSTANCE, Float.valueOf(vectorGroup.r()))).floatValue(), (List) vectorConfig.a(VectorProperty.PathData.INSTANCE, vectorGroup.c()), ComposableLambdaKt.b(composerS, 1450046638, true, new VectorPainterKt$RenderVectorGroup$1(vectorNode, map4)), composerS, 939524096, 0);
                            composerS.Q();
                        } else {
                            map4 = map3;
                            composerS.G(-326282507);
                            composerS.Q();
                        }
                        mapH = map4;
                    }
                }
                map2 = mapH;
            } else {
                composerS.g();
            }
            mapH = map;
            composerS.A();
            while (r22.hasNext()) {
                if (vectorNode instanceof VectorPath) {
                    composerS.G(-326285835);
                    VectorPath vectorPath2 = (VectorPath) vectorNode;
                    vectorConfig2 = mapH.get(vectorPath2.f());
                    if (vectorConfig2 == null) {
                        vectorConfig2 = new VectorConfig() { // from class: androidx.compose.ui.graphics.vector.VectorPainterKt$RenderVectorGroup$config$1
                            @Override // androidx.compose.ui.graphics.vector.VectorConfig
                            public /* synthetic */ Object a(VectorProperty vectorProperty, Object obj) {
                                return a.a(this, vectorProperty, obj);
                            }
                        };
                    }
                    VectorConfig vectorConfig4 = vectorConfig2;
                    VectorComposeKt.b((List) vectorConfig4.a(VectorProperty.PathData.INSTANCE, vectorPath2.g()), vectorPath2.j(), vectorPath2.f(), (Brush) vectorConfig4.a(VectorProperty.Fill.INSTANCE, vectorPath2.c()), ((Number) vectorConfig4.a(VectorProperty.FillAlpha.INSTANCE, Float.valueOf(vectorPath2.e()))).floatValue(), (Brush) vectorConfig4.a(VectorProperty.Stroke.INSTANCE, vectorPath2.m()), ((Number) vectorConfig4.a(VectorProperty.StrokeAlpha.INSTANCE, Float.valueOf(vectorPath2.p()))).floatValue(), ((Number) vectorConfig4.a(VectorProperty.StrokeLineWidth.INSTANCE, Float.valueOf(vectorPath2.t()))).floatValue(), vectorPath2.q(), vectorPath2.r(), vectorPath2.s(), ((Number) vectorConfig4.a(VectorProperty.TrimPathStart.INSTANCE, Float.valueOf(vectorPath2.w()))).floatValue(), ((Number) vectorConfig4.a(VectorProperty.TrimPathEnd.INSTANCE, Float.valueOf(vectorPath2.u()))).floatValue(), ((Number) vectorConfig4.a(VectorProperty.TrimPathOffset.INSTANCE, Float.valueOf(vectorPath2.v()))).floatValue(), composerS, 8, 0, 0);
                    composerS.Q();
                    mapH = mapH;
                } else {
                    map3 = mapH;
                    if (vectorNode instanceof VectorGroup) {
                        composerS.G(-326283977);
                        VectorGroup vectorGroup2 = (VectorGroup) vectorNode;
                        map4 = map3;
                        vectorConfig = map4.get(vectorGroup2.e());
                        if (vectorConfig == null) {
                            vectorConfig = new VectorConfig() { // from class: androidx.compose.ui.graphics.vector.VectorPainterKt$RenderVectorGroup$config$2
                                @Override // androidx.compose.ui.graphics.vector.VectorConfig
                                public /* synthetic */ Object a(VectorProperty vectorProperty, Object obj) {
                                    return a.a(this, vectorProperty, obj);
                                }
                            };
                        }
                        VectorComposeKt.a(vectorGroup2.e(), ((Number) vectorConfig.a(VectorProperty.Rotation.INSTANCE, Float.valueOf(vectorGroup2.j()))).floatValue(), ((Number) vectorConfig.a(VectorProperty.PivotX.INSTANCE, Float.valueOf(vectorGroup2.f()))).floatValue(), ((Number) vectorConfig.a(VectorProperty.PivotY.INSTANCE, Float.valueOf(vectorGroup2.g()))).floatValue(), ((Number) vectorConfig.a(VectorProperty.ScaleX.INSTANCE, Float.valueOf(vectorGroup2.m()))).floatValue(), ((Number) vectorConfig.a(VectorProperty.ScaleY.INSTANCE, Float.valueOf(vectorGroup2.p()))).floatValue(), ((Number) vectorConfig.a(VectorProperty.TranslateX.INSTANCE, Float.valueOf(vectorGroup2.q()))).floatValue(), ((Number) vectorConfig.a(VectorProperty.TranslateY.INSTANCE, Float.valueOf(vectorGroup2.r()))).floatValue(), (List) vectorConfig.a(VectorProperty.PathData.INSTANCE, vectorGroup2.c()), ComposableLambdaKt.b(composerS, 1450046638, true, new VectorPainterKt$RenderVectorGroup$1(vectorNode, map4)), composerS, 939524096, 0);
                        composerS.Q();
                    } else {
                        map4 = map3;
                        composerS.G(-326282507);
                        composerS.Q();
                    }
                    mapH = map4;
                }
            }
            map2 = mapH;
        }
        ScopeUpdateScope scopeUpdateScopeU = composerS.u();
        if (scopeUpdateScopeU == null) {
            return;
        }
        scopeUpdateScopeU.a(new VectorPainterKt$RenderVectorGroup$2(group, map2, i10, i11));
    }

    @Composable
    @NotNull
    public static final VectorPainter b(@NotNull ImageVector image, @Nullable Composer composer, int i10) {
        t.j(image, "image");
        composer.G(1413834416);
        VectorPainter vectorPainterC = c(image.c(), image.b(), image.i(), image.h(), image.d(), image.g(), image.f(), image.a(), ComposableLambdaKt.b(composer, 1873274766, true, new VectorPainterKt$rememberVectorPainter$3(image)), composer, 100663296, 0);
        composer.Q();
        return vectorPainterC;
    }

    @Composable
    @ComposableOpenTarget
    @NotNull
    public static final VectorPainter c(float f, float f6, float f7, float f10, @Nullable String str, long j6, int i10, boolean z6, @NotNull r<? super Float, ? super Float, ? super Composer, ? super Integer, l0> content, @Nullable Composer composer, int i11, int i12) {
        t.j(content, "content");
        composer.G(1068590786);
        float f11 = (i12 & 4) != 0 ? Float.NaN : f7;
        float f12 = (i12 & 8) == 0 ? f10 : Float.NaN;
        String str2 = (i12 & 16) != 0 ? RootGroupName : str;
        long jF = (i12 & 32) != 0 ? Color.Companion.f() : j6;
        int iZ = (i12 & 64) != 0 ? BlendMode.Companion.z() : i10;
        boolean z10 = (i12 & 128) != 0 ? false : z6;
        Density density = (Density) composer.x(CompositionLocalsKt.e());
        float fH0 = density.H0(f);
        float fH1 = density.H0(f6);
        if (Float.isNaN(f11)) {
            f11 = fH0;
        }
        if (Float.isNaN(f12)) {
            f12 = fH1;
        }
        Color colorH = Color.h(jF);
        BlendMode blendModeD = BlendMode.D(iZ);
        int i13 = i11 >> 15;
        composer.G(511388516);
        boolean zK = composer.k(colorH) | composer.k(blendModeD);
        Object objH = composer.H();
        if (zK || objH == Composer.Companion.a()) {
            objH = !Color.n(jF, Color.Companion.f()) ? ColorFilter.Companion.a(jF, iZ) : null;
            composer.z(objH);
        }
        composer.Q();
        ColorFilter colorFilter = (ColorFilter) objH;
        composer.G(-492369756);
        Object objH2 = composer.H();
        if (objH2 == Composer.Companion.a()) {
            objH2 = new VectorPainter();
            composer.z(objH2);
        }
        composer.Q();
        VectorPainter vectorPainter = (VectorPainter) objH2;
        vectorPainter.x(SizeKt.a(fH0, fH1));
        vectorPainter.u(z10);
        vectorPainter.w(colorFilter);
        vectorPainter.n(str2, f11, f12, content, composer, ((i11 >> 12) & 14) | 32768 | (i13 & 7168));
        composer.Q();
        return vectorPainter;
    }
}
