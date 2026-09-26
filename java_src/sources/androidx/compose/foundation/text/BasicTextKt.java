package androidx.compose.foundation.text;

import androidx.compose.foundation.text.selection.SelectionRegistrar;
import androidx.compose.foundation.text.selection.SelectionRegistrarKt;
import androidx.compose.foundation.text.selection.TextSelectionColors;
import androidx.compose.foundation.text.selection.TextSelectionColorsKt;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposableTarget;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.SkippableUpdater;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.runtime.saveable.RememberSaveableKt;
import androidx.compose.runtime.saveable.Saver;
import androidx.compose.runtime.saveable.SaverKt;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.LayoutKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.platform.ViewConfiguration;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.Placeholder;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.style.TextOverflow;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.profileinstaller.ProfileVerifier;
import e8.a;
import e8.l;
import e8.p;
import e8.q;
import java.util.List;
import java.util.Map;
import kotlin.collections.s0;
import kotlin.jvm.internal.t;
import org.apache.commons.compress.archivers.cpio.CpioConstants;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.u;

/* JADX INFO: loaded from: classes3.dex */
public final class BasicTextKt {
    /* JADX WARN: Code duplicated, block: B:101:0x0135  */
    /* JADX WARN: Code duplicated, block: B:103:0x013e  */
    /* JADX WARN: Code duplicated, block: B:105:0x0143  */
    /* JADX WARN: Code duplicated, block: B:107:0x014c  */
    /* JADX WARN: Code duplicated, block: B:108:0x014e  */
    /* JADX WARN: Code duplicated, block: B:110:0x0152  */
    /* JADX WARN: Code duplicated, block: B:111:0x0156  */
    /* JADX WARN: Code duplicated, block: B:113:0x015a  */
    /* JADX WARN: Code duplicated, block: B:115:0x016e  */
    /* JADX WARN: Code duplicated, block: B:118:0x017f  */
    /* JADX WARN: Code duplicated, block: B:120:0x0207  */
    /* JADX WARN: Code duplicated, block: B:121:0x0249  */
    /* JADX WARN: Code duplicated, block: B:124:0x0264  */
    /* JADX WARN: Code duplicated, block: B:125:0x0280  */
    /* JADX WARN: Code duplicated, block: B:128:0x0294  */
    /* JADX WARN: Code duplicated, block: B:129:0x029b  */
    /* JADX WARN: Code duplicated, block: B:132:0x02ee  */
    /* JADX WARN: Code duplicated, block: B:135:0x02fa  */
    /* JADX WARN: Code duplicated, block: B:136:0x02fe  */
    /* JADX WARN: Code duplicated, block: B:141:0x035e  */
    /* JADX WARN: Code duplicated, block: B:143:0x036e  */
    /* JADX WARN: Code duplicated, block: B:145:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:26:0x004a  */
    /* JADX WARN: Code duplicated, block: B:28:0x004f  */
    /* JADX WARN: Code duplicated, block: B:30:0x0053  */
    /* JADX WARN: Code duplicated, block: B:32:0x005b  */
    /* JADX WARN: Code duplicated, block: B:33:0x005e  */
    /* JADX WARN: Code duplicated, block: B:37:0x0065  */
    /* JADX WARN: Code duplicated, block: B:39:0x006a  */
    /* JADX WARN: Code duplicated, block: B:41:0x006e  */
    /* JADX WARN: Code duplicated, block: B:43:0x0076  */
    /* JADX WARN: Code duplicated, block: B:44:0x0079  */
    /* JADX WARN: Code duplicated, block: B:48:0x0080  */
    /* JADX WARN: Code duplicated, block: B:50:0x0085  */
    /* JADX WARN: Code duplicated, block: B:52:0x008b  */
    /* JADX WARN: Code duplicated, block: B:54:0x0093  */
    /* JADX WARN: Code duplicated, block: B:55:0x0096  */
    /* JADX WARN: Code duplicated, block: B:59:0x009d  */
    /* JADX WARN: Code duplicated, block: B:60:0x00a4  */
    /* JADX WARN: Code duplicated, block: B:62:0x00ac  */
    /* JADX WARN: Code duplicated, block: B:64:0x00b2  */
    /* JADX WARN: Code duplicated, block: B:65:0x00b5  */
    /* JADX WARN: Code duplicated, block: B:69:0x00bd  */
    /* JADX WARN: Code duplicated, block: B:70:0x00c4  */
    /* JADX WARN: Code duplicated, block: B:72:0x00cc  */
    /* JADX WARN: Code duplicated, block: B:74:0x00d2  */
    /* JADX WARN: Code duplicated, block: B:75:0x00d5  */
    /* JADX WARN: Code duplicated, block: B:79:0x00dd  */
    /* JADX WARN: Code duplicated, block: B:82:0x00e5  */
    /* JADX WARN: Code duplicated, block: B:88:0x0105  */
    /* JADX WARN: Code duplicated, block: B:90:0x010d  */
    /* JADX WARN: Code duplicated, block: B:97:0x012c A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:98:0x012e  */
    /* JADX WARN: Code duplicated, block: B:99:0x0131  */
    @ComposableTarget
    @Composable
    public static final void a(@NotNull AnnotatedString text, @Nullable Modifier modifier, @Nullable TextStyle textStyle, @Nullable l<? super TextLayoutResult, l0> lVar, int i10, boolean z6, int i11, @Nullable Map<String, InlineTextContent> map, @Nullable Composer composer, int i12, int i13) {
        int i14;
        int i15;
        TextStyle textStyleA;
        int i16;
        int i17;
        l<? super TextLayoutResult, l0> lVar2;
        int i18;
        int i19;
        int iA;
        int i20;
        int i21;
        int i22;
        int i23;
        int i24;
        int i25;
        Modifier modifier2;
        boolean z10;
        int i26;
        int i27;
        Map<String, InlineTextContent> mapH;
        Modifier modifier3;
        Density density;
        FontFamily.Resolver resolver;
        List<AnnotatedString.Range<Placeholder>> listA;
        List<AnnotatedString.Range<q<String, Composer, Integer, l0>>> listB;
        long jLongValue;
        Object objH;
        TextController textController;
        TextState textStateK;
        p<Composer, Integer, l0> pVarB;
        a<ComposeUiNode> aVarA;
        l<? super TextLayoutResult, l0> lVar3;
        Modifier modifier4;
        TextStyle textStyle2;
        int i28;
        boolean z11;
        int i29;
        Map<String, InlineTextContent> map2;
        ScopeUpdateScope scopeUpdateScopeU;
        t.j(text, "text");
        Composer composerS = composer.s(-648605928);
        if ((i13 & 1) != 0) {
            i14 = i12 | 6;
        } else if ((i12 & 14) == 0) {
            i14 = (composerS.k(text) ? 4 : 2) | i12;
        } else {
            i14 = i12;
        }
        int i30 = i13 & 2;
        if (i30 == 0) {
            if ((i12 & 112) == 0) {
                i14 |= composerS.k(modifier) ? 32 : 16;
            }
            i15 = i13 & 4;
            if (i15 != 0) {
                if ((i12 & 896) == 0) {
                    textStyleA = textStyle;
                    if (composerS.k(textStyleA)) {
                        i16 = 256;
                    } else {
                        i16 = 128;
                    }
                    i14 |= i16;
                }
                i17 = i13 & 8;
                if (i17 != 0) {
                    if ((i12 & 7168) == 0) {
                        lVar2 = lVar;
                        if (composerS.k(lVar2)) {
                            i18 = 2048;
                        } else {
                            i18 = 1024;
                        }
                        i14 |= i18;
                    }
                    i19 = i13 & 16;
                    if (i19 != 0) {
                        if ((57344 & i12) == 0) {
                            iA = i10;
                            if (composerS.p(iA)) {
                                i20 = 16384;
                            } else {
                                i20 = 8192;
                            }
                            i14 |= i20;
                        }
                        i21 = i13 & 32;
                        if (i21 != 0) {
                            i14 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                        } else if ((i12 & 458752) == 0) {
                            if (composerS.m(z6)) {
                                i22 = 131072;
                            } else {
                                i22 = 65536;
                            }
                            i14 |= i22;
                        }
                        i23 = i13 & 64;
                        if (i23 != 0) {
                            i14 |= 1572864;
                        } else if ((i12 & 3670016) == 0) {
                            if (composerS.p(i11)) {
                                i24 = 1048576;
                            } else {
                                i24 = 524288;
                            }
                            i14 |= i24;
                        }
                        i25 = i13 & 128;
                        if (i25 != 0) {
                            i14 |= 4194304;
                        }
                        if (i25 != 128 && (23967451 & i14) == 4793490 && composerS.b()) {
                            composerS.g();
                            modifier4 = modifier;
                            i29 = i11;
                            textStyle2 = textStyleA;
                            lVar3 = lVar2;
                            i28 = iA;
                            z11 = z6;
                            map2 = map;
                        } else {
                            composerS.J();
                            if ((i12 & 1) != 0 || composerS.h()) {
                                if (i30 != 0) {
                                    modifier2 = Modifier.Companion;
                                } else {
                                    modifier2 = modifier;
                                }
                                if (i15 != 0) {
                                    textStyleA = TextStyle.Companion.a();
                                }
                                if (i17 != 0) {
                                    lVar2 = BasicTextKt$BasicText$4.INSTANCE;
                                }
                                if (i19 != 0) {
                                    iA = TextOverflow.Companion.a();
                                }
                                if (i21 != 0) {
                                    z10 = true;
                                } else {
                                    z10 = z6;
                                }
                                if (i23 != 0) {
                                    i26 = Integer.MAX_VALUE;
                                } else {
                                    i26 = i11;
                                }
                                if (i25 != 0) {
                                    i27 = i14 & (-29360129);
                                    mapH = s0.h();
                                } else {
                                    i27 = i14;
                                    mapH = map;
                                }
                                modifier3 = modifier2;
                            } else {
                                composerS.g();
                                if (i25 != 0) {
                                    i14 &= -29360129;
                                }
                                z10 = z6;
                                i26 = i11;
                                i27 = i14;
                                textStyleA = textStyleA;
                                lVar2 = lVar2;
                                iA = iA;
                                modifier3 = modifier;
                                mapH = map;
                            }
                            composerS.A();
                            if (i26 <= 0) {
                                throw new IllegalArgumentException("maxLines should be greater than 0".toString());
                            }
                            SelectionRegistrar selectionRegistrar = (SelectionRegistrar) composerS.x(SelectionRegistrarKt.a());
                            density = (Density) composerS.x(CompositionLocalsKt.e());
                            resolver = (FontFamily.Resolver) composerS.x(CompositionLocalsKt.g());
                            long jA = ((TextSelectionColors) composerS.x(TextSelectionColorsKt.b())).a();
                            u<List<AnnotatedString.Range<Placeholder>>, List<AnnotatedString.Range<q<String, Composer, Integer, l0>>>> uVarB = CoreTextKt.b(text, mapH);
                            listA = uVarB.a();
                            listB = uVarB.b();
                            jLongValue = ((Number) RememberSaveableKt.b(new Object[]{text, selectionRegistrar}, c(selectionRegistrar), null, new BasicTextKt$BasicText$selectableId$2(selectionRegistrar), composerS, 72, 4)).longValue();
                            composerS.G(-492369756);
                            objH = composerS.H();
                            if (objH == Composer.Companion.a()) {
                                TextController textController2 = new TextController(new TextState(new TextDelegate(text, textStyleA, i26, z10, iA, density, resolver, listA, null), jLongValue));
                                composerS.z(textController2);
                                objH = textController2;
                            }
                            composerS.Q();
                            textController = (TextController) objH;
                            textStateK = textController.k();
                            if (!composerS.r()) {
                                textController.n(CoreTextKt.c(textStateK.i(), text, textStyleA, density, resolver, z10, iA, i26, listA));
                            }
                            textStateK.m(lVar2);
                            textStateK.p(jA);
                            textController.o(selectionRegistrar);
                            if (listB.isEmpty()) {
                                pVarB = ComposableSingletons$BasicTextKt.INSTANCE.a();
                            } else {
                                pVarB = ComposableLambdaKt.b(composerS, 1892283635, true, new BasicTextKt$BasicText$6(text, listB, i27));
                            }
                            Modifier modifierB = modifier3.B(textController.j());
                            MeasurePolicy measurePolicyI = textController.i();
                            composerS.G(-1323940314);
                            Density density2 = (Density) composerS.x(CompositionLocalsKt.e());
                            LayoutDirection layoutDirection = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                            ViewConfiguration viewConfiguration = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                            ComposeUiNode.Companion companion = ComposeUiNode.Companion;
                            aVarA = companion.a();
                            q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC = LayoutKt.c(modifierB);
                            if (!(composerS.t() instanceof Applier)) {
                                ComposablesKt.c();
                            }
                            composerS.e();
                            if (composerS.r()) {
                                composerS.w(aVarA);
                            } else {
                                composerS.c();
                            }
                            composerS.L();
                            Composer composerA = Updater.a(composerS);
                            Updater.e(composerA, measurePolicyI, companion.d());
                            Updater.e(composerA, density2, companion.b());
                            Updater.e(composerA, layoutDirection, companion.c());
                            Updater.e(composerA, viewConfiguration, companion.f());
                            composerS.o();
                            qVarC.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                            composerS.G(2058660585);
                            pVarB.invoke(composerS, 0);
                            composerS.Q();
                            composerS.d();
                            composerS.Q();
                            lVar3 = lVar2;
                            modifier4 = modifier3;
                            textStyle2 = textStyleA;
                            i28 = iA;
                            z11 = z10;
                            i29 = i26;
                            map2 = mapH;
                        }
                        scopeUpdateScopeU = composerS.u();
                        if (scopeUpdateScopeU == null) {
                            return;
                        }
                        scopeUpdateScopeU.a(new BasicTextKt$BasicText$7(text, modifier4, textStyle2, lVar3, i28, z11, i29, map2, i12, i13));
                    }
                    i14 |= CpioConstants.C_ISBLK;
                    iA = i10;
                    i21 = i13 & 32;
                    if (i21 != 0) {
                        i14 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                    } else if ((i12 & 458752) == 0) {
                        if (composerS.m(z6)) {
                            i22 = 131072;
                        } else {
                            i22 = 65536;
                        }
                        i14 |= i22;
                    }
                    i23 = i13 & 64;
                    if (i23 != 0) {
                        i14 |= 1572864;
                    } else if ((i12 & 3670016) == 0) {
                        if (composerS.p(i11)) {
                            i24 = 1048576;
                        } else {
                            i24 = 524288;
                        }
                        i14 |= i24;
                    }
                    i25 = i13 & 128;
                    if (i25 != 0) {
                        i14 |= 4194304;
                    }
                    if (i25 != 128) {
                        composerS.J();
                        if ((i12 & 1) != 0) {
                            if (i30 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i15 != 0) {
                                textStyleA = TextStyle.Companion.a();
                            }
                            if (i17 != 0) {
                                lVar2 = BasicTextKt$BasicText$4.INSTANCE;
                            }
                            if (i19 != 0) {
                                iA = TextOverflow.Companion.a();
                            }
                            if (i21 != 0) {
                                z10 = true;
                            } else {
                                z10 = z6;
                            }
                            if (i23 != 0) {
                                i26 = Integer.MAX_VALUE;
                            } else {
                                i26 = i11;
                            }
                            if (i25 != 0) {
                                i27 = i14 & (-29360129);
                                mapH = s0.h();
                            } else {
                                i27 = i14;
                                mapH = map;
                            }
                            modifier3 = modifier2;
                        } else {
                            if (i30 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i15 != 0) {
                                textStyleA = TextStyle.Companion.a();
                            }
                            if (i17 != 0) {
                                lVar2 = BasicTextKt$BasicText$4.INSTANCE;
                            }
                            if (i19 != 0) {
                                iA = TextOverflow.Companion.a();
                            }
                            if (i21 != 0) {
                                z10 = true;
                            } else {
                                z10 = z6;
                            }
                            if (i23 != 0) {
                                i26 = Integer.MAX_VALUE;
                            } else {
                                i26 = i11;
                            }
                            if (i25 != 0) {
                                i27 = i14 & (-29360129);
                                mapH = s0.h();
                            } else {
                                i27 = i14;
                                mapH = map;
                            }
                            modifier3 = modifier2;
                        }
                        composerS.A();
                        if (i26 <= 0) {
                            throw new IllegalArgumentException("maxLines should be greater than 0".toString());
                        }
                        SelectionRegistrar selectionRegistrar2 = (SelectionRegistrar) composerS.x(SelectionRegistrarKt.a());
                        density = (Density) composerS.x(CompositionLocalsKt.e());
                        resolver = (FontFamily.Resolver) composerS.x(CompositionLocalsKt.g());
                        long jA2 = ((TextSelectionColors) composerS.x(TextSelectionColorsKt.b())).a();
                        u<List<AnnotatedString.Range<Placeholder>>, List<AnnotatedString.Range<q<String, Composer, Integer, l0>>>> uVarB2 = CoreTextKt.b(text, mapH);
                        listA = uVarB2.a();
                        listB = uVarB2.b();
                        jLongValue = ((Number) RememberSaveableKt.b(new Object[]{text, selectionRegistrar2}, c(selectionRegistrar2), null, new BasicTextKt$BasicText$selectableId$2(selectionRegistrar2), composerS, 72, 4)).longValue();
                        composerS.G(-492369756);
                        objH = composerS.H();
                        if (objH == Composer.Companion.a()) {
                            TextController textController3 = new TextController(new TextState(new TextDelegate(text, textStyleA, i26, z10, iA, density, resolver, listA, null), jLongValue));
                            composerS.z(textController3);
                            objH = textController3;
                        }
                        composerS.Q();
                        textController = (TextController) objH;
                        textStateK = textController.k();
                        if (!composerS.r()) {
                            textController.n(CoreTextKt.c(textStateK.i(), text, textStyleA, density, resolver, z10, iA, i26, listA));
                        }
                        textStateK.m(lVar2);
                        textStateK.p(jA2);
                        textController.o(selectionRegistrar2);
                        if (listB.isEmpty()) {
                            pVarB = ComposableSingletons$BasicTextKt.INSTANCE.a();
                        } else {
                            pVarB = ComposableLambdaKt.b(composerS, 1892283635, true, new BasicTextKt$BasicText$6(text, listB, i27));
                        }
                        Modifier modifierB2 = modifier3.B(textController.j());
                        MeasurePolicy measurePolicyI2 = textController.i();
                        composerS.G(-1323940314);
                        Density density3 = (Density) composerS.x(CompositionLocalsKt.e());
                        LayoutDirection layoutDirection2 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                        ViewConfiguration viewConfiguration2 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                        ComposeUiNode.Companion companion2 = ComposeUiNode.Companion;
                        aVarA = companion2.a();
                        q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC2 = LayoutKt.c(modifierB2);
                        if (!(composerS.t() instanceof Applier)) {
                            ComposablesKt.c();
                        }
                        composerS.e();
                        if (composerS.r()) {
                            composerS.w(aVarA);
                        } else {
                            composerS.c();
                        }
                        composerS.L();
                        Composer composerA2 = Updater.a(composerS);
                        Updater.e(composerA2, measurePolicyI2, companion2.d());
                        Updater.e(composerA2, density3, companion2.b());
                        Updater.e(composerA2, layoutDirection2, companion2.c());
                        Updater.e(composerA2, viewConfiguration2, companion2.f());
                        composerS.o();
                        qVarC2.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                        composerS.G(2058660585);
                        pVarB.invoke(composerS, 0);
                        composerS.Q();
                        composerS.d();
                        composerS.Q();
                        lVar3 = lVar2;
                        modifier4 = modifier3;
                        textStyle2 = textStyleA;
                        i28 = iA;
                        z11 = z10;
                        i29 = i26;
                        map2 = mapH;
                    } else {
                        composerS.J();
                        if ((i12 & 1) != 0) {
                            if (i30 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i15 != 0) {
                                textStyleA = TextStyle.Companion.a();
                            }
                            if (i17 != 0) {
                                lVar2 = BasicTextKt$BasicText$4.INSTANCE;
                            }
                            if (i19 != 0) {
                                iA = TextOverflow.Companion.a();
                            }
                            if (i21 != 0) {
                                z10 = true;
                            } else {
                                z10 = z6;
                            }
                            if (i23 != 0) {
                                i26 = Integer.MAX_VALUE;
                            } else {
                                i26 = i11;
                            }
                            if (i25 != 0) {
                                i27 = i14 & (-29360129);
                                mapH = s0.h();
                            } else {
                                i27 = i14;
                                mapH = map;
                            }
                            modifier3 = modifier2;
                        } else {
                            if (i30 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i15 != 0) {
                                textStyleA = TextStyle.Companion.a();
                            }
                            if (i17 != 0) {
                                lVar2 = BasicTextKt$BasicText$4.INSTANCE;
                            }
                            if (i19 != 0) {
                                iA = TextOverflow.Companion.a();
                            }
                            if (i21 != 0) {
                                z10 = true;
                            } else {
                                z10 = z6;
                            }
                            if (i23 != 0) {
                                i26 = Integer.MAX_VALUE;
                            } else {
                                i26 = i11;
                            }
                            if (i25 != 0) {
                                i27 = i14 & (-29360129);
                                mapH = s0.h();
                            } else {
                                i27 = i14;
                                mapH = map;
                            }
                            modifier3 = modifier2;
                        }
                        composerS.A();
                        if (i26 <= 0) {
                            throw new IllegalArgumentException("maxLines should be greater than 0".toString());
                        }
                        SelectionRegistrar selectionRegistrar3 = (SelectionRegistrar) composerS.x(SelectionRegistrarKt.a());
                        density = (Density) composerS.x(CompositionLocalsKt.e());
                        resolver = (FontFamily.Resolver) composerS.x(CompositionLocalsKt.g());
                        long jA3 = ((TextSelectionColors) composerS.x(TextSelectionColorsKt.b())).a();
                        u<List<AnnotatedString.Range<Placeholder>>, List<AnnotatedString.Range<q<String, Composer, Integer, l0>>>> uVarB3 = CoreTextKt.b(text, mapH);
                        listA = uVarB3.a();
                        listB = uVarB3.b();
                        jLongValue = ((Number) RememberSaveableKt.b(new Object[]{text, selectionRegistrar3}, c(selectionRegistrar3), null, new BasicTextKt$BasicText$selectableId$2(selectionRegistrar3), composerS, 72, 4)).longValue();
                        composerS.G(-492369756);
                        objH = composerS.H();
                        if (objH == Composer.Companion.a()) {
                            TextController textController4 = new TextController(new TextState(new TextDelegate(text, textStyleA, i26, z10, iA, density, resolver, listA, null), jLongValue));
                            composerS.z(textController4);
                            objH = textController4;
                        }
                        composerS.Q();
                        textController = (TextController) objH;
                        textStateK = textController.k();
                        if (!composerS.r()) {
                            textController.n(CoreTextKt.c(textStateK.i(), text, textStyleA, density, resolver, z10, iA, i26, listA));
                        }
                        textStateK.m(lVar2);
                        textStateK.p(jA3);
                        textController.o(selectionRegistrar3);
                        if (listB.isEmpty()) {
                            pVarB = ComposableSingletons$BasicTextKt.INSTANCE.a();
                        } else {
                            pVarB = ComposableLambdaKt.b(composerS, 1892283635, true, new BasicTextKt$BasicText$6(text, listB, i27));
                        }
                        Modifier modifierB3 = modifier3.B(textController.j());
                        MeasurePolicy measurePolicyI3 = textController.i();
                        composerS.G(-1323940314);
                        Density density4 = (Density) composerS.x(CompositionLocalsKt.e());
                        LayoutDirection layoutDirection3 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                        ViewConfiguration viewConfiguration3 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                        ComposeUiNode.Companion companion3 = ComposeUiNode.Companion;
                        aVarA = companion3.a();
                        q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC3 = LayoutKt.c(modifierB3);
                        if (!(composerS.t() instanceof Applier)) {
                            ComposablesKt.c();
                        }
                        composerS.e();
                        if (composerS.r()) {
                            composerS.w(aVarA);
                        } else {
                            composerS.c();
                        }
                        composerS.L();
                        Composer composerA3 = Updater.a(composerS);
                        Updater.e(composerA3, measurePolicyI3, companion3.d());
                        Updater.e(composerA3, density4, companion3.b());
                        Updater.e(composerA3, layoutDirection3, companion3.c());
                        Updater.e(composerA3, viewConfiguration3, companion3.f());
                        composerS.o();
                        qVarC3.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                        composerS.G(2058660585);
                        pVarB.invoke(composerS, 0);
                        composerS.Q();
                        composerS.d();
                        composerS.Q();
                        lVar3 = lVar2;
                        modifier4 = modifier3;
                        textStyle2 = textStyleA;
                        i28 = iA;
                        z11 = z10;
                        i29 = i26;
                        map2 = mapH;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new BasicTextKt$BasicText$7(text, modifier4, textStyle2, lVar3, i28, z11, i29, map2, i12, i13));
                }
                i14 |= 3072;
                lVar2 = lVar;
                i19 = i13 & 16;
                if (i19 != 0) {
                    if ((57344 & i12) == 0) {
                        iA = i10;
                        if (composerS.p(iA)) {
                            i20 = 16384;
                        } else {
                            i20 = 8192;
                        }
                        i14 |= i20;
                    }
                    i21 = i13 & 32;
                    if (i21 != 0) {
                        i14 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                    } else if ((i12 & 458752) == 0) {
                        if (composerS.m(z6)) {
                            i22 = 131072;
                        } else {
                            i22 = 65536;
                        }
                        i14 |= i22;
                    }
                    i23 = i13 & 64;
                    if (i23 != 0) {
                        i14 |= 1572864;
                    } else if ((i12 & 3670016) == 0) {
                        if (composerS.p(i11)) {
                            i24 = 1048576;
                        } else {
                            i24 = 524288;
                        }
                        i14 |= i24;
                    }
                    i25 = i13 & 128;
                    if (i25 != 0) {
                        i14 |= 4194304;
                    }
                    if (i25 != 128) {
                        composerS.J();
                        if ((i12 & 1) != 0) {
                            if (i30 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i15 != 0) {
                                textStyleA = TextStyle.Companion.a();
                            }
                            if (i17 != 0) {
                                lVar2 = BasicTextKt$BasicText$4.INSTANCE;
                            }
                            if (i19 != 0) {
                                iA = TextOverflow.Companion.a();
                            }
                            if (i21 != 0) {
                                z10 = true;
                            } else {
                                z10 = z6;
                            }
                            if (i23 != 0) {
                                i26 = Integer.MAX_VALUE;
                            } else {
                                i26 = i11;
                            }
                            if (i25 != 0) {
                                i27 = i14 & (-29360129);
                                mapH = s0.h();
                            } else {
                                i27 = i14;
                                mapH = map;
                            }
                            modifier3 = modifier2;
                        } else {
                            if (i30 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i15 != 0) {
                                textStyleA = TextStyle.Companion.a();
                            }
                            if (i17 != 0) {
                                lVar2 = BasicTextKt$BasicText$4.INSTANCE;
                            }
                            if (i19 != 0) {
                                iA = TextOverflow.Companion.a();
                            }
                            if (i21 != 0) {
                                z10 = true;
                            } else {
                                z10 = z6;
                            }
                            if (i23 != 0) {
                                i26 = Integer.MAX_VALUE;
                            } else {
                                i26 = i11;
                            }
                            if (i25 != 0) {
                                i27 = i14 & (-29360129);
                                mapH = s0.h();
                            } else {
                                i27 = i14;
                                mapH = map;
                            }
                            modifier3 = modifier2;
                        }
                        composerS.A();
                        if (i26 <= 0) {
                            throw new IllegalArgumentException("maxLines should be greater than 0".toString());
                        }
                        SelectionRegistrar selectionRegistrar4 = (SelectionRegistrar) composerS.x(SelectionRegistrarKt.a());
                        density = (Density) composerS.x(CompositionLocalsKt.e());
                        resolver = (FontFamily.Resolver) composerS.x(CompositionLocalsKt.g());
                        long jA4 = ((TextSelectionColors) composerS.x(TextSelectionColorsKt.b())).a();
                        u<List<AnnotatedString.Range<Placeholder>>, List<AnnotatedString.Range<q<String, Composer, Integer, l0>>>> uVarB4 = CoreTextKt.b(text, mapH);
                        listA = uVarB4.a();
                        listB = uVarB4.b();
                        jLongValue = ((Number) RememberSaveableKt.b(new Object[]{text, selectionRegistrar4}, c(selectionRegistrar4), null, new BasicTextKt$BasicText$selectableId$2(selectionRegistrar4), composerS, 72, 4)).longValue();
                        composerS.G(-492369756);
                        objH = composerS.H();
                        if (objH == Composer.Companion.a()) {
                            TextController textController5 = new TextController(new TextState(new TextDelegate(text, textStyleA, i26, z10, iA, density, resolver, listA, null), jLongValue));
                            composerS.z(textController5);
                            objH = textController5;
                        }
                        composerS.Q();
                        textController = (TextController) objH;
                        textStateK = textController.k();
                        if (!composerS.r()) {
                            textController.n(CoreTextKt.c(textStateK.i(), text, textStyleA, density, resolver, z10, iA, i26, listA));
                        }
                        textStateK.m(lVar2);
                        textStateK.p(jA4);
                        textController.o(selectionRegistrar4);
                        if (listB.isEmpty()) {
                            pVarB = ComposableSingletons$BasicTextKt.INSTANCE.a();
                        } else {
                            pVarB = ComposableLambdaKt.b(composerS, 1892283635, true, new BasicTextKt$BasicText$6(text, listB, i27));
                        }
                        Modifier modifierB4 = modifier3.B(textController.j());
                        MeasurePolicy measurePolicyI4 = textController.i();
                        composerS.G(-1323940314);
                        Density density5 = (Density) composerS.x(CompositionLocalsKt.e());
                        LayoutDirection layoutDirection4 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                        ViewConfiguration viewConfiguration4 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                        ComposeUiNode.Companion companion4 = ComposeUiNode.Companion;
                        aVarA = companion4.a();
                        q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC4 = LayoutKt.c(modifierB4);
                        if (!(composerS.t() instanceof Applier)) {
                            ComposablesKt.c();
                        }
                        composerS.e();
                        if (composerS.r()) {
                            composerS.w(aVarA);
                        } else {
                            composerS.c();
                        }
                        composerS.L();
                        Composer composerA4 = Updater.a(composerS);
                        Updater.e(composerA4, measurePolicyI4, companion4.d());
                        Updater.e(composerA4, density5, companion4.b());
                        Updater.e(composerA4, layoutDirection4, companion4.c());
                        Updater.e(composerA4, viewConfiguration4, companion4.f());
                        composerS.o();
                        qVarC4.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                        composerS.G(2058660585);
                        pVarB.invoke(composerS, 0);
                        composerS.Q();
                        composerS.d();
                        composerS.Q();
                        lVar3 = lVar2;
                        modifier4 = modifier3;
                        textStyle2 = textStyleA;
                        i28 = iA;
                        z11 = z10;
                        i29 = i26;
                        map2 = mapH;
                    } else {
                        composerS.J();
                        if ((i12 & 1) != 0) {
                            if (i30 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i15 != 0) {
                                textStyleA = TextStyle.Companion.a();
                            }
                            if (i17 != 0) {
                                lVar2 = BasicTextKt$BasicText$4.INSTANCE;
                            }
                            if (i19 != 0) {
                                iA = TextOverflow.Companion.a();
                            }
                            if (i21 != 0) {
                                z10 = true;
                            } else {
                                z10 = z6;
                            }
                            if (i23 != 0) {
                                i26 = Integer.MAX_VALUE;
                            } else {
                                i26 = i11;
                            }
                            if (i25 != 0) {
                                i27 = i14 & (-29360129);
                                mapH = s0.h();
                            } else {
                                i27 = i14;
                                mapH = map;
                            }
                            modifier3 = modifier2;
                        } else {
                            if (i30 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i15 != 0) {
                                textStyleA = TextStyle.Companion.a();
                            }
                            if (i17 != 0) {
                                lVar2 = BasicTextKt$BasicText$4.INSTANCE;
                            }
                            if (i19 != 0) {
                                iA = TextOverflow.Companion.a();
                            }
                            if (i21 != 0) {
                                z10 = true;
                            } else {
                                z10 = z6;
                            }
                            if (i23 != 0) {
                                i26 = Integer.MAX_VALUE;
                            } else {
                                i26 = i11;
                            }
                            if (i25 != 0) {
                                i27 = i14 & (-29360129);
                                mapH = s0.h();
                            } else {
                                i27 = i14;
                                mapH = map;
                            }
                            modifier3 = modifier2;
                        }
                        composerS.A();
                        if (i26 <= 0) {
                            throw new IllegalArgumentException("maxLines should be greater than 0".toString());
                        }
                        SelectionRegistrar selectionRegistrar5 = (SelectionRegistrar) composerS.x(SelectionRegistrarKt.a());
                        density = (Density) composerS.x(CompositionLocalsKt.e());
                        resolver = (FontFamily.Resolver) composerS.x(CompositionLocalsKt.g());
                        long jA5 = ((TextSelectionColors) composerS.x(TextSelectionColorsKt.b())).a();
                        u<List<AnnotatedString.Range<Placeholder>>, List<AnnotatedString.Range<q<String, Composer, Integer, l0>>>> uVarB5 = CoreTextKt.b(text, mapH);
                        listA = uVarB5.a();
                        listB = uVarB5.b();
                        jLongValue = ((Number) RememberSaveableKt.b(new Object[]{text, selectionRegistrar5}, c(selectionRegistrar5), null, new BasicTextKt$BasicText$selectableId$2(selectionRegistrar5), composerS, 72, 4)).longValue();
                        composerS.G(-492369756);
                        objH = composerS.H();
                        if (objH == Composer.Companion.a()) {
                            TextController textController6 = new TextController(new TextState(new TextDelegate(text, textStyleA, i26, z10, iA, density, resolver, listA, null), jLongValue));
                            composerS.z(textController6);
                            objH = textController6;
                        }
                        composerS.Q();
                        textController = (TextController) objH;
                        textStateK = textController.k();
                        if (!composerS.r()) {
                            textController.n(CoreTextKt.c(textStateK.i(), text, textStyleA, density, resolver, z10, iA, i26, listA));
                        }
                        textStateK.m(lVar2);
                        textStateK.p(jA5);
                        textController.o(selectionRegistrar5);
                        if (listB.isEmpty()) {
                            pVarB = ComposableSingletons$BasicTextKt.INSTANCE.a();
                        } else {
                            pVarB = ComposableLambdaKt.b(composerS, 1892283635, true, new BasicTextKt$BasicText$6(text, listB, i27));
                        }
                        Modifier modifierB5 = modifier3.B(textController.j());
                        MeasurePolicy measurePolicyI5 = textController.i();
                        composerS.G(-1323940314);
                        Density density6 = (Density) composerS.x(CompositionLocalsKt.e());
                        LayoutDirection layoutDirection5 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                        ViewConfiguration viewConfiguration5 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                        ComposeUiNode.Companion companion5 = ComposeUiNode.Companion;
                        aVarA = companion5.a();
                        q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC5 = LayoutKt.c(modifierB5);
                        if (!(composerS.t() instanceof Applier)) {
                            ComposablesKt.c();
                        }
                        composerS.e();
                        if (composerS.r()) {
                            composerS.w(aVarA);
                        } else {
                            composerS.c();
                        }
                        composerS.L();
                        Composer composerA5 = Updater.a(composerS);
                        Updater.e(composerA5, measurePolicyI5, companion5.d());
                        Updater.e(composerA5, density6, companion5.b());
                        Updater.e(composerA5, layoutDirection5, companion5.c());
                        Updater.e(composerA5, viewConfiguration5, companion5.f());
                        composerS.o();
                        qVarC5.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                        composerS.G(2058660585);
                        pVarB.invoke(composerS, 0);
                        composerS.Q();
                        composerS.d();
                        composerS.Q();
                        lVar3 = lVar2;
                        modifier4 = modifier3;
                        textStyle2 = textStyleA;
                        i28 = iA;
                        z11 = z10;
                        i29 = i26;
                        map2 = mapH;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new BasicTextKt$BasicText$7(text, modifier4, textStyle2, lVar3, i28, z11, i29, map2, i12, i13));
                }
                i14 |= CpioConstants.C_ISBLK;
                iA = i10;
                i21 = i13 & 32;
                if (i21 != 0) {
                    i14 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                } else if ((i12 & 458752) == 0) {
                    if (composerS.m(z6)) {
                        i22 = 131072;
                    } else {
                        i22 = 65536;
                    }
                    i14 |= i22;
                }
                i23 = i13 & 64;
                if (i23 != 0) {
                    i14 |= 1572864;
                } else if ((i12 & 3670016) == 0) {
                    if (composerS.p(i11)) {
                        i24 = 1048576;
                    } else {
                        i24 = 524288;
                    }
                    i14 |= i24;
                }
                i25 = i13 & 128;
                if (i25 != 0) {
                    i14 |= 4194304;
                }
                if (i25 != 128) {
                    composerS.J();
                    if ((i12 & 1) != 0) {
                        if (i30 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i15 != 0) {
                            textStyleA = TextStyle.Companion.a();
                        }
                        if (i17 != 0) {
                            lVar2 = BasicTextKt$BasicText$4.INSTANCE;
                        }
                        if (i19 != 0) {
                            iA = TextOverflow.Companion.a();
                        }
                        if (i21 != 0) {
                            z10 = true;
                        } else {
                            z10 = z6;
                        }
                        if (i23 != 0) {
                            i26 = Integer.MAX_VALUE;
                        } else {
                            i26 = i11;
                        }
                        if (i25 != 0) {
                            i27 = i14 & (-29360129);
                            mapH = s0.h();
                        } else {
                            i27 = i14;
                            mapH = map;
                        }
                        modifier3 = modifier2;
                    } else {
                        if (i30 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i15 != 0) {
                            textStyleA = TextStyle.Companion.a();
                        }
                        if (i17 != 0) {
                            lVar2 = BasicTextKt$BasicText$4.INSTANCE;
                        }
                        if (i19 != 0) {
                            iA = TextOverflow.Companion.a();
                        }
                        if (i21 != 0) {
                            z10 = true;
                        } else {
                            z10 = z6;
                        }
                        if (i23 != 0) {
                            i26 = Integer.MAX_VALUE;
                        } else {
                            i26 = i11;
                        }
                        if (i25 != 0) {
                            i27 = i14 & (-29360129);
                            mapH = s0.h();
                        } else {
                            i27 = i14;
                            mapH = map;
                        }
                        modifier3 = modifier2;
                    }
                    composerS.A();
                    if (i26 <= 0) {
                        throw new IllegalArgumentException("maxLines should be greater than 0".toString());
                    }
                    SelectionRegistrar selectionRegistrar6 = (SelectionRegistrar) composerS.x(SelectionRegistrarKt.a());
                    density = (Density) composerS.x(CompositionLocalsKt.e());
                    resolver = (FontFamily.Resolver) composerS.x(CompositionLocalsKt.g());
                    long jA6 = ((TextSelectionColors) composerS.x(TextSelectionColorsKt.b())).a();
                    u<List<AnnotatedString.Range<Placeholder>>, List<AnnotatedString.Range<q<String, Composer, Integer, l0>>>> uVarB6 = CoreTextKt.b(text, mapH);
                    listA = uVarB6.a();
                    listB = uVarB6.b();
                    jLongValue = ((Number) RememberSaveableKt.b(new Object[]{text, selectionRegistrar6}, c(selectionRegistrar6), null, new BasicTextKt$BasicText$selectableId$2(selectionRegistrar6), composerS, 72, 4)).longValue();
                    composerS.G(-492369756);
                    objH = composerS.H();
                    if (objH == Composer.Companion.a()) {
                        TextController textController7 = new TextController(new TextState(new TextDelegate(text, textStyleA, i26, z10, iA, density, resolver, listA, null), jLongValue));
                        composerS.z(textController7);
                        objH = textController7;
                    }
                    composerS.Q();
                    textController = (TextController) objH;
                    textStateK = textController.k();
                    if (!composerS.r()) {
                        textController.n(CoreTextKt.c(textStateK.i(), text, textStyleA, density, resolver, z10, iA, i26, listA));
                    }
                    textStateK.m(lVar2);
                    textStateK.p(jA6);
                    textController.o(selectionRegistrar6);
                    if (listB.isEmpty()) {
                        pVarB = ComposableSingletons$BasicTextKt.INSTANCE.a();
                    } else {
                        pVarB = ComposableLambdaKt.b(composerS, 1892283635, true, new BasicTextKt$BasicText$6(text, listB, i27));
                    }
                    Modifier modifierB6 = modifier3.B(textController.j());
                    MeasurePolicy measurePolicyI6 = textController.i();
                    composerS.G(-1323940314);
                    Density density7 = (Density) composerS.x(CompositionLocalsKt.e());
                    LayoutDirection layoutDirection6 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                    ViewConfiguration viewConfiguration6 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                    ComposeUiNode.Companion companion6 = ComposeUiNode.Companion;
                    aVarA = companion6.a();
                    q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC6 = LayoutKt.c(modifierB6);
                    if (!(composerS.t() instanceof Applier)) {
                        ComposablesKt.c();
                    }
                    composerS.e();
                    if (composerS.r()) {
                        composerS.w(aVarA);
                    } else {
                        composerS.c();
                    }
                    composerS.L();
                    Composer composerA6 = Updater.a(composerS);
                    Updater.e(composerA6, measurePolicyI6, companion6.d());
                    Updater.e(composerA6, density7, companion6.b());
                    Updater.e(composerA6, layoutDirection6, companion6.c());
                    Updater.e(composerA6, viewConfiguration6, companion6.f());
                    composerS.o();
                    qVarC6.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                    composerS.G(2058660585);
                    pVarB.invoke(composerS, 0);
                    composerS.Q();
                    composerS.d();
                    composerS.Q();
                    lVar3 = lVar2;
                    modifier4 = modifier3;
                    textStyle2 = textStyleA;
                    i28 = iA;
                    z11 = z10;
                    i29 = i26;
                    map2 = mapH;
                } else {
                    composerS.J();
                    if ((i12 & 1) != 0) {
                        if (i30 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i15 != 0) {
                            textStyleA = TextStyle.Companion.a();
                        }
                        if (i17 != 0) {
                            lVar2 = BasicTextKt$BasicText$4.INSTANCE;
                        }
                        if (i19 != 0) {
                            iA = TextOverflow.Companion.a();
                        }
                        if (i21 != 0) {
                            z10 = true;
                        } else {
                            z10 = z6;
                        }
                        if (i23 != 0) {
                            i26 = Integer.MAX_VALUE;
                        } else {
                            i26 = i11;
                        }
                        if (i25 != 0) {
                            i27 = i14 & (-29360129);
                            mapH = s0.h();
                        } else {
                            i27 = i14;
                            mapH = map;
                        }
                        modifier3 = modifier2;
                    } else {
                        if (i30 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i15 != 0) {
                            textStyleA = TextStyle.Companion.a();
                        }
                        if (i17 != 0) {
                            lVar2 = BasicTextKt$BasicText$4.INSTANCE;
                        }
                        if (i19 != 0) {
                            iA = TextOverflow.Companion.a();
                        }
                        if (i21 != 0) {
                            z10 = true;
                        } else {
                            z10 = z6;
                        }
                        if (i23 != 0) {
                            i26 = Integer.MAX_VALUE;
                        } else {
                            i26 = i11;
                        }
                        if (i25 != 0) {
                            i27 = i14 & (-29360129);
                            mapH = s0.h();
                        } else {
                            i27 = i14;
                            mapH = map;
                        }
                        modifier3 = modifier2;
                    }
                    composerS.A();
                    if (i26 <= 0) {
                        throw new IllegalArgumentException("maxLines should be greater than 0".toString());
                    }
                    SelectionRegistrar selectionRegistrar7 = (SelectionRegistrar) composerS.x(SelectionRegistrarKt.a());
                    density = (Density) composerS.x(CompositionLocalsKt.e());
                    resolver = (FontFamily.Resolver) composerS.x(CompositionLocalsKt.g());
                    long jA7 = ((TextSelectionColors) composerS.x(TextSelectionColorsKt.b())).a();
                    u<List<AnnotatedString.Range<Placeholder>>, List<AnnotatedString.Range<q<String, Composer, Integer, l0>>>> uVarB7 = CoreTextKt.b(text, mapH);
                    listA = uVarB7.a();
                    listB = uVarB7.b();
                    jLongValue = ((Number) RememberSaveableKt.b(new Object[]{text, selectionRegistrar7}, c(selectionRegistrar7), null, new BasicTextKt$BasicText$selectableId$2(selectionRegistrar7), composerS, 72, 4)).longValue();
                    composerS.G(-492369756);
                    objH = composerS.H();
                    if (objH == Composer.Companion.a()) {
                        TextController textController8 = new TextController(new TextState(new TextDelegate(text, textStyleA, i26, z10, iA, density, resolver, listA, null), jLongValue));
                        composerS.z(textController8);
                        objH = textController8;
                    }
                    composerS.Q();
                    textController = (TextController) objH;
                    textStateK = textController.k();
                    if (!composerS.r()) {
                        textController.n(CoreTextKt.c(textStateK.i(), text, textStyleA, density, resolver, z10, iA, i26, listA));
                    }
                    textStateK.m(lVar2);
                    textStateK.p(jA7);
                    textController.o(selectionRegistrar7);
                    if (listB.isEmpty()) {
                        pVarB = ComposableSingletons$BasicTextKt.INSTANCE.a();
                    } else {
                        pVarB = ComposableLambdaKt.b(composerS, 1892283635, true, new BasicTextKt$BasicText$6(text, listB, i27));
                    }
                    Modifier modifierB7 = modifier3.B(textController.j());
                    MeasurePolicy measurePolicyI7 = textController.i();
                    composerS.G(-1323940314);
                    Density density8 = (Density) composerS.x(CompositionLocalsKt.e());
                    LayoutDirection layoutDirection7 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                    ViewConfiguration viewConfiguration7 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                    ComposeUiNode.Companion companion7 = ComposeUiNode.Companion;
                    aVarA = companion7.a();
                    q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC7 = LayoutKt.c(modifierB7);
                    if (!(composerS.t() instanceof Applier)) {
                        ComposablesKt.c();
                    }
                    composerS.e();
                    if (composerS.r()) {
                        composerS.w(aVarA);
                    } else {
                        composerS.c();
                    }
                    composerS.L();
                    Composer composerA7 = Updater.a(composerS);
                    Updater.e(composerA7, measurePolicyI7, companion7.d());
                    Updater.e(composerA7, density8, companion7.b());
                    Updater.e(composerA7, layoutDirection7, companion7.c());
                    Updater.e(composerA7, viewConfiguration7, companion7.f());
                    composerS.o();
                    qVarC7.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                    composerS.G(2058660585);
                    pVarB.invoke(composerS, 0);
                    composerS.Q();
                    composerS.d();
                    composerS.Q();
                    lVar3 = lVar2;
                    modifier4 = modifier3;
                    textStyle2 = textStyleA;
                    i28 = iA;
                    z11 = z10;
                    i29 = i26;
                    map2 = mapH;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new BasicTextKt$BasicText$7(text, modifier4, textStyle2, lVar3, i28, z11, i29, map2, i12, i13));
            }
            i14 |= 384;
            textStyleA = textStyle;
            i17 = i13 & 8;
            if (i17 != 0) {
                if ((i12 & 7168) == 0) {
                    lVar2 = lVar;
                    if (composerS.k(lVar2)) {
                        i18 = 2048;
                    } else {
                        i18 = 1024;
                    }
                    i14 |= i18;
                }
                i19 = i13 & 16;
                if (i19 != 0) {
                    if ((57344 & i12) == 0) {
                        iA = i10;
                        if (composerS.p(iA)) {
                            i20 = 16384;
                        } else {
                            i20 = 8192;
                        }
                        i14 |= i20;
                    }
                    i21 = i13 & 32;
                    if (i21 != 0) {
                        i14 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                    } else if ((i12 & 458752) == 0) {
                        if (composerS.m(z6)) {
                            i22 = 131072;
                        } else {
                            i22 = 65536;
                        }
                        i14 |= i22;
                    }
                    i23 = i13 & 64;
                    if (i23 != 0) {
                        i14 |= 1572864;
                    } else if ((i12 & 3670016) == 0) {
                        if (composerS.p(i11)) {
                            i24 = 1048576;
                        } else {
                            i24 = 524288;
                        }
                        i14 |= i24;
                    }
                    i25 = i13 & 128;
                    if (i25 != 0) {
                        i14 |= 4194304;
                    }
                    if (i25 != 128) {
                        composerS.J();
                        if ((i12 & 1) != 0) {
                            if (i30 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i15 != 0) {
                                textStyleA = TextStyle.Companion.a();
                            }
                            if (i17 != 0) {
                                lVar2 = BasicTextKt$BasicText$4.INSTANCE;
                            }
                            if (i19 != 0) {
                                iA = TextOverflow.Companion.a();
                            }
                            if (i21 != 0) {
                                z10 = true;
                            } else {
                                z10 = z6;
                            }
                            if (i23 != 0) {
                                i26 = Integer.MAX_VALUE;
                            } else {
                                i26 = i11;
                            }
                            if (i25 != 0) {
                                i27 = i14 & (-29360129);
                                mapH = s0.h();
                            } else {
                                i27 = i14;
                                mapH = map;
                            }
                            modifier3 = modifier2;
                        } else {
                            if (i30 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i15 != 0) {
                                textStyleA = TextStyle.Companion.a();
                            }
                            if (i17 != 0) {
                                lVar2 = BasicTextKt$BasicText$4.INSTANCE;
                            }
                            if (i19 != 0) {
                                iA = TextOverflow.Companion.a();
                            }
                            if (i21 != 0) {
                                z10 = true;
                            } else {
                                z10 = z6;
                            }
                            if (i23 != 0) {
                                i26 = Integer.MAX_VALUE;
                            } else {
                                i26 = i11;
                            }
                            if (i25 != 0) {
                                i27 = i14 & (-29360129);
                                mapH = s0.h();
                            } else {
                                i27 = i14;
                                mapH = map;
                            }
                            modifier3 = modifier2;
                        }
                        composerS.A();
                        if (i26 <= 0) {
                            throw new IllegalArgumentException("maxLines should be greater than 0".toString());
                        }
                        SelectionRegistrar selectionRegistrar8 = (SelectionRegistrar) composerS.x(SelectionRegistrarKt.a());
                        density = (Density) composerS.x(CompositionLocalsKt.e());
                        resolver = (FontFamily.Resolver) composerS.x(CompositionLocalsKt.g());
                        long jA8 = ((TextSelectionColors) composerS.x(TextSelectionColorsKt.b())).a();
                        u<List<AnnotatedString.Range<Placeholder>>, List<AnnotatedString.Range<q<String, Composer, Integer, l0>>>> uVarB8 = CoreTextKt.b(text, mapH);
                        listA = uVarB8.a();
                        listB = uVarB8.b();
                        jLongValue = ((Number) RememberSaveableKt.b(new Object[]{text, selectionRegistrar8}, c(selectionRegistrar8), null, new BasicTextKt$BasicText$selectableId$2(selectionRegistrar8), composerS, 72, 4)).longValue();
                        composerS.G(-492369756);
                        objH = composerS.H();
                        if (objH == Composer.Companion.a()) {
                            TextController textController9 = new TextController(new TextState(new TextDelegate(text, textStyleA, i26, z10, iA, density, resolver, listA, null), jLongValue));
                            composerS.z(textController9);
                            objH = textController9;
                        }
                        composerS.Q();
                        textController = (TextController) objH;
                        textStateK = textController.k();
                        if (!composerS.r()) {
                            textController.n(CoreTextKt.c(textStateK.i(), text, textStyleA, density, resolver, z10, iA, i26, listA));
                        }
                        textStateK.m(lVar2);
                        textStateK.p(jA8);
                        textController.o(selectionRegistrar8);
                        if (listB.isEmpty()) {
                            pVarB = ComposableSingletons$BasicTextKt.INSTANCE.a();
                        } else {
                            pVarB = ComposableLambdaKt.b(composerS, 1892283635, true, new BasicTextKt$BasicText$6(text, listB, i27));
                        }
                        Modifier modifierB8 = modifier3.B(textController.j());
                        MeasurePolicy measurePolicyI8 = textController.i();
                        composerS.G(-1323940314);
                        Density density9 = (Density) composerS.x(CompositionLocalsKt.e());
                        LayoutDirection layoutDirection8 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                        ViewConfiguration viewConfiguration8 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                        ComposeUiNode.Companion companion8 = ComposeUiNode.Companion;
                        aVarA = companion8.a();
                        q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC8 = LayoutKt.c(modifierB8);
                        if (!(composerS.t() instanceof Applier)) {
                            ComposablesKt.c();
                        }
                        composerS.e();
                        if (composerS.r()) {
                            composerS.w(aVarA);
                        } else {
                            composerS.c();
                        }
                        composerS.L();
                        Composer composerA8 = Updater.a(composerS);
                        Updater.e(composerA8, measurePolicyI8, companion8.d());
                        Updater.e(composerA8, density9, companion8.b());
                        Updater.e(composerA8, layoutDirection8, companion8.c());
                        Updater.e(composerA8, viewConfiguration8, companion8.f());
                        composerS.o();
                        qVarC8.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                        composerS.G(2058660585);
                        pVarB.invoke(composerS, 0);
                        composerS.Q();
                        composerS.d();
                        composerS.Q();
                        lVar3 = lVar2;
                        modifier4 = modifier3;
                        textStyle2 = textStyleA;
                        i28 = iA;
                        z11 = z10;
                        i29 = i26;
                        map2 = mapH;
                    } else {
                        composerS.J();
                        if ((i12 & 1) != 0) {
                            if (i30 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i15 != 0) {
                                textStyleA = TextStyle.Companion.a();
                            }
                            if (i17 != 0) {
                                lVar2 = BasicTextKt$BasicText$4.INSTANCE;
                            }
                            if (i19 != 0) {
                                iA = TextOverflow.Companion.a();
                            }
                            if (i21 != 0) {
                                z10 = true;
                            } else {
                                z10 = z6;
                            }
                            if (i23 != 0) {
                                i26 = Integer.MAX_VALUE;
                            } else {
                                i26 = i11;
                            }
                            if (i25 != 0) {
                                i27 = i14 & (-29360129);
                                mapH = s0.h();
                            } else {
                                i27 = i14;
                                mapH = map;
                            }
                            modifier3 = modifier2;
                        } else {
                            if (i30 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i15 != 0) {
                                textStyleA = TextStyle.Companion.a();
                            }
                            if (i17 != 0) {
                                lVar2 = BasicTextKt$BasicText$4.INSTANCE;
                            }
                            if (i19 != 0) {
                                iA = TextOverflow.Companion.a();
                            }
                            if (i21 != 0) {
                                z10 = true;
                            } else {
                                z10 = z6;
                            }
                            if (i23 != 0) {
                                i26 = Integer.MAX_VALUE;
                            } else {
                                i26 = i11;
                            }
                            if (i25 != 0) {
                                i27 = i14 & (-29360129);
                                mapH = s0.h();
                            } else {
                                i27 = i14;
                                mapH = map;
                            }
                            modifier3 = modifier2;
                        }
                        composerS.A();
                        if (i26 <= 0) {
                            throw new IllegalArgumentException("maxLines should be greater than 0".toString());
                        }
                        SelectionRegistrar selectionRegistrar9 = (SelectionRegistrar) composerS.x(SelectionRegistrarKt.a());
                        density = (Density) composerS.x(CompositionLocalsKt.e());
                        resolver = (FontFamily.Resolver) composerS.x(CompositionLocalsKt.g());
                        long jA9 = ((TextSelectionColors) composerS.x(TextSelectionColorsKt.b())).a();
                        u<List<AnnotatedString.Range<Placeholder>>, List<AnnotatedString.Range<q<String, Composer, Integer, l0>>>> uVarB9 = CoreTextKt.b(text, mapH);
                        listA = uVarB9.a();
                        listB = uVarB9.b();
                        jLongValue = ((Number) RememberSaveableKt.b(new Object[]{text, selectionRegistrar9}, c(selectionRegistrar9), null, new BasicTextKt$BasicText$selectableId$2(selectionRegistrar9), composerS, 72, 4)).longValue();
                        composerS.G(-492369756);
                        objH = composerS.H();
                        if (objH == Composer.Companion.a()) {
                            TextController textController10 = new TextController(new TextState(new TextDelegate(text, textStyleA, i26, z10, iA, density, resolver, listA, null), jLongValue));
                            composerS.z(textController10);
                            objH = textController10;
                        }
                        composerS.Q();
                        textController = (TextController) objH;
                        textStateK = textController.k();
                        if (!composerS.r()) {
                            textController.n(CoreTextKt.c(textStateK.i(), text, textStyleA, density, resolver, z10, iA, i26, listA));
                        }
                        textStateK.m(lVar2);
                        textStateK.p(jA9);
                        textController.o(selectionRegistrar9);
                        if (listB.isEmpty()) {
                            pVarB = ComposableSingletons$BasicTextKt.INSTANCE.a();
                        } else {
                            pVarB = ComposableLambdaKt.b(composerS, 1892283635, true, new BasicTextKt$BasicText$6(text, listB, i27));
                        }
                        Modifier modifierB9 = modifier3.B(textController.j());
                        MeasurePolicy measurePolicyI9 = textController.i();
                        composerS.G(-1323940314);
                        Density density10 = (Density) composerS.x(CompositionLocalsKt.e());
                        LayoutDirection layoutDirection9 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                        ViewConfiguration viewConfiguration9 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                        ComposeUiNode.Companion companion9 = ComposeUiNode.Companion;
                        aVarA = companion9.a();
                        q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC9 = LayoutKt.c(modifierB9);
                        if (!(composerS.t() instanceof Applier)) {
                            ComposablesKt.c();
                        }
                        composerS.e();
                        if (composerS.r()) {
                            composerS.w(aVarA);
                        } else {
                            composerS.c();
                        }
                        composerS.L();
                        Composer composerA9 = Updater.a(composerS);
                        Updater.e(composerA9, measurePolicyI9, companion9.d());
                        Updater.e(composerA9, density10, companion9.b());
                        Updater.e(composerA9, layoutDirection9, companion9.c());
                        Updater.e(composerA9, viewConfiguration9, companion9.f());
                        composerS.o();
                        qVarC9.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                        composerS.G(2058660585);
                        pVarB.invoke(composerS, 0);
                        composerS.Q();
                        composerS.d();
                        composerS.Q();
                        lVar3 = lVar2;
                        modifier4 = modifier3;
                        textStyle2 = textStyleA;
                        i28 = iA;
                        z11 = z10;
                        i29 = i26;
                        map2 = mapH;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new BasicTextKt$BasicText$7(text, modifier4, textStyle2, lVar3, i28, z11, i29, map2, i12, i13));
                }
                i14 |= CpioConstants.C_ISBLK;
                iA = i10;
                i21 = i13 & 32;
                if (i21 != 0) {
                    i14 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                } else if ((i12 & 458752) == 0) {
                    if (composerS.m(z6)) {
                        i22 = 131072;
                    } else {
                        i22 = 65536;
                    }
                    i14 |= i22;
                }
                i23 = i13 & 64;
                if (i23 != 0) {
                    i14 |= 1572864;
                } else if ((i12 & 3670016) == 0) {
                    if (composerS.p(i11)) {
                        i24 = 1048576;
                    } else {
                        i24 = 524288;
                    }
                    i14 |= i24;
                }
                i25 = i13 & 128;
                if (i25 != 0) {
                    i14 |= 4194304;
                }
                if (i25 != 128) {
                    composerS.J();
                    if ((i12 & 1) != 0) {
                        if (i30 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i15 != 0) {
                            textStyleA = TextStyle.Companion.a();
                        }
                        if (i17 != 0) {
                            lVar2 = BasicTextKt$BasicText$4.INSTANCE;
                        }
                        if (i19 != 0) {
                            iA = TextOverflow.Companion.a();
                        }
                        if (i21 != 0) {
                            z10 = true;
                        } else {
                            z10 = z6;
                        }
                        if (i23 != 0) {
                            i26 = Integer.MAX_VALUE;
                        } else {
                            i26 = i11;
                        }
                        if (i25 != 0) {
                            i27 = i14 & (-29360129);
                            mapH = s0.h();
                        } else {
                            i27 = i14;
                            mapH = map;
                        }
                        modifier3 = modifier2;
                    } else {
                        if (i30 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i15 != 0) {
                            textStyleA = TextStyle.Companion.a();
                        }
                        if (i17 != 0) {
                            lVar2 = BasicTextKt$BasicText$4.INSTANCE;
                        }
                        if (i19 != 0) {
                            iA = TextOverflow.Companion.a();
                        }
                        if (i21 != 0) {
                            z10 = true;
                        } else {
                            z10 = z6;
                        }
                        if (i23 != 0) {
                            i26 = Integer.MAX_VALUE;
                        } else {
                            i26 = i11;
                        }
                        if (i25 != 0) {
                            i27 = i14 & (-29360129);
                            mapH = s0.h();
                        } else {
                            i27 = i14;
                            mapH = map;
                        }
                        modifier3 = modifier2;
                    }
                    composerS.A();
                    if (i26 <= 0) {
                        throw new IllegalArgumentException("maxLines should be greater than 0".toString());
                    }
                    SelectionRegistrar selectionRegistrar10 = (SelectionRegistrar) composerS.x(SelectionRegistrarKt.a());
                    density = (Density) composerS.x(CompositionLocalsKt.e());
                    resolver = (FontFamily.Resolver) composerS.x(CompositionLocalsKt.g());
                    long jA10 = ((TextSelectionColors) composerS.x(TextSelectionColorsKt.b())).a();
                    u<List<AnnotatedString.Range<Placeholder>>, List<AnnotatedString.Range<q<String, Composer, Integer, l0>>>> uVarB10 = CoreTextKt.b(text, mapH);
                    listA = uVarB10.a();
                    listB = uVarB10.b();
                    jLongValue = ((Number) RememberSaveableKt.b(new Object[]{text, selectionRegistrar10}, c(selectionRegistrar10), null, new BasicTextKt$BasicText$selectableId$2(selectionRegistrar10), composerS, 72, 4)).longValue();
                    composerS.G(-492369756);
                    objH = composerS.H();
                    if (objH == Composer.Companion.a()) {
                        TextController textController11 = new TextController(new TextState(new TextDelegate(text, textStyleA, i26, z10, iA, density, resolver, listA, null), jLongValue));
                        composerS.z(textController11);
                        objH = textController11;
                    }
                    composerS.Q();
                    textController = (TextController) objH;
                    textStateK = textController.k();
                    if (!composerS.r()) {
                        textController.n(CoreTextKt.c(textStateK.i(), text, textStyleA, density, resolver, z10, iA, i26, listA));
                    }
                    textStateK.m(lVar2);
                    textStateK.p(jA10);
                    textController.o(selectionRegistrar10);
                    if (listB.isEmpty()) {
                        pVarB = ComposableSingletons$BasicTextKt.INSTANCE.a();
                    } else {
                        pVarB = ComposableLambdaKt.b(composerS, 1892283635, true, new BasicTextKt$BasicText$6(text, listB, i27));
                    }
                    Modifier modifierB10 = modifier3.B(textController.j());
                    MeasurePolicy measurePolicyI10 = textController.i();
                    composerS.G(-1323940314);
                    Density density11 = (Density) composerS.x(CompositionLocalsKt.e());
                    LayoutDirection layoutDirection10 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                    ViewConfiguration viewConfiguration10 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                    ComposeUiNode.Companion companion10 = ComposeUiNode.Companion;
                    aVarA = companion10.a();
                    q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC10 = LayoutKt.c(modifierB10);
                    if (!(composerS.t() instanceof Applier)) {
                        ComposablesKt.c();
                    }
                    composerS.e();
                    if (composerS.r()) {
                        composerS.w(aVarA);
                    } else {
                        composerS.c();
                    }
                    composerS.L();
                    Composer composerA10 = Updater.a(composerS);
                    Updater.e(composerA10, measurePolicyI10, companion10.d());
                    Updater.e(composerA10, density11, companion10.b());
                    Updater.e(composerA10, layoutDirection10, companion10.c());
                    Updater.e(composerA10, viewConfiguration10, companion10.f());
                    composerS.o();
                    qVarC10.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                    composerS.G(2058660585);
                    pVarB.invoke(composerS, 0);
                    composerS.Q();
                    composerS.d();
                    composerS.Q();
                    lVar3 = lVar2;
                    modifier4 = modifier3;
                    textStyle2 = textStyleA;
                    i28 = iA;
                    z11 = z10;
                    i29 = i26;
                    map2 = mapH;
                } else {
                    composerS.J();
                    if ((i12 & 1) != 0) {
                        if (i30 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i15 != 0) {
                            textStyleA = TextStyle.Companion.a();
                        }
                        if (i17 != 0) {
                            lVar2 = BasicTextKt$BasicText$4.INSTANCE;
                        }
                        if (i19 != 0) {
                            iA = TextOverflow.Companion.a();
                        }
                        if (i21 != 0) {
                            z10 = true;
                        } else {
                            z10 = z6;
                        }
                        if (i23 != 0) {
                            i26 = Integer.MAX_VALUE;
                        } else {
                            i26 = i11;
                        }
                        if (i25 != 0) {
                            i27 = i14 & (-29360129);
                            mapH = s0.h();
                        } else {
                            i27 = i14;
                            mapH = map;
                        }
                        modifier3 = modifier2;
                    } else {
                        if (i30 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i15 != 0) {
                            textStyleA = TextStyle.Companion.a();
                        }
                        if (i17 != 0) {
                            lVar2 = BasicTextKt$BasicText$4.INSTANCE;
                        }
                        if (i19 != 0) {
                            iA = TextOverflow.Companion.a();
                        }
                        if (i21 != 0) {
                            z10 = true;
                        } else {
                            z10 = z6;
                        }
                        if (i23 != 0) {
                            i26 = Integer.MAX_VALUE;
                        } else {
                            i26 = i11;
                        }
                        if (i25 != 0) {
                            i27 = i14 & (-29360129);
                            mapH = s0.h();
                        } else {
                            i27 = i14;
                            mapH = map;
                        }
                        modifier3 = modifier2;
                    }
                    composerS.A();
                    if (i26 <= 0) {
                        throw new IllegalArgumentException("maxLines should be greater than 0".toString());
                    }
                    SelectionRegistrar selectionRegistrar11 = (SelectionRegistrar) composerS.x(SelectionRegistrarKt.a());
                    density = (Density) composerS.x(CompositionLocalsKt.e());
                    resolver = (FontFamily.Resolver) composerS.x(CompositionLocalsKt.g());
                    long jA11 = ((TextSelectionColors) composerS.x(TextSelectionColorsKt.b())).a();
                    u<List<AnnotatedString.Range<Placeholder>>, List<AnnotatedString.Range<q<String, Composer, Integer, l0>>>> uVarB11 = CoreTextKt.b(text, mapH);
                    listA = uVarB11.a();
                    listB = uVarB11.b();
                    jLongValue = ((Number) RememberSaveableKt.b(new Object[]{text, selectionRegistrar11}, c(selectionRegistrar11), null, new BasicTextKt$BasicText$selectableId$2(selectionRegistrar11), composerS, 72, 4)).longValue();
                    composerS.G(-492369756);
                    objH = composerS.H();
                    if (objH == Composer.Companion.a()) {
                        TextController textController12 = new TextController(new TextState(new TextDelegate(text, textStyleA, i26, z10, iA, density, resolver, listA, null), jLongValue));
                        composerS.z(textController12);
                        objH = textController12;
                    }
                    composerS.Q();
                    textController = (TextController) objH;
                    textStateK = textController.k();
                    if (!composerS.r()) {
                        textController.n(CoreTextKt.c(textStateK.i(), text, textStyleA, density, resolver, z10, iA, i26, listA));
                    }
                    textStateK.m(lVar2);
                    textStateK.p(jA11);
                    textController.o(selectionRegistrar11);
                    if (listB.isEmpty()) {
                        pVarB = ComposableSingletons$BasicTextKt.INSTANCE.a();
                    } else {
                        pVarB = ComposableLambdaKt.b(composerS, 1892283635, true, new BasicTextKt$BasicText$6(text, listB, i27));
                    }
                    Modifier modifierB11 = modifier3.B(textController.j());
                    MeasurePolicy measurePolicyI11 = textController.i();
                    composerS.G(-1323940314);
                    Density density12 = (Density) composerS.x(CompositionLocalsKt.e());
                    LayoutDirection layoutDirection11 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                    ViewConfiguration viewConfiguration11 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                    ComposeUiNode.Companion companion11 = ComposeUiNode.Companion;
                    aVarA = companion11.a();
                    q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC11 = LayoutKt.c(modifierB11);
                    if (!(composerS.t() instanceof Applier)) {
                        ComposablesKt.c();
                    }
                    composerS.e();
                    if (composerS.r()) {
                        composerS.w(aVarA);
                    } else {
                        composerS.c();
                    }
                    composerS.L();
                    Composer composerA11 = Updater.a(composerS);
                    Updater.e(composerA11, measurePolicyI11, companion11.d());
                    Updater.e(composerA11, density12, companion11.b());
                    Updater.e(composerA11, layoutDirection11, companion11.c());
                    Updater.e(composerA11, viewConfiguration11, companion11.f());
                    composerS.o();
                    qVarC11.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                    composerS.G(2058660585);
                    pVarB.invoke(composerS, 0);
                    composerS.Q();
                    composerS.d();
                    composerS.Q();
                    lVar3 = lVar2;
                    modifier4 = modifier3;
                    textStyle2 = textStyleA;
                    i28 = iA;
                    z11 = z10;
                    i29 = i26;
                    map2 = mapH;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new BasicTextKt$BasicText$7(text, modifier4, textStyle2, lVar3, i28, z11, i29, map2, i12, i13));
            }
            i14 |= 3072;
            lVar2 = lVar;
            i19 = i13 & 16;
            if (i19 != 0) {
                if ((57344 & i12) == 0) {
                    iA = i10;
                    if (composerS.p(iA)) {
                        i20 = 16384;
                    } else {
                        i20 = 8192;
                    }
                    i14 |= i20;
                }
                i21 = i13 & 32;
                if (i21 != 0) {
                    i14 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                } else if ((i12 & 458752) == 0) {
                    if (composerS.m(z6)) {
                        i22 = 131072;
                    } else {
                        i22 = 65536;
                    }
                    i14 |= i22;
                }
                i23 = i13 & 64;
                if (i23 != 0) {
                    i14 |= 1572864;
                } else if ((i12 & 3670016) == 0) {
                    if (composerS.p(i11)) {
                        i24 = 1048576;
                    } else {
                        i24 = 524288;
                    }
                    i14 |= i24;
                }
                i25 = i13 & 128;
                if (i25 != 0) {
                    i14 |= 4194304;
                }
                if (i25 != 128) {
                    composerS.J();
                    if ((i12 & 1) != 0) {
                        if (i30 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i15 != 0) {
                            textStyleA = TextStyle.Companion.a();
                        }
                        if (i17 != 0) {
                            lVar2 = BasicTextKt$BasicText$4.INSTANCE;
                        }
                        if (i19 != 0) {
                            iA = TextOverflow.Companion.a();
                        }
                        if (i21 != 0) {
                            z10 = true;
                        } else {
                            z10 = z6;
                        }
                        if (i23 != 0) {
                            i26 = Integer.MAX_VALUE;
                        } else {
                            i26 = i11;
                        }
                        if (i25 != 0) {
                            i27 = i14 & (-29360129);
                            mapH = s0.h();
                        } else {
                            i27 = i14;
                            mapH = map;
                        }
                        modifier3 = modifier2;
                    } else {
                        if (i30 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i15 != 0) {
                            textStyleA = TextStyle.Companion.a();
                        }
                        if (i17 != 0) {
                            lVar2 = BasicTextKt$BasicText$4.INSTANCE;
                        }
                        if (i19 != 0) {
                            iA = TextOverflow.Companion.a();
                        }
                        if (i21 != 0) {
                            z10 = true;
                        } else {
                            z10 = z6;
                        }
                        if (i23 != 0) {
                            i26 = Integer.MAX_VALUE;
                        } else {
                            i26 = i11;
                        }
                        if (i25 != 0) {
                            i27 = i14 & (-29360129);
                            mapH = s0.h();
                        } else {
                            i27 = i14;
                            mapH = map;
                        }
                        modifier3 = modifier2;
                    }
                    composerS.A();
                    if (i26 <= 0) {
                        throw new IllegalArgumentException("maxLines should be greater than 0".toString());
                    }
                    SelectionRegistrar selectionRegistrar12 = (SelectionRegistrar) composerS.x(SelectionRegistrarKt.a());
                    density = (Density) composerS.x(CompositionLocalsKt.e());
                    resolver = (FontFamily.Resolver) composerS.x(CompositionLocalsKt.g());
                    long jA12 = ((TextSelectionColors) composerS.x(TextSelectionColorsKt.b())).a();
                    u<List<AnnotatedString.Range<Placeholder>>, List<AnnotatedString.Range<q<String, Composer, Integer, l0>>>> uVarB12 = CoreTextKt.b(text, mapH);
                    listA = uVarB12.a();
                    listB = uVarB12.b();
                    jLongValue = ((Number) RememberSaveableKt.b(new Object[]{text, selectionRegistrar12}, c(selectionRegistrar12), null, new BasicTextKt$BasicText$selectableId$2(selectionRegistrar12), composerS, 72, 4)).longValue();
                    composerS.G(-492369756);
                    objH = composerS.H();
                    if (objH == Composer.Companion.a()) {
                        TextController textController13 = new TextController(new TextState(new TextDelegate(text, textStyleA, i26, z10, iA, density, resolver, listA, null), jLongValue));
                        composerS.z(textController13);
                        objH = textController13;
                    }
                    composerS.Q();
                    textController = (TextController) objH;
                    textStateK = textController.k();
                    if (!composerS.r()) {
                        textController.n(CoreTextKt.c(textStateK.i(), text, textStyleA, density, resolver, z10, iA, i26, listA));
                    }
                    textStateK.m(lVar2);
                    textStateK.p(jA12);
                    textController.o(selectionRegistrar12);
                    if (listB.isEmpty()) {
                        pVarB = ComposableSingletons$BasicTextKt.INSTANCE.a();
                    } else {
                        pVarB = ComposableLambdaKt.b(composerS, 1892283635, true, new BasicTextKt$BasicText$6(text, listB, i27));
                    }
                    Modifier modifierB12 = modifier3.B(textController.j());
                    MeasurePolicy measurePolicyI12 = textController.i();
                    composerS.G(-1323940314);
                    Density density13 = (Density) composerS.x(CompositionLocalsKt.e());
                    LayoutDirection layoutDirection12 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                    ViewConfiguration viewConfiguration12 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                    ComposeUiNode.Companion companion12 = ComposeUiNode.Companion;
                    aVarA = companion12.a();
                    q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC12 = LayoutKt.c(modifierB12);
                    if (!(composerS.t() instanceof Applier)) {
                        ComposablesKt.c();
                    }
                    composerS.e();
                    if (composerS.r()) {
                        composerS.w(aVarA);
                    } else {
                        composerS.c();
                    }
                    composerS.L();
                    Composer composerA12 = Updater.a(composerS);
                    Updater.e(composerA12, measurePolicyI12, companion12.d());
                    Updater.e(composerA12, density13, companion12.b());
                    Updater.e(composerA12, layoutDirection12, companion12.c());
                    Updater.e(composerA12, viewConfiguration12, companion12.f());
                    composerS.o();
                    qVarC12.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                    composerS.G(2058660585);
                    pVarB.invoke(composerS, 0);
                    composerS.Q();
                    composerS.d();
                    composerS.Q();
                    lVar3 = lVar2;
                    modifier4 = modifier3;
                    textStyle2 = textStyleA;
                    i28 = iA;
                    z11 = z10;
                    i29 = i26;
                    map2 = mapH;
                } else {
                    composerS.J();
                    if ((i12 & 1) != 0) {
                        if (i30 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i15 != 0) {
                            textStyleA = TextStyle.Companion.a();
                        }
                        if (i17 != 0) {
                            lVar2 = BasicTextKt$BasicText$4.INSTANCE;
                        }
                        if (i19 != 0) {
                            iA = TextOverflow.Companion.a();
                        }
                        if (i21 != 0) {
                            z10 = true;
                        } else {
                            z10 = z6;
                        }
                        if (i23 != 0) {
                            i26 = Integer.MAX_VALUE;
                        } else {
                            i26 = i11;
                        }
                        if (i25 != 0) {
                            i27 = i14 & (-29360129);
                            mapH = s0.h();
                        } else {
                            i27 = i14;
                            mapH = map;
                        }
                        modifier3 = modifier2;
                    } else {
                        if (i30 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i15 != 0) {
                            textStyleA = TextStyle.Companion.a();
                        }
                        if (i17 != 0) {
                            lVar2 = BasicTextKt$BasicText$4.INSTANCE;
                        }
                        if (i19 != 0) {
                            iA = TextOverflow.Companion.a();
                        }
                        if (i21 != 0) {
                            z10 = true;
                        } else {
                            z10 = z6;
                        }
                        if (i23 != 0) {
                            i26 = Integer.MAX_VALUE;
                        } else {
                            i26 = i11;
                        }
                        if (i25 != 0) {
                            i27 = i14 & (-29360129);
                            mapH = s0.h();
                        } else {
                            i27 = i14;
                            mapH = map;
                        }
                        modifier3 = modifier2;
                    }
                    composerS.A();
                    if (i26 <= 0) {
                        throw new IllegalArgumentException("maxLines should be greater than 0".toString());
                    }
                    SelectionRegistrar selectionRegistrar13 = (SelectionRegistrar) composerS.x(SelectionRegistrarKt.a());
                    density = (Density) composerS.x(CompositionLocalsKt.e());
                    resolver = (FontFamily.Resolver) composerS.x(CompositionLocalsKt.g());
                    long jA13 = ((TextSelectionColors) composerS.x(TextSelectionColorsKt.b())).a();
                    u<List<AnnotatedString.Range<Placeholder>>, List<AnnotatedString.Range<q<String, Composer, Integer, l0>>>> uVarB13 = CoreTextKt.b(text, mapH);
                    listA = uVarB13.a();
                    listB = uVarB13.b();
                    jLongValue = ((Number) RememberSaveableKt.b(new Object[]{text, selectionRegistrar13}, c(selectionRegistrar13), null, new BasicTextKt$BasicText$selectableId$2(selectionRegistrar13), composerS, 72, 4)).longValue();
                    composerS.G(-492369756);
                    objH = composerS.H();
                    if (objH == Composer.Companion.a()) {
                        TextController textController14 = new TextController(new TextState(new TextDelegate(text, textStyleA, i26, z10, iA, density, resolver, listA, null), jLongValue));
                        composerS.z(textController14);
                        objH = textController14;
                    }
                    composerS.Q();
                    textController = (TextController) objH;
                    textStateK = textController.k();
                    if (!composerS.r()) {
                        textController.n(CoreTextKt.c(textStateK.i(), text, textStyleA, density, resolver, z10, iA, i26, listA));
                    }
                    textStateK.m(lVar2);
                    textStateK.p(jA13);
                    textController.o(selectionRegistrar13);
                    if (listB.isEmpty()) {
                        pVarB = ComposableSingletons$BasicTextKt.INSTANCE.a();
                    } else {
                        pVarB = ComposableLambdaKt.b(composerS, 1892283635, true, new BasicTextKt$BasicText$6(text, listB, i27));
                    }
                    Modifier modifierB13 = modifier3.B(textController.j());
                    MeasurePolicy measurePolicyI13 = textController.i();
                    composerS.G(-1323940314);
                    Density density14 = (Density) composerS.x(CompositionLocalsKt.e());
                    LayoutDirection layoutDirection13 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                    ViewConfiguration viewConfiguration13 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                    ComposeUiNode.Companion companion13 = ComposeUiNode.Companion;
                    aVarA = companion13.a();
                    q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC13 = LayoutKt.c(modifierB13);
                    if (!(composerS.t() instanceof Applier)) {
                        ComposablesKt.c();
                    }
                    composerS.e();
                    if (composerS.r()) {
                        composerS.w(aVarA);
                    } else {
                        composerS.c();
                    }
                    composerS.L();
                    Composer composerA13 = Updater.a(composerS);
                    Updater.e(composerA13, measurePolicyI13, companion13.d());
                    Updater.e(composerA13, density14, companion13.b());
                    Updater.e(composerA13, layoutDirection13, companion13.c());
                    Updater.e(composerA13, viewConfiguration13, companion13.f());
                    composerS.o();
                    qVarC13.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                    composerS.G(2058660585);
                    pVarB.invoke(composerS, 0);
                    composerS.Q();
                    composerS.d();
                    composerS.Q();
                    lVar3 = lVar2;
                    modifier4 = modifier3;
                    textStyle2 = textStyleA;
                    i28 = iA;
                    z11 = z10;
                    i29 = i26;
                    map2 = mapH;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new BasicTextKt$BasicText$7(text, modifier4, textStyle2, lVar3, i28, z11, i29, map2, i12, i13));
            }
            i14 |= CpioConstants.C_ISBLK;
            iA = i10;
            i21 = i13 & 32;
            if (i21 != 0) {
                i14 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            } else if ((i12 & 458752) == 0) {
                if (composerS.m(z6)) {
                    i22 = 131072;
                } else {
                    i22 = 65536;
                }
                i14 |= i22;
            }
            i23 = i13 & 64;
            if (i23 != 0) {
                i14 |= 1572864;
            } else if ((i12 & 3670016) == 0) {
                if (composerS.p(i11)) {
                    i24 = 1048576;
                } else {
                    i24 = 524288;
                }
                i14 |= i24;
            }
            i25 = i13 & 128;
            if (i25 != 0) {
                i14 |= 4194304;
            }
            if (i25 != 128) {
                composerS.J();
                if ((i12 & 1) != 0) {
                    if (i30 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i15 != 0) {
                        textStyleA = TextStyle.Companion.a();
                    }
                    if (i17 != 0) {
                        lVar2 = BasicTextKt$BasicText$4.INSTANCE;
                    }
                    if (i19 != 0) {
                        iA = TextOverflow.Companion.a();
                    }
                    if (i21 != 0) {
                        z10 = true;
                    } else {
                        z10 = z6;
                    }
                    if (i23 != 0) {
                        i26 = Integer.MAX_VALUE;
                    } else {
                        i26 = i11;
                    }
                    if (i25 != 0) {
                        i27 = i14 & (-29360129);
                        mapH = s0.h();
                    } else {
                        i27 = i14;
                        mapH = map;
                    }
                    modifier3 = modifier2;
                } else {
                    if (i30 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i15 != 0) {
                        textStyleA = TextStyle.Companion.a();
                    }
                    if (i17 != 0) {
                        lVar2 = BasicTextKt$BasicText$4.INSTANCE;
                    }
                    if (i19 != 0) {
                        iA = TextOverflow.Companion.a();
                    }
                    if (i21 != 0) {
                        z10 = true;
                    } else {
                        z10 = z6;
                    }
                    if (i23 != 0) {
                        i26 = Integer.MAX_VALUE;
                    } else {
                        i26 = i11;
                    }
                    if (i25 != 0) {
                        i27 = i14 & (-29360129);
                        mapH = s0.h();
                    } else {
                        i27 = i14;
                        mapH = map;
                    }
                    modifier3 = modifier2;
                }
                composerS.A();
                if (i26 <= 0) {
                    throw new IllegalArgumentException("maxLines should be greater than 0".toString());
                }
                SelectionRegistrar selectionRegistrar14 = (SelectionRegistrar) composerS.x(SelectionRegistrarKt.a());
                density = (Density) composerS.x(CompositionLocalsKt.e());
                resolver = (FontFamily.Resolver) composerS.x(CompositionLocalsKt.g());
                long jA14 = ((TextSelectionColors) composerS.x(TextSelectionColorsKt.b())).a();
                u<List<AnnotatedString.Range<Placeholder>>, List<AnnotatedString.Range<q<String, Composer, Integer, l0>>>> uVarB14 = CoreTextKt.b(text, mapH);
                listA = uVarB14.a();
                listB = uVarB14.b();
                jLongValue = ((Number) RememberSaveableKt.b(new Object[]{text, selectionRegistrar14}, c(selectionRegistrar14), null, new BasicTextKt$BasicText$selectableId$2(selectionRegistrar14), composerS, 72, 4)).longValue();
                composerS.G(-492369756);
                objH = composerS.H();
                if (objH == Composer.Companion.a()) {
                    TextController textController15 = new TextController(new TextState(new TextDelegate(text, textStyleA, i26, z10, iA, density, resolver, listA, null), jLongValue));
                    composerS.z(textController15);
                    objH = textController15;
                }
                composerS.Q();
                textController = (TextController) objH;
                textStateK = textController.k();
                if (!composerS.r()) {
                    textController.n(CoreTextKt.c(textStateK.i(), text, textStyleA, density, resolver, z10, iA, i26, listA));
                }
                textStateK.m(lVar2);
                textStateK.p(jA14);
                textController.o(selectionRegistrar14);
                if (listB.isEmpty()) {
                    pVarB = ComposableSingletons$BasicTextKt.INSTANCE.a();
                } else {
                    pVarB = ComposableLambdaKt.b(composerS, 1892283635, true, new BasicTextKt$BasicText$6(text, listB, i27));
                }
                Modifier modifierB14 = modifier3.B(textController.j());
                MeasurePolicy measurePolicyI14 = textController.i();
                composerS.G(-1323940314);
                Density density15 = (Density) composerS.x(CompositionLocalsKt.e());
                LayoutDirection layoutDirection14 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                ViewConfiguration viewConfiguration14 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                ComposeUiNode.Companion companion14 = ComposeUiNode.Companion;
                aVarA = companion14.a();
                q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC14 = LayoutKt.c(modifierB14);
                if (!(composerS.t() instanceof Applier)) {
                    ComposablesKt.c();
                }
                composerS.e();
                if (composerS.r()) {
                    composerS.w(aVarA);
                } else {
                    composerS.c();
                }
                composerS.L();
                Composer composerA14 = Updater.a(composerS);
                Updater.e(composerA14, measurePolicyI14, companion14.d());
                Updater.e(composerA14, density15, companion14.b());
                Updater.e(composerA14, layoutDirection14, companion14.c());
                Updater.e(composerA14, viewConfiguration14, companion14.f());
                composerS.o();
                qVarC14.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                composerS.G(2058660585);
                pVarB.invoke(composerS, 0);
                composerS.Q();
                composerS.d();
                composerS.Q();
                lVar3 = lVar2;
                modifier4 = modifier3;
                textStyle2 = textStyleA;
                i28 = iA;
                z11 = z10;
                i29 = i26;
                map2 = mapH;
            } else {
                composerS.J();
                if ((i12 & 1) != 0) {
                    if (i30 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i15 != 0) {
                        textStyleA = TextStyle.Companion.a();
                    }
                    if (i17 != 0) {
                        lVar2 = BasicTextKt$BasicText$4.INSTANCE;
                    }
                    if (i19 != 0) {
                        iA = TextOverflow.Companion.a();
                    }
                    if (i21 != 0) {
                        z10 = true;
                    } else {
                        z10 = z6;
                    }
                    if (i23 != 0) {
                        i26 = Integer.MAX_VALUE;
                    } else {
                        i26 = i11;
                    }
                    if (i25 != 0) {
                        i27 = i14 & (-29360129);
                        mapH = s0.h();
                    } else {
                        i27 = i14;
                        mapH = map;
                    }
                    modifier3 = modifier2;
                } else {
                    if (i30 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i15 != 0) {
                        textStyleA = TextStyle.Companion.a();
                    }
                    if (i17 != 0) {
                        lVar2 = BasicTextKt$BasicText$4.INSTANCE;
                    }
                    if (i19 != 0) {
                        iA = TextOverflow.Companion.a();
                    }
                    if (i21 != 0) {
                        z10 = true;
                    } else {
                        z10 = z6;
                    }
                    if (i23 != 0) {
                        i26 = Integer.MAX_VALUE;
                    } else {
                        i26 = i11;
                    }
                    if (i25 != 0) {
                        i27 = i14 & (-29360129);
                        mapH = s0.h();
                    } else {
                        i27 = i14;
                        mapH = map;
                    }
                    modifier3 = modifier2;
                }
                composerS.A();
                if (i26 <= 0) {
                    throw new IllegalArgumentException("maxLines should be greater than 0".toString());
                }
                SelectionRegistrar selectionRegistrar15 = (SelectionRegistrar) composerS.x(SelectionRegistrarKt.a());
                density = (Density) composerS.x(CompositionLocalsKt.e());
                resolver = (FontFamily.Resolver) composerS.x(CompositionLocalsKt.g());
                long jA15 = ((TextSelectionColors) composerS.x(TextSelectionColorsKt.b())).a();
                u<List<AnnotatedString.Range<Placeholder>>, List<AnnotatedString.Range<q<String, Composer, Integer, l0>>>> uVarB15 = CoreTextKt.b(text, mapH);
                listA = uVarB15.a();
                listB = uVarB15.b();
                jLongValue = ((Number) RememberSaveableKt.b(new Object[]{text, selectionRegistrar15}, c(selectionRegistrar15), null, new BasicTextKt$BasicText$selectableId$2(selectionRegistrar15), composerS, 72, 4)).longValue();
                composerS.G(-492369756);
                objH = composerS.H();
                if (objH == Composer.Companion.a()) {
                    TextController textController16 = new TextController(new TextState(new TextDelegate(text, textStyleA, i26, z10, iA, density, resolver, listA, null), jLongValue));
                    composerS.z(textController16);
                    objH = textController16;
                }
                composerS.Q();
                textController = (TextController) objH;
                textStateK = textController.k();
                if (!composerS.r()) {
                    textController.n(CoreTextKt.c(textStateK.i(), text, textStyleA, density, resolver, z10, iA, i26, listA));
                }
                textStateK.m(lVar2);
                textStateK.p(jA15);
                textController.o(selectionRegistrar15);
                if (listB.isEmpty()) {
                    pVarB = ComposableSingletons$BasicTextKt.INSTANCE.a();
                } else {
                    pVarB = ComposableLambdaKt.b(composerS, 1892283635, true, new BasicTextKt$BasicText$6(text, listB, i27));
                }
                Modifier modifierB15 = modifier3.B(textController.j());
                MeasurePolicy measurePolicyI15 = textController.i();
                composerS.G(-1323940314);
                Density density16 = (Density) composerS.x(CompositionLocalsKt.e());
                LayoutDirection layoutDirection15 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                ViewConfiguration viewConfiguration15 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                ComposeUiNode.Companion companion15 = ComposeUiNode.Companion;
                aVarA = companion15.a();
                q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC15 = LayoutKt.c(modifierB15);
                if (!(composerS.t() instanceof Applier)) {
                    ComposablesKt.c();
                }
                composerS.e();
                if (composerS.r()) {
                    composerS.w(aVarA);
                } else {
                    composerS.c();
                }
                composerS.L();
                Composer composerA15 = Updater.a(composerS);
                Updater.e(composerA15, measurePolicyI15, companion15.d());
                Updater.e(composerA15, density16, companion15.b());
                Updater.e(composerA15, layoutDirection15, companion15.c());
                Updater.e(composerA15, viewConfiguration15, companion15.f());
                composerS.o();
                qVarC15.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                composerS.G(2058660585);
                pVarB.invoke(composerS, 0);
                composerS.Q();
                composerS.d();
                composerS.Q();
                lVar3 = lVar2;
                modifier4 = modifier3;
                textStyle2 = textStyleA;
                i28 = iA;
                z11 = z10;
                i29 = i26;
                map2 = mapH;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new BasicTextKt$BasicText$7(text, modifier4, textStyle2, lVar3, i28, z11, i29, map2, i12, i13));
        }
        i14 |= 48;
        i15 = i13 & 4;
        if (i15 != 0) {
            if ((i12 & 896) == 0) {
                textStyleA = textStyle;
                if (composerS.k(textStyleA)) {
                    i16 = 256;
                } else {
                    i16 = 128;
                }
                i14 |= i16;
            }
            i17 = i13 & 8;
            if (i17 != 0) {
                if ((i12 & 7168) == 0) {
                    lVar2 = lVar;
                    if (composerS.k(lVar2)) {
                        i18 = 2048;
                    } else {
                        i18 = 1024;
                    }
                    i14 |= i18;
                }
                i19 = i13 & 16;
                if (i19 != 0) {
                    if ((57344 & i12) == 0) {
                        iA = i10;
                        if (composerS.p(iA)) {
                            i20 = 16384;
                        } else {
                            i20 = 8192;
                        }
                        i14 |= i20;
                    }
                    i21 = i13 & 32;
                    if (i21 != 0) {
                        i14 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                    } else if ((i12 & 458752) == 0) {
                        if (composerS.m(z6)) {
                            i22 = 131072;
                        } else {
                            i22 = 65536;
                        }
                        i14 |= i22;
                    }
                    i23 = i13 & 64;
                    if (i23 != 0) {
                        i14 |= 1572864;
                    } else if ((i12 & 3670016) == 0) {
                        if (composerS.p(i11)) {
                            i24 = 1048576;
                        } else {
                            i24 = 524288;
                        }
                        i14 |= i24;
                    }
                    i25 = i13 & 128;
                    if (i25 != 0) {
                        i14 |= 4194304;
                    }
                    if (i25 != 128) {
                        composerS.J();
                        if ((i12 & 1) != 0) {
                            if (i30 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i15 != 0) {
                                textStyleA = TextStyle.Companion.a();
                            }
                            if (i17 != 0) {
                                lVar2 = BasicTextKt$BasicText$4.INSTANCE;
                            }
                            if (i19 != 0) {
                                iA = TextOverflow.Companion.a();
                            }
                            if (i21 != 0) {
                                z10 = true;
                            } else {
                                z10 = z6;
                            }
                            if (i23 != 0) {
                                i26 = Integer.MAX_VALUE;
                            } else {
                                i26 = i11;
                            }
                            if (i25 != 0) {
                                i27 = i14 & (-29360129);
                                mapH = s0.h();
                            } else {
                                i27 = i14;
                                mapH = map;
                            }
                            modifier3 = modifier2;
                        } else {
                            if (i30 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i15 != 0) {
                                textStyleA = TextStyle.Companion.a();
                            }
                            if (i17 != 0) {
                                lVar2 = BasicTextKt$BasicText$4.INSTANCE;
                            }
                            if (i19 != 0) {
                                iA = TextOverflow.Companion.a();
                            }
                            if (i21 != 0) {
                                z10 = true;
                            } else {
                                z10 = z6;
                            }
                            if (i23 != 0) {
                                i26 = Integer.MAX_VALUE;
                            } else {
                                i26 = i11;
                            }
                            if (i25 != 0) {
                                i27 = i14 & (-29360129);
                                mapH = s0.h();
                            } else {
                                i27 = i14;
                                mapH = map;
                            }
                            modifier3 = modifier2;
                        }
                        composerS.A();
                        if (i26 <= 0) {
                            throw new IllegalArgumentException("maxLines should be greater than 0".toString());
                        }
                        SelectionRegistrar selectionRegistrar16 = (SelectionRegistrar) composerS.x(SelectionRegistrarKt.a());
                        density = (Density) composerS.x(CompositionLocalsKt.e());
                        resolver = (FontFamily.Resolver) composerS.x(CompositionLocalsKt.g());
                        long jA16 = ((TextSelectionColors) composerS.x(TextSelectionColorsKt.b())).a();
                        u<List<AnnotatedString.Range<Placeholder>>, List<AnnotatedString.Range<q<String, Composer, Integer, l0>>>> uVarB16 = CoreTextKt.b(text, mapH);
                        listA = uVarB16.a();
                        listB = uVarB16.b();
                        jLongValue = ((Number) RememberSaveableKt.b(new Object[]{text, selectionRegistrar16}, c(selectionRegistrar16), null, new BasicTextKt$BasicText$selectableId$2(selectionRegistrar16), composerS, 72, 4)).longValue();
                        composerS.G(-492369756);
                        objH = composerS.H();
                        if (objH == Composer.Companion.a()) {
                            TextController textController17 = new TextController(new TextState(new TextDelegate(text, textStyleA, i26, z10, iA, density, resolver, listA, null), jLongValue));
                            composerS.z(textController17);
                            objH = textController17;
                        }
                        composerS.Q();
                        textController = (TextController) objH;
                        textStateK = textController.k();
                        if (!composerS.r()) {
                            textController.n(CoreTextKt.c(textStateK.i(), text, textStyleA, density, resolver, z10, iA, i26, listA));
                        }
                        textStateK.m(lVar2);
                        textStateK.p(jA16);
                        textController.o(selectionRegistrar16);
                        if (listB.isEmpty()) {
                            pVarB = ComposableSingletons$BasicTextKt.INSTANCE.a();
                        } else {
                            pVarB = ComposableLambdaKt.b(composerS, 1892283635, true, new BasicTextKt$BasicText$6(text, listB, i27));
                        }
                        Modifier modifierB16 = modifier3.B(textController.j());
                        MeasurePolicy measurePolicyI16 = textController.i();
                        composerS.G(-1323940314);
                        Density density17 = (Density) composerS.x(CompositionLocalsKt.e());
                        LayoutDirection layoutDirection16 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                        ViewConfiguration viewConfiguration16 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                        ComposeUiNode.Companion companion16 = ComposeUiNode.Companion;
                        aVarA = companion16.a();
                        q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC16 = LayoutKt.c(modifierB16);
                        if (!(composerS.t() instanceof Applier)) {
                            ComposablesKt.c();
                        }
                        composerS.e();
                        if (composerS.r()) {
                            composerS.w(aVarA);
                        } else {
                            composerS.c();
                        }
                        composerS.L();
                        Composer composerA16 = Updater.a(composerS);
                        Updater.e(composerA16, measurePolicyI16, companion16.d());
                        Updater.e(composerA16, density17, companion16.b());
                        Updater.e(composerA16, layoutDirection16, companion16.c());
                        Updater.e(composerA16, viewConfiguration16, companion16.f());
                        composerS.o();
                        qVarC16.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                        composerS.G(2058660585);
                        pVarB.invoke(composerS, 0);
                        composerS.Q();
                        composerS.d();
                        composerS.Q();
                        lVar3 = lVar2;
                        modifier4 = modifier3;
                        textStyle2 = textStyleA;
                        i28 = iA;
                        z11 = z10;
                        i29 = i26;
                        map2 = mapH;
                    } else {
                        composerS.J();
                        if ((i12 & 1) != 0) {
                            if (i30 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i15 != 0) {
                                textStyleA = TextStyle.Companion.a();
                            }
                            if (i17 != 0) {
                                lVar2 = BasicTextKt$BasicText$4.INSTANCE;
                            }
                            if (i19 != 0) {
                                iA = TextOverflow.Companion.a();
                            }
                            if (i21 != 0) {
                                z10 = true;
                            } else {
                                z10 = z6;
                            }
                            if (i23 != 0) {
                                i26 = Integer.MAX_VALUE;
                            } else {
                                i26 = i11;
                            }
                            if (i25 != 0) {
                                i27 = i14 & (-29360129);
                                mapH = s0.h();
                            } else {
                                i27 = i14;
                                mapH = map;
                            }
                            modifier3 = modifier2;
                        } else {
                            if (i30 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i15 != 0) {
                                textStyleA = TextStyle.Companion.a();
                            }
                            if (i17 != 0) {
                                lVar2 = BasicTextKt$BasicText$4.INSTANCE;
                            }
                            if (i19 != 0) {
                                iA = TextOverflow.Companion.a();
                            }
                            if (i21 != 0) {
                                z10 = true;
                            } else {
                                z10 = z6;
                            }
                            if (i23 != 0) {
                                i26 = Integer.MAX_VALUE;
                            } else {
                                i26 = i11;
                            }
                            if (i25 != 0) {
                                i27 = i14 & (-29360129);
                                mapH = s0.h();
                            } else {
                                i27 = i14;
                                mapH = map;
                            }
                            modifier3 = modifier2;
                        }
                        composerS.A();
                        if (i26 <= 0) {
                            throw new IllegalArgumentException("maxLines should be greater than 0".toString());
                        }
                        SelectionRegistrar selectionRegistrar17 = (SelectionRegistrar) composerS.x(SelectionRegistrarKt.a());
                        density = (Density) composerS.x(CompositionLocalsKt.e());
                        resolver = (FontFamily.Resolver) composerS.x(CompositionLocalsKt.g());
                        long jA17 = ((TextSelectionColors) composerS.x(TextSelectionColorsKt.b())).a();
                        u<List<AnnotatedString.Range<Placeholder>>, List<AnnotatedString.Range<q<String, Composer, Integer, l0>>>> uVarB17 = CoreTextKt.b(text, mapH);
                        listA = uVarB17.a();
                        listB = uVarB17.b();
                        jLongValue = ((Number) RememberSaveableKt.b(new Object[]{text, selectionRegistrar17}, c(selectionRegistrar17), null, new BasicTextKt$BasicText$selectableId$2(selectionRegistrar17), composerS, 72, 4)).longValue();
                        composerS.G(-492369756);
                        objH = composerS.H();
                        if (objH == Composer.Companion.a()) {
                            TextController textController18 = new TextController(new TextState(new TextDelegate(text, textStyleA, i26, z10, iA, density, resolver, listA, null), jLongValue));
                            composerS.z(textController18);
                            objH = textController18;
                        }
                        composerS.Q();
                        textController = (TextController) objH;
                        textStateK = textController.k();
                        if (!composerS.r()) {
                            textController.n(CoreTextKt.c(textStateK.i(), text, textStyleA, density, resolver, z10, iA, i26, listA));
                        }
                        textStateK.m(lVar2);
                        textStateK.p(jA17);
                        textController.o(selectionRegistrar17);
                        if (listB.isEmpty()) {
                            pVarB = ComposableSingletons$BasicTextKt.INSTANCE.a();
                        } else {
                            pVarB = ComposableLambdaKt.b(composerS, 1892283635, true, new BasicTextKt$BasicText$6(text, listB, i27));
                        }
                        Modifier modifierB17 = modifier3.B(textController.j());
                        MeasurePolicy measurePolicyI17 = textController.i();
                        composerS.G(-1323940314);
                        Density density18 = (Density) composerS.x(CompositionLocalsKt.e());
                        LayoutDirection layoutDirection17 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                        ViewConfiguration viewConfiguration17 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                        ComposeUiNode.Companion companion17 = ComposeUiNode.Companion;
                        aVarA = companion17.a();
                        q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC17 = LayoutKt.c(modifierB17);
                        if (!(composerS.t() instanceof Applier)) {
                            ComposablesKt.c();
                        }
                        composerS.e();
                        if (composerS.r()) {
                            composerS.w(aVarA);
                        } else {
                            composerS.c();
                        }
                        composerS.L();
                        Composer composerA17 = Updater.a(composerS);
                        Updater.e(composerA17, measurePolicyI17, companion17.d());
                        Updater.e(composerA17, density18, companion17.b());
                        Updater.e(composerA17, layoutDirection17, companion17.c());
                        Updater.e(composerA17, viewConfiguration17, companion17.f());
                        composerS.o();
                        qVarC17.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                        composerS.G(2058660585);
                        pVarB.invoke(composerS, 0);
                        composerS.Q();
                        composerS.d();
                        composerS.Q();
                        lVar3 = lVar2;
                        modifier4 = modifier3;
                        textStyle2 = textStyleA;
                        i28 = iA;
                        z11 = z10;
                        i29 = i26;
                        map2 = mapH;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new BasicTextKt$BasicText$7(text, modifier4, textStyle2, lVar3, i28, z11, i29, map2, i12, i13));
                }
                i14 |= CpioConstants.C_ISBLK;
                iA = i10;
                i21 = i13 & 32;
                if (i21 != 0) {
                    i14 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                } else if ((i12 & 458752) == 0) {
                    if (composerS.m(z6)) {
                        i22 = 131072;
                    } else {
                        i22 = 65536;
                    }
                    i14 |= i22;
                }
                i23 = i13 & 64;
                if (i23 != 0) {
                    i14 |= 1572864;
                } else if ((i12 & 3670016) == 0) {
                    if (composerS.p(i11)) {
                        i24 = 1048576;
                    } else {
                        i24 = 524288;
                    }
                    i14 |= i24;
                }
                i25 = i13 & 128;
                if (i25 != 0) {
                    i14 |= 4194304;
                }
                if (i25 != 128) {
                    composerS.J();
                    if ((i12 & 1) != 0) {
                        if (i30 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i15 != 0) {
                            textStyleA = TextStyle.Companion.a();
                        }
                        if (i17 != 0) {
                            lVar2 = BasicTextKt$BasicText$4.INSTANCE;
                        }
                        if (i19 != 0) {
                            iA = TextOverflow.Companion.a();
                        }
                        if (i21 != 0) {
                            z10 = true;
                        } else {
                            z10 = z6;
                        }
                        if (i23 != 0) {
                            i26 = Integer.MAX_VALUE;
                        } else {
                            i26 = i11;
                        }
                        if (i25 != 0) {
                            i27 = i14 & (-29360129);
                            mapH = s0.h();
                        } else {
                            i27 = i14;
                            mapH = map;
                        }
                        modifier3 = modifier2;
                    } else {
                        if (i30 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i15 != 0) {
                            textStyleA = TextStyle.Companion.a();
                        }
                        if (i17 != 0) {
                            lVar2 = BasicTextKt$BasicText$4.INSTANCE;
                        }
                        if (i19 != 0) {
                            iA = TextOverflow.Companion.a();
                        }
                        if (i21 != 0) {
                            z10 = true;
                        } else {
                            z10 = z6;
                        }
                        if (i23 != 0) {
                            i26 = Integer.MAX_VALUE;
                        } else {
                            i26 = i11;
                        }
                        if (i25 != 0) {
                            i27 = i14 & (-29360129);
                            mapH = s0.h();
                        } else {
                            i27 = i14;
                            mapH = map;
                        }
                        modifier3 = modifier2;
                    }
                    composerS.A();
                    if (i26 <= 0) {
                        throw new IllegalArgumentException("maxLines should be greater than 0".toString());
                    }
                    SelectionRegistrar selectionRegistrar18 = (SelectionRegistrar) composerS.x(SelectionRegistrarKt.a());
                    density = (Density) composerS.x(CompositionLocalsKt.e());
                    resolver = (FontFamily.Resolver) composerS.x(CompositionLocalsKt.g());
                    long jA18 = ((TextSelectionColors) composerS.x(TextSelectionColorsKt.b())).a();
                    u<List<AnnotatedString.Range<Placeholder>>, List<AnnotatedString.Range<q<String, Composer, Integer, l0>>>> uVarB18 = CoreTextKt.b(text, mapH);
                    listA = uVarB18.a();
                    listB = uVarB18.b();
                    jLongValue = ((Number) RememberSaveableKt.b(new Object[]{text, selectionRegistrar18}, c(selectionRegistrar18), null, new BasicTextKt$BasicText$selectableId$2(selectionRegistrar18), composerS, 72, 4)).longValue();
                    composerS.G(-492369756);
                    objH = composerS.H();
                    if (objH == Composer.Companion.a()) {
                        TextController textController19 = new TextController(new TextState(new TextDelegate(text, textStyleA, i26, z10, iA, density, resolver, listA, null), jLongValue));
                        composerS.z(textController19);
                        objH = textController19;
                    }
                    composerS.Q();
                    textController = (TextController) objH;
                    textStateK = textController.k();
                    if (!composerS.r()) {
                        textController.n(CoreTextKt.c(textStateK.i(), text, textStyleA, density, resolver, z10, iA, i26, listA));
                    }
                    textStateK.m(lVar2);
                    textStateK.p(jA18);
                    textController.o(selectionRegistrar18);
                    if (listB.isEmpty()) {
                        pVarB = ComposableSingletons$BasicTextKt.INSTANCE.a();
                    } else {
                        pVarB = ComposableLambdaKt.b(composerS, 1892283635, true, new BasicTextKt$BasicText$6(text, listB, i27));
                    }
                    Modifier modifierB18 = modifier3.B(textController.j());
                    MeasurePolicy measurePolicyI18 = textController.i();
                    composerS.G(-1323940314);
                    Density density19 = (Density) composerS.x(CompositionLocalsKt.e());
                    LayoutDirection layoutDirection18 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                    ViewConfiguration viewConfiguration18 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                    ComposeUiNode.Companion companion18 = ComposeUiNode.Companion;
                    aVarA = companion18.a();
                    q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC18 = LayoutKt.c(modifierB18);
                    if (!(composerS.t() instanceof Applier)) {
                        ComposablesKt.c();
                    }
                    composerS.e();
                    if (composerS.r()) {
                        composerS.w(aVarA);
                    } else {
                        composerS.c();
                    }
                    composerS.L();
                    Composer composerA18 = Updater.a(composerS);
                    Updater.e(composerA18, measurePolicyI18, companion18.d());
                    Updater.e(composerA18, density19, companion18.b());
                    Updater.e(composerA18, layoutDirection18, companion18.c());
                    Updater.e(composerA18, viewConfiguration18, companion18.f());
                    composerS.o();
                    qVarC18.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                    composerS.G(2058660585);
                    pVarB.invoke(composerS, 0);
                    composerS.Q();
                    composerS.d();
                    composerS.Q();
                    lVar3 = lVar2;
                    modifier4 = modifier3;
                    textStyle2 = textStyleA;
                    i28 = iA;
                    z11 = z10;
                    i29 = i26;
                    map2 = mapH;
                } else {
                    composerS.J();
                    if ((i12 & 1) != 0) {
                        if (i30 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i15 != 0) {
                            textStyleA = TextStyle.Companion.a();
                        }
                        if (i17 != 0) {
                            lVar2 = BasicTextKt$BasicText$4.INSTANCE;
                        }
                        if (i19 != 0) {
                            iA = TextOverflow.Companion.a();
                        }
                        if (i21 != 0) {
                            z10 = true;
                        } else {
                            z10 = z6;
                        }
                        if (i23 != 0) {
                            i26 = Integer.MAX_VALUE;
                        } else {
                            i26 = i11;
                        }
                        if (i25 != 0) {
                            i27 = i14 & (-29360129);
                            mapH = s0.h();
                        } else {
                            i27 = i14;
                            mapH = map;
                        }
                        modifier3 = modifier2;
                    } else {
                        if (i30 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i15 != 0) {
                            textStyleA = TextStyle.Companion.a();
                        }
                        if (i17 != 0) {
                            lVar2 = BasicTextKt$BasicText$4.INSTANCE;
                        }
                        if (i19 != 0) {
                            iA = TextOverflow.Companion.a();
                        }
                        if (i21 != 0) {
                            z10 = true;
                        } else {
                            z10 = z6;
                        }
                        if (i23 != 0) {
                            i26 = Integer.MAX_VALUE;
                        } else {
                            i26 = i11;
                        }
                        if (i25 != 0) {
                            i27 = i14 & (-29360129);
                            mapH = s0.h();
                        } else {
                            i27 = i14;
                            mapH = map;
                        }
                        modifier3 = modifier2;
                    }
                    composerS.A();
                    if (i26 <= 0) {
                        throw new IllegalArgumentException("maxLines should be greater than 0".toString());
                    }
                    SelectionRegistrar selectionRegistrar19 = (SelectionRegistrar) composerS.x(SelectionRegistrarKt.a());
                    density = (Density) composerS.x(CompositionLocalsKt.e());
                    resolver = (FontFamily.Resolver) composerS.x(CompositionLocalsKt.g());
                    long jA19 = ((TextSelectionColors) composerS.x(TextSelectionColorsKt.b())).a();
                    u<List<AnnotatedString.Range<Placeholder>>, List<AnnotatedString.Range<q<String, Composer, Integer, l0>>>> uVarB19 = CoreTextKt.b(text, mapH);
                    listA = uVarB19.a();
                    listB = uVarB19.b();
                    jLongValue = ((Number) RememberSaveableKt.b(new Object[]{text, selectionRegistrar19}, c(selectionRegistrar19), null, new BasicTextKt$BasicText$selectableId$2(selectionRegistrar19), composerS, 72, 4)).longValue();
                    composerS.G(-492369756);
                    objH = composerS.H();
                    if (objH == Composer.Companion.a()) {
                        TextController textController110 = new TextController(new TextState(new TextDelegate(text, textStyleA, i26, z10, iA, density, resolver, listA, null), jLongValue));
                        composerS.z(textController110);
                        objH = textController110;
                    }
                    composerS.Q();
                    textController = (TextController) objH;
                    textStateK = textController.k();
                    if (!composerS.r()) {
                        textController.n(CoreTextKt.c(textStateK.i(), text, textStyleA, density, resolver, z10, iA, i26, listA));
                    }
                    textStateK.m(lVar2);
                    textStateK.p(jA19);
                    textController.o(selectionRegistrar19);
                    if (listB.isEmpty()) {
                        pVarB = ComposableSingletons$BasicTextKt.INSTANCE.a();
                    } else {
                        pVarB = ComposableLambdaKt.b(composerS, 1892283635, true, new BasicTextKt$BasicText$6(text, listB, i27));
                    }
                    Modifier modifierB19 = modifier3.B(textController.j());
                    MeasurePolicy measurePolicyI19 = textController.i();
                    composerS.G(-1323940314);
                    Density density110 = (Density) composerS.x(CompositionLocalsKt.e());
                    LayoutDirection layoutDirection19 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                    ViewConfiguration viewConfiguration19 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                    ComposeUiNode.Companion companion19 = ComposeUiNode.Companion;
                    aVarA = companion19.a();
                    q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC19 = LayoutKt.c(modifierB19);
                    if (!(composerS.t() instanceof Applier)) {
                        ComposablesKt.c();
                    }
                    composerS.e();
                    if (composerS.r()) {
                        composerS.w(aVarA);
                    } else {
                        composerS.c();
                    }
                    composerS.L();
                    Composer composerA19 = Updater.a(composerS);
                    Updater.e(composerA19, measurePolicyI19, companion19.d());
                    Updater.e(composerA19, density110, companion19.b());
                    Updater.e(composerA19, layoutDirection19, companion19.c());
                    Updater.e(composerA19, viewConfiguration19, companion19.f());
                    composerS.o();
                    qVarC19.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                    composerS.G(2058660585);
                    pVarB.invoke(composerS, 0);
                    composerS.Q();
                    composerS.d();
                    composerS.Q();
                    lVar3 = lVar2;
                    modifier4 = modifier3;
                    textStyle2 = textStyleA;
                    i28 = iA;
                    z11 = z10;
                    i29 = i26;
                    map2 = mapH;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new BasicTextKt$BasicText$7(text, modifier4, textStyle2, lVar3, i28, z11, i29, map2, i12, i13));
            }
            i14 |= 3072;
            lVar2 = lVar;
            i19 = i13 & 16;
            if (i19 != 0) {
                if ((57344 & i12) == 0) {
                    iA = i10;
                    if (composerS.p(iA)) {
                        i20 = 16384;
                    } else {
                        i20 = 8192;
                    }
                    i14 |= i20;
                }
                i21 = i13 & 32;
                if (i21 != 0) {
                    i14 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                } else if ((i12 & 458752) == 0) {
                    if (composerS.m(z6)) {
                        i22 = 131072;
                    } else {
                        i22 = 65536;
                    }
                    i14 |= i22;
                }
                i23 = i13 & 64;
                if (i23 != 0) {
                    i14 |= 1572864;
                } else if ((i12 & 3670016) == 0) {
                    if (composerS.p(i11)) {
                        i24 = 1048576;
                    } else {
                        i24 = 524288;
                    }
                    i14 |= i24;
                }
                i25 = i13 & 128;
                if (i25 != 0) {
                    i14 |= 4194304;
                }
                if (i25 != 128) {
                    composerS.J();
                    if ((i12 & 1) != 0) {
                        if (i30 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i15 != 0) {
                            textStyleA = TextStyle.Companion.a();
                        }
                        if (i17 != 0) {
                            lVar2 = BasicTextKt$BasicText$4.INSTANCE;
                        }
                        if (i19 != 0) {
                            iA = TextOverflow.Companion.a();
                        }
                        if (i21 != 0) {
                            z10 = true;
                        } else {
                            z10 = z6;
                        }
                        if (i23 != 0) {
                            i26 = Integer.MAX_VALUE;
                        } else {
                            i26 = i11;
                        }
                        if (i25 != 0) {
                            i27 = i14 & (-29360129);
                            mapH = s0.h();
                        } else {
                            i27 = i14;
                            mapH = map;
                        }
                        modifier3 = modifier2;
                    } else {
                        if (i30 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i15 != 0) {
                            textStyleA = TextStyle.Companion.a();
                        }
                        if (i17 != 0) {
                            lVar2 = BasicTextKt$BasicText$4.INSTANCE;
                        }
                        if (i19 != 0) {
                            iA = TextOverflow.Companion.a();
                        }
                        if (i21 != 0) {
                            z10 = true;
                        } else {
                            z10 = z6;
                        }
                        if (i23 != 0) {
                            i26 = Integer.MAX_VALUE;
                        } else {
                            i26 = i11;
                        }
                        if (i25 != 0) {
                            i27 = i14 & (-29360129);
                            mapH = s0.h();
                        } else {
                            i27 = i14;
                            mapH = map;
                        }
                        modifier3 = modifier2;
                    }
                    composerS.A();
                    if (i26 <= 0) {
                        throw new IllegalArgumentException("maxLines should be greater than 0".toString());
                    }
                    SelectionRegistrar selectionRegistrar110 = (SelectionRegistrar) composerS.x(SelectionRegistrarKt.a());
                    density = (Density) composerS.x(CompositionLocalsKt.e());
                    resolver = (FontFamily.Resolver) composerS.x(CompositionLocalsKt.g());
                    long jA110 = ((TextSelectionColors) composerS.x(TextSelectionColorsKt.b())).a();
                    u<List<AnnotatedString.Range<Placeholder>>, List<AnnotatedString.Range<q<String, Composer, Integer, l0>>>> uVarB110 = CoreTextKt.b(text, mapH);
                    listA = uVarB110.a();
                    listB = uVarB110.b();
                    jLongValue = ((Number) RememberSaveableKt.b(new Object[]{text, selectionRegistrar110}, c(selectionRegistrar110), null, new BasicTextKt$BasicText$selectableId$2(selectionRegistrar110), composerS, 72, 4)).longValue();
                    composerS.G(-492369756);
                    objH = composerS.H();
                    if (objH == Composer.Companion.a()) {
                        TextController textController111 = new TextController(new TextState(new TextDelegate(text, textStyleA, i26, z10, iA, density, resolver, listA, null), jLongValue));
                        composerS.z(textController111);
                        objH = textController111;
                    }
                    composerS.Q();
                    textController = (TextController) objH;
                    textStateK = textController.k();
                    if (!composerS.r()) {
                        textController.n(CoreTextKt.c(textStateK.i(), text, textStyleA, density, resolver, z10, iA, i26, listA));
                    }
                    textStateK.m(lVar2);
                    textStateK.p(jA110);
                    textController.o(selectionRegistrar110);
                    if (listB.isEmpty()) {
                        pVarB = ComposableSingletons$BasicTextKt.INSTANCE.a();
                    } else {
                        pVarB = ComposableLambdaKt.b(composerS, 1892283635, true, new BasicTextKt$BasicText$6(text, listB, i27));
                    }
                    Modifier modifierB110 = modifier3.B(textController.j());
                    MeasurePolicy measurePolicyI110 = textController.i();
                    composerS.G(-1323940314);
                    Density density111 = (Density) composerS.x(CompositionLocalsKt.e());
                    LayoutDirection layoutDirection110 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                    ViewConfiguration viewConfiguration110 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                    ComposeUiNode.Companion companion110 = ComposeUiNode.Companion;
                    aVarA = companion110.a();
                    q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC110 = LayoutKt.c(modifierB110);
                    if (!(composerS.t() instanceof Applier)) {
                        ComposablesKt.c();
                    }
                    composerS.e();
                    if (composerS.r()) {
                        composerS.w(aVarA);
                    } else {
                        composerS.c();
                    }
                    composerS.L();
                    Composer composerA110 = Updater.a(composerS);
                    Updater.e(composerA110, measurePolicyI110, companion110.d());
                    Updater.e(composerA110, density111, companion110.b());
                    Updater.e(composerA110, layoutDirection110, companion110.c());
                    Updater.e(composerA110, viewConfiguration110, companion110.f());
                    composerS.o();
                    qVarC110.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                    composerS.G(2058660585);
                    pVarB.invoke(composerS, 0);
                    composerS.Q();
                    composerS.d();
                    composerS.Q();
                    lVar3 = lVar2;
                    modifier4 = modifier3;
                    textStyle2 = textStyleA;
                    i28 = iA;
                    z11 = z10;
                    i29 = i26;
                    map2 = mapH;
                } else {
                    composerS.J();
                    if ((i12 & 1) != 0) {
                        if (i30 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i15 != 0) {
                            textStyleA = TextStyle.Companion.a();
                        }
                        if (i17 != 0) {
                            lVar2 = BasicTextKt$BasicText$4.INSTANCE;
                        }
                        if (i19 != 0) {
                            iA = TextOverflow.Companion.a();
                        }
                        if (i21 != 0) {
                            z10 = true;
                        } else {
                            z10 = z6;
                        }
                        if (i23 != 0) {
                            i26 = Integer.MAX_VALUE;
                        } else {
                            i26 = i11;
                        }
                        if (i25 != 0) {
                            i27 = i14 & (-29360129);
                            mapH = s0.h();
                        } else {
                            i27 = i14;
                            mapH = map;
                        }
                        modifier3 = modifier2;
                    } else {
                        if (i30 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i15 != 0) {
                            textStyleA = TextStyle.Companion.a();
                        }
                        if (i17 != 0) {
                            lVar2 = BasicTextKt$BasicText$4.INSTANCE;
                        }
                        if (i19 != 0) {
                            iA = TextOverflow.Companion.a();
                        }
                        if (i21 != 0) {
                            z10 = true;
                        } else {
                            z10 = z6;
                        }
                        if (i23 != 0) {
                            i26 = Integer.MAX_VALUE;
                        } else {
                            i26 = i11;
                        }
                        if (i25 != 0) {
                            i27 = i14 & (-29360129);
                            mapH = s0.h();
                        } else {
                            i27 = i14;
                            mapH = map;
                        }
                        modifier3 = modifier2;
                    }
                    composerS.A();
                    if (i26 <= 0) {
                        throw new IllegalArgumentException("maxLines should be greater than 0".toString());
                    }
                    SelectionRegistrar selectionRegistrar111 = (SelectionRegistrar) composerS.x(SelectionRegistrarKt.a());
                    density = (Density) composerS.x(CompositionLocalsKt.e());
                    resolver = (FontFamily.Resolver) composerS.x(CompositionLocalsKt.g());
                    long jA111 = ((TextSelectionColors) composerS.x(TextSelectionColorsKt.b())).a();
                    u<List<AnnotatedString.Range<Placeholder>>, List<AnnotatedString.Range<q<String, Composer, Integer, l0>>>> uVarB111 = CoreTextKt.b(text, mapH);
                    listA = uVarB111.a();
                    listB = uVarB111.b();
                    jLongValue = ((Number) RememberSaveableKt.b(new Object[]{text, selectionRegistrar111}, c(selectionRegistrar111), null, new BasicTextKt$BasicText$selectableId$2(selectionRegistrar111), composerS, 72, 4)).longValue();
                    composerS.G(-492369756);
                    objH = composerS.H();
                    if (objH == Composer.Companion.a()) {
                        TextController textController112 = new TextController(new TextState(new TextDelegate(text, textStyleA, i26, z10, iA, density, resolver, listA, null), jLongValue));
                        composerS.z(textController112);
                        objH = textController112;
                    }
                    composerS.Q();
                    textController = (TextController) objH;
                    textStateK = textController.k();
                    if (!composerS.r()) {
                        textController.n(CoreTextKt.c(textStateK.i(), text, textStyleA, density, resolver, z10, iA, i26, listA));
                    }
                    textStateK.m(lVar2);
                    textStateK.p(jA111);
                    textController.o(selectionRegistrar111);
                    if (listB.isEmpty()) {
                        pVarB = ComposableSingletons$BasicTextKt.INSTANCE.a();
                    } else {
                        pVarB = ComposableLambdaKt.b(composerS, 1892283635, true, new BasicTextKt$BasicText$6(text, listB, i27));
                    }
                    Modifier modifierB111 = modifier3.B(textController.j());
                    MeasurePolicy measurePolicyI111 = textController.i();
                    composerS.G(-1323940314);
                    Density density112 = (Density) composerS.x(CompositionLocalsKt.e());
                    LayoutDirection layoutDirection111 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                    ViewConfiguration viewConfiguration111 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                    ComposeUiNode.Companion companion111 = ComposeUiNode.Companion;
                    aVarA = companion111.a();
                    q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC111 = LayoutKt.c(modifierB111);
                    if (!(composerS.t() instanceof Applier)) {
                        ComposablesKt.c();
                    }
                    composerS.e();
                    if (composerS.r()) {
                        composerS.w(aVarA);
                    } else {
                        composerS.c();
                    }
                    composerS.L();
                    Composer composerA111 = Updater.a(composerS);
                    Updater.e(composerA111, measurePolicyI111, companion111.d());
                    Updater.e(composerA111, density112, companion111.b());
                    Updater.e(composerA111, layoutDirection111, companion111.c());
                    Updater.e(composerA111, viewConfiguration111, companion111.f());
                    composerS.o();
                    qVarC111.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                    composerS.G(2058660585);
                    pVarB.invoke(composerS, 0);
                    composerS.Q();
                    composerS.d();
                    composerS.Q();
                    lVar3 = lVar2;
                    modifier4 = modifier3;
                    textStyle2 = textStyleA;
                    i28 = iA;
                    z11 = z10;
                    i29 = i26;
                    map2 = mapH;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new BasicTextKt$BasicText$7(text, modifier4, textStyle2, lVar3, i28, z11, i29, map2, i12, i13));
            }
            i14 |= CpioConstants.C_ISBLK;
            iA = i10;
            i21 = i13 & 32;
            if (i21 != 0) {
                i14 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            } else if ((i12 & 458752) == 0) {
                if (composerS.m(z6)) {
                    i22 = 131072;
                } else {
                    i22 = 65536;
                }
                i14 |= i22;
            }
            i23 = i13 & 64;
            if (i23 != 0) {
                i14 |= 1572864;
            } else if ((i12 & 3670016) == 0) {
                if (composerS.p(i11)) {
                    i24 = 1048576;
                } else {
                    i24 = 524288;
                }
                i14 |= i24;
            }
            i25 = i13 & 128;
            if (i25 != 0) {
                i14 |= 4194304;
            }
            if (i25 != 128) {
                composerS.J();
                if ((i12 & 1) != 0) {
                    if (i30 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i15 != 0) {
                        textStyleA = TextStyle.Companion.a();
                    }
                    if (i17 != 0) {
                        lVar2 = BasicTextKt$BasicText$4.INSTANCE;
                    }
                    if (i19 != 0) {
                        iA = TextOverflow.Companion.a();
                    }
                    if (i21 != 0) {
                        z10 = true;
                    } else {
                        z10 = z6;
                    }
                    if (i23 != 0) {
                        i26 = Integer.MAX_VALUE;
                    } else {
                        i26 = i11;
                    }
                    if (i25 != 0) {
                        i27 = i14 & (-29360129);
                        mapH = s0.h();
                    } else {
                        i27 = i14;
                        mapH = map;
                    }
                    modifier3 = modifier2;
                } else {
                    if (i30 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i15 != 0) {
                        textStyleA = TextStyle.Companion.a();
                    }
                    if (i17 != 0) {
                        lVar2 = BasicTextKt$BasicText$4.INSTANCE;
                    }
                    if (i19 != 0) {
                        iA = TextOverflow.Companion.a();
                    }
                    if (i21 != 0) {
                        z10 = true;
                    } else {
                        z10 = z6;
                    }
                    if (i23 != 0) {
                        i26 = Integer.MAX_VALUE;
                    } else {
                        i26 = i11;
                    }
                    if (i25 != 0) {
                        i27 = i14 & (-29360129);
                        mapH = s0.h();
                    } else {
                        i27 = i14;
                        mapH = map;
                    }
                    modifier3 = modifier2;
                }
                composerS.A();
                if (i26 <= 0) {
                    throw new IllegalArgumentException("maxLines should be greater than 0".toString());
                }
                SelectionRegistrar selectionRegistrar112 = (SelectionRegistrar) composerS.x(SelectionRegistrarKt.a());
                density = (Density) composerS.x(CompositionLocalsKt.e());
                resolver = (FontFamily.Resolver) composerS.x(CompositionLocalsKt.g());
                long jA112 = ((TextSelectionColors) composerS.x(TextSelectionColorsKt.b())).a();
                u<List<AnnotatedString.Range<Placeholder>>, List<AnnotatedString.Range<q<String, Composer, Integer, l0>>>> uVarB112 = CoreTextKt.b(text, mapH);
                listA = uVarB112.a();
                listB = uVarB112.b();
                jLongValue = ((Number) RememberSaveableKt.b(new Object[]{text, selectionRegistrar112}, c(selectionRegistrar112), null, new BasicTextKt$BasicText$selectableId$2(selectionRegistrar112), composerS, 72, 4)).longValue();
                composerS.G(-492369756);
                objH = composerS.H();
                if (objH == Composer.Companion.a()) {
                    TextController textController113 = new TextController(new TextState(new TextDelegate(text, textStyleA, i26, z10, iA, density, resolver, listA, null), jLongValue));
                    composerS.z(textController113);
                    objH = textController113;
                }
                composerS.Q();
                textController = (TextController) objH;
                textStateK = textController.k();
                if (!composerS.r()) {
                    textController.n(CoreTextKt.c(textStateK.i(), text, textStyleA, density, resolver, z10, iA, i26, listA));
                }
                textStateK.m(lVar2);
                textStateK.p(jA112);
                textController.o(selectionRegistrar112);
                if (listB.isEmpty()) {
                    pVarB = ComposableSingletons$BasicTextKt.INSTANCE.a();
                } else {
                    pVarB = ComposableLambdaKt.b(composerS, 1892283635, true, new BasicTextKt$BasicText$6(text, listB, i27));
                }
                Modifier modifierB112 = modifier3.B(textController.j());
                MeasurePolicy measurePolicyI112 = textController.i();
                composerS.G(-1323940314);
                Density density113 = (Density) composerS.x(CompositionLocalsKt.e());
                LayoutDirection layoutDirection112 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                ViewConfiguration viewConfiguration112 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                ComposeUiNode.Companion companion112 = ComposeUiNode.Companion;
                aVarA = companion112.a();
                q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC112 = LayoutKt.c(modifierB112);
                if (!(composerS.t() instanceof Applier)) {
                    ComposablesKt.c();
                }
                composerS.e();
                if (composerS.r()) {
                    composerS.w(aVarA);
                } else {
                    composerS.c();
                }
                composerS.L();
                Composer composerA112 = Updater.a(composerS);
                Updater.e(composerA112, measurePolicyI112, companion112.d());
                Updater.e(composerA112, density113, companion112.b());
                Updater.e(composerA112, layoutDirection112, companion112.c());
                Updater.e(composerA112, viewConfiguration112, companion112.f());
                composerS.o();
                qVarC112.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                composerS.G(2058660585);
                pVarB.invoke(composerS, 0);
                composerS.Q();
                composerS.d();
                composerS.Q();
                lVar3 = lVar2;
                modifier4 = modifier3;
                textStyle2 = textStyleA;
                i28 = iA;
                z11 = z10;
                i29 = i26;
                map2 = mapH;
            } else {
                composerS.J();
                if ((i12 & 1) != 0) {
                    if (i30 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i15 != 0) {
                        textStyleA = TextStyle.Companion.a();
                    }
                    if (i17 != 0) {
                        lVar2 = BasicTextKt$BasicText$4.INSTANCE;
                    }
                    if (i19 != 0) {
                        iA = TextOverflow.Companion.a();
                    }
                    if (i21 != 0) {
                        z10 = true;
                    } else {
                        z10 = z6;
                    }
                    if (i23 != 0) {
                        i26 = Integer.MAX_VALUE;
                    } else {
                        i26 = i11;
                    }
                    if (i25 != 0) {
                        i27 = i14 & (-29360129);
                        mapH = s0.h();
                    } else {
                        i27 = i14;
                        mapH = map;
                    }
                    modifier3 = modifier2;
                } else {
                    if (i30 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i15 != 0) {
                        textStyleA = TextStyle.Companion.a();
                    }
                    if (i17 != 0) {
                        lVar2 = BasicTextKt$BasicText$4.INSTANCE;
                    }
                    if (i19 != 0) {
                        iA = TextOverflow.Companion.a();
                    }
                    if (i21 != 0) {
                        z10 = true;
                    } else {
                        z10 = z6;
                    }
                    if (i23 != 0) {
                        i26 = Integer.MAX_VALUE;
                    } else {
                        i26 = i11;
                    }
                    if (i25 != 0) {
                        i27 = i14 & (-29360129);
                        mapH = s0.h();
                    } else {
                        i27 = i14;
                        mapH = map;
                    }
                    modifier3 = modifier2;
                }
                composerS.A();
                if (i26 <= 0) {
                    throw new IllegalArgumentException("maxLines should be greater than 0".toString());
                }
                SelectionRegistrar selectionRegistrar113 = (SelectionRegistrar) composerS.x(SelectionRegistrarKt.a());
                density = (Density) composerS.x(CompositionLocalsKt.e());
                resolver = (FontFamily.Resolver) composerS.x(CompositionLocalsKt.g());
                long jA113 = ((TextSelectionColors) composerS.x(TextSelectionColorsKt.b())).a();
                u<List<AnnotatedString.Range<Placeholder>>, List<AnnotatedString.Range<q<String, Composer, Integer, l0>>>> uVarB113 = CoreTextKt.b(text, mapH);
                listA = uVarB113.a();
                listB = uVarB113.b();
                jLongValue = ((Number) RememberSaveableKt.b(new Object[]{text, selectionRegistrar113}, c(selectionRegistrar113), null, new BasicTextKt$BasicText$selectableId$2(selectionRegistrar113), composerS, 72, 4)).longValue();
                composerS.G(-492369756);
                objH = composerS.H();
                if (objH == Composer.Companion.a()) {
                    TextController textController114 = new TextController(new TextState(new TextDelegate(text, textStyleA, i26, z10, iA, density, resolver, listA, null), jLongValue));
                    composerS.z(textController114);
                    objH = textController114;
                }
                composerS.Q();
                textController = (TextController) objH;
                textStateK = textController.k();
                if (!composerS.r()) {
                    textController.n(CoreTextKt.c(textStateK.i(), text, textStyleA, density, resolver, z10, iA, i26, listA));
                }
                textStateK.m(lVar2);
                textStateK.p(jA113);
                textController.o(selectionRegistrar113);
                if (listB.isEmpty()) {
                    pVarB = ComposableSingletons$BasicTextKt.INSTANCE.a();
                } else {
                    pVarB = ComposableLambdaKt.b(composerS, 1892283635, true, new BasicTextKt$BasicText$6(text, listB, i27));
                }
                Modifier modifierB113 = modifier3.B(textController.j());
                MeasurePolicy measurePolicyI113 = textController.i();
                composerS.G(-1323940314);
                Density density114 = (Density) composerS.x(CompositionLocalsKt.e());
                LayoutDirection layoutDirection113 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                ViewConfiguration viewConfiguration113 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                ComposeUiNode.Companion companion113 = ComposeUiNode.Companion;
                aVarA = companion113.a();
                q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC113 = LayoutKt.c(modifierB113);
                if (!(composerS.t() instanceof Applier)) {
                    ComposablesKt.c();
                }
                composerS.e();
                if (composerS.r()) {
                    composerS.w(aVarA);
                } else {
                    composerS.c();
                }
                composerS.L();
                Composer composerA113 = Updater.a(composerS);
                Updater.e(composerA113, measurePolicyI113, companion113.d());
                Updater.e(composerA113, density114, companion113.b());
                Updater.e(composerA113, layoutDirection113, companion113.c());
                Updater.e(composerA113, viewConfiguration113, companion113.f());
                composerS.o();
                qVarC113.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                composerS.G(2058660585);
                pVarB.invoke(composerS, 0);
                composerS.Q();
                composerS.d();
                composerS.Q();
                lVar3 = lVar2;
                modifier4 = modifier3;
                textStyle2 = textStyleA;
                i28 = iA;
                z11 = z10;
                i29 = i26;
                map2 = mapH;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new BasicTextKt$BasicText$7(text, modifier4, textStyle2, lVar3, i28, z11, i29, map2, i12, i13));
        }
        i14 |= 384;
        textStyleA = textStyle;
        i17 = i13 & 8;
        if (i17 != 0) {
            if ((i12 & 7168) == 0) {
                lVar2 = lVar;
                if (composerS.k(lVar2)) {
                    i18 = 2048;
                } else {
                    i18 = 1024;
                }
                i14 |= i18;
            }
            i19 = i13 & 16;
            if (i19 != 0) {
                if ((57344 & i12) == 0) {
                    iA = i10;
                    if (composerS.p(iA)) {
                        i20 = 16384;
                    } else {
                        i20 = 8192;
                    }
                    i14 |= i20;
                }
                i21 = i13 & 32;
                if (i21 != 0) {
                    i14 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                } else if ((i12 & 458752) == 0) {
                    if (composerS.m(z6)) {
                        i22 = 131072;
                    } else {
                        i22 = 65536;
                    }
                    i14 |= i22;
                }
                i23 = i13 & 64;
                if (i23 != 0) {
                    i14 |= 1572864;
                } else if ((i12 & 3670016) == 0) {
                    if (composerS.p(i11)) {
                        i24 = 1048576;
                    } else {
                        i24 = 524288;
                    }
                    i14 |= i24;
                }
                i25 = i13 & 128;
                if (i25 != 0) {
                    i14 |= 4194304;
                }
                if (i25 != 128) {
                    composerS.J();
                    if ((i12 & 1) != 0) {
                        if (i30 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i15 != 0) {
                            textStyleA = TextStyle.Companion.a();
                        }
                        if (i17 != 0) {
                            lVar2 = BasicTextKt$BasicText$4.INSTANCE;
                        }
                        if (i19 != 0) {
                            iA = TextOverflow.Companion.a();
                        }
                        if (i21 != 0) {
                            z10 = true;
                        } else {
                            z10 = z6;
                        }
                        if (i23 != 0) {
                            i26 = Integer.MAX_VALUE;
                        } else {
                            i26 = i11;
                        }
                        if (i25 != 0) {
                            i27 = i14 & (-29360129);
                            mapH = s0.h();
                        } else {
                            i27 = i14;
                            mapH = map;
                        }
                        modifier3 = modifier2;
                    } else {
                        if (i30 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i15 != 0) {
                            textStyleA = TextStyle.Companion.a();
                        }
                        if (i17 != 0) {
                            lVar2 = BasicTextKt$BasicText$4.INSTANCE;
                        }
                        if (i19 != 0) {
                            iA = TextOverflow.Companion.a();
                        }
                        if (i21 != 0) {
                            z10 = true;
                        } else {
                            z10 = z6;
                        }
                        if (i23 != 0) {
                            i26 = Integer.MAX_VALUE;
                        } else {
                            i26 = i11;
                        }
                        if (i25 != 0) {
                            i27 = i14 & (-29360129);
                            mapH = s0.h();
                        } else {
                            i27 = i14;
                            mapH = map;
                        }
                        modifier3 = modifier2;
                    }
                    composerS.A();
                    if (i26 <= 0) {
                        throw new IllegalArgumentException("maxLines should be greater than 0".toString());
                    }
                    SelectionRegistrar selectionRegistrar114 = (SelectionRegistrar) composerS.x(SelectionRegistrarKt.a());
                    density = (Density) composerS.x(CompositionLocalsKt.e());
                    resolver = (FontFamily.Resolver) composerS.x(CompositionLocalsKt.g());
                    long jA114 = ((TextSelectionColors) composerS.x(TextSelectionColorsKt.b())).a();
                    u<List<AnnotatedString.Range<Placeholder>>, List<AnnotatedString.Range<q<String, Composer, Integer, l0>>>> uVarB114 = CoreTextKt.b(text, mapH);
                    listA = uVarB114.a();
                    listB = uVarB114.b();
                    jLongValue = ((Number) RememberSaveableKt.b(new Object[]{text, selectionRegistrar114}, c(selectionRegistrar114), null, new BasicTextKt$BasicText$selectableId$2(selectionRegistrar114), composerS, 72, 4)).longValue();
                    composerS.G(-492369756);
                    objH = composerS.H();
                    if (objH == Composer.Companion.a()) {
                        TextController textController115 = new TextController(new TextState(new TextDelegate(text, textStyleA, i26, z10, iA, density, resolver, listA, null), jLongValue));
                        composerS.z(textController115);
                        objH = textController115;
                    }
                    composerS.Q();
                    textController = (TextController) objH;
                    textStateK = textController.k();
                    if (!composerS.r()) {
                        textController.n(CoreTextKt.c(textStateK.i(), text, textStyleA, density, resolver, z10, iA, i26, listA));
                    }
                    textStateK.m(lVar2);
                    textStateK.p(jA114);
                    textController.o(selectionRegistrar114);
                    if (listB.isEmpty()) {
                        pVarB = ComposableSingletons$BasicTextKt.INSTANCE.a();
                    } else {
                        pVarB = ComposableLambdaKt.b(composerS, 1892283635, true, new BasicTextKt$BasicText$6(text, listB, i27));
                    }
                    Modifier modifierB114 = modifier3.B(textController.j());
                    MeasurePolicy measurePolicyI114 = textController.i();
                    composerS.G(-1323940314);
                    Density density115 = (Density) composerS.x(CompositionLocalsKt.e());
                    LayoutDirection layoutDirection114 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                    ViewConfiguration viewConfiguration114 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                    ComposeUiNode.Companion companion114 = ComposeUiNode.Companion;
                    aVarA = companion114.a();
                    q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC114 = LayoutKt.c(modifierB114);
                    if (!(composerS.t() instanceof Applier)) {
                        ComposablesKt.c();
                    }
                    composerS.e();
                    if (composerS.r()) {
                        composerS.w(aVarA);
                    } else {
                        composerS.c();
                    }
                    composerS.L();
                    Composer composerA114 = Updater.a(composerS);
                    Updater.e(composerA114, measurePolicyI114, companion114.d());
                    Updater.e(composerA114, density115, companion114.b());
                    Updater.e(composerA114, layoutDirection114, companion114.c());
                    Updater.e(composerA114, viewConfiguration114, companion114.f());
                    composerS.o();
                    qVarC114.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                    composerS.G(2058660585);
                    pVarB.invoke(composerS, 0);
                    composerS.Q();
                    composerS.d();
                    composerS.Q();
                    lVar3 = lVar2;
                    modifier4 = modifier3;
                    textStyle2 = textStyleA;
                    i28 = iA;
                    z11 = z10;
                    i29 = i26;
                    map2 = mapH;
                } else {
                    composerS.J();
                    if ((i12 & 1) != 0) {
                        if (i30 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i15 != 0) {
                            textStyleA = TextStyle.Companion.a();
                        }
                        if (i17 != 0) {
                            lVar2 = BasicTextKt$BasicText$4.INSTANCE;
                        }
                        if (i19 != 0) {
                            iA = TextOverflow.Companion.a();
                        }
                        if (i21 != 0) {
                            z10 = true;
                        } else {
                            z10 = z6;
                        }
                        if (i23 != 0) {
                            i26 = Integer.MAX_VALUE;
                        } else {
                            i26 = i11;
                        }
                        if (i25 != 0) {
                            i27 = i14 & (-29360129);
                            mapH = s0.h();
                        } else {
                            i27 = i14;
                            mapH = map;
                        }
                        modifier3 = modifier2;
                    } else {
                        if (i30 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i15 != 0) {
                            textStyleA = TextStyle.Companion.a();
                        }
                        if (i17 != 0) {
                            lVar2 = BasicTextKt$BasicText$4.INSTANCE;
                        }
                        if (i19 != 0) {
                            iA = TextOverflow.Companion.a();
                        }
                        if (i21 != 0) {
                            z10 = true;
                        } else {
                            z10 = z6;
                        }
                        if (i23 != 0) {
                            i26 = Integer.MAX_VALUE;
                        } else {
                            i26 = i11;
                        }
                        if (i25 != 0) {
                            i27 = i14 & (-29360129);
                            mapH = s0.h();
                        } else {
                            i27 = i14;
                            mapH = map;
                        }
                        modifier3 = modifier2;
                    }
                    composerS.A();
                    if (i26 <= 0) {
                        throw new IllegalArgumentException("maxLines should be greater than 0".toString());
                    }
                    SelectionRegistrar selectionRegistrar115 = (SelectionRegistrar) composerS.x(SelectionRegistrarKt.a());
                    density = (Density) composerS.x(CompositionLocalsKt.e());
                    resolver = (FontFamily.Resolver) composerS.x(CompositionLocalsKt.g());
                    long jA115 = ((TextSelectionColors) composerS.x(TextSelectionColorsKt.b())).a();
                    u<List<AnnotatedString.Range<Placeholder>>, List<AnnotatedString.Range<q<String, Composer, Integer, l0>>>> uVarB115 = CoreTextKt.b(text, mapH);
                    listA = uVarB115.a();
                    listB = uVarB115.b();
                    jLongValue = ((Number) RememberSaveableKt.b(new Object[]{text, selectionRegistrar115}, c(selectionRegistrar115), null, new BasicTextKt$BasicText$selectableId$2(selectionRegistrar115), composerS, 72, 4)).longValue();
                    composerS.G(-492369756);
                    objH = composerS.H();
                    if (objH == Composer.Companion.a()) {
                        TextController textController116 = new TextController(new TextState(new TextDelegate(text, textStyleA, i26, z10, iA, density, resolver, listA, null), jLongValue));
                        composerS.z(textController116);
                        objH = textController116;
                    }
                    composerS.Q();
                    textController = (TextController) objH;
                    textStateK = textController.k();
                    if (!composerS.r()) {
                        textController.n(CoreTextKt.c(textStateK.i(), text, textStyleA, density, resolver, z10, iA, i26, listA));
                    }
                    textStateK.m(lVar2);
                    textStateK.p(jA115);
                    textController.o(selectionRegistrar115);
                    if (listB.isEmpty()) {
                        pVarB = ComposableSingletons$BasicTextKt.INSTANCE.a();
                    } else {
                        pVarB = ComposableLambdaKt.b(composerS, 1892283635, true, new BasicTextKt$BasicText$6(text, listB, i27));
                    }
                    Modifier modifierB115 = modifier3.B(textController.j());
                    MeasurePolicy measurePolicyI115 = textController.i();
                    composerS.G(-1323940314);
                    Density density116 = (Density) composerS.x(CompositionLocalsKt.e());
                    LayoutDirection layoutDirection115 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                    ViewConfiguration viewConfiguration115 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                    ComposeUiNode.Companion companion115 = ComposeUiNode.Companion;
                    aVarA = companion115.a();
                    q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC115 = LayoutKt.c(modifierB115);
                    if (!(composerS.t() instanceof Applier)) {
                        ComposablesKt.c();
                    }
                    composerS.e();
                    if (composerS.r()) {
                        composerS.w(aVarA);
                    } else {
                        composerS.c();
                    }
                    composerS.L();
                    Composer composerA115 = Updater.a(composerS);
                    Updater.e(composerA115, measurePolicyI115, companion115.d());
                    Updater.e(composerA115, density116, companion115.b());
                    Updater.e(composerA115, layoutDirection115, companion115.c());
                    Updater.e(composerA115, viewConfiguration115, companion115.f());
                    composerS.o();
                    qVarC115.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                    composerS.G(2058660585);
                    pVarB.invoke(composerS, 0);
                    composerS.Q();
                    composerS.d();
                    composerS.Q();
                    lVar3 = lVar2;
                    modifier4 = modifier3;
                    textStyle2 = textStyleA;
                    i28 = iA;
                    z11 = z10;
                    i29 = i26;
                    map2 = mapH;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new BasicTextKt$BasicText$7(text, modifier4, textStyle2, lVar3, i28, z11, i29, map2, i12, i13));
            }
            i14 |= CpioConstants.C_ISBLK;
            iA = i10;
            i21 = i13 & 32;
            if (i21 != 0) {
                i14 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            } else if ((i12 & 458752) == 0) {
                if (composerS.m(z6)) {
                    i22 = 131072;
                } else {
                    i22 = 65536;
                }
                i14 |= i22;
            }
            i23 = i13 & 64;
            if (i23 != 0) {
                i14 |= 1572864;
            } else if ((i12 & 3670016) == 0) {
                if (composerS.p(i11)) {
                    i24 = 1048576;
                } else {
                    i24 = 524288;
                }
                i14 |= i24;
            }
            i25 = i13 & 128;
            if (i25 != 0) {
                i14 |= 4194304;
            }
            if (i25 != 128) {
                composerS.J();
                if ((i12 & 1) != 0) {
                    if (i30 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i15 != 0) {
                        textStyleA = TextStyle.Companion.a();
                    }
                    if (i17 != 0) {
                        lVar2 = BasicTextKt$BasicText$4.INSTANCE;
                    }
                    if (i19 != 0) {
                        iA = TextOverflow.Companion.a();
                    }
                    if (i21 != 0) {
                        z10 = true;
                    } else {
                        z10 = z6;
                    }
                    if (i23 != 0) {
                        i26 = Integer.MAX_VALUE;
                    } else {
                        i26 = i11;
                    }
                    if (i25 != 0) {
                        i27 = i14 & (-29360129);
                        mapH = s0.h();
                    } else {
                        i27 = i14;
                        mapH = map;
                    }
                    modifier3 = modifier2;
                } else {
                    if (i30 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i15 != 0) {
                        textStyleA = TextStyle.Companion.a();
                    }
                    if (i17 != 0) {
                        lVar2 = BasicTextKt$BasicText$4.INSTANCE;
                    }
                    if (i19 != 0) {
                        iA = TextOverflow.Companion.a();
                    }
                    if (i21 != 0) {
                        z10 = true;
                    } else {
                        z10 = z6;
                    }
                    if (i23 != 0) {
                        i26 = Integer.MAX_VALUE;
                    } else {
                        i26 = i11;
                    }
                    if (i25 != 0) {
                        i27 = i14 & (-29360129);
                        mapH = s0.h();
                    } else {
                        i27 = i14;
                        mapH = map;
                    }
                    modifier3 = modifier2;
                }
                composerS.A();
                if (i26 <= 0) {
                    throw new IllegalArgumentException("maxLines should be greater than 0".toString());
                }
                SelectionRegistrar selectionRegistrar116 = (SelectionRegistrar) composerS.x(SelectionRegistrarKt.a());
                density = (Density) composerS.x(CompositionLocalsKt.e());
                resolver = (FontFamily.Resolver) composerS.x(CompositionLocalsKt.g());
                long jA116 = ((TextSelectionColors) composerS.x(TextSelectionColorsKt.b())).a();
                u<List<AnnotatedString.Range<Placeholder>>, List<AnnotatedString.Range<q<String, Composer, Integer, l0>>>> uVarB116 = CoreTextKt.b(text, mapH);
                listA = uVarB116.a();
                listB = uVarB116.b();
                jLongValue = ((Number) RememberSaveableKt.b(new Object[]{text, selectionRegistrar116}, c(selectionRegistrar116), null, new BasicTextKt$BasicText$selectableId$2(selectionRegistrar116), composerS, 72, 4)).longValue();
                composerS.G(-492369756);
                objH = composerS.H();
                if (objH == Composer.Companion.a()) {
                    TextController textController117 = new TextController(new TextState(new TextDelegate(text, textStyleA, i26, z10, iA, density, resolver, listA, null), jLongValue));
                    composerS.z(textController117);
                    objH = textController117;
                }
                composerS.Q();
                textController = (TextController) objH;
                textStateK = textController.k();
                if (!composerS.r()) {
                    textController.n(CoreTextKt.c(textStateK.i(), text, textStyleA, density, resolver, z10, iA, i26, listA));
                }
                textStateK.m(lVar2);
                textStateK.p(jA116);
                textController.o(selectionRegistrar116);
                if (listB.isEmpty()) {
                    pVarB = ComposableSingletons$BasicTextKt.INSTANCE.a();
                } else {
                    pVarB = ComposableLambdaKt.b(composerS, 1892283635, true, new BasicTextKt$BasicText$6(text, listB, i27));
                }
                Modifier modifierB116 = modifier3.B(textController.j());
                MeasurePolicy measurePolicyI116 = textController.i();
                composerS.G(-1323940314);
                Density density117 = (Density) composerS.x(CompositionLocalsKt.e());
                LayoutDirection layoutDirection116 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                ViewConfiguration viewConfiguration116 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                ComposeUiNode.Companion companion116 = ComposeUiNode.Companion;
                aVarA = companion116.a();
                q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC116 = LayoutKt.c(modifierB116);
                if (!(composerS.t() instanceof Applier)) {
                    ComposablesKt.c();
                }
                composerS.e();
                if (composerS.r()) {
                    composerS.w(aVarA);
                } else {
                    composerS.c();
                }
                composerS.L();
                Composer composerA116 = Updater.a(composerS);
                Updater.e(composerA116, measurePolicyI116, companion116.d());
                Updater.e(composerA116, density117, companion116.b());
                Updater.e(composerA116, layoutDirection116, companion116.c());
                Updater.e(composerA116, viewConfiguration116, companion116.f());
                composerS.o();
                qVarC116.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                composerS.G(2058660585);
                pVarB.invoke(composerS, 0);
                composerS.Q();
                composerS.d();
                composerS.Q();
                lVar3 = lVar2;
                modifier4 = modifier3;
                textStyle2 = textStyleA;
                i28 = iA;
                z11 = z10;
                i29 = i26;
                map2 = mapH;
            } else {
                composerS.J();
                if ((i12 & 1) != 0) {
                    if (i30 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i15 != 0) {
                        textStyleA = TextStyle.Companion.a();
                    }
                    if (i17 != 0) {
                        lVar2 = BasicTextKt$BasicText$4.INSTANCE;
                    }
                    if (i19 != 0) {
                        iA = TextOverflow.Companion.a();
                    }
                    if (i21 != 0) {
                        z10 = true;
                    } else {
                        z10 = z6;
                    }
                    if (i23 != 0) {
                        i26 = Integer.MAX_VALUE;
                    } else {
                        i26 = i11;
                    }
                    if (i25 != 0) {
                        i27 = i14 & (-29360129);
                        mapH = s0.h();
                    } else {
                        i27 = i14;
                        mapH = map;
                    }
                    modifier3 = modifier2;
                } else {
                    if (i30 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i15 != 0) {
                        textStyleA = TextStyle.Companion.a();
                    }
                    if (i17 != 0) {
                        lVar2 = BasicTextKt$BasicText$4.INSTANCE;
                    }
                    if (i19 != 0) {
                        iA = TextOverflow.Companion.a();
                    }
                    if (i21 != 0) {
                        z10 = true;
                    } else {
                        z10 = z6;
                    }
                    if (i23 != 0) {
                        i26 = Integer.MAX_VALUE;
                    } else {
                        i26 = i11;
                    }
                    if (i25 != 0) {
                        i27 = i14 & (-29360129);
                        mapH = s0.h();
                    } else {
                        i27 = i14;
                        mapH = map;
                    }
                    modifier3 = modifier2;
                }
                composerS.A();
                if (i26 <= 0) {
                    throw new IllegalArgumentException("maxLines should be greater than 0".toString());
                }
                SelectionRegistrar selectionRegistrar117 = (SelectionRegistrar) composerS.x(SelectionRegistrarKt.a());
                density = (Density) composerS.x(CompositionLocalsKt.e());
                resolver = (FontFamily.Resolver) composerS.x(CompositionLocalsKt.g());
                long jA117 = ((TextSelectionColors) composerS.x(TextSelectionColorsKt.b())).a();
                u<List<AnnotatedString.Range<Placeholder>>, List<AnnotatedString.Range<q<String, Composer, Integer, l0>>>> uVarB117 = CoreTextKt.b(text, mapH);
                listA = uVarB117.a();
                listB = uVarB117.b();
                jLongValue = ((Number) RememberSaveableKt.b(new Object[]{text, selectionRegistrar117}, c(selectionRegistrar117), null, new BasicTextKt$BasicText$selectableId$2(selectionRegistrar117), composerS, 72, 4)).longValue();
                composerS.G(-492369756);
                objH = composerS.H();
                if (objH == Composer.Companion.a()) {
                    TextController textController118 = new TextController(new TextState(new TextDelegate(text, textStyleA, i26, z10, iA, density, resolver, listA, null), jLongValue));
                    composerS.z(textController118);
                    objH = textController118;
                }
                composerS.Q();
                textController = (TextController) objH;
                textStateK = textController.k();
                if (!composerS.r()) {
                    textController.n(CoreTextKt.c(textStateK.i(), text, textStyleA, density, resolver, z10, iA, i26, listA));
                }
                textStateK.m(lVar2);
                textStateK.p(jA117);
                textController.o(selectionRegistrar117);
                if (listB.isEmpty()) {
                    pVarB = ComposableSingletons$BasicTextKt.INSTANCE.a();
                } else {
                    pVarB = ComposableLambdaKt.b(composerS, 1892283635, true, new BasicTextKt$BasicText$6(text, listB, i27));
                }
                Modifier modifierB117 = modifier3.B(textController.j());
                MeasurePolicy measurePolicyI117 = textController.i();
                composerS.G(-1323940314);
                Density density118 = (Density) composerS.x(CompositionLocalsKt.e());
                LayoutDirection layoutDirection117 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                ViewConfiguration viewConfiguration117 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                ComposeUiNode.Companion companion117 = ComposeUiNode.Companion;
                aVarA = companion117.a();
                q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC117 = LayoutKt.c(modifierB117);
                if (!(composerS.t() instanceof Applier)) {
                    ComposablesKt.c();
                }
                composerS.e();
                if (composerS.r()) {
                    composerS.w(aVarA);
                } else {
                    composerS.c();
                }
                composerS.L();
                Composer composerA117 = Updater.a(composerS);
                Updater.e(composerA117, measurePolicyI117, companion117.d());
                Updater.e(composerA117, density118, companion117.b());
                Updater.e(composerA117, layoutDirection117, companion117.c());
                Updater.e(composerA117, viewConfiguration117, companion117.f());
                composerS.o();
                qVarC117.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                composerS.G(2058660585);
                pVarB.invoke(composerS, 0);
                composerS.Q();
                composerS.d();
                composerS.Q();
                lVar3 = lVar2;
                modifier4 = modifier3;
                textStyle2 = textStyleA;
                i28 = iA;
                z11 = z10;
                i29 = i26;
                map2 = mapH;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new BasicTextKt$BasicText$7(text, modifier4, textStyle2, lVar3, i28, z11, i29, map2, i12, i13));
        }
        i14 |= 3072;
        lVar2 = lVar;
        i19 = i13 & 16;
        if (i19 != 0) {
            if ((57344 & i12) == 0) {
                iA = i10;
                if (composerS.p(iA)) {
                    i20 = 16384;
                } else {
                    i20 = 8192;
                }
                i14 |= i20;
            }
            i21 = i13 & 32;
            if (i21 != 0) {
                i14 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            } else if ((i12 & 458752) == 0) {
                if (composerS.m(z6)) {
                    i22 = 131072;
                } else {
                    i22 = 65536;
                }
                i14 |= i22;
            }
            i23 = i13 & 64;
            if (i23 != 0) {
                i14 |= 1572864;
            } else if ((i12 & 3670016) == 0) {
                if (composerS.p(i11)) {
                    i24 = 1048576;
                } else {
                    i24 = 524288;
                }
                i14 |= i24;
            }
            i25 = i13 & 128;
            if (i25 != 0) {
                i14 |= 4194304;
            }
            if (i25 != 128) {
                composerS.J();
                if ((i12 & 1) != 0) {
                    if (i30 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i15 != 0) {
                        textStyleA = TextStyle.Companion.a();
                    }
                    if (i17 != 0) {
                        lVar2 = BasicTextKt$BasicText$4.INSTANCE;
                    }
                    if (i19 != 0) {
                        iA = TextOverflow.Companion.a();
                    }
                    if (i21 != 0) {
                        z10 = true;
                    } else {
                        z10 = z6;
                    }
                    if (i23 != 0) {
                        i26 = Integer.MAX_VALUE;
                    } else {
                        i26 = i11;
                    }
                    if (i25 != 0) {
                        i27 = i14 & (-29360129);
                        mapH = s0.h();
                    } else {
                        i27 = i14;
                        mapH = map;
                    }
                    modifier3 = modifier2;
                } else {
                    if (i30 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i15 != 0) {
                        textStyleA = TextStyle.Companion.a();
                    }
                    if (i17 != 0) {
                        lVar2 = BasicTextKt$BasicText$4.INSTANCE;
                    }
                    if (i19 != 0) {
                        iA = TextOverflow.Companion.a();
                    }
                    if (i21 != 0) {
                        z10 = true;
                    } else {
                        z10 = z6;
                    }
                    if (i23 != 0) {
                        i26 = Integer.MAX_VALUE;
                    } else {
                        i26 = i11;
                    }
                    if (i25 != 0) {
                        i27 = i14 & (-29360129);
                        mapH = s0.h();
                    } else {
                        i27 = i14;
                        mapH = map;
                    }
                    modifier3 = modifier2;
                }
                composerS.A();
                if (i26 <= 0) {
                    throw new IllegalArgumentException("maxLines should be greater than 0".toString());
                }
                SelectionRegistrar selectionRegistrar118 = (SelectionRegistrar) composerS.x(SelectionRegistrarKt.a());
                density = (Density) composerS.x(CompositionLocalsKt.e());
                resolver = (FontFamily.Resolver) composerS.x(CompositionLocalsKt.g());
                long jA118 = ((TextSelectionColors) composerS.x(TextSelectionColorsKt.b())).a();
                u<List<AnnotatedString.Range<Placeholder>>, List<AnnotatedString.Range<q<String, Composer, Integer, l0>>>> uVarB118 = CoreTextKt.b(text, mapH);
                listA = uVarB118.a();
                listB = uVarB118.b();
                jLongValue = ((Number) RememberSaveableKt.b(new Object[]{text, selectionRegistrar118}, c(selectionRegistrar118), null, new BasicTextKt$BasicText$selectableId$2(selectionRegistrar118), composerS, 72, 4)).longValue();
                composerS.G(-492369756);
                objH = composerS.H();
                if (objH == Composer.Companion.a()) {
                    TextController textController119 = new TextController(new TextState(new TextDelegate(text, textStyleA, i26, z10, iA, density, resolver, listA, null), jLongValue));
                    composerS.z(textController119);
                    objH = textController119;
                }
                composerS.Q();
                textController = (TextController) objH;
                textStateK = textController.k();
                if (!composerS.r()) {
                    textController.n(CoreTextKt.c(textStateK.i(), text, textStyleA, density, resolver, z10, iA, i26, listA));
                }
                textStateK.m(lVar2);
                textStateK.p(jA118);
                textController.o(selectionRegistrar118);
                if (listB.isEmpty()) {
                    pVarB = ComposableSingletons$BasicTextKt.INSTANCE.a();
                } else {
                    pVarB = ComposableLambdaKt.b(composerS, 1892283635, true, new BasicTextKt$BasicText$6(text, listB, i27));
                }
                Modifier modifierB118 = modifier3.B(textController.j());
                MeasurePolicy measurePolicyI118 = textController.i();
                composerS.G(-1323940314);
                Density density119 = (Density) composerS.x(CompositionLocalsKt.e());
                LayoutDirection layoutDirection118 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                ViewConfiguration viewConfiguration118 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                ComposeUiNode.Companion companion118 = ComposeUiNode.Companion;
                aVarA = companion118.a();
                q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC118 = LayoutKt.c(modifierB118);
                if (!(composerS.t() instanceof Applier)) {
                    ComposablesKt.c();
                }
                composerS.e();
                if (composerS.r()) {
                    composerS.w(aVarA);
                } else {
                    composerS.c();
                }
                composerS.L();
                Composer composerA118 = Updater.a(composerS);
                Updater.e(composerA118, measurePolicyI118, companion118.d());
                Updater.e(composerA118, density119, companion118.b());
                Updater.e(composerA118, layoutDirection118, companion118.c());
                Updater.e(composerA118, viewConfiguration118, companion118.f());
                composerS.o();
                qVarC118.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                composerS.G(2058660585);
                pVarB.invoke(composerS, 0);
                composerS.Q();
                composerS.d();
                composerS.Q();
                lVar3 = lVar2;
                modifier4 = modifier3;
                textStyle2 = textStyleA;
                i28 = iA;
                z11 = z10;
                i29 = i26;
                map2 = mapH;
            } else {
                composerS.J();
                if ((i12 & 1) != 0) {
                    if (i30 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i15 != 0) {
                        textStyleA = TextStyle.Companion.a();
                    }
                    if (i17 != 0) {
                        lVar2 = BasicTextKt$BasicText$4.INSTANCE;
                    }
                    if (i19 != 0) {
                        iA = TextOverflow.Companion.a();
                    }
                    if (i21 != 0) {
                        z10 = true;
                    } else {
                        z10 = z6;
                    }
                    if (i23 != 0) {
                        i26 = Integer.MAX_VALUE;
                    } else {
                        i26 = i11;
                    }
                    if (i25 != 0) {
                        i27 = i14 & (-29360129);
                        mapH = s0.h();
                    } else {
                        i27 = i14;
                        mapH = map;
                    }
                    modifier3 = modifier2;
                } else {
                    if (i30 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i15 != 0) {
                        textStyleA = TextStyle.Companion.a();
                    }
                    if (i17 != 0) {
                        lVar2 = BasicTextKt$BasicText$4.INSTANCE;
                    }
                    if (i19 != 0) {
                        iA = TextOverflow.Companion.a();
                    }
                    if (i21 != 0) {
                        z10 = true;
                    } else {
                        z10 = z6;
                    }
                    if (i23 != 0) {
                        i26 = Integer.MAX_VALUE;
                    } else {
                        i26 = i11;
                    }
                    if (i25 != 0) {
                        i27 = i14 & (-29360129);
                        mapH = s0.h();
                    } else {
                        i27 = i14;
                        mapH = map;
                    }
                    modifier3 = modifier2;
                }
                composerS.A();
                if (i26 <= 0) {
                    throw new IllegalArgumentException("maxLines should be greater than 0".toString());
                }
                SelectionRegistrar selectionRegistrar119 = (SelectionRegistrar) composerS.x(SelectionRegistrarKt.a());
                density = (Density) composerS.x(CompositionLocalsKt.e());
                resolver = (FontFamily.Resolver) composerS.x(CompositionLocalsKt.g());
                long jA119 = ((TextSelectionColors) composerS.x(TextSelectionColorsKt.b())).a();
                u<List<AnnotatedString.Range<Placeholder>>, List<AnnotatedString.Range<q<String, Composer, Integer, l0>>>> uVarB119 = CoreTextKt.b(text, mapH);
                listA = uVarB119.a();
                listB = uVarB119.b();
                jLongValue = ((Number) RememberSaveableKt.b(new Object[]{text, selectionRegistrar119}, c(selectionRegistrar119), null, new BasicTextKt$BasicText$selectableId$2(selectionRegistrar119), composerS, 72, 4)).longValue();
                composerS.G(-492369756);
                objH = composerS.H();
                if (objH == Composer.Companion.a()) {
                    TextController textController1110 = new TextController(new TextState(new TextDelegate(text, textStyleA, i26, z10, iA, density, resolver, listA, null), jLongValue));
                    composerS.z(textController1110);
                    objH = textController1110;
                }
                composerS.Q();
                textController = (TextController) objH;
                textStateK = textController.k();
                if (!composerS.r()) {
                    textController.n(CoreTextKt.c(textStateK.i(), text, textStyleA, density, resolver, z10, iA, i26, listA));
                }
                textStateK.m(lVar2);
                textStateK.p(jA119);
                textController.o(selectionRegistrar119);
                if (listB.isEmpty()) {
                    pVarB = ComposableSingletons$BasicTextKt.INSTANCE.a();
                } else {
                    pVarB = ComposableLambdaKt.b(composerS, 1892283635, true, new BasicTextKt$BasicText$6(text, listB, i27));
                }
                Modifier modifierB119 = modifier3.B(textController.j());
                MeasurePolicy measurePolicyI119 = textController.i();
                composerS.G(-1323940314);
                Density density1110 = (Density) composerS.x(CompositionLocalsKt.e());
                LayoutDirection layoutDirection119 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                ViewConfiguration viewConfiguration119 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                ComposeUiNode.Companion companion119 = ComposeUiNode.Companion;
                aVarA = companion119.a();
                q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC119 = LayoutKt.c(modifierB119);
                if (!(composerS.t() instanceof Applier)) {
                    ComposablesKt.c();
                }
                composerS.e();
                if (composerS.r()) {
                    composerS.w(aVarA);
                } else {
                    composerS.c();
                }
                composerS.L();
                Composer composerA119 = Updater.a(composerS);
                Updater.e(composerA119, measurePolicyI119, companion119.d());
                Updater.e(composerA119, density1110, companion119.b());
                Updater.e(composerA119, layoutDirection119, companion119.c());
                Updater.e(composerA119, viewConfiguration119, companion119.f());
                composerS.o();
                qVarC119.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                composerS.G(2058660585);
                pVarB.invoke(composerS, 0);
                composerS.Q();
                composerS.d();
                composerS.Q();
                lVar3 = lVar2;
                modifier4 = modifier3;
                textStyle2 = textStyleA;
                i28 = iA;
                z11 = z10;
                i29 = i26;
                map2 = mapH;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new BasicTextKt$BasicText$7(text, modifier4, textStyle2, lVar3, i28, z11, i29, map2, i12, i13));
        }
        i14 |= CpioConstants.C_ISBLK;
        iA = i10;
        i21 = i13 & 32;
        if (i21 != 0) {
            i14 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
        } else if ((i12 & 458752) == 0) {
            if (composerS.m(z6)) {
                i22 = 131072;
            } else {
                i22 = 65536;
            }
            i14 |= i22;
        }
        i23 = i13 & 64;
        if (i23 != 0) {
            i14 |= 1572864;
        } else if ((i12 & 3670016) == 0) {
            if (composerS.p(i11)) {
                i24 = 1048576;
            } else {
                i24 = 524288;
            }
            i14 |= i24;
        }
        i25 = i13 & 128;
        if (i25 != 0) {
            i14 |= 4194304;
        }
        if (i25 != 128) {
            composerS.J();
            if ((i12 & 1) != 0) {
                if (i30 != 0) {
                    modifier2 = Modifier.Companion;
                } else {
                    modifier2 = modifier;
                }
                if (i15 != 0) {
                    textStyleA = TextStyle.Companion.a();
                }
                if (i17 != 0) {
                    lVar2 = BasicTextKt$BasicText$4.INSTANCE;
                }
                if (i19 != 0) {
                    iA = TextOverflow.Companion.a();
                }
                if (i21 != 0) {
                    z10 = true;
                } else {
                    z10 = z6;
                }
                if (i23 != 0) {
                    i26 = Integer.MAX_VALUE;
                } else {
                    i26 = i11;
                }
                if (i25 != 0) {
                    i27 = i14 & (-29360129);
                    mapH = s0.h();
                } else {
                    i27 = i14;
                    mapH = map;
                }
                modifier3 = modifier2;
            } else {
                if (i30 != 0) {
                    modifier2 = Modifier.Companion;
                } else {
                    modifier2 = modifier;
                }
                if (i15 != 0) {
                    textStyleA = TextStyle.Companion.a();
                }
                if (i17 != 0) {
                    lVar2 = BasicTextKt$BasicText$4.INSTANCE;
                }
                if (i19 != 0) {
                    iA = TextOverflow.Companion.a();
                }
                if (i21 != 0) {
                    z10 = true;
                } else {
                    z10 = z6;
                }
                if (i23 != 0) {
                    i26 = Integer.MAX_VALUE;
                } else {
                    i26 = i11;
                }
                if (i25 != 0) {
                    i27 = i14 & (-29360129);
                    mapH = s0.h();
                } else {
                    i27 = i14;
                    mapH = map;
                }
                modifier3 = modifier2;
            }
            composerS.A();
            if (i26 <= 0) {
                throw new IllegalArgumentException("maxLines should be greater than 0".toString());
            }
            SelectionRegistrar selectionRegistrar1110 = (SelectionRegistrar) composerS.x(SelectionRegistrarKt.a());
            density = (Density) composerS.x(CompositionLocalsKt.e());
            resolver = (FontFamily.Resolver) composerS.x(CompositionLocalsKt.g());
            long jA1110 = ((TextSelectionColors) composerS.x(TextSelectionColorsKt.b())).a();
            u<List<AnnotatedString.Range<Placeholder>>, List<AnnotatedString.Range<q<String, Composer, Integer, l0>>>> uVarB1110 = CoreTextKt.b(text, mapH);
            listA = uVarB1110.a();
            listB = uVarB1110.b();
            jLongValue = ((Number) RememberSaveableKt.b(new Object[]{text, selectionRegistrar1110}, c(selectionRegistrar1110), null, new BasicTextKt$BasicText$selectableId$2(selectionRegistrar1110), composerS, 72, 4)).longValue();
            composerS.G(-492369756);
            objH = composerS.H();
            if (objH == Composer.Companion.a()) {
                TextController textController1111 = new TextController(new TextState(new TextDelegate(text, textStyleA, i26, z10, iA, density, resolver, listA, null), jLongValue));
                composerS.z(textController1111);
                objH = textController1111;
            }
            composerS.Q();
            textController = (TextController) objH;
            textStateK = textController.k();
            if (!composerS.r()) {
                textController.n(CoreTextKt.c(textStateK.i(), text, textStyleA, density, resolver, z10, iA, i26, listA));
            }
            textStateK.m(lVar2);
            textStateK.p(jA1110);
            textController.o(selectionRegistrar1110);
            if (listB.isEmpty()) {
                pVarB = ComposableSingletons$BasicTextKt.INSTANCE.a();
            } else {
                pVarB = ComposableLambdaKt.b(composerS, 1892283635, true, new BasicTextKt$BasicText$6(text, listB, i27));
            }
            Modifier modifierB1110 = modifier3.B(textController.j());
            MeasurePolicy measurePolicyI1110 = textController.i();
            composerS.G(-1323940314);
            Density density1111 = (Density) composerS.x(CompositionLocalsKt.e());
            LayoutDirection layoutDirection1110 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
            ViewConfiguration viewConfiguration1110 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
            ComposeUiNode.Companion companion1110 = ComposeUiNode.Companion;
            aVarA = companion1110.a();
            q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC1110 = LayoutKt.c(modifierB1110);
            if (!(composerS.t() instanceof Applier)) {
                ComposablesKt.c();
            }
            composerS.e();
            if (composerS.r()) {
                composerS.w(aVarA);
            } else {
                composerS.c();
            }
            composerS.L();
            Composer composerA1110 = Updater.a(composerS);
            Updater.e(composerA1110, measurePolicyI1110, companion1110.d());
            Updater.e(composerA1110, density1111, companion1110.b());
            Updater.e(composerA1110, layoutDirection1110, companion1110.c());
            Updater.e(composerA1110, viewConfiguration1110, companion1110.f());
            composerS.o();
            qVarC1110.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
            composerS.G(2058660585);
            pVarB.invoke(composerS, 0);
            composerS.Q();
            composerS.d();
            composerS.Q();
            lVar3 = lVar2;
            modifier4 = modifier3;
            textStyle2 = textStyleA;
            i28 = iA;
            z11 = z10;
            i29 = i26;
            map2 = mapH;
        } else {
            composerS.J();
            if ((i12 & 1) != 0) {
                if (i30 != 0) {
                    modifier2 = Modifier.Companion;
                } else {
                    modifier2 = modifier;
                }
                if (i15 != 0) {
                    textStyleA = TextStyle.Companion.a();
                }
                if (i17 != 0) {
                    lVar2 = BasicTextKt$BasicText$4.INSTANCE;
                }
                if (i19 != 0) {
                    iA = TextOverflow.Companion.a();
                }
                if (i21 != 0) {
                    z10 = true;
                } else {
                    z10 = z6;
                }
                if (i23 != 0) {
                    i26 = Integer.MAX_VALUE;
                } else {
                    i26 = i11;
                }
                if (i25 != 0) {
                    i27 = i14 & (-29360129);
                    mapH = s0.h();
                } else {
                    i27 = i14;
                    mapH = map;
                }
                modifier3 = modifier2;
            } else {
                if (i30 != 0) {
                    modifier2 = Modifier.Companion;
                } else {
                    modifier2 = modifier;
                }
                if (i15 != 0) {
                    textStyleA = TextStyle.Companion.a();
                }
                if (i17 != 0) {
                    lVar2 = BasicTextKt$BasicText$4.INSTANCE;
                }
                if (i19 != 0) {
                    iA = TextOverflow.Companion.a();
                }
                if (i21 != 0) {
                    z10 = true;
                } else {
                    z10 = z6;
                }
                if (i23 != 0) {
                    i26 = Integer.MAX_VALUE;
                } else {
                    i26 = i11;
                }
                if (i25 != 0) {
                    i27 = i14 & (-29360129);
                    mapH = s0.h();
                } else {
                    i27 = i14;
                    mapH = map;
                }
                modifier3 = modifier2;
            }
            composerS.A();
            if (i26 <= 0) {
                throw new IllegalArgumentException("maxLines should be greater than 0".toString());
            }
            SelectionRegistrar selectionRegistrar1111 = (SelectionRegistrar) composerS.x(SelectionRegistrarKt.a());
            density = (Density) composerS.x(CompositionLocalsKt.e());
            resolver = (FontFamily.Resolver) composerS.x(CompositionLocalsKt.g());
            long jA1111 = ((TextSelectionColors) composerS.x(TextSelectionColorsKt.b())).a();
            u<List<AnnotatedString.Range<Placeholder>>, List<AnnotatedString.Range<q<String, Composer, Integer, l0>>>> uVarB1111 = CoreTextKt.b(text, mapH);
            listA = uVarB1111.a();
            listB = uVarB1111.b();
            jLongValue = ((Number) RememberSaveableKt.b(new Object[]{text, selectionRegistrar1111}, c(selectionRegistrar1111), null, new BasicTextKt$BasicText$selectableId$2(selectionRegistrar1111), composerS, 72, 4)).longValue();
            composerS.G(-492369756);
            objH = composerS.H();
            if (objH == Composer.Companion.a()) {
                TextController textController1112 = new TextController(new TextState(new TextDelegate(text, textStyleA, i26, z10, iA, density, resolver, listA, null), jLongValue));
                composerS.z(textController1112);
                objH = textController1112;
            }
            composerS.Q();
            textController = (TextController) objH;
            textStateK = textController.k();
            if (!composerS.r()) {
                textController.n(CoreTextKt.c(textStateK.i(), text, textStyleA, density, resolver, z10, iA, i26, listA));
            }
            textStateK.m(lVar2);
            textStateK.p(jA1111);
            textController.o(selectionRegistrar1111);
            if (listB.isEmpty()) {
                pVarB = ComposableSingletons$BasicTextKt.INSTANCE.a();
            } else {
                pVarB = ComposableLambdaKt.b(composerS, 1892283635, true, new BasicTextKt$BasicText$6(text, listB, i27));
            }
            Modifier modifierB1111 = modifier3.B(textController.j());
            MeasurePolicy measurePolicyI1111 = textController.i();
            composerS.G(-1323940314);
            Density density1112 = (Density) composerS.x(CompositionLocalsKt.e());
            LayoutDirection layoutDirection1111 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
            ViewConfiguration viewConfiguration1111 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
            ComposeUiNode.Companion companion1111 = ComposeUiNode.Companion;
            aVarA = companion1111.a();
            q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC1111 = LayoutKt.c(modifierB1111);
            if (!(composerS.t() instanceof Applier)) {
                ComposablesKt.c();
            }
            composerS.e();
            if (composerS.r()) {
                composerS.w(aVarA);
            } else {
                composerS.c();
            }
            composerS.L();
            Composer composerA1111 = Updater.a(composerS);
            Updater.e(composerA1111, measurePolicyI1111, companion1111.d());
            Updater.e(composerA1111, density1112, companion1111.b());
            Updater.e(composerA1111, layoutDirection1111, companion1111.c());
            Updater.e(composerA1111, viewConfiguration1111, companion1111.f());
            composerS.o();
            qVarC1111.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
            composerS.G(2058660585);
            pVarB.invoke(composerS, 0);
            composerS.Q();
            composerS.d();
            composerS.Q();
            lVar3 = lVar2;
            modifier4 = modifier3;
            textStyle2 = textStyleA;
            i28 = iA;
            z11 = z10;
            i29 = i26;
            map2 = mapH;
        }
        scopeUpdateScopeU = composerS.u();
        if (scopeUpdateScopeU == null) {
            return;
        }
        scopeUpdateScopeU.a(new BasicTextKt$BasicText$7(text, modifier4, textStyle2, lVar3, i28, z11, i29, map2, i12, i13));
    }

    /* JADX WARN: Code duplicated, block: B:100:0x0120  */
    /* JADX WARN: Code duplicated, block: B:102:0x0181  */
    /* JADX WARN: Code duplicated, block: B:105:0x01cf  */
    /* JADX WARN: Code duplicated, block: B:106:0x01e9  */
    /* JADX WARN: Code duplicated, block: B:109:0x01fc  */
    /* JADX WARN: Code duplicated, block: B:112:0x0258  */
    /* JADX WARN: Code duplicated, block: B:115:0x0264  */
    /* JADX WARN: Code duplicated, block: B:116:0x026d  */
    /* JADX WARN: Code duplicated, block: B:121:0x02b5  */
    /* JADX WARN: Code duplicated, block: B:123:0x02c5  */
    /* JADX WARN: Code duplicated, block: B:125:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:26:0x0048  */
    /* JADX WARN: Code duplicated, block: B:28:0x004d  */
    /* JADX WARN: Code duplicated, block: B:30:0x0051  */
    /* JADX WARN: Code duplicated, block: B:32:0x0059  */
    /* JADX WARN: Code duplicated, block: B:33:0x005c  */
    /* JADX WARN: Code duplicated, block: B:37:0x0063  */
    /* JADX WARN: Code duplicated, block: B:39:0x0068  */
    /* JADX WARN: Code duplicated, block: B:41:0x006c  */
    /* JADX WARN: Code duplicated, block: B:43:0x0074  */
    /* JADX WARN: Code duplicated, block: B:44:0x0077  */
    /* JADX WARN: Code duplicated, block: B:48:0x007e  */
    /* JADX WARN: Code duplicated, block: B:50:0x0083  */
    /* JADX WARN: Code duplicated, block: B:52:0x0089  */
    /* JADX WARN: Code duplicated, block: B:54:0x0091  */
    /* JADX WARN: Code duplicated, block: B:55:0x0094  */
    /* JADX WARN: Code duplicated, block: B:59:0x009b  */
    /* JADX WARN: Code duplicated, block: B:61:0x00a1  */
    /* JADX WARN: Code duplicated, block: B:63:0x00a6  */
    /* JADX WARN: Code duplicated, block: B:65:0x00ae  */
    /* JADX WARN: Code duplicated, block: B:66:0x00b1  */
    /* JADX WARN: Code duplicated, block: B:70:0x00b8  */
    /* JADX WARN: Code duplicated, block: B:71:0x00bf  */
    /* JADX WARN: Code duplicated, block: B:73:0x00c7  */
    /* JADX WARN: Code duplicated, block: B:75:0x00cd  */
    /* JADX WARN: Code duplicated, block: B:76:0x00d0  */
    /* JADX WARN: Code duplicated, block: B:80:0x00de  */
    /* JADX WARN: Code duplicated, block: B:84:0x00f1 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:85:0x00f3  */
    /* JADX WARN: Code duplicated, block: B:87:0x00f8  */
    /* JADX WARN: Code duplicated, block: B:88:0x0101  */
    /* JADX WARN: Code duplicated, block: B:90:0x0105  */
    /* JADX WARN: Code duplicated, block: B:92:0x010a  */
    /* JADX WARN: Code duplicated, block: B:95:0x0114  */
    /* JADX WARN: Code duplicated, block: B:97:0x0117  */
    /* JADX WARN: Code duplicated, block: B:98:0x011c  */
    @ComposableTarget
    @Composable
    public static final void b(@NotNull String text, @Nullable Modifier modifier, @Nullable TextStyle textStyle, @Nullable l<? super TextLayoutResult, l0> lVar, int i10, boolean z6, int i11, @Nullable Composer composer, int i12, int i13) {
        int i14;
        Modifier modifier2;
        int i15;
        TextStyle textStyle2;
        int i16;
        int i17;
        l<? super TextLayoutResult, l0> lVar2;
        int i18;
        int i19;
        int iA;
        int i20;
        int i21;
        boolean z10;
        int i22;
        int i23;
        int i24;
        TextStyle textStyleA;
        int i25;
        SelectionRegistrar selectionRegistrar;
        Density density;
        FontFamily.Resolver resolver;
        long jLongValue;
        Object objH;
        TextController textController;
        TextState textStateK;
        a<ComposeUiNode> aVarA;
        int i26;
        Modifier modifier3;
        int i27;
        l<? super TextLayoutResult, l0> lVar3;
        boolean z11;
        TextStyle textStyle3;
        ScopeUpdateScope scopeUpdateScopeU;
        t.j(text, "text");
        Composer composerS = composer.s(1022429478);
        if ((i13 & 1) != 0) {
            i14 = i12 | 6;
        } else if ((i12 & 14) == 0) {
            i14 = (composerS.k(text) ? 4 : 2) | i12;
        } else {
            i14 = i12;
        }
        int i28 = i13 & 2;
        if (i28 == 0) {
            if ((i12 & 112) == 0) {
                modifier2 = modifier;
                i14 |= composerS.k(modifier2) ? 32 : 16;
            }
            i15 = i13 & 4;
            if (i15 != 0) {
                if ((i12 & 896) == 0) {
                    textStyle2 = textStyle;
                    if (composerS.k(textStyle2)) {
                        i16 = 256;
                    } else {
                        i16 = 128;
                    }
                    i14 |= i16;
                }
                i17 = i13 & 8;
                if (i17 != 0) {
                    if ((i12 & 7168) == 0) {
                        lVar2 = lVar;
                        if (composerS.k(lVar2)) {
                            i18 = 2048;
                        } else {
                            i18 = 1024;
                        }
                        i14 |= i18;
                    }
                    i19 = i13 & 16;
                    if (i19 != 0) {
                        if ((57344 & i12) == 0) {
                            iA = i10;
                            if (composerS.p(iA)) {
                                i20 = 16384;
                            } else {
                                i20 = 8192;
                            }
                            i14 |= i20;
                        }
                        i21 = i13 & 32;
                        if (i21 != 0) {
                            if ((458752 & i12) == 0) {
                                z10 = z6;
                                if (composerS.m(z10)) {
                                    i22 = 131072;
                                } else {
                                    i22 = 65536;
                                }
                                i14 |= i22;
                            }
                            i23 = i13 & 64;
                            if (i23 != 0) {
                                i14 |= 1572864;
                            } else if ((i12 & 3670016) == 0) {
                                if (composerS.p(i11)) {
                                    i24 = 1048576;
                                } else {
                                    i24 = 524288;
                                }
                                i14 |= i24;
                            }
                            if ((i14 & 2995931) == 599186 || !composerS.b()) {
                                if (i28 != 0) {
                                    modifier2 = Modifier.Companion;
                                }
                                if (i15 != 0) {
                                    textStyleA = TextStyle.Companion.a();
                                } else {
                                    textStyleA = textStyle2;
                                }
                                if (i17 != 0) {
                                    lVar2 = BasicTextKt$BasicText$1.INSTANCE;
                                }
                                if (i19 != 0) {
                                    iA = TextOverflow.Companion.a();
                                }
                                if (i21 != 0) {
                                    z10 = true;
                                }
                                if (i23 != 0) {
                                    i25 = Integer.MAX_VALUE;
                                } else {
                                    i25 = i11;
                                }
                                if (i25 <= 0) {
                                    throw new IllegalArgumentException("maxLines should be greater than 0".toString());
                                }
                                selectionRegistrar = (SelectionRegistrar) composerS.x(SelectionRegistrarKt.a());
                                density = (Density) composerS.x(CompositionLocalsKt.e());
                                resolver = (FontFamily.Resolver) composerS.x(CompositionLocalsKt.g());
                                jLongValue = ((Number) RememberSaveableKt.b(new Object[]{text, selectionRegistrar}, c(selectionRegistrar), null, new BasicTextKt$BasicText$selectableId$1(selectionRegistrar), composerS, 72, 4)).longValue();
                                composerS.G(-492369756);
                                objH = composerS.H();
                                if (objH == Composer.Companion.a()) {
                                    objH = new TextController(new TextState(new TextDelegate(new AnnotatedString(text, null, null, 6, null), textStyleA, i25, z10, iA, density, resolver, null, 128, null), jLongValue));
                                    composerS.z(objH);
                                }
                                composerS.Q();
                                textController = (TextController) objH;
                                textStateK = textController.k();
                                if (!composerS.r()) {
                                    textController.n(CoreTextKt.e(textStateK.i(), text, textStyleA, density, resolver, z10, iA, i25));
                                }
                                textStateK.m(lVar2);
                                textController.o(selectionRegistrar);
                                composerS.G(959239573);
                                if (selectionRegistrar != null) {
                                    textStateK.p(((TextSelectionColors) composerS.x(TextSelectionColorsKt.b())).a());
                                }
                                composerS.Q();
                                Modifier modifierB = modifier2.B(textController.j());
                                MeasurePolicy measurePolicyI = textController.i();
                                composerS.G(544976794);
                                Density density2 = (Density) composerS.x(CompositionLocalsKt.e());
                                LayoutDirection layoutDirection = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                                ViewConfiguration viewConfiguration = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                                Modifier modifierE = ComposedModifierKt.e(composerS, modifierB);
                                ComposeUiNode.Companion companion = ComposeUiNode.Companion;
                                aVarA = companion.a();
                                composerS.G(1405779621);
                                if (!(composerS.t() instanceof Applier)) {
                                    ComposablesKt.c();
                                }
                                composerS.e();
                                if (composerS.r()) {
                                    composerS.w(new BasicTextKt$BasicTextBpD7jsM$$inlined$Layout$1(aVarA));
                                } else {
                                    composerS.c();
                                }
                                composerS.L();
                                Composer composerA = Updater.a(composerS);
                                Updater.e(composerA, measurePolicyI, companion.d());
                                Updater.e(composerA, density2, companion.b());
                                Updater.e(composerA, layoutDirection, companion.c());
                                Updater.e(composerA, viewConfiguration, companion.f());
                                Updater.e(composerA, modifierE, companion.e());
                                composerS.o();
                                composerS.d();
                                composerS.Q();
                                composerS.Q();
                                i26 = iA;
                                modifier3 = modifier2;
                                i27 = i25;
                                lVar3 = lVar2;
                                z11 = z10;
                                textStyle3 = textStyleA;
                            } else {
                                composerS.g();
                                modifier3 = modifier2;
                                textStyle3 = textStyle2;
                                lVar3 = lVar2;
                                i26 = iA;
                                z11 = z10;
                                i27 = i11;
                            }
                            scopeUpdateScopeU = composerS.u();
                            if (scopeUpdateScopeU == null) {
                                return;
                            }
                            scopeUpdateScopeU.a(new BasicTextKt$BasicText$3(text, modifier3, textStyle3, lVar3, i26, z11, i27, i12, i13));
                        }
                        i14 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                        z10 = z6;
                        i23 = i13 & 64;
                        if (i23 != 0) {
                            i14 |= 1572864;
                        } else if ((i12 & 3670016) == 0) {
                            if (composerS.p(i11)) {
                                i24 = 1048576;
                            } else {
                                i24 = 524288;
                            }
                            i14 |= i24;
                        }
                        if ((i14 & 2995931) == 599186) {
                            if (i28 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i15 != 0) {
                                textStyleA = TextStyle.Companion.a();
                            } else {
                                textStyleA = textStyle2;
                            }
                            if (i17 != 0) {
                                lVar2 = BasicTextKt$BasicText$1.INSTANCE;
                            }
                            if (i19 != 0) {
                                iA = TextOverflow.Companion.a();
                            }
                            if (i21 != 0) {
                                z10 = true;
                            }
                            if (i23 != 0) {
                                i25 = Integer.MAX_VALUE;
                            } else {
                                i25 = i11;
                            }
                            if (i25 <= 0) {
                                throw new IllegalArgumentException("maxLines should be greater than 0".toString());
                            }
                            selectionRegistrar = (SelectionRegistrar) composerS.x(SelectionRegistrarKt.a());
                            density = (Density) composerS.x(CompositionLocalsKt.e());
                            resolver = (FontFamily.Resolver) composerS.x(CompositionLocalsKt.g());
                            jLongValue = ((Number) RememberSaveableKt.b(new Object[]{text, selectionRegistrar}, c(selectionRegistrar), null, new BasicTextKt$BasicText$selectableId$1(selectionRegistrar), composerS, 72, 4)).longValue();
                            composerS.G(-492369756);
                            objH = composerS.H();
                            if (objH == Composer.Companion.a()) {
                                objH = new TextController(new TextState(new TextDelegate(new AnnotatedString(text, null, null, 6, null), textStyleA, i25, z10, iA, density, resolver, null, 128, null), jLongValue));
                                composerS.z(objH);
                            }
                            composerS.Q();
                            textController = (TextController) objH;
                            textStateK = textController.k();
                            if (!composerS.r()) {
                                textController.n(CoreTextKt.e(textStateK.i(), text, textStyleA, density, resolver, z10, iA, i25));
                            }
                            textStateK.m(lVar2);
                            textController.o(selectionRegistrar);
                            composerS.G(959239573);
                            if (selectionRegistrar != null) {
                                textStateK.p(((TextSelectionColors) composerS.x(TextSelectionColorsKt.b())).a());
                            }
                            composerS.Q();
                            Modifier modifierB2 = modifier2.B(textController.j());
                            MeasurePolicy measurePolicyI2 = textController.i();
                            composerS.G(544976794);
                            Density density3 = (Density) composerS.x(CompositionLocalsKt.e());
                            LayoutDirection layoutDirection2 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                            ViewConfiguration viewConfiguration2 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                            Modifier modifierE2 = ComposedModifierKt.e(composerS, modifierB2);
                            ComposeUiNode.Companion companion2 = ComposeUiNode.Companion;
                            aVarA = companion2.a();
                            composerS.G(1405779621);
                            if (!(composerS.t() instanceof Applier)) {
                                ComposablesKt.c();
                            }
                            composerS.e();
                            if (composerS.r()) {
                                composerS.w(new BasicTextKt$BasicTextBpD7jsM$$inlined$Layout$1(aVarA));
                            } else {
                                composerS.c();
                            }
                            composerS.L();
                            Composer composerA2 = Updater.a(composerS);
                            Updater.e(composerA2, measurePolicyI2, companion2.d());
                            Updater.e(composerA2, density3, companion2.b());
                            Updater.e(composerA2, layoutDirection2, companion2.c());
                            Updater.e(composerA2, viewConfiguration2, companion2.f());
                            Updater.e(composerA2, modifierE2, companion2.e());
                            composerS.o();
                            composerS.d();
                            composerS.Q();
                            composerS.Q();
                            i26 = iA;
                            modifier3 = modifier2;
                            i27 = i25;
                            lVar3 = lVar2;
                            z11 = z10;
                            textStyle3 = textStyleA;
                        } else {
                            if (i28 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i15 != 0) {
                                textStyleA = TextStyle.Companion.a();
                            } else {
                                textStyleA = textStyle2;
                            }
                            if (i17 != 0) {
                                lVar2 = BasicTextKt$BasicText$1.INSTANCE;
                            }
                            if (i19 != 0) {
                                iA = TextOverflow.Companion.a();
                            }
                            if (i21 != 0) {
                                z10 = true;
                            }
                            if (i23 != 0) {
                                i25 = Integer.MAX_VALUE;
                            } else {
                                i25 = i11;
                            }
                            if (i25 <= 0) {
                                throw new IllegalArgumentException("maxLines should be greater than 0".toString());
                            }
                            selectionRegistrar = (SelectionRegistrar) composerS.x(SelectionRegistrarKt.a());
                            density = (Density) composerS.x(CompositionLocalsKt.e());
                            resolver = (FontFamily.Resolver) composerS.x(CompositionLocalsKt.g());
                            jLongValue = ((Number) RememberSaveableKt.b(new Object[]{text, selectionRegistrar}, c(selectionRegistrar), null, new BasicTextKt$BasicText$selectableId$1(selectionRegistrar), composerS, 72, 4)).longValue();
                            composerS.G(-492369756);
                            objH = composerS.H();
                            if (objH == Composer.Companion.a()) {
                                objH = new TextController(new TextState(new TextDelegate(new AnnotatedString(text, null, null, 6, null), textStyleA, i25, z10, iA, density, resolver, null, 128, null), jLongValue));
                                composerS.z(objH);
                            }
                            composerS.Q();
                            textController = (TextController) objH;
                            textStateK = textController.k();
                            if (!composerS.r()) {
                                textController.n(CoreTextKt.e(textStateK.i(), text, textStyleA, density, resolver, z10, iA, i25));
                            }
                            textStateK.m(lVar2);
                            textController.o(selectionRegistrar);
                            composerS.G(959239573);
                            if (selectionRegistrar != null) {
                                textStateK.p(((TextSelectionColors) composerS.x(TextSelectionColorsKt.b())).a());
                            }
                            composerS.Q();
                            Modifier modifierB3 = modifier2.B(textController.j());
                            MeasurePolicy measurePolicyI3 = textController.i();
                            composerS.G(544976794);
                            Density density4 = (Density) composerS.x(CompositionLocalsKt.e());
                            LayoutDirection layoutDirection3 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                            ViewConfiguration viewConfiguration3 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                            Modifier modifierE3 = ComposedModifierKt.e(composerS, modifierB3);
                            ComposeUiNode.Companion companion3 = ComposeUiNode.Companion;
                            aVarA = companion3.a();
                            composerS.G(1405779621);
                            if (!(composerS.t() instanceof Applier)) {
                                ComposablesKt.c();
                            }
                            composerS.e();
                            if (composerS.r()) {
                                composerS.w(new BasicTextKt$BasicTextBpD7jsM$$inlined$Layout$1(aVarA));
                            } else {
                                composerS.c();
                            }
                            composerS.L();
                            Composer composerA3 = Updater.a(composerS);
                            Updater.e(composerA3, measurePolicyI3, companion3.d());
                            Updater.e(composerA3, density4, companion3.b());
                            Updater.e(composerA3, layoutDirection3, companion3.c());
                            Updater.e(composerA3, viewConfiguration3, companion3.f());
                            Updater.e(composerA3, modifierE3, companion3.e());
                            composerS.o();
                            composerS.d();
                            composerS.Q();
                            composerS.Q();
                            i26 = iA;
                            modifier3 = modifier2;
                            i27 = i25;
                            lVar3 = lVar2;
                            z11 = z10;
                            textStyle3 = textStyleA;
                        }
                        scopeUpdateScopeU = composerS.u();
                        if (scopeUpdateScopeU == null) {
                            return;
                        }
                        scopeUpdateScopeU.a(new BasicTextKt$BasicText$3(text, modifier3, textStyle3, lVar3, i26, z11, i27, i12, i13));
                    }
                    i14 |= CpioConstants.C_ISBLK;
                    iA = i10;
                    i21 = i13 & 32;
                    if (i21 != 0) {
                        if ((458752 & i12) == 0) {
                            z10 = z6;
                            if (composerS.m(z10)) {
                                i22 = 131072;
                            } else {
                                i22 = 65536;
                            }
                            i14 |= i22;
                        }
                        i23 = i13 & 64;
                        if (i23 != 0) {
                            i14 |= 1572864;
                        } else if ((i12 & 3670016) == 0) {
                            if (composerS.p(i11)) {
                                i24 = 1048576;
                            } else {
                                i24 = 524288;
                            }
                            i14 |= i24;
                        }
                        if ((i14 & 2995931) == 599186) {
                            if (i28 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i15 != 0) {
                                textStyleA = TextStyle.Companion.a();
                            } else {
                                textStyleA = textStyle2;
                            }
                            if (i17 != 0) {
                                lVar2 = BasicTextKt$BasicText$1.INSTANCE;
                            }
                            if (i19 != 0) {
                                iA = TextOverflow.Companion.a();
                            }
                            if (i21 != 0) {
                                z10 = true;
                            }
                            if (i23 != 0) {
                                i25 = Integer.MAX_VALUE;
                            } else {
                                i25 = i11;
                            }
                            if (i25 <= 0) {
                                throw new IllegalArgumentException("maxLines should be greater than 0".toString());
                            }
                            selectionRegistrar = (SelectionRegistrar) composerS.x(SelectionRegistrarKt.a());
                            density = (Density) composerS.x(CompositionLocalsKt.e());
                            resolver = (FontFamily.Resolver) composerS.x(CompositionLocalsKt.g());
                            jLongValue = ((Number) RememberSaveableKt.b(new Object[]{text, selectionRegistrar}, c(selectionRegistrar), null, new BasicTextKt$BasicText$selectableId$1(selectionRegistrar), composerS, 72, 4)).longValue();
                            composerS.G(-492369756);
                            objH = composerS.H();
                            if (objH == Composer.Companion.a()) {
                                objH = new TextController(new TextState(new TextDelegate(new AnnotatedString(text, null, null, 6, null), textStyleA, i25, z10, iA, density, resolver, null, 128, null), jLongValue));
                                composerS.z(objH);
                            }
                            composerS.Q();
                            textController = (TextController) objH;
                            textStateK = textController.k();
                            if (!composerS.r()) {
                                textController.n(CoreTextKt.e(textStateK.i(), text, textStyleA, density, resolver, z10, iA, i25));
                            }
                            textStateK.m(lVar2);
                            textController.o(selectionRegistrar);
                            composerS.G(959239573);
                            if (selectionRegistrar != null) {
                                textStateK.p(((TextSelectionColors) composerS.x(TextSelectionColorsKt.b())).a());
                            }
                            composerS.Q();
                            Modifier modifierB4 = modifier2.B(textController.j());
                            MeasurePolicy measurePolicyI4 = textController.i();
                            composerS.G(544976794);
                            Density density5 = (Density) composerS.x(CompositionLocalsKt.e());
                            LayoutDirection layoutDirection4 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                            ViewConfiguration viewConfiguration4 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                            Modifier modifierE4 = ComposedModifierKt.e(composerS, modifierB4);
                            ComposeUiNode.Companion companion4 = ComposeUiNode.Companion;
                            aVarA = companion4.a();
                            composerS.G(1405779621);
                            if (!(composerS.t() instanceof Applier)) {
                                ComposablesKt.c();
                            }
                            composerS.e();
                            if (composerS.r()) {
                                composerS.w(new BasicTextKt$BasicTextBpD7jsM$$inlined$Layout$1(aVarA));
                            } else {
                                composerS.c();
                            }
                            composerS.L();
                            Composer composerA4 = Updater.a(composerS);
                            Updater.e(composerA4, measurePolicyI4, companion4.d());
                            Updater.e(composerA4, density5, companion4.b());
                            Updater.e(composerA4, layoutDirection4, companion4.c());
                            Updater.e(composerA4, viewConfiguration4, companion4.f());
                            Updater.e(composerA4, modifierE4, companion4.e());
                            composerS.o();
                            composerS.d();
                            composerS.Q();
                            composerS.Q();
                            i26 = iA;
                            modifier3 = modifier2;
                            i27 = i25;
                            lVar3 = lVar2;
                            z11 = z10;
                            textStyle3 = textStyleA;
                        } else {
                            if (i28 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i15 != 0) {
                                textStyleA = TextStyle.Companion.a();
                            } else {
                                textStyleA = textStyle2;
                            }
                            if (i17 != 0) {
                                lVar2 = BasicTextKt$BasicText$1.INSTANCE;
                            }
                            if (i19 != 0) {
                                iA = TextOverflow.Companion.a();
                            }
                            if (i21 != 0) {
                                z10 = true;
                            }
                            if (i23 != 0) {
                                i25 = Integer.MAX_VALUE;
                            } else {
                                i25 = i11;
                            }
                            if (i25 <= 0) {
                                throw new IllegalArgumentException("maxLines should be greater than 0".toString());
                            }
                            selectionRegistrar = (SelectionRegistrar) composerS.x(SelectionRegistrarKt.a());
                            density = (Density) composerS.x(CompositionLocalsKt.e());
                            resolver = (FontFamily.Resolver) composerS.x(CompositionLocalsKt.g());
                            jLongValue = ((Number) RememberSaveableKt.b(new Object[]{text, selectionRegistrar}, c(selectionRegistrar), null, new BasicTextKt$BasicText$selectableId$1(selectionRegistrar), composerS, 72, 4)).longValue();
                            composerS.G(-492369756);
                            objH = composerS.H();
                            if (objH == Composer.Companion.a()) {
                                objH = new TextController(new TextState(new TextDelegate(new AnnotatedString(text, null, null, 6, null), textStyleA, i25, z10, iA, density, resolver, null, 128, null), jLongValue));
                                composerS.z(objH);
                            }
                            composerS.Q();
                            textController = (TextController) objH;
                            textStateK = textController.k();
                            if (!composerS.r()) {
                                textController.n(CoreTextKt.e(textStateK.i(), text, textStyleA, density, resolver, z10, iA, i25));
                            }
                            textStateK.m(lVar2);
                            textController.o(selectionRegistrar);
                            composerS.G(959239573);
                            if (selectionRegistrar != null) {
                                textStateK.p(((TextSelectionColors) composerS.x(TextSelectionColorsKt.b())).a());
                            }
                            composerS.Q();
                            Modifier modifierB5 = modifier2.B(textController.j());
                            MeasurePolicy measurePolicyI5 = textController.i();
                            composerS.G(544976794);
                            Density density6 = (Density) composerS.x(CompositionLocalsKt.e());
                            LayoutDirection layoutDirection5 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                            ViewConfiguration viewConfiguration5 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                            Modifier modifierE5 = ComposedModifierKt.e(composerS, modifierB5);
                            ComposeUiNode.Companion companion5 = ComposeUiNode.Companion;
                            aVarA = companion5.a();
                            composerS.G(1405779621);
                            if (!(composerS.t() instanceof Applier)) {
                                ComposablesKt.c();
                            }
                            composerS.e();
                            if (composerS.r()) {
                                composerS.w(new BasicTextKt$BasicTextBpD7jsM$$inlined$Layout$1(aVarA));
                            } else {
                                composerS.c();
                            }
                            composerS.L();
                            Composer composerA5 = Updater.a(composerS);
                            Updater.e(composerA5, measurePolicyI5, companion5.d());
                            Updater.e(composerA5, density6, companion5.b());
                            Updater.e(composerA5, layoutDirection5, companion5.c());
                            Updater.e(composerA5, viewConfiguration5, companion5.f());
                            Updater.e(composerA5, modifierE5, companion5.e());
                            composerS.o();
                            composerS.d();
                            composerS.Q();
                            composerS.Q();
                            i26 = iA;
                            modifier3 = modifier2;
                            i27 = i25;
                            lVar3 = lVar2;
                            z11 = z10;
                            textStyle3 = textStyleA;
                        }
                        scopeUpdateScopeU = composerS.u();
                        if (scopeUpdateScopeU == null) {
                            return;
                        }
                        scopeUpdateScopeU.a(new BasicTextKt$BasicText$3(text, modifier3, textStyle3, lVar3, i26, z11, i27, i12, i13));
                    }
                    i14 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                    z10 = z6;
                    i23 = i13 & 64;
                    if (i23 != 0) {
                        i14 |= 1572864;
                    } else if ((i12 & 3670016) == 0) {
                        if (composerS.p(i11)) {
                            i24 = 1048576;
                        } else {
                            i24 = 524288;
                        }
                        i14 |= i24;
                    }
                    if ((i14 & 2995931) == 599186) {
                        if (i28 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i15 != 0) {
                            textStyleA = TextStyle.Companion.a();
                        } else {
                            textStyleA = textStyle2;
                        }
                        if (i17 != 0) {
                            lVar2 = BasicTextKt$BasicText$1.INSTANCE;
                        }
                        if (i19 != 0) {
                            iA = TextOverflow.Companion.a();
                        }
                        if (i21 != 0) {
                            z10 = true;
                        }
                        if (i23 != 0) {
                            i25 = Integer.MAX_VALUE;
                        } else {
                            i25 = i11;
                        }
                        if (i25 <= 0) {
                            throw new IllegalArgumentException("maxLines should be greater than 0".toString());
                        }
                        selectionRegistrar = (SelectionRegistrar) composerS.x(SelectionRegistrarKt.a());
                        density = (Density) composerS.x(CompositionLocalsKt.e());
                        resolver = (FontFamily.Resolver) composerS.x(CompositionLocalsKt.g());
                        jLongValue = ((Number) RememberSaveableKt.b(new Object[]{text, selectionRegistrar}, c(selectionRegistrar), null, new BasicTextKt$BasicText$selectableId$1(selectionRegistrar), composerS, 72, 4)).longValue();
                        composerS.G(-492369756);
                        objH = composerS.H();
                        if (objH == Composer.Companion.a()) {
                            objH = new TextController(new TextState(new TextDelegate(new AnnotatedString(text, null, null, 6, null), textStyleA, i25, z10, iA, density, resolver, null, 128, null), jLongValue));
                            composerS.z(objH);
                        }
                        composerS.Q();
                        textController = (TextController) objH;
                        textStateK = textController.k();
                        if (!composerS.r()) {
                            textController.n(CoreTextKt.e(textStateK.i(), text, textStyleA, density, resolver, z10, iA, i25));
                        }
                        textStateK.m(lVar2);
                        textController.o(selectionRegistrar);
                        composerS.G(959239573);
                        if (selectionRegistrar != null) {
                            textStateK.p(((TextSelectionColors) composerS.x(TextSelectionColorsKt.b())).a());
                        }
                        composerS.Q();
                        Modifier modifierB6 = modifier2.B(textController.j());
                        MeasurePolicy measurePolicyI6 = textController.i();
                        composerS.G(544976794);
                        Density density7 = (Density) composerS.x(CompositionLocalsKt.e());
                        LayoutDirection layoutDirection6 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                        ViewConfiguration viewConfiguration6 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                        Modifier modifierE6 = ComposedModifierKt.e(composerS, modifierB6);
                        ComposeUiNode.Companion companion6 = ComposeUiNode.Companion;
                        aVarA = companion6.a();
                        composerS.G(1405779621);
                        if (!(composerS.t() instanceof Applier)) {
                            ComposablesKt.c();
                        }
                        composerS.e();
                        if (composerS.r()) {
                            composerS.w(new BasicTextKt$BasicTextBpD7jsM$$inlined$Layout$1(aVarA));
                        } else {
                            composerS.c();
                        }
                        composerS.L();
                        Composer composerA6 = Updater.a(composerS);
                        Updater.e(composerA6, measurePolicyI6, companion6.d());
                        Updater.e(composerA6, density7, companion6.b());
                        Updater.e(composerA6, layoutDirection6, companion6.c());
                        Updater.e(composerA6, viewConfiguration6, companion6.f());
                        Updater.e(composerA6, modifierE6, companion6.e());
                        composerS.o();
                        composerS.d();
                        composerS.Q();
                        composerS.Q();
                        i26 = iA;
                        modifier3 = modifier2;
                        i27 = i25;
                        lVar3 = lVar2;
                        z11 = z10;
                        textStyle3 = textStyleA;
                    } else {
                        if (i28 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i15 != 0) {
                            textStyleA = TextStyle.Companion.a();
                        } else {
                            textStyleA = textStyle2;
                        }
                        if (i17 != 0) {
                            lVar2 = BasicTextKt$BasicText$1.INSTANCE;
                        }
                        if (i19 != 0) {
                            iA = TextOverflow.Companion.a();
                        }
                        if (i21 != 0) {
                            z10 = true;
                        }
                        if (i23 != 0) {
                            i25 = Integer.MAX_VALUE;
                        } else {
                            i25 = i11;
                        }
                        if (i25 <= 0) {
                            throw new IllegalArgumentException("maxLines should be greater than 0".toString());
                        }
                        selectionRegistrar = (SelectionRegistrar) composerS.x(SelectionRegistrarKt.a());
                        density = (Density) composerS.x(CompositionLocalsKt.e());
                        resolver = (FontFamily.Resolver) composerS.x(CompositionLocalsKt.g());
                        jLongValue = ((Number) RememberSaveableKt.b(new Object[]{text, selectionRegistrar}, c(selectionRegistrar), null, new BasicTextKt$BasicText$selectableId$1(selectionRegistrar), composerS, 72, 4)).longValue();
                        composerS.G(-492369756);
                        objH = composerS.H();
                        if (objH == Composer.Companion.a()) {
                            objH = new TextController(new TextState(new TextDelegate(new AnnotatedString(text, null, null, 6, null), textStyleA, i25, z10, iA, density, resolver, null, 128, null), jLongValue));
                            composerS.z(objH);
                        }
                        composerS.Q();
                        textController = (TextController) objH;
                        textStateK = textController.k();
                        if (!composerS.r()) {
                            textController.n(CoreTextKt.e(textStateK.i(), text, textStyleA, density, resolver, z10, iA, i25));
                        }
                        textStateK.m(lVar2);
                        textController.o(selectionRegistrar);
                        composerS.G(959239573);
                        if (selectionRegistrar != null) {
                            textStateK.p(((TextSelectionColors) composerS.x(TextSelectionColorsKt.b())).a());
                        }
                        composerS.Q();
                        Modifier modifierB7 = modifier2.B(textController.j());
                        MeasurePolicy measurePolicyI7 = textController.i();
                        composerS.G(544976794);
                        Density density8 = (Density) composerS.x(CompositionLocalsKt.e());
                        LayoutDirection layoutDirection7 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                        ViewConfiguration viewConfiguration7 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                        Modifier modifierE7 = ComposedModifierKt.e(composerS, modifierB7);
                        ComposeUiNode.Companion companion7 = ComposeUiNode.Companion;
                        aVarA = companion7.a();
                        composerS.G(1405779621);
                        if (!(composerS.t() instanceof Applier)) {
                            ComposablesKt.c();
                        }
                        composerS.e();
                        if (composerS.r()) {
                            composerS.w(new BasicTextKt$BasicTextBpD7jsM$$inlined$Layout$1(aVarA));
                        } else {
                            composerS.c();
                        }
                        composerS.L();
                        Composer composerA7 = Updater.a(composerS);
                        Updater.e(composerA7, measurePolicyI7, companion7.d());
                        Updater.e(composerA7, density8, companion7.b());
                        Updater.e(composerA7, layoutDirection7, companion7.c());
                        Updater.e(composerA7, viewConfiguration7, companion7.f());
                        Updater.e(composerA7, modifierE7, companion7.e());
                        composerS.o();
                        composerS.d();
                        composerS.Q();
                        composerS.Q();
                        i26 = iA;
                        modifier3 = modifier2;
                        i27 = i25;
                        lVar3 = lVar2;
                        z11 = z10;
                        textStyle3 = textStyleA;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new BasicTextKt$BasicText$3(text, modifier3, textStyle3, lVar3, i26, z11, i27, i12, i13));
                }
                i14 |= 3072;
                lVar2 = lVar;
                i19 = i13 & 16;
                if (i19 != 0) {
                    if ((57344 & i12) == 0) {
                        iA = i10;
                        if (composerS.p(iA)) {
                            i20 = 16384;
                        } else {
                            i20 = 8192;
                        }
                        i14 |= i20;
                    }
                    i21 = i13 & 32;
                    if (i21 != 0) {
                        if ((458752 & i12) == 0) {
                            z10 = z6;
                            if (composerS.m(z10)) {
                                i22 = 131072;
                            } else {
                                i22 = 65536;
                            }
                            i14 |= i22;
                        }
                        i23 = i13 & 64;
                        if (i23 != 0) {
                            i14 |= 1572864;
                        } else if ((i12 & 3670016) == 0) {
                            if (composerS.p(i11)) {
                                i24 = 1048576;
                            } else {
                                i24 = 524288;
                            }
                            i14 |= i24;
                        }
                        if ((i14 & 2995931) == 599186) {
                            if (i28 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i15 != 0) {
                                textStyleA = TextStyle.Companion.a();
                            } else {
                                textStyleA = textStyle2;
                            }
                            if (i17 != 0) {
                                lVar2 = BasicTextKt$BasicText$1.INSTANCE;
                            }
                            if (i19 != 0) {
                                iA = TextOverflow.Companion.a();
                            }
                            if (i21 != 0) {
                                z10 = true;
                            }
                            if (i23 != 0) {
                                i25 = Integer.MAX_VALUE;
                            } else {
                                i25 = i11;
                            }
                            if (i25 <= 0) {
                                throw new IllegalArgumentException("maxLines should be greater than 0".toString());
                            }
                            selectionRegistrar = (SelectionRegistrar) composerS.x(SelectionRegistrarKt.a());
                            density = (Density) composerS.x(CompositionLocalsKt.e());
                            resolver = (FontFamily.Resolver) composerS.x(CompositionLocalsKt.g());
                            jLongValue = ((Number) RememberSaveableKt.b(new Object[]{text, selectionRegistrar}, c(selectionRegistrar), null, new BasicTextKt$BasicText$selectableId$1(selectionRegistrar), composerS, 72, 4)).longValue();
                            composerS.G(-492369756);
                            objH = composerS.H();
                            if (objH == Composer.Companion.a()) {
                                objH = new TextController(new TextState(new TextDelegate(new AnnotatedString(text, null, null, 6, null), textStyleA, i25, z10, iA, density, resolver, null, 128, null), jLongValue));
                                composerS.z(objH);
                            }
                            composerS.Q();
                            textController = (TextController) objH;
                            textStateK = textController.k();
                            if (!composerS.r()) {
                                textController.n(CoreTextKt.e(textStateK.i(), text, textStyleA, density, resolver, z10, iA, i25));
                            }
                            textStateK.m(lVar2);
                            textController.o(selectionRegistrar);
                            composerS.G(959239573);
                            if (selectionRegistrar != null) {
                                textStateK.p(((TextSelectionColors) composerS.x(TextSelectionColorsKt.b())).a());
                            }
                            composerS.Q();
                            Modifier modifierB8 = modifier2.B(textController.j());
                            MeasurePolicy measurePolicyI8 = textController.i();
                            composerS.G(544976794);
                            Density density9 = (Density) composerS.x(CompositionLocalsKt.e());
                            LayoutDirection layoutDirection8 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                            ViewConfiguration viewConfiguration8 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                            Modifier modifierE8 = ComposedModifierKt.e(composerS, modifierB8);
                            ComposeUiNode.Companion companion8 = ComposeUiNode.Companion;
                            aVarA = companion8.a();
                            composerS.G(1405779621);
                            if (!(composerS.t() instanceof Applier)) {
                                ComposablesKt.c();
                            }
                            composerS.e();
                            if (composerS.r()) {
                                composerS.w(new BasicTextKt$BasicTextBpD7jsM$$inlined$Layout$1(aVarA));
                            } else {
                                composerS.c();
                            }
                            composerS.L();
                            Composer composerA8 = Updater.a(composerS);
                            Updater.e(composerA8, measurePolicyI8, companion8.d());
                            Updater.e(composerA8, density9, companion8.b());
                            Updater.e(composerA8, layoutDirection8, companion8.c());
                            Updater.e(composerA8, viewConfiguration8, companion8.f());
                            Updater.e(composerA8, modifierE8, companion8.e());
                            composerS.o();
                            composerS.d();
                            composerS.Q();
                            composerS.Q();
                            i26 = iA;
                            modifier3 = modifier2;
                            i27 = i25;
                            lVar3 = lVar2;
                            z11 = z10;
                            textStyle3 = textStyleA;
                        } else {
                            if (i28 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i15 != 0) {
                                textStyleA = TextStyle.Companion.a();
                            } else {
                                textStyleA = textStyle2;
                            }
                            if (i17 != 0) {
                                lVar2 = BasicTextKt$BasicText$1.INSTANCE;
                            }
                            if (i19 != 0) {
                                iA = TextOverflow.Companion.a();
                            }
                            if (i21 != 0) {
                                z10 = true;
                            }
                            if (i23 != 0) {
                                i25 = Integer.MAX_VALUE;
                            } else {
                                i25 = i11;
                            }
                            if (i25 <= 0) {
                                throw new IllegalArgumentException("maxLines should be greater than 0".toString());
                            }
                            selectionRegistrar = (SelectionRegistrar) composerS.x(SelectionRegistrarKt.a());
                            density = (Density) composerS.x(CompositionLocalsKt.e());
                            resolver = (FontFamily.Resolver) composerS.x(CompositionLocalsKt.g());
                            jLongValue = ((Number) RememberSaveableKt.b(new Object[]{text, selectionRegistrar}, c(selectionRegistrar), null, new BasicTextKt$BasicText$selectableId$1(selectionRegistrar), composerS, 72, 4)).longValue();
                            composerS.G(-492369756);
                            objH = composerS.H();
                            if (objH == Composer.Companion.a()) {
                                objH = new TextController(new TextState(new TextDelegate(new AnnotatedString(text, null, null, 6, null), textStyleA, i25, z10, iA, density, resolver, null, 128, null), jLongValue));
                                composerS.z(objH);
                            }
                            composerS.Q();
                            textController = (TextController) objH;
                            textStateK = textController.k();
                            if (!composerS.r()) {
                                textController.n(CoreTextKt.e(textStateK.i(), text, textStyleA, density, resolver, z10, iA, i25));
                            }
                            textStateK.m(lVar2);
                            textController.o(selectionRegistrar);
                            composerS.G(959239573);
                            if (selectionRegistrar != null) {
                                textStateK.p(((TextSelectionColors) composerS.x(TextSelectionColorsKt.b())).a());
                            }
                            composerS.Q();
                            Modifier modifierB9 = modifier2.B(textController.j());
                            MeasurePolicy measurePolicyI9 = textController.i();
                            composerS.G(544976794);
                            Density density10 = (Density) composerS.x(CompositionLocalsKt.e());
                            LayoutDirection layoutDirection9 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                            ViewConfiguration viewConfiguration9 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                            Modifier modifierE9 = ComposedModifierKt.e(composerS, modifierB9);
                            ComposeUiNode.Companion companion9 = ComposeUiNode.Companion;
                            aVarA = companion9.a();
                            composerS.G(1405779621);
                            if (!(composerS.t() instanceof Applier)) {
                                ComposablesKt.c();
                            }
                            composerS.e();
                            if (composerS.r()) {
                                composerS.w(new BasicTextKt$BasicTextBpD7jsM$$inlined$Layout$1(aVarA));
                            } else {
                                composerS.c();
                            }
                            composerS.L();
                            Composer composerA9 = Updater.a(composerS);
                            Updater.e(composerA9, measurePolicyI9, companion9.d());
                            Updater.e(composerA9, density10, companion9.b());
                            Updater.e(composerA9, layoutDirection9, companion9.c());
                            Updater.e(composerA9, viewConfiguration9, companion9.f());
                            Updater.e(composerA9, modifierE9, companion9.e());
                            composerS.o();
                            composerS.d();
                            composerS.Q();
                            composerS.Q();
                            i26 = iA;
                            modifier3 = modifier2;
                            i27 = i25;
                            lVar3 = lVar2;
                            z11 = z10;
                            textStyle3 = textStyleA;
                        }
                        scopeUpdateScopeU = composerS.u();
                        if (scopeUpdateScopeU == null) {
                            return;
                        }
                        scopeUpdateScopeU.a(new BasicTextKt$BasicText$3(text, modifier3, textStyle3, lVar3, i26, z11, i27, i12, i13));
                    }
                    i14 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                    z10 = z6;
                    i23 = i13 & 64;
                    if (i23 != 0) {
                        i14 |= 1572864;
                    } else if ((i12 & 3670016) == 0) {
                        if (composerS.p(i11)) {
                            i24 = 1048576;
                        } else {
                            i24 = 524288;
                        }
                        i14 |= i24;
                    }
                    if ((i14 & 2995931) == 599186) {
                        if (i28 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i15 != 0) {
                            textStyleA = TextStyle.Companion.a();
                        } else {
                            textStyleA = textStyle2;
                        }
                        if (i17 != 0) {
                            lVar2 = BasicTextKt$BasicText$1.INSTANCE;
                        }
                        if (i19 != 0) {
                            iA = TextOverflow.Companion.a();
                        }
                        if (i21 != 0) {
                            z10 = true;
                        }
                        if (i23 != 0) {
                            i25 = Integer.MAX_VALUE;
                        } else {
                            i25 = i11;
                        }
                        if (i25 <= 0) {
                            throw new IllegalArgumentException("maxLines should be greater than 0".toString());
                        }
                        selectionRegistrar = (SelectionRegistrar) composerS.x(SelectionRegistrarKt.a());
                        density = (Density) composerS.x(CompositionLocalsKt.e());
                        resolver = (FontFamily.Resolver) composerS.x(CompositionLocalsKt.g());
                        jLongValue = ((Number) RememberSaveableKt.b(new Object[]{text, selectionRegistrar}, c(selectionRegistrar), null, new BasicTextKt$BasicText$selectableId$1(selectionRegistrar), composerS, 72, 4)).longValue();
                        composerS.G(-492369756);
                        objH = composerS.H();
                        if (objH == Composer.Companion.a()) {
                            objH = new TextController(new TextState(new TextDelegate(new AnnotatedString(text, null, null, 6, null), textStyleA, i25, z10, iA, density, resolver, null, 128, null), jLongValue));
                            composerS.z(objH);
                        }
                        composerS.Q();
                        textController = (TextController) objH;
                        textStateK = textController.k();
                        if (!composerS.r()) {
                            textController.n(CoreTextKt.e(textStateK.i(), text, textStyleA, density, resolver, z10, iA, i25));
                        }
                        textStateK.m(lVar2);
                        textController.o(selectionRegistrar);
                        composerS.G(959239573);
                        if (selectionRegistrar != null) {
                            textStateK.p(((TextSelectionColors) composerS.x(TextSelectionColorsKt.b())).a());
                        }
                        composerS.Q();
                        Modifier modifierB10 = modifier2.B(textController.j());
                        MeasurePolicy measurePolicyI10 = textController.i();
                        composerS.G(544976794);
                        Density density11 = (Density) composerS.x(CompositionLocalsKt.e());
                        LayoutDirection layoutDirection10 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                        ViewConfiguration viewConfiguration10 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                        Modifier modifierE10 = ComposedModifierKt.e(composerS, modifierB10);
                        ComposeUiNode.Companion companion10 = ComposeUiNode.Companion;
                        aVarA = companion10.a();
                        composerS.G(1405779621);
                        if (!(composerS.t() instanceof Applier)) {
                            ComposablesKt.c();
                        }
                        composerS.e();
                        if (composerS.r()) {
                            composerS.w(new BasicTextKt$BasicTextBpD7jsM$$inlined$Layout$1(aVarA));
                        } else {
                            composerS.c();
                        }
                        composerS.L();
                        Composer composerA10 = Updater.a(composerS);
                        Updater.e(composerA10, measurePolicyI10, companion10.d());
                        Updater.e(composerA10, density11, companion10.b());
                        Updater.e(composerA10, layoutDirection10, companion10.c());
                        Updater.e(composerA10, viewConfiguration10, companion10.f());
                        Updater.e(composerA10, modifierE10, companion10.e());
                        composerS.o();
                        composerS.d();
                        composerS.Q();
                        composerS.Q();
                        i26 = iA;
                        modifier3 = modifier2;
                        i27 = i25;
                        lVar3 = lVar2;
                        z11 = z10;
                        textStyle3 = textStyleA;
                    } else {
                        if (i28 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i15 != 0) {
                            textStyleA = TextStyle.Companion.a();
                        } else {
                            textStyleA = textStyle2;
                        }
                        if (i17 != 0) {
                            lVar2 = BasicTextKt$BasicText$1.INSTANCE;
                        }
                        if (i19 != 0) {
                            iA = TextOverflow.Companion.a();
                        }
                        if (i21 != 0) {
                            z10 = true;
                        }
                        if (i23 != 0) {
                            i25 = Integer.MAX_VALUE;
                        } else {
                            i25 = i11;
                        }
                        if (i25 <= 0) {
                            throw new IllegalArgumentException("maxLines should be greater than 0".toString());
                        }
                        selectionRegistrar = (SelectionRegistrar) composerS.x(SelectionRegistrarKt.a());
                        density = (Density) composerS.x(CompositionLocalsKt.e());
                        resolver = (FontFamily.Resolver) composerS.x(CompositionLocalsKt.g());
                        jLongValue = ((Number) RememberSaveableKt.b(new Object[]{text, selectionRegistrar}, c(selectionRegistrar), null, new BasicTextKt$BasicText$selectableId$1(selectionRegistrar), composerS, 72, 4)).longValue();
                        composerS.G(-492369756);
                        objH = composerS.H();
                        if (objH == Composer.Companion.a()) {
                            objH = new TextController(new TextState(new TextDelegate(new AnnotatedString(text, null, null, 6, null), textStyleA, i25, z10, iA, density, resolver, null, 128, null), jLongValue));
                            composerS.z(objH);
                        }
                        composerS.Q();
                        textController = (TextController) objH;
                        textStateK = textController.k();
                        if (!composerS.r()) {
                            textController.n(CoreTextKt.e(textStateK.i(), text, textStyleA, density, resolver, z10, iA, i25));
                        }
                        textStateK.m(lVar2);
                        textController.o(selectionRegistrar);
                        composerS.G(959239573);
                        if (selectionRegistrar != null) {
                            textStateK.p(((TextSelectionColors) composerS.x(TextSelectionColorsKt.b())).a());
                        }
                        composerS.Q();
                        Modifier modifierB11 = modifier2.B(textController.j());
                        MeasurePolicy measurePolicyI11 = textController.i();
                        composerS.G(544976794);
                        Density density12 = (Density) composerS.x(CompositionLocalsKt.e());
                        LayoutDirection layoutDirection11 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                        ViewConfiguration viewConfiguration11 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                        Modifier modifierE11 = ComposedModifierKt.e(composerS, modifierB11);
                        ComposeUiNode.Companion companion11 = ComposeUiNode.Companion;
                        aVarA = companion11.a();
                        composerS.G(1405779621);
                        if (!(composerS.t() instanceof Applier)) {
                            ComposablesKt.c();
                        }
                        composerS.e();
                        if (composerS.r()) {
                            composerS.w(new BasicTextKt$BasicTextBpD7jsM$$inlined$Layout$1(aVarA));
                        } else {
                            composerS.c();
                        }
                        composerS.L();
                        Composer composerA11 = Updater.a(composerS);
                        Updater.e(composerA11, measurePolicyI11, companion11.d());
                        Updater.e(composerA11, density12, companion11.b());
                        Updater.e(composerA11, layoutDirection11, companion11.c());
                        Updater.e(composerA11, viewConfiguration11, companion11.f());
                        Updater.e(composerA11, modifierE11, companion11.e());
                        composerS.o();
                        composerS.d();
                        composerS.Q();
                        composerS.Q();
                        i26 = iA;
                        modifier3 = modifier2;
                        i27 = i25;
                        lVar3 = lVar2;
                        z11 = z10;
                        textStyle3 = textStyleA;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new BasicTextKt$BasicText$3(text, modifier3, textStyle3, lVar3, i26, z11, i27, i12, i13));
                }
                i14 |= CpioConstants.C_ISBLK;
                iA = i10;
                i21 = i13 & 32;
                if (i21 != 0) {
                    if ((458752 & i12) == 0) {
                        z10 = z6;
                        if (composerS.m(z10)) {
                            i22 = 131072;
                        } else {
                            i22 = 65536;
                        }
                        i14 |= i22;
                    }
                    i23 = i13 & 64;
                    if (i23 != 0) {
                        i14 |= 1572864;
                    } else if ((i12 & 3670016) == 0) {
                        if (composerS.p(i11)) {
                            i24 = 1048576;
                        } else {
                            i24 = 524288;
                        }
                        i14 |= i24;
                    }
                    if ((i14 & 2995931) == 599186) {
                        if (i28 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i15 != 0) {
                            textStyleA = TextStyle.Companion.a();
                        } else {
                            textStyleA = textStyle2;
                        }
                        if (i17 != 0) {
                            lVar2 = BasicTextKt$BasicText$1.INSTANCE;
                        }
                        if (i19 != 0) {
                            iA = TextOverflow.Companion.a();
                        }
                        if (i21 != 0) {
                            z10 = true;
                        }
                        if (i23 != 0) {
                            i25 = Integer.MAX_VALUE;
                        } else {
                            i25 = i11;
                        }
                        if (i25 <= 0) {
                            throw new IllegalArgumentException("maxLines should be greater than 0".toString());
                        }
                        selectionRegistrar = (SelectionRegistrar) composerS.x(SelectionRegistrarKt.a());
                        density = (Density) composerS.x(CompositionLocalsKt.e());
                        resolver = (FontFamily.Resolver) composerS.x(CompositionLocalsKt.g());
                        jLongValue = ((Number) RememberSaveableKt.b(new Object[]{text, selectionRegistrar}, c(selectionRegistrar), null, new BasicTextKt$BasicText$selectableId$1(selectionRegistrar), composerS, 72, 4)).longValue();
                        composerS.G(-492369756);
                        objH = composerS.H();
                        if (objH == Composer.Companion.a()) {
                            objH = new TextController(new TextState(new TextDelegate(new AnnotatedString(text, null, null, 6, null), textStyleA, i25, z10, iA, density, resolver, null, 128, null), jLongValue));
                            composerS.z(objH);
                        }
                        composerS.Q();
                        textController = (TextController) objH;
                        textStateK = textController.k();
                        if (!composerS.r()) {
                            textController.n(CoreTextKt.e(textStateK.i(), text, textStyleA, density, resolver, z10, iA, i25));
                        }
                        textStateK.m(lVar2);
                        textController.o(selectionRegistrar);
                        composerS.G(959239573);
                        if (selectionRegistrar != null) {
                            textStateK.p(((TextSelectionColors) composerS.x(TextSelectionColorsKt.b())).a());
                        }
                        composerS.Q();
                        Modifier modifierB12 = modifier2.B(textController.j());
                        MeasurePolicy measurePolicyI12 = textController.i();
                        composerS.G(544976794);
                        Density density13 = (Density) composerS.x(CompositionLocalsKt.e());
                        LayoutDirection layoutDirection12 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                        ViewConfiguration viewConfiguration12 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                        Modifier modifierE12 = ComposedModifierKt.e(composerS, modifierB12);
                        ComposeUiNode.Companion companion12 = ComposeUiNode.Companion;
                        aVarA = companion12.a();
                        composerS.G(1405779621);
                        if (!(composerS.t() instanceof Applier)) {
                            ComposablesKt.c();
                        }
                        composerS.e();
                        if (composerS.r()) {
                            composerS.w(new BasicTextKt$BasicTextBpD7jsM$$inlined$Layout$1(aVarA));
                        } else {
                            composerS.c();
                        }
                        composerS.L();
                        Composer composerA12 = Updater.a(composerS);
                        Updater.e(composerA12, measurePolicyI12, companion12.d());
                        Updater.e(composerA12, density13, companion12.b());
                        Updater.e(composerA12, layoutDirection12, companion12.c());
                        Updater.e(composerA12, viewConfiguration12, companion12.f());
                        Updater.e(composerA12, modifierE12, companion12.e());
                        composerS.o();
                        composerS.d();
                        composerS.Q();
                        composerS.Q();
                        i26 = iA;
                        modifier3 = modifier2;
                        i27 = i25;
                        lVar3 = lVar2;
                        z11 = z10;
                        textStyle3 = textStyleA;
                    } else {
                        if (i28 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i15 != 0) {
                            textStyleA = TextStyle.Companion.a();
                        } else {
                            textStyleA = textStyle2;
                        }
                        if (i17 != 0) {
                            lVar2 = BasicTextKt$BasicText$1.INSTANCE;
                        }
                        if (i19 != 0) {
                            iA = TextOverflow.Companion.a();
                        }
                        if (i21 != 0) {
                            z10 = true;
                        }
                        if (i23 != 0) {
                            i25 = Integer.MAX_VALUE;
                        } else {
                            i25 = i11;
                        }
                        if (i25 <= 0) {
                            throw new IllegalArgumentException("maxLines should be greater than 0".toString());
                        }
                        selectionRegistrar = (SelectionRegistrar) composerS.x(SelectionRegistrarKt.a());
                        density = (Density) composerS.x(CompositionLocalsKt.e());
                        resolver = (FontFamily.Resolver) composerS.x(CompositionLocalsKt.g());
                        jLongValue = ((Number) RememberSaveableKt.b(new Object[]{text, selectionRegistrar}, c(selectionRegistrar), null, new BasicTextKt$BasicText$selectableId$1(selectionRegistrar), composerS, 72, 4)).longValue();
                        composerS.G(-492369756);
                        objH = composerS.H();
                        if (objH == Composer.Companion.a()) {
                            objH = new TextController(new TextState(new TextDelegate(new AnnotatedString(text, null, null, 6, null), textStyleA, i25, z10, iA, density, resolver, null, 128, null), jLongValue));
                            composerS.z(objH);
                        }
                        composerS.Q();
                        textController = (TextController) objH;
                        textStateK = textController.k();
                        if (!composerS.r()) {
                            textController.n(CoreTextKt.e(textStateK.i(), text, textStyleA, density, resolver, z10, iA, i25));
                        }
                        textStateK.m(lVar2);
                        textController.o(selectionRegistrar);
                        composerS.G(959239573);
                        if (selectionRegistrar != null) {
                            textStateK.p(((TextSelectionColors) composerS.x(TextSelectionColorsKt.b())).a());
                        }
                        composerS.Q();
                        Modifier modifierB13 = modifier2.B(textController.j());
                        MeasurePolicy measurePolicyI13 = textController.i();
                        composerS.G(544976794);
                        Density density14 = (Density) composerS.x(CompositionLocalsKt.e());
                        LayoutDirection layoutDirection13 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                        ViewConfiguration viewConfiguration13 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                        Modifier modifierE13 = ComposedModifierKt.e(composerS, modifierB13);
                        ComposeUiNode.Companion companion13 = ComposeUiNode.Companion;
                        aVarA = companion13.a();
                        composerS.G(1405779621);
                        if (!(composerS.t() instanceof Applier)) {
                            ComposablesKt.c();
                        }
                        composerS.e();
                        if (composerS.r()) {
                            composerS.w(new BasicTextKt$BasicTextBpD7jsM$$inlined$Layout$1(aVarA));
                        } else {
                            composerS.c();
                        }
                        composerS.L();
                        Composer composerA13 = Updater.a(composerS);
                        Updater.e(composerA13, measurePolicyI13, companion13.d());
                        Updater.e(composerA13, density14, companion13.b());
                        Updater.e(composerA13, layoutDirection13, companion13.c());
                        Updater.e(composerA13, viewConfiguration13, companion13.f());
                        Updater.e(composerA13, modifierE13, companion13.e());
                        composerS.o();
                        composerS.d();
                        composerS.Q();
                        composerS.Q();
                        i26 = iA;
                        modifier3 = modifier2;
                        i27 = i25;
                        lVar3 = lVar2;
                        z11 = z10;
                        textStyle3 = textStyleA;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new BasicTextKt$BasicText$3(text, modifier3, textStyle3, lVar3, i26, z11, i27, i12, i13));
                }
                i14 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                z10 = z6;
                i23 = i13 & 64;
                if (i23 != 0) {
                    i14 |= 1572864;
                } else if ((i12 & 3670016) == 0) {
                    if (composerS.p(i11)) {
                        i24 = 1048576;
                    } else {
                        i24 = 524288;
                    }
                    i14 |= i24;
                }
                if ((i14 & 2995931) == 599186) {
                    if (i28 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if (i15 != 0) {
                        textStyleA = TextStyle.Companion.a();
                    } else {
                        textStyleA = textStyle2;
                    }
                    if (i17 != 0) {
                        lVar2 = BasicTextKt$BasicText$1.INSTANCE;
                    }
                    if (i19 != 0) {
                        iA = TextOverflow.Companion.a();
                    }
                    if (i21 != 0) {
                        z10 = true;
                    }
                    if (i23 != 0) {
                        i25 = Integer.MAX_VALUE;
                    } else {
                        i25 = i11;
                    }
                    if (i25 <= 0) {
                        throw new IllegalArgumentException("maxLines should be greater than 0".toString());
                    }
                    selectionRegistrar = (SelectionRegistrar) composerS.x(SelectionRegistrarKt.a());
                    density = (Density) composerS.x(CompositionLocalsKt.e());
                    resolver = (FontFamily.Resolver) composerS.x(CompositionLocalsKt.g());
                    jLongValue = ((Number) RememberSaveableKt.b(new Object[]{text, selectionRegistrar}, c(selectionRegistrar), null, new BasicTextKt$BasicText$selectableId$1(selectionRegistrar), composerS, 72, 4)).longValue();
                    composerS.G(-492369756);
                    objH = composerS.H();
                    if (objH == Composer.Companion.a()) {
                        objH = new TextController(new TextState(new TextDelegate(new AnnotatedString(text, null, null, 6, null), textStyleA, i25, z10, iA, density, resolver, null, 128, null), jLongValue));
                        composerS.z(objH);
                    }
                    composerS.Q();
                    textController = (TextController) objH;
                    textStateK = textController.k();
                    if (!composerS.r()) {
                        textController.n(CoreTextKt.e(textStateK.i(), text, textStyleA, density, resolver, z10, iA, i25));
                    }
                    textStateK.m(lVar2);
                    textController.o(selectionRegistrar);
                    composerS.G(959239573);
                    if (selectionRegistrar != null) {
                        textStateK.p(((TextSelectionColors) composerS.x(TextSelectionColorsKt.b())).a());
                    }
                    composerS.Q();
                    Modifier modifierB14 = modifier2.B(textController.j());
                    MeasurePolicy measurePolicyI14 = textController.i();
                    composerS.G(544976794);
                    Density density15 = (Density) composerS.x(CompositionLocalsKt.e());
                    LayoutDirection layoutDirection14 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                    ViewConfiguration viewConfiguration14 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                    Modifier modifierE14 = ComposedModifierKt.e(composerS, modifierB14);
                    ComposeUiNode.Companion companion14 = ComposeUiNode.Companion;
                    aVarA = companion14.a();
                    composerS.G(1405779621);
                    if (!(composerS.t() instanceof Applier)) {
                        ComposablesKt.c();
                    }
                    composerS.e();
                    if (composerS.r()) {
                        composerS.w(new BasicTextKt$BasicTextBpD7jsM$$inlined$Layout$1(aVarA));
                    } else {
                        composerS.c();
                    }
                    composerS.L();
                    Composer composerA14 = Updater.a(composerS);
                    Updater.e(composerA14, measurePolicyI14, companion14.d());
                    Updater.e(composerA14, density15, companion14.b());
                    Updater.e(composerA14, layoutDirection14, companion14.c());
                    Updater.e(composerA14, viewConfiguration14, companion14.f());
                    Updater.e(composerA14, modifierE14, companion14.e());
                    composerS.o();
                    composerS.d();
                    composerS.Q();
                    composerS.Q();
                    i26 = iA;
                    modifier3 = modifier2;
                    i27 = i25;
                    lVar3 = lVar2;
                    z11 = z10;
                    textStyle3 = textStyleA;
                } else {
                    if (i28 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if (i15 != 0) {
                        textStyleA = TextStyle.Companion.a();
                    } else {
                        textStyleA = textStyle2;
                    }
                    if (i17 != 0) {
                        lVar2 = BasicTextKt$BasicText$1.INSTANCE;
                    }
                    if (i19 != 0) {
                        iA = TextOverflow.Companion.a();
                    }
                    if (i21 != 0) {
                        z10 = true;
                    }
                    if (i23 != 0) {
                        i25 = Integer.MAX_VALUE;
                    } else {
                        i25 = i11;
                    }
                    if (i25 <= 0) {
                        throw new IllegalArgumentException("maxLines should be greater than 0".toString());
                    }
                    selectionRegistrar = (SelectionRegistrar) composerS.x(SelectionRegistrarKt.a());
                    density = (Density) composerS.x(CompositionLocalsKt.e());
                    resolver = (FontFamily.Resolver) composerS.x(CompositionLocalsKt.g());
                    jLongValue = ((Number) RememberSaveableKt.b(new Object[]{text, selectionRegistrar}, c(selectionRegistrar), null, new BasicTextKt$BasicText$selectableId$1(selectionRegistrar), composerS, 72, 4)).longValue();
                    composerS.G(-492369756);
                    objH = composerS.H();
                    if (objH == Composer.Companion.a()) {
                        objH = new TextController(new TextState(new TextDelegate(new AnnotatedString(text, null, null, 6, null), textStyleA, i25, z10, iA, density, resolver, null, 128, null), jLongValue));
                        composerS.z(objH);
                    }
                    composerS.Q();
                    textController = (TextController) objH;
                    textStateK = textController.k();
                    if (!composerS.r()) {
                        textController.n(CoreTextKt.e(textStateK.i(), text, textStyleA, density, resolver, z10, iA, i25));
                    }
                    textStateK.m(lVar2);
                    textController.o(selectionRegistrar);
                    composerS.G(959239573);
                    if (selectionRegistrar != null) {
                        textStateK.p(((TextSelectionColors) composerS.x(TextSelectionColorsKt.b())).a());
                    }
                    composerS.Q();
                    Modifier modifierB15 = modifier2.B(textController.j());
                    MeasurePolicy measurePolicyI15 = textController.i();
                    composerS.G(544976794);
                    Density density16 = (Density) composerS.x(CompositionLocalsKt.e());
                    LayoutDirection layoutDirection15 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                    ViewConfiguration viewConfiguration15 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                    Modifier modifierE15 = ComposedModifierKt.e(composerS, modifierB15);
                    ComposeUiNode.Companion companion15 = ComposeUiNode.Companion;
                    aVarA = companion15.a();
                    composerS.G(1405779621);
                    if (!(composerS.t() instanceof Applier)) {
                        ComposablesKt.c();
                    }
                    composerS.e();
                    if (composerS.r()) {
                        composerS.w(new BasicTextKt$BasicTextBpD7jsM$$inlined$Layout$1(aVarA));
                    } else {
                        composerS.c();
                    }
                    composerS.L();
                    Composer composerA15 = Updater.a(composerS);
                    Updater.e(composerA15, measurePolicyI15, companion15.d());
                    Updater.e(composerA15, density16, companion15.b());
                    Updater.e(composerA15, layoutDirection15, companion15.c());
                    Updater.e(composerA15, viewConfiguration15, companion15.f());
                    Updater.e(composerA15, modifierE15, companion15.e());
                    composerS.o();
                    composerS.d();
                    composerS.Q();
                    composerS.Q();
                    i26 = iA;
                    modifier3 = modifier2;
                    i27 = i25;
                    lVar3 = lVar2;
                    z11 = z10;
                    textStyle3 = textStyleA;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new BasicTextKt$BasicText$3(text, modifier3, textStyle3, lVar3, i26, z11, i27, i12, i13));
            }
            i14 |= 384;
            textStyle2 = textStyle;
            i17 = i13 & 8;
            if (i17 != 0) {
                if ((i12 & 7168) == 0) {
                    lVar2 = lVar;
                    if (composerS.k(lVar2)) {
                        i18 = 2048;
                    } else {
                        i18 = 1024;
                    }
                    i14 |= i18;
                }
                i19 = i13 & 16;
                if (i19 != 0) {
                    if ((57344 & i12) == 0) {
                        iA = i10;
                        if (composerS.p(iA)) {
                            i20 = 16384;
                        } else {
                            i20 = 8192;
                        }
                        i14 |= i20;
                    }
                    i21 = i13 & 32;
                    if (i21 != 0) {
                        if ((458752 & i12) == 0) {
                            z10 = z6;
                            if (composerS.m(z10)) {
                                i22 = 131072;
                            } else {
                                i22 = 65536;
                            }
                            i14 |= i22;
                        }
                        i23 = i13 & 64;
                        if (i23 != 0) {
                            i14 |= 1572864;
                        } else if ((i12 & 3670016) == 0) {
                            if (composerS.p(i11)) {
                                i24 = 1048576;
                            } else {
                                i24 = 524288;
                            }
                            i14 |= i24;
                        }
                        if ((i14 & 2995931) == 599186) {
                            if (i28 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i15 != 0) {
                                textStyleA = TextStyle.Companion.a();
                            } else {
                                textStyleA = textStyle2;
                            }
                            if (i17 != 0) {
                                lVar2 = BasicTextKt$BasicText$1.INSTANCE;
                            }
                            if (i19 != 0) {
                                iA = TextOverflow.Companion.a();
                            }
                            if (i21 != 0) {
                                z10 = true;
                            }
                            if (i23 != 0) {
                                i25 = Integer.MAX_VALUE;
                            } else {
                                i25 = i11;
                            }
                            if (i25 <= 0) {
                                throw new IllegalArgumentException("maxLines should be greater than 0".toString());
                            }
                            selectionRegistrar = (SelectionRegistrar) composerS.x(SelectionRegistrarKt.a());
                            density = (Density) composerS.x(CompositionLocalsKt.e());
                            resolver = (FontFamily.Resolver) composerS.x(CompositionLocalsKt.g());
                            jLongValue = ((Number) RememberSaveableKt.b(new Object[]{text, selectionRegistrar}, c(selectionRegistrar), null, new BasicTextKt$BasicText$selectableId$1(selectionRegistrar), composerS, 72, 4)).longValue();
                            composerS.G(-492369756);
                            objH = composerS.H();
                            if (objH == Composer.Companion.a()) {
                                objH = new TextController(new TextState(new TextDelegate(new AnnotatedString(text, null, null, 6, null), textStyleA, i25, z10, iA, density, resolver, null, 128, null), jLongValue));
                                composerS.z(objH);
                            }
                            composerS.Q();
                            textController = (TextController) objH;
                            textStateK = textController.k();
                            if (!composerS.r()) {
                                textController.n(CoreTextKt.e(textStateK.i(), text, textStyleA, density, resolver, z10, iA, i25));
                            }
                            textStateK.m(lVar2);
                            textController.o(selectionRegistrar);
                            composerS.G(959239573);
                            if (selectionRegistrar != null) {
                                textStateK.p(((TextSelectionColors) composerS.x(TextSelectionColorsKt.b())).a());
                            }
                            composerS.Q();
                            Modifier modifierB16 = modifier2.B(textController.j());
                            MeasurePolicy measurePolicyI16 = textController.i();
                            composerS.G(544976794);
                            Density density17 = (Density) composerS.x(CompositionLocalsKt.e());
                            LayoutDirection layoutDirection16 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                            ViewConfiguration viewConfiguration16 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                            Modifier modifierE16 = ComposedModifierKt.e(composerS, modifierB16);
                            ComposeUiNode.Companion companion16 = ComposeUiNode.Companion;
                            aVarA = companion16.a();
                            composerS.G(1405779621);
                            if (!(composerS.t() instanceof Applier)) {
                                ComposablesKt.c();
                            }
                            composerS.e();
                            if (composerS.r()) {
                                composerS.w(new BasicTextKt$BasicTextBpD7jsM$$inlined$Layout$1(aVarA));
                            } else {
                                composerS.c();
                            }
                            composerS.L();
                            Composer composerA16 = Updater.a(composerS);
                            Updater.e(composerA16, measurePolicyI16, companion16.d());
                            Updater.e(composerA16, density17, companion16.b());
                            Updater.e(composerA16, layoutDirection16, companion16.c());
                            Updater.e(composerA16, viewConfiguration16, companion16.f());
                            Updater.e(composerA16, modifierE16, companion16.e());
                            composerS.o();
                            composerS.d();
                            composerS.Q();
                            composerS.Q();
                            i26 = iA;
                            modifier3 = modifier2;
                            i27 = i25;
                            lVar3 = lVar2;
                            z11 = z10;
                            textStyle3 = textStyleA;
                        } else {
                            if (i28 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i15 != 0) {
                                textStyleA = TextStyle.Companion.a();
                            } else {
                                textStyleA = textStyle2;
                            }
                            if (i17 != 0) {
                                lVar2 = BasicTextKt$BasicText$1.INSTANCE;
                            }
                            if (i19 != 0) {
                                iA = TextOverflow.Companion.a();
                            }
                            if (i21 != 0) {
                                z10 = true;
                            }
                            if (i23 != 0) {
                                i25 = Integer.MAX_VALUE;
                            } else {
                                i25 = i11;
                            }
                            if (i25 <= 0) {
                                throw new IllegalArgumentException("maxLines should be greater than 0".toString());
                            }
                            selectionRegistrar = (SelectionRegistrar) composerS.x(SelectionRegistrarKt.a());
                            density = (Density) composerS.x(CompositionLocalsKt.e());
                            resolver = (FontFamily.Resolver) composerS.x(CompositionLocalsKt.g());
                            jLongValue = ((Number) RememberSaveableKt.b(new Object[]{text, selectionRegistrar}, c(selectionRegistrar), null, new BasicTextKt$BasicText$selectableId$1(selectionRegistrar), composerS, 72, 4)).longValue();
                            composerS.G(-492369756);
                            objH = composerS.H();
                            if (objH == Composer.Companion.a()) {
                                objH = new TextController(new TextState(new TextDelegate(new AnnotatedString(text, null, null, 6, null), textStyleA, i25, z10, iA, density, resolver, null, 128, null), jLongValue));
                                composerS.z(objH);
                            }
                            composerS.Q();
                            textController = (TextController) objH;
                            textStateK = textController.k();
                            if (!composerS.r()) {
                                textController.n(CoreTextKt.e(textStateK.i(), text, textStyleA, density, resolver, z10, iA, i25));
                            }
                            textStateK.m(lVar2);
                            textController.o(selectionRegistrar);
                            composerS.G(959239573);
                            if (selectionRegistrar != null) {
                                textStateK.p(((TextSelectionColors) composerS.x(TextSelectionColorsKt.b())).a());
                            }
                            composerS.Q();
                            Modifier modifierB17 = modifier2.B(textController.j());
                            MeasurePolicy measurePolicyI17 = textController.i();
                            composerS.G(544976794);
                            Density density18 = (Density) composerS.x(CompositionLocalsKt.e());
                            LayoutDirection layoutDirection17 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                            ViewConfiguration viewConfiguration17 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                            Modifier modifierE17 = ComposedModifierKt.e(composerS, modifierB17);
                            ComposeUiNode.Companion companion17 = ComposeUiNode.Companion;
                            aVarA = companion17.a();
                            composerS.G(1405779621);
                            if (!(composerS.t() instanceof Applier)) {
                                ComposablesKt.c();
                            }
                            composerS.e();
                            if (composerS.r()) {
                                composerS.w(new BasicTextKt$BasicTextBpD7jsM$$inlined$Layout$1(aVarA));
                            } else {
                                composerS.c();
                            }
                            composerS.L();
                            Composer composerA17 = Updater.a(composerS);
                            Updater.e(composerA17, measurePolicyI17, companion17.d());
                            Updater.e(composerA17, density18, companion17.b());
                            Updater.e(composerA17, layoutDirection17, companion17.c());
                            Updater.e(composerA17, viewConfiguration17, companion17.f());
                            Updater.e(composerA17, modifierE17, companion17.e());
                            composerS.o();
                            composerS.d();
                            composerS.Q();
                            composerS.Q();
                            i26 = iA;
                            modifier3 = modifier2;
                            i27 = i25;
                            lVar3 = lVar2;
                            z11 = z10;
                            textStyle3 = textStyleA;
                        }
                        scopeUpdateScopeU = composerS.u();
                        if (scopeUpdateScopeU == null) {
                            return;
                        }
                        scopeUpdateScopeU.a(new BasicTextKt$BasicText$3(text, modifier3, textStyle3, lVar3, i26, z11, i27, i12, i13));
                    }
                    i14 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                    z10 = z6;
                    i23 = i13 & 64;
                    if (i23 != 0) {
                        i14 |= 1572864;
                    } else if ((i12 & 3670016) == 0) {
                        if (composerS.p(i11)) {
                            i24 = 1048576;
                        } else {
                            i24 = 524288;
                        }
                        i14 |= i24;
                    }
                    if ((i14 & 2995931) == 599186) {
                        if (i28 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i15 != 0) {
                            textStyleA = TextStyle.Companion.a();
                        } else {
                            textStyleA = textStyle2;
                        }
                        if (i17 != 0) {
                            lVar2 = BasicTextKt$BasicText$1.INSTANCE;
                        }
                        if (i19 != 0) {
                            iA = TextOverflow.Companion.a();
                        }
                        if (i21 != 0) {
                            z10 = true;
                        }
                        if (i23 != 0) {
                            i25 = Integer.MAX_VALUE;
                        } else {
                            i25 = i11;
                        }
                        if (i25 <= 0) {
                            throw new IllegalArgumentException("maxLines should be greater than 0".toString());
                        }
                        selectionRegistrar = (SelectionRegistrar) composerS.x(SelectionRegistrarKt.a());
                        density = (Density) composerS.x(CompositionLocalsKt.e());
                        resolver = (FontFamily.Resolver) composerS.x(CompositionLocalsKt.g());
                        jLongValue = ((Number) RememberSaveableKt.b(new Object[]{text, selectionRegistrar}, c(selectionRegistrar), null, new BasicTextKt$BasicText$selectableId$1(selectionRegistrar), composerS, 72, 4)).longValue();
                        composerS.G(-492369756);
                        objH = composerS.H();
                        if (objH == Composer.Companion.a()) {
                            objH = new TextController(new TextState(new TextDelegate(new AnnotatedString(text, null, null, 6, null), textStyleA, i25, z10, iA, density, resolver, null, 128, null), jLongValue));
                            composerS.z(objH);
                        }
                        composerS.Q();
                        textController = (TextController) objH;
                        textStateK = textController.k();
                        if (!composerS.r()) {
                            textController.n(CoreTextKt.e(textStateK.i(), text, textStyleA, density, resolver, z10, iA, i25));
                        }
                        textStateK.m(lVar2);
                        textController.o(selectionRegistrar);
                        composerS.G(959239573);
                        if (selectionRegistrar != null) {
                            textStateK.p(((TextSelectionColors) composerS.x(TextSelectionColorsKt.b())).a());
                        }
                        composerS.Q();
                        Modifier modifierB18 = modifier2.B(textController.j());
                        MeasurePolicy measurePolicyI18 = textController.i();
                        composerS.G(544976794);
                        Density density19 = (Density) composerS.x(CompositionLocalsKt.e());
                        LayoutDirection layoutDirection18 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                        ViewConfiguration viewConfiguration18 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                        Modifier modifierE18 = ComposedModifierKt.e(composerS, modifierB18);
                        ComposeUiNode.Companion companion18 = ComposeUiNode.Companion;
                        aVarA = companion18.a();
                        composerS.G(1405779621);
                        if (!(composerS.t() instanceof Applier)) {
                            ComposablesKt.c();
                        }
                        composerS.e();
                        if (composerS.r()) {
                            composerS.w(new BasicTextKt$BasicTextBpD7jsM$$inlined$Layout$1(aVarA));
                        } else {
                            composerS.c();
                        }
                        composerS.L();
                        Composer composerA18 = Updater.a(composerS);
                        Updater.e(composerA18, measurePolicyI18, companion18.d());
                        Updater.e(composerA18, density19, companion18.b());
                        Updater.e(composerA18, layoutDirection18, companion18.c());
                        Updater.e(composerA18, viewConfiguration18, companion18.f());
                        Updater.e(composerA18, modifierE18, companion18.e());
                        composerS.o();
                        composerS.d();
                        composerS.Q();
                        composerS.Q();
                        i26 = iA;
                        modifier3 = modifier2;
                        i27 = i25;
                        lVar3 = lVar2;
                        z11 = z10;
                        textStyle3 = textStyleA;
                    } else {
                        if (i28 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i15 != 0) {
                            textStyleA = TextStyle.Companion.a();
                        } else {
                            textStyleA = textStyle2;
                        }
                        if (i17 != 0) {
                            lVar2 = BasicTextKt$BasicText$1.INSTANCE;
                        }
                        if (i19 != 0) {
                            iA = TextOverflow.Companion.a();
                        }
                        if (i21 != 0) {
                            z10 = true;
                        }
                        if (i23 != 0) {
                            i25 = Integer.MAX_VALUE;
                        } else {
                            i25 = i11;
                        }
                        if (i25 <= 0) {
                            throw new IllegalArgumentException("maxLines should be greater than 0".toString());
                        }
                        selectionRegistrar = (SelectionRegistrar) composerS.x(SelectionRegistrarKt.a());
                        density = (Density) composerS.x(CompositionLocalsKt.e());
                        resolver = (FontFamily.Resolver) composerS.x(CompositionLocalsKt.g());
                        jLongValue = ((Number) RememberSaveableKt.b(new Object[]{text, selectionRegistrar}, c(selectionRegistrar), null, new BasicTextKt$BasicText$selectableId$1(selectionRegistrar), composerS, 72, 4)).longValue();
                        composerS.G(-492369756);
                        objH = composerS.H();
                        if (objH == Composer.Companion.a()) {
                            objH = new TextController(new TextState(new TextDelegate(new AnnotatedString(text, null, null, 6, null), textStyleA, i25, z10, iA, density, resolver, null, 128, null), jLongValue));
                            composerS.z(objH);
                        }
                        composerS.Q();
                        textController = (TextController) objH;
                        textStateK = textController.k();
                        if (!composerS.r()) {
                            textController.n(CoreTextKt.e(textStateK.i(), text, textStyleA, density, resolver, z10, iA, i25));
                        }
                        textStateK.m(lVar2);
                        textController.o(selectionRegistrar);
                        composerS.G(959239573);
                        if (selectionRegistrar != null) {
                            textStateK.p(((TextSelectionColors) composerS.x(TextSelectionColorsKt.b())).a());
                        }
                        composerS.Q();
                        Modifier modifierB19 = modifier2.B(textController.j());
                        MeasurePolicy measurePolicyI19 = textController.i();
                        composerS.G(544976794);
                        Density density110 = (Density) composerS.x(CompositionLocalsKt.e());
                        LayoutDirection layoutDirection19 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                        ViewConfiguration viewConfiguration19 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                        Modifier modifierE19 = ComposedModifierKt.e(composerS, modifierB19);
                        ComposeUiNode.Companion companion19 = ComposeUiNode.Companion;
                        aVarA = companion19.a();
                        composerS.G(1405779621);
                        if (!(composerS.t() instanceof Applier)) {
                            ComposablesKt.c();
                        }
                        composerS.e();
                        if (composerS.r()) {
                            composerS.w(new BasicTextKt$BasicTextBpD7jsM$$inlined$Layout$1(aVarA));
                        } else {
                            composerS.c();
                        }
                        composerS.L();
                        Composer composerA19 = Updater.a(composerS);
                        Updater.e(composerA19, measurePolicyI19, companion19.d());
                        Updater.e(composerA19, density110, companion19.b());
                        Updater.e(composerA19, layoutDirection19, companion19.c());
                        Updater.e(composerA19, viewConfiguration19, companion19.f());
                        Updater.e(composerA19, modifierE19, companion19.e());
                        composerS.o();
                        composerS.d();
                        composerS.Q();
                        composerS.Q();
                        i26 = iA;
                        modifier3 = modifier2;
                        i27 = i25;
                        lVar3 = lVar2;
                        z11 = z10;
                        textStyle3 = textStyleA;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new BasicTextKt$BasicText$3(text, modifier3, textStyle3, lVar3, i26, z11, i27, i12, i13));
                }
                i14 |= CpioConstants.C_ISBLK;
                iA = i10;
                i21 = i13 & 32;
                if (i21 != 0) {
                    if ((458752 & i12) == 0) {
                        z10 = z6;
                        if (composerS.m(z10)) {
                            i22 = 131072;
                        } else {
                            i22 = 65536;
                        }
                        i14 |= i22;
                    }
                    i23 = i13 & 64;
                    if (i23 != 0) {
                        i14 |= 1572864;
                    } else if ((i12 & 3670016) == 0) {
                        if (composerS.p(i11)) {
                            i24 = 1048576;
                        } else {
                            i24 = 524288;
                        }
                        i14 |= i24;
                    }
                    if ((i14 & 2995931) == 599186) {
                        if (i28 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i15 != 0) {
                            textStyleA = TextStyle.Companion.a();
                        } else {
                            textStyleA = textStyle2;
                        }
                        if (i17 != 0) {
                            lVar2 = BasicTextKt$BasicText$1.INSTANCE;
                        }
                        if (i19 != 0) {
                            iA = TextOverflow.Companion.a();
                        }
                        if (i21 != 0) {
                            z10 = true;
                        }
                        if (i23 != 0) {
                            i25 = Integer.MAX_VALUE;
                        } else {
                            i25 = i11;
                        }
                        if (i25 <= 0) {
                            throw new IllegalArgumentException("maxLines should be greater than 0".toString());
                        }
                        selectionRegistrar = (SelectionRegistrar) composerS.x(SelectionRegistrarKt.a());
                        density = (Density) composerS.x(CompositionLocalsKt.e());
                        resolver = (FontFamily.Resolver) composerS.x(CompositionLocalsKt.g());
                        jLongValue = ((Number) RememberSaveableKt.b(new Object[]{text, selectionRegistrar}, c(selectionRegistrar), null, new BasicTextKt$BasicText$selectableId$1(selectionRegistrar), composerS, 72, 4)).longValue();
                        composerS.G(-492369756);
                        objH = composerS.H();
                        if (objH == Composer.Companion.a()) {
                            objH = new TextController(new TextState(new TextDelegate(new AnnotatedString(text, null, null, 6, null), textStyleA, i25, z10, iA, density, resolver, null, 128, null), jLongValue));
                            composerS.z(objH);
                        }
                        composerS.Q();
                        textController = (TextController) objH;
                        textStateK = textController.k();
                        if (!composerS.r()) {
                            textController.n(CoreTextKt.e(textStateK.i(), text, textStyleA, density, resolver, z10, iA, i25));
                        }
                        textStateK.m(lVar2);
                        textController.o(selectionRegistrar);
                        composerS.G(959239573);
                        if (selectionRegistrar != null) {
                            textStateK.p(((TextSelectionColors) composerS.x(TextSelectionColorsKt.b())).a());
                        }
                        composerS.Q();
                        Modifier modifierB110 = modifier2.B(textController.j());
                        MeasurePolicy measurePolicyI110 = textController.i();
                        composerS.G(544976794);
                        Density density111 = (Density) composerS.x(CompositionLocalsKt.e());
                        LayoutDirection layoutDirection110 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                        ViewConfiguration viewConfiguration110 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                        Modifier modifierE110 = ComposedModifierKt.e(composerS, modifierB110);
                        ComposeUiNode.Companion companion110 = ComposeUiNode.Companion;
                        aVarA = companion110.a();
                        composerS.G(1405779621);
                        if (!(composerS.t() instanceof Applier)) {
                            ComposablesKt.c();
                        }
                        composerS.e();
                        if (composerS.r()) {
                            composerS.w(new BasicTextKt$BasicTextBpD7jsM$$inlined$Layout$1(aVarA));
                        } else {
                            composerS.c();
                        }
                        composerS.L();
                        Composer composerA110 = Updater.a(composerS);
                        Updater.e(composerA110, measurePolicyI110, companion110.d());
                        Updater.e(composerA110, density111, companion110.b());
                        Updater.e(composerA110, layoutDirection110, companion110.c());
                        Updater.e(composerA110, viewConfiguration110, companion110.f());
                        Updater.e(composerA110, modifierE110, companion110.e());
                        composerS.o();
                        composerS.d();
                        composerS.Q();
                        composerS.Q();
                        i26 = iA;
                        modifier3 = modifier2;
                        i27 = i25;
                        lVar3 = lVar2;
                        z11 = z10;
                        textStyle3 = textStyleA;
                    } else {
                        if (i28 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i15 != 0) {
                            textStyleA = TextStyle.Companion.a();
                        } else {
                            textStyleA = textStyle2;
                        }
                        if (i17 != 0) {
                            lVar2 = BasicTextKt$BasicText$1.INSTANCE;
                        }
                        if (i19 != 0) {
                            iA = TextOverflow.Companion.a();
                        }
                        if (i21 != 0) {
                            z10 = true;
                        }
                        if (i23 != 0) {
                            i25 = Integer.MAX_VALUE;
                        } else {
                            i25 = i11;
                        }
                        if (i25 <= 0) {
                            throw new IllegalArgumentException("maxLines should be greater than 0".toString());
                        }
                        selectionRegistrar = (SelectionRegistrar) composerS.x(SelectionRegistrarKt.a());
                        density = (Density) composerS.x(CompositionLocalsKt.e());
                        resolver = (FontFamily.Resolver) composerS.x(CompositionLocalsKt.g());
                        jLongValue = ((Number) RememberSaveableKt.b(new Object[]{text, selectionRegistrar}, c(selectionRegistrar), null, new BasicTextKt$BasicText$selectableId$1(selectionRegistrar), composerS, 72, 4)).longValue();
                        composerS.G(-492369756);
                        objH = composerS.H();
                        if (objH == Composer.Companion.a()) {
                            objH = new TextController(new TextState(new TextDelegate(new AnnotatedString(text, null, null, 6, null), textStyleA, i25, z10, iA, density, resolver, null, 128, null), jLongValue));
                            composerS.z(objH);
                        }
                        composerS.Q();
                        textController = (TextController) objH;
                        textStateK = textController.k();
                        if (!composerS.r()) {
                            textController.n(CoreTextKt.e(textStateK.i(), text, textStyleA, density, resolver, z10, iA, i25));
                        }
                        textStateK.m(lVar2);
                        textController.o(selectionRegistrar);
                        composerS.G(959239573);
                        if (selectionRegistrar != null) {
                            textStateK.p(((TextSelectionColors) composerS.x(TextSelectionColorsKt.b())).a());
                        }
                        composerS.Q();
                        Modifier modifierB111 = modifier2.B(textController.j());
                        MeasurePolicy measurePolicyI111 = textController.i();
                        composerS.G(544976794);
                        Density density112 = (Density) composerS.x(CompositionLocalsKt.e());
                        LayoutDirection layoutDirection111 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                        ViewConfiguration viewConfiguration111 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                        Modifier modifierE111 = ComposedModifierKt.e(composerS, modifierB111);
                        ComposeUiNode.Companion companion111 = ComposeUiNode.Companion;
                        aVarA = companion111.a();
                        composerS.G(1405779621);
                        if (!(composerS.t() instanceof Applier)) {
                            ComposablesKt.c();
                        }
                        composerS.e();
                        if (composerS.r()) {
                            composerS.w(new BasicTextKt$BasicTextBpD7jsM$$inlined$Layout$1(aVarA));
                        } else {
                            composerS.c();
                        }
                        composerS.L();
                        Composer composerA111 = Updater.a(composerS);
                        Updater.e(composerA111, measurePolicyI111, companion111.d());
                        Updater.e(composerA111, density112, companion111.b());
                        Updater.e(composerA111, layoutDirection111, companion111.c());
                        Updater.e(composerA111, viewConfiguration111, companion111.f());
                        Updater.e(composerA111, modifierE111, companion111.e());
                        composerS.o();
                        composerS.d();
                        composerS.Q();
                        composerS.Q();
                        i26 = iA;
                        modifier3 = modifier2;
                        i27 = i25;
                        lVar3 = lVar2;
                        z11 = z10;
                        textStyle3 = textStyleA;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new BasicTextKt$BasicText$3(text, modifier3, textStyle3, lVar3, i26, z11, i27, i12, i13));
                }
                i14 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                z10 = z6;
                i23 = i13 & 64;
                if (i23 != 0) {
                    i14 |= 1572864;
                } else if ((i12 & 3670016) == 0) {
                    if (composerS.p(i11)) {
                        i24 = 1048576;
                    } else {
                        i24 = 524288;
                    }
                    i14 |= i24;
                }
                if ((i14 & 2995931) == 599186) {
                    if (i28 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if (i15 != 0) {
                        textStyleA = TextStyle.Companion.a();
                    } else {
                        textStyleA = textStyle2;
                    }
                    if (i17 != 0) {
                        lVar2 = BasicTextKt$BasicText$1.INSTANCE;
                    }
                    if (i19 != 0) {
                        iA = TextOverflow.Companion.a();
                    }
                    if (i21 != 0) {
                        z10 = true;
                    }
                    if (i23 != 0) {
                        i25 = Integer.MAX_VALUE;
                    } else {
                        i25 = i11;
                    }
                    if (i25 <= 0) {
                        throw new IllegalArgumentException("maxLines should be greater than 0".toString());
                    }
                    selectionRegistrar = (SelectionRegistrar) composerS.x(SelectionRegistrarKt.a());
                    density = (Density) composerS.x(CompositionLocalsKt.e());
                    resolver = (FontFamily.Resolver) composerS.x(CompositionLocalsKt.g());
                    jLongValue = ((Number) RememberSaveableKt.b(new Object[]{text, selectionRegistrar}, c(selectionRegistrar), null, new BasicTextKt$BasicText$selectableId$1(selectionRegistrar), composerS, 72, 4)).longValue();
                    composerS.G(-492369756);
                    objH = composerS.H();
                    if (objH == Composer.Companion.a()) {
                        objH = new TextController(new TextState(new TextDelegate(new AnnotatedString(text, null, null, 6, null), textStyleA, i25, z10, iA, density, resolver, null, 128, null), jLongValue));
                        composerS.z(objH);
                    }
                    composerS.Q();
                    textController = (TextController) objH;
                    textStateK = textController.k();
                    if (!composerS.r()) {
                        textController.n(CoreTextKt.e(textStateK.i(), text, textStyleA, density, resolver, z10, iA, i25));
                    }
                    textStateK.m(lVar2);
                    textController.o(selectionRegistrar);
                    composerS.G(959239573);
                    if (selectionRegistrar != null) {
                        textStateK.p(((TextSelectionColors) composerS.x(TextSelectionColorsKt.b())).a());
                    }
                    composerS.Q();
                    Modifier modifierB112 = modifier2.B(textController.j());
                    MeasurePolicy measurePolicyI112 = textController.i();
                    composerS.G(544976794);
                    Density density113 = (Density) composerS.x(CompositionLocalsKt.e());
                    LayoutDirection layoutDirection112 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                    ViewConfiguration viewConfiguration112 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                    Modifier modifierE112 = ComposedModifierKt.e(composerS, modifierB112);
                    ComposeUiNode.Companion companion112 = ComposeUiNode.Companion;
                    aVarA = companion112.a();
                    composerS.G(1405779621);
                    if (!(composerS.t() instanceof Applier)) {
                        ComposablesKt.c();
                    }
                    composerS.e();
                    if (composerS.r()) {
                        composerS.w(new BasicTextKt$BasicTextBpD7jsM$$inlined$Layout$1(aVarA));
                    } else {
                        composerS.c();
                    }
                    composerS.L();
                    Composer composerA112 = Updater.a(composerS);
                    Updater.e(composerA112, measurePolicyI112, companion112.d());
                    Updater.e(composerA112, density113, companion112.b());
                    Updater.e(composerA112, layoutDirection112, companion112.c());
                    Updater.e(composerA112, viewConfiguration112, companion112.f());
                    Updater.e(composerA112, modifierE112, companion112.e());
                    composerS.o();
                    composerS.d();
                    composerS.Q();
                    composerS.Q();
                    i26 = iA;
                    modifier3 = modifier2;
                    i27 = i25;
                    lVar3 = lVar2;
                    z11 = z10;
                    textStyle3 = textStyleA;
                } else {
                    if (i28 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if (i15 != 0) {
                        textStyleA = TextStyle.Companion.a();
                    } else {
                        textStyleA = textStyle2;
                    }
                    if (i17 != 0) {
                        lVar2 = BasicTextKt$BasicText$1.INSTANCE;
                    }
                    if (i19 != 0) {
                        iA = TextOverflow.Companion.a();
                    }
                    if (i21 != 0) {
                        z10 = true;
                    }
                    if (i23 != 0) {
                        i25 = Integer.MAX_VALUE;
                    } else {
                        i25 = i11;
                    }
                    if (i25 <= 0) {
                        throw new IllegalArgumentException("maxLines should be greater than 0".toString());
                    }
                    selectionRegistrar = (SelectionRegistrar) composerS.x(SelectionRegistrarKt.a());
                    density = (Density) composerS.x(CompositionLocalsKt.e());
                    resolver = (FontFamily.Resolver) composerS.x(CompositionLocalsKt.g());
                    jLongValue = ((Number) RememberSaveableKt.b(new Object[]{text, selectionRegistrar}, c(selectionRegistrar), null, new BasicTextKt$BasicText$selectableId$1(selectionRegistrar), composerS, 72, 4)).longValue();
                    composerS.G(-492369756);
                    objH = composerS.H();
                    if (objH == Composer.Companion.a()) {
                        objH = new TextController(new TextState(new TextDelegate(new AnnotatedString(text, null, null, 6, null), textStyleA, i25, z10, iA, density, resolver, null, 128, null), jLongValue));
                        composerS.z(objH);
                    }
                    composerS.Q();
                    textController = (TextController) objH;
                    textStateK = textController.k();
                    if (!composerS.r()) {
                        textController.n(CoreTextKt.e(textStateK.i(), text, textStyleA, density, resolver, z10, iA, i25));
                    }
                    textStateK.m(lVar2);
                    textController.o(selectionRegistrar);
                    composerS.G(959239573);
                    if (selectionRegistrar != null) {
                        textStateK.p(((TextSelectionColors) composerS.x(TextSelectionColorsKt.b())).a());
                    }
                    composerS.Q();
                    Modifier modifierB113 = modifier2.B(textController.j());
                    MeasurePolicy measurePolicyI113 = textController.i();
                    composerS.G(544976794);
                    Density density114 = (Density) composerS.x(CompositionLocalsKt.e());
                    LayoutDirection layoutDirection113 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                    ViewConfiguration viewConfiguration113 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                    Modifier modifierE113 = ComposedModifierKt.e(composerS, modifierB113);
                    ComposeUiNode.Companion companion113 = ComposeUiNode.Companion;
                    aVarA = companion113.a();
                    composerS.G(1405779621);
                    if (!(composerS.t() instanceof Applier)) {
                        ComposablesKt.c();
                    }
                    composerS.e();
                    if (composerS.r()) {
                        composerS.w(new BasicTextKt$BasicTextBpD7jsM$$inlined$Layout$1(aVarA));
                    } else {
                        composerS.c();
                    }
                    composerS.L();
                    Composer composerA113 = Updater.a(composerS);
                    Updater.e(composerA113, measurePolicyI113, companion113.d());
                    Updater.e(composerA113, density114, companion113.b());
                    Updater.e(composerA113, layoutDirection113, companion113.c());
                    Updater.e(composerA113, viewConfiguration113, companion113.f());
                    Updater.e(composerA113, modifierE113, companion113.e());
                    composerS.o();
                    composerS.d();
                    composerS.Q();
                    composerS.Q();
                    i26 = iA;
                    modifier3 = modifier2;
                    i27 = i25;
                    lVar3 = lVar2;
                    z11 = z10;
                    textStyle3 = textStyleA;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new BasicTextKt$BasicText$3(text, modifier3, textStyle3, lVar3, i26, z11, i27, i12, i13));
            }
            i14 |= 3072;
            lVar2 = lVar;
            i19 = i13 & 16;
            if (i19 != 0) {
                if ((57344 & i12) == 0) {
                    iA = i10;
                    if (composerS.p(iA)) {
                        i20 = 16384;
                    } else {
                        i20 = 8192;
                    }
                    i14 |= i20;
                }
                i21 = i13 & 32;
                if (i21 != 0) {
                    if ((458752 & i12) == 0) {
                        z10 = z6;
                        if (composerS.m(z10)) {
                            i22 = 131072;
                        } else {
                            i22 = 65536;
                        }
                        i14 |= i22;
                    }
                    i23 = i13 & 64;
                    if (i23 != 0) {
                        i14 |= 1572864;
                    } else if ((i12 & 3670016) == 0) {
                        if (composerS.p(i11)) {
                            i24 = 1048576;
                        } else {
                            i24 = 524288;
                        }
                        i14 |= i24;
                    }
                    if ((i14 & 2995931) == 599186) {
                        if (i28 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i15 != 0) {
                            textStyleA = TextStyle.Companion.a();
                        } else {
                            textStyleA = textStyle2;
                        }
                        if (i17 != 0) {
                            lVar2 = BasicTextKt$BasicText$1.INSTANCE;
                        }
                        if (i19 != 0) {
                            iA = TextOverflow.Companion.a();
                        }
                        if (i21 != 0) {
                            z10 = true;
                        }
                        if (i23 != 0) {
                            i25 = Integer.MAX_VALUE;
                        } else {
                            i25 = i11;
                        }
                        if (i25 <= 0) {
                            throw new IllegalArgumentException("maxLines should be greater than 0".toString());
                        }
                        selectionRegistrar = (SelectionRegistrar) composerS.x(SelectionRegistrarKt.a());
                        density = (Density) composerS.x(CompositionLocalsKt.e());
                        resolver = (FontFamily.Resolver) composerS.x(CompositionLocalsKt.g());
                        jLongValue = ((Number) RememberSaveableKt.b(new Object[]{text, selectionRegistrar}, c(selectionRegistrar), null, new BasicTextKt$BasicText$selectableId$1(selectionRegistrar), composerS, 72, 4)).longValue();
                        composerS.G(-492369756);
                        objH = composerS.H();
                        if (objH == Composer.Companion.a()) {
                            objH = new TextController(new TextState(new TextDelegate(new AnnotatedString(text, null, null, 6, null), textStyleA, i25, z10, iA, density, resolver, null, 128, null), jLongValue));
                            composerS.z(objH);
                        }
                        composerS.Q();
                        textController = (TextController) objH;
                        textStateK = textController.k();
                        if (!composerS.r()) {
                            textController.n(CoreTextKt.e(textStateK.i(), text, textStyleA, density, resolver, z10, iA, i25));
                        }
                        textStateK.m(lVar2);
                        textController.o(selectionRegistrar);
                        composerS.G(959239573);
                        if (selectionRegistrar != null) {
                            textStateK.p(((TextSelectionColors) composerS.x(TextSelectionColorsKt.b())).a());
                        }
                        composerS.Q();
                        Modifier modifierB114 = modifier2.B(textController.j());
                        MeasurePolicy measurePolicyI114 = textController.i();
                        composerS.G(544976794);
                        Density density115 = (Density) composerS.x(CompositionLocalsKt.e());
                        LayoutDirection layoutDirection114 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                        ViewConfiguration viewConfiguration114 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                        Modifier modifierE114 = ComposedModifierKt.e(composerS, modifierB114);
                        ComposeUiNode.Companion companion114 = ComposeUiNode.Companion;
                        aVarA = companion114.a();
                        composerS.G(1405779621);
                        if (!(composerS.t() instanceof Applier)) {
                            ComposablesKt.c();
                        }
                        composerS.e();
                        if (composerS.r()) {
                            composerS.w(new BasicTextKt$BasicTextBpD7jsM$$inlined$Layout$1(aVarA));
                        } else {
                            composerS.c();
                        }
                        composerS.L();
                        Composer composerA114 = Updater.a(composerS);
                        Updater.e(composerA114, measurePolicyI114, companion114.d());
                        Updater.e(composerA114, density115, companion114.b());
                        Updater.e(composerA114, layoutDirection114, companion114.c());
                        Updater.e(composerA114, viewConfiguration114, companion114.f());
                        Updater.e(composerA114, modifierE114, companion114.e());
                        composerS.o();
                        composerS.d();
                        composerS.Q();
                        composerS.Q();
                        i26 = iA;
                        modifier3 = modifier2;
                        i27 = i25;
                        lVar3 = lVar2;
                        z11 = z10;
                        textStyle3 = textStyleA;
                    } else {
                        if (i28 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i15 != 0) {
                            textStyleA = TextStyle.Companion.a();
                        } else {
                            textStyleA = textStyle2;
                        }
                        if (i17 != 0) {
                            lVar2 = BasicTextKt$BasicText$1.INSTANCE;
                        }
                        if (i19 != 0) {
                            iA = TextOverflow.Companion.a();
                        }
                        if (i21 != 0) {
                            z10 = true;
                        }
                        if (i23 != 0) {
                            i25 = Integer.MAX_VALUE;
                        } else {
                            i25 = i11;
                        }
                        if (i25 <= 0) {
                            throw new IllegalArgumentException("maxLines should be greater than 0".toString());
                        }
                        selectionRegistrar = (SelectionRegistrar) composerS.x(SelectionRegistrarKt.a());
                        density = (Density) composerS.x(CompositionLocalsKt.e());
                        resolver = (FontFamily.Resolver) composerS.x(CompositionLocalsKt.g());
                        jLongValue = ((Number) RememberSaveableKt.b(new Object[]{text, selectionRegistrar}, c(selectionRegistrar), null, new BasicTextKt$BasicText$selectableId$1(selectionRegistrar), composerS, 72, 4)).longValue();
                        composerS.G(-492369756);
                        objH = composerS.H();
                        if (objH == Composer.Companion.a()) {
                            objH = new TextController(new TextState(new TextDelegate(new AnnotatedString(text, null, null, 6, null), textStyleA, i25, z10, iA, density, resolver, null, 128, null), jLongValue));
                            composerS.z(objH);
                        }
                        composerS.Q();
                        textController = (TextController) objH;
                        textStateK = textController.k();
                        if (!composerS.r()) {
                            textController.n(CoreTextKt.e(textStateK.i(), text, textStyleA, density, resolver, z10, iA, i25));
                        }
                        textStateK.m(lVar2);
                        textController.o(selectionRegistrar);
                        composerS.G(959239573);
                        if (selectionRegistrar != null) {
                            textStateK.p(((TextSelectionColors) composerS.x(TextSelectionColorsKt.b())).a());
                        }
                        composerS.Q();
                        Modifier modifierB115 = modifier2.B(textController.j());
                        MeasurePolicy measurePolicyI115 = textController.i();
                        composerS.G(544976794);
                        Density density116 = (Density) composerS.x(CompositionLocalsKt.e());
                        LayoutDirection layoutDirection115 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                        ViewConfiguration viewConfiguration115 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                        Modifier modifierE115 = ComposedModifierKt.e(composerS, modifierB115);
                        ComposeUiNode.Companion companion115 = ComposeUiNode.Companion;
                        aVarA = companion115.a();
                        composerS.G(1405779621);
                        if (!(composerS.t() instanceof Applier)) {
                            ComposablesKt.c();
                        }
                        composerS.e();
                        if (composerS.r()) {
                            composerS.w(new BasicTextKt$BasicTextBpD7jsM$$inlined$Layout$1(aVarA));
                        } else {
                            composerS.c();
                        }
                        composerS.L();
                        Composer composerA115 = Updater.a(composerS);
                        Updater.e(composerA115, measurePolicyI115, companion115.d());
                        Updater.e(composerA115, density116, companion115.b());
                        Updater.e(composerA115, layoutDirection115, companion115.c());
                        Updater.e(composerA115, viewConfiguration115, companion115.f());
                        Updater.e(composerA115, modifierE115, companion115.e());
                        composerS.o();
                        composerS.d();
                        composerS.Q();
                        composerS.Q();
                        i26 = iA;
                        modifier3 = modifier2;
                        i27 = i25;
                        lVar3 = lVar2;
                        z11 = z10;
                        textStyle3 = textStyleA;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new BasicTextKt$BasicText$3(text, modifier3, textStyle3, lVar3, i26, z11, i27, i12, i13));
                }
                i14 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                z10 = z6;
                i23 = i13 & 64;
                if (i23 != 0) {
                    i14 |= 1572864;
                } else if ((i12 & 3670016) == 0) {
                    if (composerS.p(i11)) {
                        i24 = 1048576;
                    } else {
                        i24 = 524288;
                    }
                    i14 |= i24;
                }
                if ((i14 & 2995931) == 599186) {
                    if (i28 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if (i15 != 0) {
                        textStyleA = TextStyle.Companion.a();
                    } else {
                        textStyleA = textStyle2;
                    }
                    if (i17 != 0) {
                        lVar2 = BasicTextKt$BasicText$1.INSTANCE;
                    }
                    if (i19 != 0) {
                        iA = TextOverflow.Companion.a();
                    }
                    if (i21 != 0) {
                        z10 = true;
                    }
                    if (i23 != 0) {
                        i25 = Integer.MAX_VALUE;
                    } else {
                        i25 = i11;
                    }
                    if (i25 <= 0) {
                        throw new IllegalArgumentException("maxLines should be greater than 0".toString());
                    }
                    selectionRegistrar = (SelectionRegistrar) composerS.x(SelectionRegistrarKt.a());
                    density = (Density) composerS.x(CompositionLocalsKt.e());
                    resolver = (FontFamily.Resolver) composerS.x(CompositionLocalsKt.g());
                    jLongValue = ((Number) RememberSaveableKt.b(new Object[]{text, selectionRegistrar}, c(selectionRegistrar), null, new BasicTextKt$BasicText$selectableId$1(selectionRegistrar), composerS, 72, 4)).longValue();
                    composerS.G(-492369756);
                    objH = composerS.H();
                    if (objH == Composer.Companion.a()) {
                        objH = new TextController(new TextState(new TextDelegate(new AnnotatedString(text, null, null, 6, null), textStyleA, i25, z10, iA, density, resolver, null, 128, null), jLongValue));
                        composerS.z(objH);
                    }
                    composerS.Q();
                    textController = (TextController) objH;
                    textStateK = textController.k();
                    if (!composerS.r()) {
                        textController.n(CoreTextKt.e(textStateK.i(), text, textStyleA, density, resolver, z10, iA, i25));
                    }
                    textStateK.m(lVar2);
                    textController.o(selectionRegistrar);
                    composerS.G(959239573);
                    if (selectionRegistrar != null) {
                        textStateK.p(((TextSelectionColors) composerS.x(TextSelectionColorsKt.b())).a());
                    }
                    composerS.Q();
                    Modifier modifierB116 = modifier2.B(textController.j());
                    MeasurePolicy measurePolicyI116 = textController.i();
                    composerS.G(544976794);
                    Density density117 = (Density) composerS.x(CompositionLocalsKt.e());
                    LayoutDirection layoutDirection116 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                    ViewConfiguration viewConfiguration116 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                    Modifier modifierE116 = ComposedModifierKt.e(composerS, modifierB116);
                    ComposeUiNode.Companion companion116 = ComposeUiNode.Companion;
                    aVarA = companion116.a();
                    composerS.G(1405779621);
                    if (!(composerS.t() instanceof Applier)) {
                        ComposablesKt.c();
                    }
                    composerS.e();
                    if (composerS.r()) {
                        composerS.w(new BasicTextKt$BasicTextBpD7jsM$$inlined$Layout$1(aVarA));
                    } else {
                        composerS.c();
                    }
                    composerS.L();
                    Composer composerA116 = Updater.a(composerS);
                    Updater.e(composerA116, measurePolicyI116, companion116.d());
                    Updater.e(composerA116, density117, companion116.b());
                    Updater.e(composerA116, layoutDirection116, companion116.c());
                    Updater.e(composerA116, viewConfiguration116, companion116.f());
                    Updater.e(composerA116, modifierE116, companion116.e());
                    composerS.o();
                    composerS.d();
                    composerS.Q();
                    composerS.Q();
                    i26 = iA;
                    modifier3 = modifier2;
                    i27 = i25;
                    lVar3 = lVar2;
                    z11 = z10;
                    textStyle3 = textStyleA;
                } else {
                    if (i28 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if (i15 != 0) {
                        textStyleA = TextStyle.Companion.a();
                    } else {
                        textStyleA = textStyle2;
                    }
                    if (i17 != 0) {
                        lVar2 = BasicTextKt$BasicText$1.INSTANCE;
                    }
                    if (i19 != 0) {
                        iA = TextOverflow.Companion.a();
                    }
                    if (i21 != 0) {
                        z10 = true;
                    }
                    if (i23 != 0) {
                        i25 = Integer.MAX_VALUE;
                    } else {
                        i25 = i11;
                    }
                    if (i25 <= 0) {
                        throw new IllegalArgumentException("maxLines should be greater than 0".toString());
                    }
                    selectionRegistrar = (SelectionRegistrar) composerS.x(SelectionRegistrarKt.a());
                    density = (Density) composerS.x(CompositionLocalsKt.e());
                    resolver = (FontFamily.Resolver) composerS.x(CompositionLocalsKt.g());
                    jLongValue = ((Number) RememberSaveableKt.b(new Object[]{text, selectionRegistrar}, c(selectionRegistrar), null, new BasicTextKt$BasicText$selectableId$1(selectionRegistrar), composerS, 72, 4)).longValue();
                    composerS.G(-492369756);
                    objH = composerS.H();
                    if (objH == Composer.Companion.a()) {
                        objH = new TextController(new TextState(new TextDelegate(new AnnotatedString(text, null, null, 6, null), textStyleA, i25, z10, iA, density, resolver, null, 128, null), jLongValue));
                        composerS.z(objH);
                    }
                    composerS.Q();
                    textController = (TextController) objH;
                    textStateK = textController.k();
                    if (!composerS.r()) {
                        textController.n(CoreTextKt.e(textStateK.i(), text, textStyleA, density, resolver, z10, iA, i25));
                    }
                    textStateK.m(lVar2);
                    textController.o(selectionRegistrar);
                    composerS.G(959239573);
                    if (selectionRegistrar != null) {
                        textStateK.p(((TextSelectionColors) composerS.x(TextSelectionColorsKt.b())).a());
                    }
                    composerS.Q();
                    Modifier modifierB117 = modifier2.B(textController.j());
                    MeasurePolicy measurePolicyI117 = textController.i();
                    composerS.G(544976794);
                    Density density118 = (Density) composerS.x(CompositionLocalsKt.e());
                    LayoutDirection layoutDirection117 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                    ViewConfiguration viewConfiguration117 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                    Modifier modifierE117 = ComposedModifierKt.e(composerS, modifierB117);
                    ComposeUiNode.Companion companion117 = ComposeUiNode.Companion;
                    aVarA = companion117.a();
                    composerS.G(1405779621);
                    if (!(composerS.t() instanceof Applier)) {
                        ComposablesKt.c();
                    }
                    composerS.e();
                    if (composerS.r()) {
                        composerS.w(new BasicTextKt$BasicTextBpD7jsM$$inlined$Layout$1(aVarA));
                    } else {
                        composerS.c();
                    }
                    composerS.L();
                    Composer composerA117 = Updater.a(composerS);
                    Updater.e(composerA117, measurePolicyI117, companion117.d());
                    Updater.e(composerA117, density118, companion117.b());
                    Updater.e(composerA117, layoutDirection117, companion117.c());
                    Updater.e(composerA117, viewConfiguration117, companion117.f());
                    Updater.e(composerA117, modifierE117, companion117.e());
                    composerS.o();
                    composerS.d();
                    composerS.Q();
                    composerS.Q();
                    i26 = iA;
                    modifier3 = modifier2;
                    i27 = i25;
                    lVar3 = lVar2;
                    z11 = z10;
                    textStyle3 = textStyleA;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new BasicTextKt$BasicText$3(text, modifier3, textStyle3, lVar3, i26, z11, i27, i12, i13));
            }
            i14 |= CpioConstants.C_ISBLK;
            iA = i10;
            i21 = i13 & 32;
            if (i21 != 0) {
                if ((458752 & i12) == 0) {
                    z10 = z6;
                    if (composerS.m(z10)) {
                        i22 = 131072;
                    } else {
                        i22 = 65536;
                    }
                    i14 |= i22;
                }
                i23 = i13 & 64;
                if (i23 != 0) {
                    i14 |= 1572864;
                } else if ((i12 & 3670016) == 0) {
                    if (composerS.p(i11)) {
                        i24 = 1048576;
                    } else {
                        i24 = 524288;
                    }
                    i14 |= i24;
                }
                if ((i14 & 2995931) == 599186) {
                    if (i28 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if (i15 != 0) {
                        textStyleA = TextStyle.Companion.a();
                    } else {
                        textStyleA = textStyle2;
                    }
                    if (i17 != 0) {
                        lVar2 = BasicTextKt$BasicText$1.INSTANCE;
                    }
                    if (i19 != 0) {
                        iA = TextOverflow.Companion.a();
                    }
                    if (i21 != 0) {
                        z10 = true;
                    }
                    if (i23 != 0) {
                        i25 = Integer.MAX_VALUE;
                    } else {
                        i25 = i11;
                    }
                    if (i25 <= 0) {
                        throw new IllegalArgumentException("maxLines should be greater than 0".toString());
                    }
                    selectionRegistrar = (SelectionRegistrar) composerS.x(SelectionRegistrarKt.a());
                    density = (Density) composerS.x(CompositionLocalsKt.e());
                    resolver = (FontFamily.Resolver) composerS.x(CompositionLocalsKt.g());
                    jLongValue = ((Number) RememberSaveableKt.b(new Object[]{text, selectionRegistrar}, c(selectionRegistrar), null, new BasicTextKt$BasicText$selectableId$1(selectionRegistrar), composerS, 72, 4)).longValue();
                    composerS.G(-492369756);
                    objH = composerS.H();
                    if (objH == Composer.Companion.a()) {
                        objH = new TextController(new TextState(new TextDelegate(new AnnotatedString(text, null, null, 6, null), textStyleA, i25, z10, iA, density, resolver, null, 128, null), jLongValue));
                        composerS.z(objH);
                    }
                    composerS.Q();
                    textController = (TextController) objH;
                    textStateK = textController.k();
                    if (!composerS.r()) {
                        textController.n(CoreTextKt.e(textStateK.i(), text, textStyleA, density, resolver, z10, iA, i25));
                    }
                    textStateK.m(lVar2);
                    textController.o(selectionRegistrar);
                    composerS.G(959239573);
                    if (selectionRegistrar != null) {
                        textStateK.p(((TextSelectionColors) composerS.x(TextSelectionColorsKt.b())).a());
                    }
                    composerS.Q();
                    Modifier modifierB118 = modifier2.B(textController.j());
                    MeasurePolicy measurePolicyI118 = textController.i();
                    composerS.G(544976794);
                    Density density119 = (Density) composerS.x(CompositionLocalsKt.e());
                    LayoutDirection layoutDirection118 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                    ViewConfiguration viewConfiguration118 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                    Modifier modifierE118 = ComposedModifierKt.e(composerS, modifierB118);
                    ComposeUiNode.Companion companion118 = ComposeUiNode.Companion;
                    aVarA = companion118.a();
                    composerS.G(1405779621);
                    if (!(composerS.t() instanceof Applier)) {
                        ComposablesKt.c();
                    }
                    composerS.e();
                    if (composerS.r()) {
                        composerS.w(new BasicTextKt$BasicTextBpD7jsM$$inlined$Layout$1(aVarA));
                    } else {
                        composerS.c();
                    }
                    composerS.L();
                    Composer composerA118 = Updater.a(composerS);
                    Updater.e(composerA118, measurePolicyI118, companion118.d());
                    Updater.e(composerA118, density119, companion118.b());
                    Updater.e(composerA118, layoutDirection118, companion118.c());
                    Updater.e(composerA118, viewConfiguration118, companion118.f());
                    Updater.e(composerA118, modifierE118, companion118.e());
                    composerS.o();
                    composerS.d();
                    composerS.Q();
                    composerS.Q();
                    i26 = iA;
                    modifier3 = modifier2;
                    i27 = i25;
                    lVar3 = lVar2;
                    z11 = z10;
                    textStyle3 = textStyleA;
                } else {
                    if (i28 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if (i15 != 0) {
                        textStyleA = TextStyle.Companion.a();
                    } else {
                        textStyleA = textStyle2;
                    }
                    if (i17 != 0) {
                        lVar2 = BasicTextKt$BasicText$1.INSTANCE;
                    }
                    if (i19 != 0) {
                        iA = TextOverflow.Companion.a();
                    }
                    if (i21 != 0) {
                        z10 = true;
                    }
                    if (i23 != 0) {
                        i25 = Integer.MAX_VALUE;
                    } else {
                        i25 = i11;
                    }
                    if (i25 <= 0) {
                        throw new IllegalArgumentException("maxLines should be greater than 0".toString());
                    }
                    selectionRegistrar = (SelectionRegistrar) composerS.x(SelectionRegistrarKt.a());
                    density = (Density) composerS.x(CompositionLocalsKt.e());
                    resolver = (FontFamily.Resolver) composerS.x(CompositionLocalsKt.g());
                    jLongValue = ((Number) RememberSaveableKt.b(new Object[]{text, selectionRegistrar}, c(selectionRegistrar), null, new BasicTextKt$BasicText$selectableId$1(selectionRegistrar), composerS, 72, 4)).longValue();
                    composerS.G(-492369756);
                    objH = composerS.H();
                    if (objH == Composer.Companion.a()) {
                        objH = new TextController(new TextState(new TextDelegate(new AnnotatedString(text, null, null, 6, null), textStyleA, i25, z10, iA, density, resolver, null, 128, null), jLongValue));
                        composerS.z(objH);
                    }
                    composerS.Q();
                    textController = (TextController) objH;
                    textStateK = textController.k();
                    if (!composerS.r()) {
                        textController.n(CoreTextKt.e(textStateK.i(), text, textStyleA, density, resolver, z10, iA, i25));
                    }
                    textStateK.m(lVar2);
                    textController.o(selectionRegistrar);
                    composerS.G(959239573);
                    if (selectionRegistrar != null) {
                        textStateK.p(((TextSelectionColors) composerS.x(TextSelectionColorsKt.b())).a());
                    }
                    composerS.Q();
                    Modifier modifierB119 = modifier2.B(textController.j());
                    MeasurePolicy measurePolicyI119 = textController.i();
                    composerS.G(544976794);
                    Density density1110 = (Density) composerS.x(CompositionLocalsKt.e());
                    LayoutDirection layoutDirection119 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                    ViewConfiguration viewConfiguration119 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                    Modifier modifierE119 = ComposedModifierKt.e(composerS, modifierB119);
                    ComposeUiNode.Companion companion119 = ComposeUiNode.Companion;
                    aVarA = companion119.a();
                    composerS.G(1405779621);
                    if (!(composerS.t() instanceof Applier)) {
                        ComposablesKt.c();
                    }
                    composerS.e();
                    if (composerS.r()) {
                        composerS.w(new BasicTextKt$BasicTextBpD7jsM$$inlined$Layout$1(aVarA));
                    } else {
                        composerS.c();
                    }
                    composerS.L();
                    Composer composerA119 = Updater.a(composerS);
                    Updater.e(composerA119, measurePolicyI119, companion119.d());
                    Updater.e(composerA119, density1110, companion119.b());
                    Updater.e(composerA119, layoutDirection119, companion119.c());
                    Updater.e(composerA119, viewConfiguration119, companion119.f());
                    Updater.e(composerA119, modifierE119, companion119.e());
                    composerS.o();
                    composerS.d();
                    composerS.Q();
                    composerS.Q();
                    i26 = iA;
                    modifier3 = modifier2;
                    i27 = i25;
                    lVar3 = lVar2;
                    z11 = z10;
                    textStyle3 = textStyleA;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new BasicTextKt$BasicText$3(text, modifier3, textStyle3, lVar3, i26, z11, i27, i12, i13));
            }
            i14 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            z10 = z6;
            i23 = i13 & 64;
            if (i23 != 0) {
                i14 |= 1572864;
            } else if ((i12 & 3670016) == 0) {
                if (composerS.p(i11)) {
                    i24 = 1048576;
                } else {
                    i24 = 524288;
                }
                i14 |= i24;
            }
            if ((i14 & 2995931) == 599186) {
                if (i28 != 0) {
                    modifier2 = Modifier.Companion;
                }
                if (i15 != 0) {
                    textStyleA = TextStyle.Companion.a();
                } else {
                    textStyleA = textStyle2;
                }
                if (i17 != 0) {
                    lVar2 = BasicTextKt$BasicText$1.INSTANCE;
                }
                if (i19 != 0) {
                    iA = TextOverflow.Companion.a();
                }
                if (i21 != 0) {
                    z10 = true;
                }
                if (i23 != 0) {
                    i25 = Integer.MAX_VALUE;
                } else {
                    i25 = i11;
                }
                if (i25 <= 0) {
                    throw new IllegalArgumentException("maxLines should be greater than 0".toString());
                }
                selectionRegistrar = (SelectionRegistrar) composerS.x(SelectionRegistrarKt.a());
                density = (Density) composerS.x(CompositionLocalsKt.e());
                resolver = (FontFamily.Resolver) composerS.x(CompositionLocalsKt.g());
                jLongValue = ((Number) RememberSaveableKt.b(new Object[]{text, selectionRegistrar}, c(selectionRegistrar), null, new BasicTextKt$BasicText$selectableId$1(selectionRegistrar), composerS, 72, 4)).longValue();
                composerS.G(-492369756);
                objH = composerS.H();
                if (objH == Composer.Companion.a()) {
                    objH = new TextController(new TextState(new TextDelegate(new AnnotatedString(text, null, null, 6, null), textStyleA, i25, z10, iA, density, resolver, null, 128, null), jLongValue));
                    composerS.z(objH);
                }
                composerS.Q();
                textController = (TextController) objH;
                textStateK = textController.k();
                if (!composerS.r()) {
                    textController.n(CoreTextKt.e(textStateK.i(), text, textStyleA, density, resolver, z10, iA, i25));
                }
                textStateK.m(lVar2);
                textController.o(selectionRegistrar);
                composerS.G(959239573);
                if (selectionRegistrar != null) {
                    textStateK.p(((TextSelectionColors) composerS.x(TextSelectionColorsKt.b())).a());
                }
                composerS.Q();
                Modifier modifierB1110 = modifier2.B(textController.j());
                MeasurePolicy measurePolicyI1110 = textController.i();
                composerS.G(544976794);
                Density density1111 = (Density) composerS.x(CompositionLocalsKt.e());
                LayoutDirection layoutDirection1110 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                ViewConfiguration viewConfiguration1110 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                Modifier modifierE1110 = ComposedModifierKt.e(composerS, modifierB1110);
                ComposeUiNode.Companion companion1110 = ComposeUiNode.Companion;
                aVarA = companion1110.a();
                composerS.G(1405779621);
                if (!(composerS.t() instanceof Applier)) {
                    ComposablesKt.c();
                }
                composerS.e();
                if (composerS.r()) {
                    composerS.w(new BasicTextKt$BasicTextBpD7jsM$$inlined$Layout$1(aVarA));
                } else {
                    composerS.c();
                }
                composerS.L();
                Composer composerA1110 = Updater.a(composerS);
                Updater.e(composerA1110, measurePolicyI1110, companion1110.d());
                Updater.e(composerA1110, density1111, companion1110.b());
                Updater.e(composerA1110, layoutDirection1110, companion1110.c());
                Updater.e(composerA1110, viewConfiguration1110, companion1110.f());
                Updater.e(composerA1110, modifierE1110, companion1110.e());
                composerS.o();
                composerS.d();
                composerS.Q();
                composerS.Q();
                i26 = iA;
                modifier3 = modifier2;
                i27 = i25;
                lVar3 = lVar2;
                z11 = z10;
                textStyle3 = textStyleA;
            } else {
                if (i28 != 0) {
                    modifier2 = Modifier.Companion;
                }
                if (i15 != 0) {
                    textStyleA = TextStyle.Companion.a();
                } else {
                    textStyleA = textStyle2;
                }
                if (i17 != 0) {
                    lVar2 = BasicTextKt$BasicText$1.INSTANCE;
                }
                if (i19 != 0) {
                    iA = TextOverflow.Companion.a();
                }
                if (i21 != 0) {
                    z10 = true;
                }
                if (i23 != 0) {
                    i25 = Integer.MAX_VALUE;
                } else {
                    i25 = i11;
                }
                if (i25 <= 0) {
                    throw new IllegalArgumentException("maxLines should be greater than 0".toString());
                }
                selectionRegistrar = (SelectionRegistrar) composerS.x(SelectionRegistrarKt.a());
                density = (Density) composerS.x(CompositionLocalsKt.e());
                resolver = (FontFamily.Resolver) composerS.x(CompositionLocalsKt.g());
                jLongValue = ((Number) RememberSaveableKt.b(new Object[]{text, selectionRegistrar}, c(selectionRegistrar), null, new BasicTextKt$BasicText$selectableId$1(selectionRegistrar), composerS, 72, 4)).longValue();
                composerS.G(-492369756);
                objH = composerS.H();
                if (objH == Composer.Companion.a()) {
                    objH = new TextController(new TextState(new TextDelegate(new AnnotatedString(text, null, null, 6, null), textStyleA, i25, z10, iA, density, resolver, null, 128, null), jLongValue));
                    composerS.z(objH);
                }
                composerS.Q();
                textController = (TextController) objH;
                textStateK = textController.k();
                if (!composerS.r()) {
                    textController.n(CoreTextKt.e(textStateK.i(), text, textStyleA, density, resolver, z10, iA, i25));
                }
                textStateK.m(lVar2);
                textController.o(selectionRegistrar);
                composerS.G(959239573);
                if (selectionRegistrar != null) {
                    textStateK.p(((TextSelectionColors) composerS.x(TextSelectionColorsKt.b())).a());
                }
                composerS.Q();
                Modifier modifierB1111 = modifier2.B(textController.j());
                MeasurePolicy measurePolicyI1111 = textController.i();
                composerS.G(544976794);
                Density density1112 = (Density) composerS.x(CompositionLocalsKt.e());
                LayoutDirection layoutDirection1111 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                ViewConfiguration viewConfiguration1111 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                Modifier modifierE1111 = ComposedModifierKt.e(composerS, modifierB1111);
                ComposeUiNode.Companion companion1111 = ComposeUiNode.Companion;
                aVarA = companion1111.a();
                composerS.G(1405779621);
                if (!(composerS.t() instanceof Applier)) {
                    ComposablesKt.c();
                }
                composerS.e();
                if (composerS.r()) {
                    composerS.w(new BasicTextKt$BasicTextBpD7jsM$$inlined$Layout$1(aVarA));
                } else {
                    composerS.c();
                }
                composerS.L();
                Composer composerA1111 = Updater.a(composerS);
                Updater.e(composerA1111, measurePolicyI1111, companion1111.d());
                Updater.e(composerA1111, density1112, companion1111.b());
                Updater.e(composerA1111, layoutDirection1111, companion1111.c());
                Updater.e(composerA1111, viewConfiguration1111, companion1111.f());
                Updater.e(composerA1111, modifierE1111, companion1111.e());
                composerS.o();
                composerS.d();
                composerS.Q();
                composerS.Q();
                i26 = iA;
                modifier3 = modifier2;
                i27 = i25;
                lVar3 = lVar2;
                z11 = z10;
                textStyle3 = textStyleA;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new BasicTextKt$BasicText$3(text, modifier3, textStyle3, lVar3, i26, z11, i27, i12, i13));
        }
        i14 |= 48;
        modifier2 = modifier;
        i15 = i13 & 4;
        if (i15 != 0) {
            if ((i12 & 896) == 0) {
                textStyle2 = textStyle;
                if (composerS.k(textStyle2)) {
                    i16 = 256;
                } else {
                    i16 = 128;
                }
                i14 |= i16;
            }
            i17 = i13 & 8;
            if (i17 != 0) {
                if ((i12 & 7168) == 0) {
                    lVar2 = lVar;
                    if (composerS.k(lVar2)) {
                        i18 = 2048;
                    } else {
                        i18 = 1024;
                    }
                    i14 |= i18;
                }
                i19 = i13 & 16;
                if (i19 != 0) {
                    if ((57344 & i12) == 0) {
                        iA = i10;
                        if (composerS.p(iA)) {
                            i20 = 16384;
                        } else {
                            i20 = 8192;
                        }
                        i14 |= i20;
                    }
                    i21 = i13 & 32;
                    if (i21 != 0) {
                        if ((458752 & i12) == 0) {
                            z10 = z6;
                            if (composerS.m(z10)) {
                                i22 = 131072;
                            } else {
                                i22 = 65536;
                            }
                            i14 |= i22;
                        }
                        i23 = i13 & 64;
                        if (i23 != 0) {
                            i14 |= 1572864;
                        } else if ((i12 & 3670016) == 0) {
                            if (composerS.p(i11)) {
                                i24 = 1048576;
                            } else {
                                i24 = 524288;
                            }
                            i14 |= i24;
                        }
                        if ((i14 & 2995931) == 599186) {
                            if (i28 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i15 != 0) {
                                textStyleA = TextStyle.Companion.a();
                            } else {
                                textStyleA = textStyle2;
                            }
                            if (i17 != 0) {
                                lVar2 = BasicTextKt$BasicText$1.INSTANCE;
                            }
                            if (i19 != 0) {
                                iA = TextOverflow.Companion.a();
                            }
                            if (i21 != 0) {
                                z10 = true;
                            }
                            if (i23 != 0) {
                                i25 = Integer.MAX_VALUE;
                            } else {
                                i25 = i11;
                            }
                            if (i25 <= 0) {
                                throw new IllegalArgumentException("maxLines should be greater than 0".toString());
                            }
                            selectionRegistrar = (SelectionRegistrar) composerS.x(SelectionRegistrarKt.a());
                            density = (Density) composerS.x(CompositionLocalsKt.e());
                            resolver = (FontFamily.Resolver) composerS.x(CompositionLocalsKt.g());
                            jLongValue = ((Number) RememberSaveableKt.b(new Object[]{text, selectionRegistrar}, c(selectionRegistrar), null, new BasicTextKt$BasicText$selectableId$1(selectionRegistrar), composerS, 72, 4)).longValue();
                            composerS.G(-492369756);
                            objH = composerS.H();
                            if (objH == Composer.Companion.a()) {
                                objH = new TextController(new TextState(new TextDelegate(new AnnotatedString(text, null, null, 6, null), textStyleA, i25, z10, iA, density, resolver, null, 128, null), jLongValue));
                                composerS.z(objH);
                            }
                            composerS.Q();
                            textController = (TextController) objH;
                            textStateK = textController.k();
                            if (!composerS.r()) {
                                textController.n(CoreTextKt.e(textStateK.i(), text, textStyleA, density, resolver, z10, iA, i25));
                            }
                            textStateK.m(lVar2);
                            textController.o(selectionRegistrar);
                            composerS.G(959239573);
                            if (selectionRegistrar != null) {
                                textStateK.p(((TextSelectionColors) composerS.x(TextSelectionColorsKt.b())).a());
                            }
                            composerS.Q();
                            Modifier modifierB1112 = modifier2.B(textController.j());
                            MeasurePolicy measurePolicyI1112 = textController.i();
                            composerS.G(544976794);
                            Density density1113 = (Density) composerS.x(CompositionLocalsKt.e());
                            LayoutDirection layoutDirection1112 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                            ViewConfiguration viewConfiguration1112 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                            Modifier modifierE1112 = ComposedModifierKt.e(composerS, modifierB1112);
                            ComposeUiNode.Companion companion1112 = ComposeUiNode.Companion;
                            aVarA = companion1112.a();
                            composerS.G(1405779621);
                            if (!(composerS.t() instanceof Applier)) {
                                ComposablesKt.c();
                            }
                            composerS.e();
                            if (composerS.r()) {
                                composerS.w(new BasicTextKt$BasicTextBpD7jsM$$inlined$Layout$1(aVarA));
                            } else {
                                composerS.c();
                            }
                            composerS.L();
                            Composer composerA1112 = Updater.a(composerS);
                            Updater.e(composerA1112, measurePolicyI1112, companion1112.d());
                            Updater.e(composerA1112, density1113, companion1112.b());
                            Updater.e(composerA1112, layoutDirection1112, companion1112.c());
                            Updater.e(composerA1112, viewConfiguration1112, companion1112.f());
                            Updater.e(composerA1112, modifierE1112, companion1112.e());
                            composerS.o();
                            composerS.d();
                            composerS.Q();
                            composerS.Q();
                            i26 = iA;
                            modifier3 = modifier2;
                            i27 = i25;
                            lVar3 = lVar2;
                            z11 = z10;
                            textStyle3 = textStyleA;
                        } else {
                            if (i28 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i15 != 0) {
                                textStyleA = TextStyle.Companion.a();
                            } else {
                                textStyleA = textStyle2;
                            }
                            if (i17 != 0) {
                                lVar2 = BasicTextKt$BasicText$1.INSTANCE;
                            }
                            if (i19 != 0) {
                                iA = TextOverflow.Companion.a();
                            }
                            if (i21 != 0) {
                                z10 = true;
                            }
                            if (i23 != 0) {
                                i25 = Integer.MAX_VALUE;
                            } else {
                                i25 = i11;
                            }
                            if (i25 <= 0) {
                                throw new IllegalArgumentException("maxLines should be greater than 0".toString());
                            }
                            selectionRegistrar = (SelectionRegistrar) composerS.x(SelectionRegistrarKt.a());
                            density = (Density) composerS.x(CompositionLocalsKt.e());
                            resolver = (FontFamily.Resolver) composerS.x(CompositionLocalsKt.g());
                            jLongValue = ((Number) RememberSaveableKt.b(new Object[]{text, selectionRegistrar}, c(selectionRegistrar), null, new BasicTextKt$BasicText$selectableId$1(selectionRegistrar), composerS, 72, 4)).longValue();
                            composerS.G(-492369756);
                            objH = composerS.H();
                            if (objH == Composer.Companion.a()) {
                                objH = new TextController(new TextState(new TextDelegate(new AnnotatedString(text, null, null, 6, null), textStyleA, i25, z10, iA, density, resolver, null, 128, null), jLongValue));
                                composerS.z(objH);
                            }
                            composerS.Q();
                            textController = (TextController) objH;
                            textStateK = textController.k();
                            if (!composerS.r()) {
                                textController.n(CoreTextKt.e(textStateK.i(), text, textStyleA, density, resolver, z10, iA, i25));
                            }
                            textStateK.m(lVar2);
                            textController.o(selectionRegistrar);
                            composerS.G(959239573);
                            if (selectionRegistrar != null) {
                                textStateK.p(((TextSelectionColors) composerS.x(TextSelectionColorsKt.b())).a());
                            }
                            composerS.Q();
                            Modifier modifierB1113 = modifier2.B(textController.j());
                            MeasurePolicy measurePolicyI1113 = textController.i();
                            composerS.G(544976794);
                            Density density1114 = (Density) composerS.x(CompositionLocalsKt.e());
                            LayoutDirection layoutDirection1113 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                            ViewConfiguration viewConfiguration1113 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                            Modifier modifierE1113 = ComposedModifierKt.e(composerS, modifierB1113);
                            ComposeUiNode.Companion companion1113 = ComposeUiNode.Companion;
                            aVarA = companion1113.a();
                            composerS.G(1405779621);
                            if (!(composerS.t() instanceof Applier)) {
                                ComposablesKt.c();
                            }
                            composerS.e();
                            if (composerS.r()) {
                                composerS.w(new BasicTextKt$BasicTextBpD7jsM$$inlined$Layout$1(aVarA));
                            } else {
                                composerS.c();
                            }
                            composerS.L();
                            Composer composerA1113 = Updater.a(composerS);
                            Updater.e(composerA1113, measurePolicyI1113, companion1113.d());
                            Updater.e(composerA1113, density1114, companion1113.b());
                            Updater.e(composerA1113, layoutDirection1113, companion1113.c());
                            Updater.e(composerA1113, viewConfiguration1113, companion1113.f());
                            Updater.e(composerA1113, modifierE1113, companion1113.e());
                            composerS.o();
                            composerS.d();
                            composerS.Q();
                            composerS.Q();
                            i26 = iA;
                            modifier3 = modifier2;
                            i27 = i25;
                            lVar3 = lVar2;
                            z11 = z10;
                            textStyle3 = textStyleA;
                        }
                        scopeUpdateScopeU = composerS.u();
                        if (scopeUpdateScopeU == null) {
                            return;
                        }
                        scopeUpdateScopeU.a(new BasicTextKt$BasicText$3(text, modifier3, textStyle3, lVar3, i26, z11, i27, i12, i13));
                    }
                    i14 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                    z10 = z6;
                    i23 = i13 & 64;
                    if (i23 != 0) {
                        i14 |= 1572864;
                    } else if ((i12 & 3670016) == 0) {
                        if (composerS.p(i11)) {
                            i24 = 1048576;
                        } else {
                            i24 = 524288;
                        }
                        i14 |= i24;
                    }
                    if ((i14 & 2995931) == 599186) {
                        if (i28 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i15 != 0) {
                            textStyleA = TextStyle.Companion.a();
                        } else {
                            textStyleA = textStyle2;
                        }
                        if (i17 != 0) {
                            lVar2 = BasicTextKt$BasicText$1.INSTANCE;
                        }
                        if (i19 != 0) {
                            iA = TextOverflow.Companion.a();
                        }
                        if (i21 != 0) {
                            z10 = true;
                        }
                        if (i23 != 0) {
                            i25 = Integer.MAX_VALUE;
                        } else {
                            i25 = i11;
                        }
                        if (i25 <= 0) {
                            throw new IllegalArgumentException("maxLines should be greater than 0".toString());
                        }
                        selectionRegistrar = (SelectionRegistrar) composerS.x(SelectionRegistrarKt.a());
                        density = (Density) composerS.x(CompositionLocalsKt.e());
                        resolver = (FontFamily.Resolver) composerS.x(CompositionLocalsKt.g());
                        jLongValue = ((Number) RememberSaveableKt.b(new Object[]{text, selectionRegistrar}, c(selectionRegistrar), null, new BasicTextKt$BasicText$selectableId$1(selectionRegistrar), composerS, 72, 4)).longValue();
                        composerS.G(-492369756);
                        objH = composerS.H();
                        if (objH == Composer.Companion.a()) {
                            objH = new TextController(new TextState(new TextDelegate(new AnnotatedString(text, null, null, 6, null), textStyleA, i25, z10, iA, density, resolver, null, 128, null), jLongValue));
                            composerS.z(objH);
                        }
                        composerS.Q();
                        textController = (TextController) objH;
                        textStateK = textController.k();
                        if (!composerS.r()) {
                            textController.n(CoreTextKt.e(textStateK.i(), text, textStyleA, density, resolver, z10, iA, i25));
                        }
                        textStateK.m(lVar2);
                        textController.o(selectionRegistrar);
                        composerS.G(959239573);
                        if (selectionRegistrar != null) {
                            textStateK.p(((TextSelectionColors) composerS.x(TextSelectionColorsKt.b())).a());
                        }
                        composerS.Q();
                        Modifier modifierB1114 = modifier2.B(textController.j());
                        MeasurePolicy measurePolicyI1114 = textController.i();
                        composerS.G(544976794);
                        Density density1115 = (Density) composerS.x(CompositionLocalsKt.e());
                        LayoutDirection layoutDirection1114 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                        ViewConfiguration viewConfiguration1114 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                        Modifier modifierE1114 = ComposedModifierKt.e(composerS, modifierB1114);
                        ComposeUiNode.Companion companion1114 = ComposeUiNode.Companion;
                        aVarA = companion1114.a();
                        composerS.G(1405779621);
                        if (!(composerS.t() instanceof Applier)) {
                            ComposablesKt.c();
                        }
                        composerS.e();
                        if (composerS.r()) {
                            composerS.w(new BasicTextKt$BasicTextBpD7jsM$$inlined$Layout$1(aVarA));
                        } else {
                            composerS.c();
                        }
                        composerS.L();
                        Composer composerA1114 = Updater.a(composerS);
                        Updater.e(composerA1114, measurePolicyI1114, companion1114.d());
                        Updater.e(composerA1114, density1115, companion1114.b());
                        Updater.e(composerA1114, layoutDirection1114, companion1114.c());
                        Updater.e(composerA1114, viewConfiguration1114, companion1114.f());
                        Updater.e(composerA1114, modifierE1114, companion1114.e());
                        composerS.o();
                        composerS.d();
                        composerS.Q();
                        composerS.Q();
                        i26 = iA;
                        modifier3 = modifier2;
                        i27 = i25;
                        lVar3 = lVar2;
                        z11 = z10;
                        textStyle3 = textStyleA;
                    } else {
                        if (i28 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i15 != 0) {
                            textStyleA = TextStyle.Companion.a();
                        } else {
                            textStyleA = textStyle2;
                        }
                        if (i17 != 0) {
                            lVar2 = BasicTextKt$BasicText$1.INSTANCE;
                        }
                        if (i19 != 0) {
                            iA = TextOverflow.Companion.a();
                        }
                        if (i21 != 0) {
                            z10 = true;
                        }
                        if (i23 != 0) {
                            i25 = Integer.MAX_VALUE;
                        } else {
                            i25 = i11;
                        }
                        if (i25 <= 0) {
                            throw new IllegalArgumentException("maxLines should be greater than 0".toString());
                        }
                        selectionRegistrar = (SelectionRegistrar) composerS.x(SelectionRegistrarKt.a());
                        density = (Density) composerS.x(CompositionLocalsKt.e());
                        resolver = (FontFamily.Resolver) composerS.x(CompositionLocalsKt.g());
                        jLongValue = ((Number) RememberSaveableKt.b(new Object[]{text, selectionRegistrar}, c(selectionRegistrar), null, new BasicTextKt$BasicText$selectableId$1(selectionRegistrar), composerS, 72, 4)).longValue();
                        composerS.G(-492369756);
                        objH = composerS.H();
                        if (objH == Composer.Companion.a()) {
                            objH = new TextController(new TextState(new TextDelegate(new AnnotatedString(text, null, null, 6, null), textStyleA, i25, z10, iA, density, resolver, null, 128, null), jLongValue));
                            composerS.z(objH);
                        }
                        composerS.Q();
                        textController = (TextController) objH;
                        textStateK = textController.k();
                        if (!composerS.r()) {
                            textController.n(CoreTextKt.e(textStateK.i(), text, textStyleA, density, resolver, z10, iA, i25));
                        }
                        textStateK.m(lVar2);
                        textController.o(selectionRegistrar);
                        composerS.G(959239573);
                        if (selectionRegistrar != null) {
                            textStateK.p(((TextSelectionColors) composerS.x(TextSelectionColorsKt.b())).a());
                        }
                        composerS.Q();
                        Modifier modifierB1115 = modifier2.B(textController.j());
                        MeasurePolicy measurePolicyI1115 = textController.i();
                        composerS.G(544976794);
                        Density density1116 = (Density) composerS.x(CompositionLocalsKt.e());
                        LayoutDirection layoutDirection1115 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                        ViewConfiguration viewConfiguration1115 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                        Modifier modifierE1115 = ComposedModifierKt.e(composerS, modifierB1115);
                        ComposeUiNode.Companion companion1115 = ComposeUiNode.Companion;
                        aVarA = companion1115.a();
                        composerS.G(1405779621);
                        if (!(composerS.t() instanceof Applier)) {
                            ComposablesKt.c();
                        }
                        composerS.e();
                        if (composerS.r()) {
                            composerS.w(new BasicTextKt$BasicTextBpD7jsM$$inlined$Layout$1(aVarA));
                        } else {
                            composerS.c();
                        }
                        composerS.L();
                        Composer composerA1115 = Updater.a(composerS);
                        Updater.e(composerA1115, measurePolicyI1115, companion1115.d());
                        Updater.e(composerA1115, density1116, companion1115.b());
                        Updater.e(composerA1115, layoutDirection1115, companion1115.c());
                        Updater.e(composerA1115, viewConfiguration1115, companion1115.f());
                        Updater.e(composerA1115, modifierE1115, companion1115.e());
                        composerS.o();
                        composerS.d();
                        composerS.Q();
                        composerS.Q();
                        i26 = iA;
                        modifier3 = modifier2;
                        i27 = i25;
                        lVar3 = lVar2;
                        z11 = z10;
                        textStyle3 = textStyleA;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new BasicTextKt$BasicText$3(text, modifier3, textStyle3, lVar3, i26, z11, i27, i12, i13));
                }
                i14 |= CpioConstants.C_ISBLK;
                iA = i10;
                i21 = i13 & 32;
                if (i21 != 0) {
                    if ((458752 & i12) == 0) {
                        z10 = z6;
                        if (composerS.m(z10)) {
                            i22 = 131072;
                        } else {
                            i22 = 65536;
                        }
                        i14 |= i22;
                    }
                    i23 = i13 & 64;
                    if (i23 != 0) {
                        i14 |= 1572864;
                    } else if ((i12 & 3670016) == 0) {
                        if (composerS.p(i11)) {
                            i24 = 1048576;
                        } else {
                            i24 = 524288;
                        }
                        i14 |= i24;
                    }
                    if ((i14 & 2995931) == 599186) {
                        if (i28 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i15 != 0) {
                            textStyleA = TextStyle.Companion.a();
                        } else {
                            textStyleA = textStyle2;
                        }
                        if (i17 != 0) {
                            lVar2 = BasicTextKt$BasicText$1.INSTANCE;
                        }
                        if (i19 != 0) {
                            iA = TextOverflow.Companion.a();
                        }
                        if (i21 != 0) {
                            z10 = true;
                        }
                        if (i23 != 0) {
                            i25 = Integer.MAX_VALUE;
                        } else {
                            i25 = i11;
                        }
                        if (i25 <= 0) {
                            throw new IllegalArgumentException("maxLines should be greater than 0".toString());
                        }
                        selectionRegistrar = (SelectionRegistrar) composerS.x(SelectionRegistrarKt.a());
                        density = (Density) composerS.x(CompositionLocalsKt.e());
                        resolver = (FontFamily.Resolver) composerS.x(CompositionLocalsKt.g());
                        jLongValue = ((Number) RememberSaveableKt.b(new Object[]{text, selectionRegistrar}, c(selectionRegistrar), null, new BasicTextKt$BasicText$selectableId$1(selectionRegistrar), composerS, 72, 4)).longValue();
                        composerS.G(-492369756);
                        objH = composerS.H();
                        if (objH == Composer.Companion.a()) {
                            objH = new TextController(new TextState(new TextDelegate(new AnnotatedString(text, null, null, 6, null), textStyleA, i25, z10, iA, density, resolver, null, 128, null), jLongValue));
                            composerS.z(objH);
                        }
                        composerS.Q();
                        textController = (TextController) objH;
                        textStateK = textController.k();
                        if (!composerS.r()) {
                            textController.n(CoreTextKt.e(textStateK.i(), text, textStyleA, density, resolver, z10, iA, i25));
                        }
                        textStateK.m(lVar2);
                        textController.o(selectionRegistrar);
                        composerS.G(959239573);
                        if (selectionRegistrar != null) {
                            textStateK.p(((TextSelectionColors) composerS.x(TextSelectionColorsKt.b())).a());
                        }
                        composerS.Q();
                        Modifier modifierB1116 = modifier2.B(textController.j());
                        MeasurePolicy measurePolicyI1116 = textController.i();
                        composerS.G(544976794);
                        Density density1117 = (Density) composerS.x(CompositionLocalsKt.e());
                        LayoutDirection layoutDirection1116 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                        ViewConfiguration viewConfiguration1116 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                        Modifier modifierE1116 = ComposedModifierKt.e(composerS, modifierB1116);
                        ComposeUiNode.Companion companion1116 = ComposeUiNode.Companion;
                        aVarA = companion1116.a();
                        composerS.G(1405779621);
                        if (!(composerS.t() instanceof Applier)) {
                            ComposablesKt.c();
                        }
                        composerS.e();
                        if (composerS.r()) {
                            composerS.w(new BasicTextKt$BasicTextBpD7jsM$$inlined$Layout$1(aVarA));
                        } else {
                            composerS.c();
                        }
                        composerS.L();
                        Composer composerA1116 = Updater.a(composerS);
                        Updater.e(composerA1116, measurePolicyI1116, companion1116.d());
                        Updater.e(composerA1116, density1117, companion1116.b());
                        Updater.e(composerA1116, layoutDirection1116, companion1116.c());
                        Updater.e(composerA1116, viewConfiguration1116, companion1116.f());
                        Updater.e(composerA1116, modifierE1116, companion1116.e());
                        composerS.o();
                        composerS.d();
                        composerS.Q();
                        composerS.Q();
                        i26 = iA;
                        modifier3 = modifier2;
                        i27 = i25;
                        lVar3 = lVar2;
                        z11 = z10;
                        textStyle3 = textStyleA;
                    } else {
                        if (i28 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i15 != 0) {
                            textStyleA = TextStyle.Companion.a();
                        } else {
                            textStyleA = textStyle2;
                        }
                        if (i17 != 0) {
                            lVar2 = BasicTextKt$BasicText$1.INSTANCE;
                        }
                        if (i19 != 0) {
                            iA = TextOverflow.Companion.a();
                        }
                        if (i21 != 0) {
                            z10 = true;
                        }
                        if (i23 != 0) {
                            i25 = Integer.MAX_VALUE;
                        } else {
                            i25 = i11;
                        }
                        if (i25 <= 0) {
                            throw new IllegalArgumentException("maxLines should be greater than 0".toString());
                        }
                        selectionRegistrar = (SelectionRegistrar) composerS.x(SelectionRegistrarKt.a());
                        density = (Density) composerS.x(CompositionLocalsKt.e());
                        resolver = (FontFamily.Resolver) composerS.x(CompositionLocalsKt.g());
                        jLongValue = ((Number) RememberSaveableKt.b(new Object[]{text, selectionRegistrar}, c(selectionRegistrar), null, new BasicTextKt$BasicText$selectableId$1(selectionRegistrar), composerS, 72, 4)).longValue();
                        composerS.G(-492369756);
                        objH = composerS.H();
                        if (objH == Composer.Companion.a()) {
                            objH = new TextController(new TextState(new TextDelegate(new AnnotatedString(text, null, null, 6, null), textStyleA, i25, z10, iA, density, resolver, null, 128, null), jLongValue));
                            composerS.z(objH);
                        }
                        composerS.Q();
                        textController = (TextController) objH;
                        textStateK = textController.k();
                        if (!composerS.r()) {
                            textController.n(CoreTextKt.e(textStateK.i(), text, textStyleA, density, resolver, z10, iA, i25));
                        }
                        textStateK.m(lVar2);
                        textController.o(selectionRegistrar);
                        composerS.G(959239573);
                        if (selectionRegistrar != null) {
                            textStateK.p(((TextSelectionColors) composerS.x(TextSelectionColorsKt.b())).a());
                        }
                        composerS.Q();
                        Modifier modifierB1117 = modifier2.B(textController.j());
                        MeasurePolicy measurePolicyI1117 = textController.i();
                        composerS.G(544976794);
                        Density density1118 = (Density) composerS.x(CompositionLocalsKt.e());
                        LayoutDirection layoutDirection1117 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                        ViewConfiguration viewConfiguration1117 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                        Modifier modifierE1117 = ComposedModifierKt.e(composerS, modifierB1117);
                        ComposeUiNode.Companion companion1117 = ComposeUiNode.Companion;
                        aVarA = companion1117.a();
                        composerS.G(1405779621);
                        if (!(composerS.t() instanceof Applier)) {
                            ComposablesKt.c();
                        }
                        composerS.e();
                        if (composerS.r()) {
                            composerS.w(new BasicTextKt$BasicTextBpD7jsM$$inlined$Layout$1(aVarA));
                        } else {
                            composerS.c();
                        }
                        composerS.L();
                        Composer composerA1117 = Updater.a(composerS);
                        Updater.e(composerA1117, measurePolicyI1117, companion1117.d());
                        Updater.e(composerA1117, density1118, companion1117.b());
                        Updater.e(composerA1117, layoutDirection1117, companion1117.c());
                        Updater.e(composerA1117, viewConfiguration1117, companion1117.f());
                        Updater.e(composerA1117, modifierE1117, companion1117.e());
                        composerS.o();
                        composerS.d();
                        composerS.Q();
                        composerS.Q();
                        i26 = iA;
                        modifier3 = modifier2;
                        i27 = i25;
                        lVar3 = lVar2;
                        z11 = z10;
                        textStyle3 = textStyleA;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new BasicTextKt$BasicText$3(text, modifier3, textStyle3, lVar3, i26, z11, i27, i12, i13));
                }
                i14 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                z10 = z6;
                i23 = i13 & 64;
                if (i23 != 0) {
                    i14 |= 1572864;
                } else if ((i12 & 3670016) == 0) {
                    if (composerS.p(i11)) {
                        i24 = 1048576;
                    } else {
                        i24 = 524288;
                    }
                    i14 |= i24;
                }
                if ((i14 & 2995931) == 599186) {
                    if (i28 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if (i15 != 0) {
                        textStyleA = TextStyle.Companion.a();
                    } else {
                        textStyleA = textStyle2;
                    }
                    if (i17 != 0) {
                        lVar2 = BasicTextKt$BasicText$1.INSTANCE;
                    }
                    if (i19 != 0) {
                        iA = TextOverflow.Companion.a();
                    }
                    if (i21 != 0) {
                        z10 = true;
                    }
                    if (i23 != 0) {
                        i25 = Integer.MAX_VALUE;
                    } else {
                        i25 = i11;
                    }
                    if (i25 <= 0) {
                        throw new IllegalArgumentException("maxLines should be greater than 0".toString());
                    }
                    selectionRegistrar = (SelectionRegistrar) composerS.x(SelectionRegistrarKt.a());
                    density = (Density) composerS.x(CompositionLocalsKt.e());
                    resolver = (FontFamily.Resolver) composerS.x(CompositionLocalsKt.g());
                    jLongValue = ((Number) RememberSaveableKt.b(new Object[]{text, selectionRegistrar}, c(selectionRegistrar), null, new BasicTextKt$BasicText$selectableId$1(selectionRegistrar), composerS, 72, 4)).longValue();
                    composerS.G(-492369756);
                    objH = composerS.H();
                    if (objH == Composer.Companion.a()) {
                        objH = new TextController(new TextState(new TextDelegate(new AnnotatedString(text, null, null, 6, null), textStyleA, i25, z10, iA, density, resolver, null, 128, null), jLongValue));
                        composerS.z(objH);
                    }
                    composerS.Q();
                    textController = (TextController) objH;
                    textStateK = textController.k();
                    if (!composerS.r()) {
                        textController.n(CoreTextKt.e(textStateK.i(), text, textStyleA, density, resolver, z10, iA, i25));
                    }
                    textStateK.m(lVar2);
                    textController.o(selectionRegistrar);
                    composerS.G(959239573);
                    if (selectionRegistrar != null) {
                        textStateK.p(((TextSelectionColors) composerS.x(TextSelectionColorsKt.b())).a());
                    }
                    composerS.Q();
                    Modifier modifierB1118 = modifier2.B(textController.j());
                    MeasurePolicy measurePolicyI1118 = textController.i();
                    composerS.G(544976794);
                    Density density1119 = (Density) composerS.x(CompositionLocalsKt.e());
                    LayoutDirection layoutDirection1118 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                    ViewConfiguration viewConfiguration1118 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                    Modifier modifierE1118 = ComposedModifierKt.e(composerS, modifierB1118);
                    ComposeUiNode.Companion companion1118 = ComposeUiNode.Companion;
                    aVarA = companion1118.a();
                    composerS.G(1405779621);
                    if (!(composerS.t() instanceof Applier)) {
                        ComposablesKt.c();
                    }
                    composerS.e();
                    if (composerS.r()) {
                        composerS.w(new BasicTextKt$BasicTextBpD7jsM$$inlined$Layout$1(aVarA));
                    } else {
                        composerS.c();
                    }
                    composerS.L();
                    Composer composerA1118 = Updater.a(composerS);
                    Updater.e(composerA1118, measurePolicyI1118, companion1118.d());
                    Updater.e(composerA1118, density1119, companion1118.b());
                    Updater.e(composerA1118, layoutDirection1118, companion1118.c());
                    Updater.e(composerA1118, viewConfiguration1118, companion1118.f());
                    Updater.e(composerA1118, modifierE1118, companion1118.e());
                    composerS.o();
                    composerS.d();
                    composerS.Q();
                    composerS.Q();
                    i26 = iA;
                    modifier3 = modifier2;
                    i27 = i25;
                    lVar3 = lVar2;
                    z11 = z10;
                    textStyle3 = textStyleA;
                } else {
                    if (i28 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if (i15 != 0) {
                        textStyleA = TextStyle.Companion.a();
                    } else {
                        textStyleA = textStyle2;
                    }
                    if (i17 != 0) {
                        lVar2 = BasicTextKt$BasicText$1.INSTANCE;
                    }
                    if (i19 != 0) {
                        iA = TextOverflow.Companion.a();
                    }
                    if (i21 != 0) {
                        z10 = true;
                    }
                    if (i23 != 0) {
                        i25 = Integer.MAX_VALUE;
                    } else {
                        i25 = i11;
                    }
                    if (i25 <= 0) {
                        throw new IllegalArgumentException("maxLines should be greater than 0".toString());
                    }
                    selectionRegistrar = (SelectionRegistrar) composerS.x(SelectionRegistrarKt.a());
                    density = (Density) composerS.x(CompositionLocalsKt.e());
                    resolver = (FontFamily.Resolver) composerS.x(CompositionLocalsKt.g());
                    jLongValue = ((Number) RememberSaveableKt.b(new Object[]{text, selectionRegistrar}, c(selectionRegistrar), null, new BasicTextKt$BasicText$selectableId$1(selectionRegistrar), composerS, 72, 4)).longValue();
                    composerS.G(-492369756);
                    objH = composerS.H();
                    if (objH == Composer.Companion.a()) {
                        objH = new TextController(new TextState(new TextDelegate(new AnnotatedString(text, null, null, 6, null), textStyleA, i25, z10, iA, density, resolver, null, 128, null), jLongValue));
                        composerS.z(objH);
                    }
                    composerS.Q();
                    textController = (TextController) objH;
                    textStateK = textController.k();
                    if (!composerS.r()) {
                        textController.n(CoreTextKt.e(textStateK.i(), text, textStyleA, density, resolver, z10, iA, i25));
                    }
                    textStateK.m(lVar2);
                    textController.o(selectionRegistrar);
                    composerS.G(959239573);
                    if (selectionRegistrar != null) {
                        textStateK.p(((TextSelectionColors) composerS.x(TextSelectionColorsKt.b())).a());
                    }
                    composerS.Q();
                    Modifier modifierB1119 = modifier2.B(textController.j());
                    MeasurePolicy measurePolicyI1119 = textController.i();
                    composerS.G(544976794);
                    Density density11110 = (Density) composerS.x(CompositionLocalsKt.e());
                    LayoutDirection layoutDirection1119 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                    ViewConfiguration viewConfiguration1119 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                    Modifier modifierE1119 = ComposedModifierKt.e(composerS, modifierB1119);
                    ComposeUiNode.Companion companion1119 = ComposeUiNode.Companion;
                    aVarA = companion1119.a();
                    composerS.G(1405779621);
                    if (!(composerS.t() instanceof Applier)) {
                        ComposablesKt.c();
                    }
                    composerS.e();
                    if (composerS.r()) {
                        composerS.w(new BasicTextKt$BasicTextBpD7jsM$$inlined$Layout$1(aVarA));
                    } else {
                        composerS.c();
                    }
                    composerS.L();
                    Composer composerA1119 = Updater.a(composerS);
                    Updater.e(composerA1119, measurePolicyI1119, companion1119.d());
                    Updater.e(composerA1119, density11110, companion1119.b());
                    Updater.e(composerA1119, layoutDirection1119, companion1119.c());
                    Updater.e(composerA1119, viewConfiguration1119, companion1119.f());
                    Updater.e(composerA1119, modifierE1119, companion1119.e());
                    composerS.o();
                    composerS.d();
                    composerS.Q();
                    composerS.Q();
                    i26 = iA;
                    modifier3 = modifier2;
                    i27 = i25;
                    lVar3 = lVar2;
                    z11 = z10;
                    textStyle3 = textStyleA;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new BasicTextKt$BasicText$3(text, modifier3, textStyle3, lVar3, i26, z11, i27, i12, i13));
            }
            i14 |= 3072;
            lVar2 = lVar;
            i19 = i13 & 16;
            if (i19 != 0) {
                if ((57344 & i12) == 0) {
                    iA = i10;
                    if (composerS.p(iA)) {
                        i20 = 16384;
                    } else {
                        i20 = 8192;
                    }
                    i14 |= i20;
                }
                i21 = i13 & 32;
                if (i21 != 0) {
                    if ((458752 & i12) == 0) {
                        z10 = z6;
                        if (composerS.m(z10)) {
                            i22 = 131072;
                        } else {
                            i22 = 65536;
                        }
                        i14 |= i22;
                    }
                    i23 = i13 & 64;
                    if (i23 != 0) {
                        i14 |= 1572864;
                    } else if ((i12 & 3670016) == 0) {
                        if (composerS.p(i11)) {
                            i24 = 1048576;
                        } else {
                            i24 = 524288;
                        }
                        i14 |= i24;
                    }
                    if ((i14 & 2995931) == 599186) {
                        if (i28 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i15 != 0) {
                            textStyleA = TextStyle.Companion.a();
                        } else {
                            textStyleA = textStyle2;
                        }
                        if (i17 != 0) {
                            lVar2 = BasicTextKt$BasicText$1.INSTANCE;
                        }
                        if (i19 != 0) {
                            iA = TextOverflow.Companion.a();
                        }
                        if (i21 != 0) {
                            z10 = true;
                        }
                        if (i23 != 0) {
                            i25 = Integer.MAX_VALUE;
                        } else {
                            i25 = i11;
                        }
                        if (i25 <= 0) {
                            throw new IllegalArgumentException("maxLines should be greater than 0".toString());
                        }
                        selectionRegistrar = (SelectionRegistrar) composerS.x(SelectionRegistrarKt.a());
                        density = (Density) composerS.x(CompositionLocalsKt.e());
                        resolver = (FontFamily.Resolver) composerS.x(CompositionLocalsKt.g());
                        jLongValue = ((Number) RememberSaveableKt.b(new Object[]{text, selectionRegistrar}, c(selectionRegistrar), null, new BasicTextKt$BasicText$selectableId$1(selectionRegistrar), composerS, 72, 4)).longValue();
                        composerS.G(-492369756);
                        objH = composerS.H();
                        if (objH == Composer.Companion.a()) {
                            objH = new TextController(new TextState(new TextDelegate(new AnnotatedString(text, null, null, 6, null), textStyleA, i25, z10, iA, density, resolver, null, 128, null), jLongValue));
                            composerS.z(objH);
                        }
                        composerS.Q();
                        textController = (TextController) objH;
                        textStateK = textController.k();
                        if (!composerS.r()) {
                            textController.n(CoreTextKt.e(textStateK.i(), text, textStyleA, density, resolver, z10, iA, i25));
                        }
                        textStateK.m(lVar2);
                        textController.o(selectionRegistrar);
                        composerS.G(959239573);
                        if (selectionRegistrar != null) {
                            textStateK.p(((TextSelectionColors) composerS.x(TextSelectionColorsKt.b())).a());
                        }
                        composerS.Q();
                        Modifier modifierB11110 = modifier2.B(textController.j());
                        MeasurePolicy measurePolicyI11110 = textController.i();
                        composerS.G(544976794);
                        Density density11111 = (Density) composerS.x(CompositionLocalsKt.e());
                        LayoutDirection layoutDirection11110 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                        ViewConfiguration viewConfiguration11110 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                        Modifier modifierE11110 = ComposedModifierKt.e(composerS, modifierB11110);
                        ComposeUiNode.Companion companion11110 = ComposeUiNode.Companion;
                        aVarA = companion11110.a();
                        composerS.G(1405779621);
                        if (!(composerS.t() instanceof Applier)) {
                            ComposablesKt.c();
                        }
                        composerS.e();
                        if (composerS.r()) {
                            composerS.w(new BasicTextKt$BasicTextBpD7jsM$$inlined$Layout$1(aVarA));
                        } else {
                            composerS.c();
                        }
                        composerS.L();
                        Composer composerA11110 = Updater.a(composerS);
                        Updater.e(composerA11110, measurePolicyI11110, companion11110.d());
                        Updater.e(composerA11110, density11111, companion11110.b());
                        Updater.e(composerA11110, layoutDirection11110, companion11110.c());
                        Updater.e(composerA11110, viewConfiguration11110, companion11110.f());
                        Updater.e(composerA11110, modifierE11110, companion11110.e());
                        composerS.o();
                        composerS.d();
                        composerS.Q();
                        composerS.Q();
                        i26 = iA;
                        modifier3 = modifier2;
                        i27 = i25;
                        lVar3 = lVar2;
                        z11 = z10;
                        textStyle3 = textStyleA;
                    } else {
                        if (i28 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i15 != 0) {
                            textStyleA = TextStyle.Companion.a();
                        } else {
                            textStyleA = textStyle2;
                        }
                        if (i17 != 0) {
                            lVar2 = BasicTextKt$BasicText$1.INSTANCE;
                        }
                        if (i19 != 0) {
                            iA = TextOverflow.Companion.a();
                        }
                        if (i21 != 0) {
                            z10 = true;
                        }
                        if (i23 != 0) {
                            i25 = Integer.MAX_VALUE;
                        } else {
                            i25 = i11;
                        }
                        if (i25 <= 0) {
                            throw new IllegalArgumentException("maxLines should be greater than 0".toString());
                        }
                        selectionRegistrar = (SelectionRegistrar) composerS.x(SelectionRegistrarKt.a());
                        density = (Density) composerS.x(CompositionLocalsKt.e());
                        resolver = (FontFamily.Resolver) composerS.x(CompositionLocalsKt.g());
                        jLongValue = ((Number) RememberSaveableKt.b(new Object[]{text, selectionRegistrar}, c(selectionRegistrar), null, new BasicTextKt$BasicText$selectableId$1(selectionRegistrar), composerS, 72, 4)).longValue();
                        composerS.G(-492369756);
                        objH = composerS.H();
                        if (objH == Composer.Companion.a()) {
                            objH = new TextController(new TextState(new TextDelegate(new AnnotatedString(text, null, null, 6, null), textStyleA, i25, z10, iA, density, resolver, null, 128, null), jLongValue));
                            composerS.z(objH);
                        }
                        composerS.Q();
                        textController = (TextController) objH;
                        textStateK = textController.k();
                        if (!composerS.r()) {
                            textController.n(CoreTextKt.e(textStateK.i(), text, textStyleA, density, resolver, z10, iA, i25));
                        }
                        textStateK.m(lVar2);
                        textController.o(selectionRegistrar);
                        composerS.G(959239573);
                        if (selectionRegistrar != null) {
                            textStateK.p(((TextSelectionColors) composerS.x(TextSelectionColorsKt.b())).a());
                        }
                        composerS.Q();
                        Modifier modifierB11111 = modifier2.B(textController.j());
                        MeasurePolicy measurePolicyI11111 = textController.i();
                        composerS.G(544976794);
                        Density density11112 = (Density) composerS.x(CompositionLocalsKt.e());
                        LayoutDirection layoutDirection11111 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                        ViewConfiguration viewConfiguration11111 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                        Modifier modifierE11111 = ComposedModifierKt.e(composerS, modifierB11111);
                        ComposeUiNode.Companion companion11111 = ComposeUiNode.Companion;
                        aVarA = companion11111.a();
                        composerS.G(1405779621);
                        if (!(composerS.t() instanceof Applier)) {
                            ComposablesKt.c();
                        }
                        composerS.e();
                        if (composerS.r()) {
                            composerS.w(new BasicTextKt$BasicTextBpD7jsM$$inlined$Layout$1(aVarA));
                        } else {
                            composerS.c();
                        }
                        composerS.L();
                        Composer composerA11111 = Updater.a(composerS);
                        Updater.e(composerA11111, measurePolicyI11111, companion11111.d());
                        Updater.e(composerA11111, density11112, companion11111.b());
                        Updater.e(composerA11111, layoutDirection11111, companion11111.c());
                        Updater.e(composerA11111, viewConfiguration11111, companion11111.f());
                        Updater.e(composerA11111, modifierE11111, companion11111.e());
                        composerS.o();
                        composerS.d();
                        composerS.Q();
                        composerS.Q();
                        i26 = iA;
                        modifier3 = modifier2;
                        i27 = i25;
                        lVar3 = lVar2;
                        z11 = z10;
                        textStyle3 = textStyleA;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new BasicTextKt$BasicText$3(text, modifier3, textStyle3, lVar3, i26, z11, i27, i12, i13));
                }
                i14 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                z10 = z6;
                i23 = i13 & 64;
                if (i23 != 0) {
                    i14 |= 1572864;
                } else if ((i12 & 3670016) == 0) {
                    if (composerS.p(i11)) {
                        i24 = 1048576;
                    } else {
                        i24 = 524288;
                    }
                    i14 |= i24;
                }
                if ((i14 & 2995931) == 599186) {
                    if (i28 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if (i15 != 0) {
                        textStyleA = TextStyle.Companion.a();
                    } else {
                        textStyleA = textStyle2;
                    }
                    if (i17 != 0) {
                        lVar2 = BasicTextKt$BasicText$1.INSTANCE;
                    }
                    if (i19 != 0) {
                        iA = TextOverflow.Companion.a();
                    }
                    if (i21 != 0) {
                        z10 = true;
                    }
                    if (i23 != 0) {
                        i25 = Integer.MAX_VALUE;
                    } else {
                        i25 = i11;
                    }
                    if (i25 <= 0) {
                        throw new IllegalArgumentException("maxLines should be greater than 0".toString());
                    }
                    selectionRegistrar = (SelectionRegistrar) composerS.x(SelectionRegistrarKt.a());
                    density = (Density) composerS.x(CompositionLocalsKt.e());
                    resolver = (FontFamily.Resolver) composerS.x(CompositionLocalsKt.g());
                    jLongValue = ((Number) RememberSaveableKt.b(new Object[]{text, selectionRegistrar}, c(selectionRegistrar), null, new BasicTextKt$BasicText$selectableId$1(selectionRegistrar), composerS, 72, 4)).longValue();
                    composerS.G(-492369756);
                    objH = composerS.H();
                    if (objH == Composer.Companion.a()) {
                        objH = new TextController(new TextState(new TextDelegate(new AnnotatedString(text, null, null, 6, null), textStyleA, i25, z10, iA, density, resolver, null, 128, null), jLongValue));
                        composerS.z(objH);
                    }
                    composerS.Q();
                    textController = (TextController) objH;
                    textStateK = textController.k();
                    if (!composerS.r()) {
                        textController.n(CoreTextKt.e(textStateK.i(), text, textStyleA, density, resolver, z10, iA, i25));
                    }
                    textStateK.m(lVar2);
                    textController.o(selectionRegistrar);
                    composerS.G(959239573);
                    if (selectionRegistrar != null) {
                        textStateK.p(((TextSelectionColors) composerS.x(TextSelectionColorsKt.b())).a());
                    }
                    composerS.Q();
                    Modifier modifierB11112 = modifier2.B(textController.j());
                    MeasurePolicy measurePolicyI11112 = textController.i();
                    composerS.G(544976794);
                    Density density11113 = (Density) composerS.x(CompositionLocalsKt.e());
                    LayoutDirection layoutDirection11112 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                    ViewConfiguration viewConfiguration11112 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                    Modifier modifierE11112 = ComposedModifierKt.e(composerS, modifierB11112);
                    ComposeUiNode.Companion companion11112 = ComposeUiNode.Companion;
                    aVarA = companion11112.a();
                    composerS.G(1405779621);
                    if (!(composerS.t() instanceof Applier)) {
                        ComposablesKt.c();
                    }
                    composerS.e();
                    if (composerS.r()) {
                        composerS.w(new BasicTextKt$BasicTextBpD7jsM$$inlined$Layout$1(aVarA));
                    } else {
                        composerS.c();
                    }
                    composerS.L();
                    Composer composerA11112 = Updater.a(composerS);
                    Updater.e(composerA11112, measurePolicyI11112, companion11112.d());
                    Updater.e(composerA11112, density11113, companion11112.b());
                    Updater.e(composerA11112, layoutDirection11112, companion11112.c());
                    Updater.e(composerA11112, viewConfiguration11112, companion11112.f());
                    Updater.e(composerA11112, modifierE11112, companion11112.e());
                    composerS.o();
                    composerS.d();
                    composerS.Q();
                    composerS.Q();
                    i26 = iA;
                    modifier3 = modifier2;
                    i27 = i25;
                    lVar3 = lVar2;
                    z11 = z10;
                    textStyle3 = textStyleA;
                } else {
                    if (i28 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if (i15 != 0) {
                        textStyleA = TextStyle.Companion.a();
                    } else {
                        textStyleA = textStyle2;
                    }
                    if (i17 != 0) {
                        lVar2 = BasicTextKt$BasicText$1.INSTANCE;
                    }
                    if (i19 != 0) {
                        iA = TextOverflow.Companion.a();
                    }
                    if (i21 != 0) {
                        z10 = true;
                    }
                    if (i23 != 0) {
                        i25 = Integer.MAX_VALUE;
                    } else {
                        i25 = i11;
                    }
                    if (i25 <= 0) {
                        throw new IllegalArgumentException("maxLines should be greater than 0".toString());
                    }
                    selectionRegistrar = (SelectionRegistrar) composerS.x(SelectionRegistrarKt.a());
                    density = (Density) composerS.x(CompositionLocalsKt.e());
                    resolver = (FontFamily.Resolver) composerS.x(CompositionLocalsKt.g());
                    jLongValue = ((Number) RememberSaveableKt.b(new Object[]{text, selectionRegistrar}, c(selectionRegistrar), null, new BasicTextKt$BasicText$selectableId$1(selectionRegistrar), composerS, 72, 4)).longValue();
                    composerS.G(-492369756);
                    objH = composerS.H();
                    if (objH == Composer.Companion.a()) {
                        objH = new TextController(new TextState(new TextDelegate(new AnnotatedString(text, null, null, 6, null), textStyleA, i25, z10, iA, density, resolver, null, 128, null), jLongValue));
                        composerS.z(objH);
                    }
                    composerS.Q();
                    textController = (TextController) objH;
                    textStateK = textController.k();
                    if (!composerS.r()) {
                        textController.n(CoreTextKt.e(textStateK.i(), text, textStyleA, density, resolver, z10, iA, i25));
                    }
                    textStateK.m(lVar2);
                    textController.o(selectionRegistrar);
                    composerS.G(959239573);
                    if (selectionRegistrar != null) {
                        textStateK.p(((TextSelectionColors) composerS.x(TextSelectionColorsKt.b())).a());
                    }
                    composerS.Q();
                    Modifier modifierB11113 = modifier2.B(textController.j());
                    MeasurePolicy measurePolicyI11113 = textController.i();
                    composerS.G(544976794);
                    Density density11114 = (Density) composerS.x(CompositionLocalsKt.e());
                    LayoutDirection layoutDirection11113 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                    ViewConfiguration viewConfiguration11113 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                    Modifier modifierE11113 = ComposedModifierKt.e(composerS, modifierB11113);
                    ComposeUiNode.Companion companion11113 = ComposeUiNode.Companion;
                    aVarA = companion11113.a();
                    composerS.G(1405779621);
                    if (!(composerS.t() instanceof Applier)) {
                        ComposablesKt.c();
                    }
                    composerS.e();
                    if (composerS.r()) {
                        composerS.w(new BasicTextKt$BasicTextBpD7jsM$$inlined$Layout$1(aVarA));
                    } else {
                        composerS.c();
                    }
                    composerS.L();
                    Composer composerA11113 = Updater.a(composerS);
                    Updater.e(composerA11113, measurePolicyI11113, companion11113.d());
                    Updater.e(composerA11113, density11114, companion11113.b());
                    Updater.e(composerA11113, layoutDirection11113, companion11113.c());
                    Updater.e(composerA11113, viewConfiguration11113, companion11113.f());
                    Updater.e(composerA11113, modifierE11113, companion11113.e());
                    composerS.o();
                    composerS.d();
                    composerS.Q();
                    composerS.Q();
                    i26 = iA;
                    modifier3 = modifier2;
                    i27 = i25;
                    lVar3 = lVar2;
                    z11 = z10;
                    textStyle3 = textStyleA;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new BasicTextKt$BasicText$3(text, modifier3, textStyle3, lVar3, i26, z11, i27, i12, i13));
            }
            i14 |= CpioConstants.C_ISBLK;
            iA = i10;
            i21 = i13 & 32;
            if (i21 != 0) {
                if ((458752 & i12) == 0) {
                    z10 = z6;
                    if (composerS.m(z10)) {
                        i22 = 131072;
                    } else {
                        i22 = 65536;
                    }
                    i14 |= i22;
                }
                i23 = i13 & 64;
                if (i23 != 0) {
                    i14 |= 1572864;
                } else if ((i12 & 3670016) == 0) {
                    if (composerS.p(i11)) {
                        i24 = 1048576;
                    } else {
                        i24 = 524288;
                    }
                    i14 |= i24;
                }
                if ((i14 & 2995931) == 599186) {
                    if (i28 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if (i15 != 0) {
                        textStyleA = TextStyle.Companion.a();
                    } else {
                        textStyleA = textStyle2;
                    }
                    if (i17 != 0) {
                        lVar2 = BasicTextKt$BasicText$1.INSTANCE;
                    }
                    if (i19 != 0) {
                        iA = TextOverflow.Companion.a();
                    }
                    if (i21 != 0) {
                        z10 = true;
                    }
                    if (i23 != 0) {
                        i25 = Integer.MAX_VALUE;
                    } else {
                        i25 = i11;
                    }
                    if (i25 <= 0) {
                        throw new IllegalArgumentException("maxLines should be greater than 0".toString());
                    }
                    selectionRegistrar = (SelectionRegistrar) composerS.x(SelectionRegistrarKt.a());
                    density = (Density) composerS.x(CompositionLocalsKt.e());
                    resolver = (FontFamily.Resolver) composerS.x(CompositionLocalsKt.g());
                    jLongValue = ((Number) RememberSaveableKt.b(new Object[]{text, selectionRegistrar}, c(selectionRegistrar), null, new BasicTextKt$BasicText$selectableId$1(selectionRegistrar), composerS, 72, 4)).longValue();
                    composerS.G(-492369756);
                    objH = composerS.H();
                    if (objH == Composer.Companion.a()) {
                        objH = new TextController(new TextState(new TextDelegate(new AnnotatedString(text, null, null, 6, null), textStyleA, i25, z10, iA, density, resolver, null, 128, null), jLongValue));
                        composerS.z(objH);
                    }
                    composerS.Q();
                    textController = (TextController) objH;
                    textStateK = textController.k();
                    if (!composerS.r()) {
                        textController.n(CoreTextKt.e(textStateK.i(), text, textStyleA, density, resolver, z10, iA, i25));
                    }
                    textStateK.m(lVar2);
                    textController.o(selectionRegistrar);
                    composerS.G(959239573);
                    if (selectionRegistrar != null) {
                        textStateK.p(((TextSelectionColors) composerS.x(TextSelectionColorsKt.b())).a());
                    }
                    composerS.Q();
                    Modifier modifierB11114 = modifier2.B(textController.j());
                    MeasurePolicy measurePolicyI11114 = textController.i();
                    composerS.G(544976794);
                    Density density11115 = (Density) composerS.x(CompositionLocalsKt.e());
                    LayoutDirection layoutDirection11114 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                    ViewConfiguration viewConfiguration11114 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                    Modifier modifierE11114 = ComposedModifierKt.e(composerS, modifierB11114);
                    ComposeUiNode.Companion companion11114 = ComposeUiNode.Companion;
                    aVarA = companion11114.a();
                    composerS.G(1405779621);
                    if (!(composerS.t() instanceof Applier)) {
                        ComposablesKt.c();
                    }
                    composerS.e();
                    if (composerS.r()) {
                        composerS.w(new BasicTextKt$BasicTextBpD7jsM$$inlined$Layout$1(aVarA));
                    } else {
                        composerS.c();
                    }
                    composerS.L();
                    Composer composerA11114 = Updater.a(composerS);
                    Updater.e(composerA11114, measurePolicyI11114, companion11114.d());
                    Updater.e(composerA11114, density11115, companion11114.b());
                    Updater.e(composerA11114, layoutDirection11114, companion11114.c());
                    Updater.e(composerA11114, viewConfiguration11114, companion11114.f());
                    Updater.e(composerA11114, modifierE11114, companion11114.e());
                    composerS.o();
                    composerS.d();
                    composerS.Q();
                    composerS.Q();
                    i26 = iA;
                    modifier3 = modifier2;
                    i27 = i25;
                    lVar3 = lVar2;
                    z11 = z10;
                    textStyle3 = textStyleA;
                } else {
                    if (i28 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if (i15 != 0) {
                        textStyleA = TextStyle.Companion.a();
                    } else {
                        textStyleA = textStyle2;
                    }
                    if (i17 != 0) {
                        lVar2 = BasicTextKt$BasicText$1.INSTANCE;
                    }
                    if (i19 != 0) {
                        iA = TextOverflow.Companion.a();
                    }
                    if (i21 != 0) {
                        z10 = true;
                    }
                    if (i23 != 0) {
                        i25 = Integer.MAX_VALUE;
                    } else {
                        i25 = i11;
                    }
                    if (i25 <= 0) {
                        throw new IllegalArgumentException("maxLines should be greater than 0".toString());
                    }
                    selectionRegistrar = (SelectionRegistrar) composerS.x(SelectionRegistrarKt.a());
                    density = (Density) composerS.x(CompositionLocalsKt.e());
                    resolver = (FontFamily.Resolver) composerS.x(CompositionLocalsKt.g());
                    jLongValue = ((Number) RememberSaveableKt.b(new Object[]{text, selectionRegistrar}, c(selectionRegistrar), null, new BasicTextKt$BasicText$selectableId$1(selectionRegistrar), composerS, 72, 4)).longValue();
                    composerS.G(-492369756);
                    objH = composerS.H();
                    if (objH == Composer.Companion.a()) {
                        objH = new TextController(new TextState(new TextDelegate(new AnnotatedString(text, null, null, 6, null), textStyleA, i25, z10, iA, density, resolver, null, 128, null), jLongValue));
                        composerS.z(objH);
                    }
                    composerS.Q();
                    textController = (TextController) objH;
                    textStateK = textController.k();
                    if (!composerS.r()) {
                        textController.n(CoreTextKt.e(textStateK.i(), text, textStyleA, density, resolver, z10, iA, i25));
                    }
                    textStateK.m(lVar2);
                    textController.o(selectionRegistrar);
                    composerS.G(959239573);
                    if (selectionRegistrar != null) {
                        textStateK.p(((TextSelectionColors) composerS.x(TextSelectionColorsKt.b())).a());
                    }
                    composerS.Q();
                    Modifier modifierB11115 = modifier2.B(textController.j());
                    MeasurePolicy measurePolicyI11115 = textController.i();
                    composerS.G(544976794);
                    Density density11116 = (Density) composerS.x(CompositionLocalsKt.e());
                    LayoutDirection layoutDirection11115 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                    ViewConfiguration viewConfiguration11115 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                    Modifier modifierE11115 = ComposedModifierKt.e(composerS, modifierB11115);
                    ComposeUiNode.Companion companion11115 = ComposeUiNode.Companion;
                    aVarA = companion11115.a();
                    composerS.G(1405779621);
                    if (!(composerS.t() instanceof Applier)) {
                        ComposablesKt.c();
                    }
                    composerS.e();
                    if (composerS.r()) {
                        composerS.w(new BasicTextKt$BasicTextBpD7jsM$$inlined$Layout$1(aVarA));
                    } else {
                        composerS.c();
                    }
                    composerS.L();
                    Composer composerA11115 = Updater.a(composerS);
                    Updater.e(composerA11115, measurePolicyI11115, companion11115.d());
                    Updater.e(composerA11115, density11116, companion11115.b());
                    Updater.e(composerA11115, layoutDirection11115, companion11115.c());
                    Updater.e(composerA11115, viewConfiguration11115, companion11115.f());
                    Updater.e(composerA11115, modifierE11115, companion11115.e());
                    composerS.o();
                    composerS.d();
                    composerS.Q();
                    composerS.Q();
                    i26 = iA;
                    modifier3 = modifier2;
                    i27 = i25;
                    lVar3 = lVar2;
                    z11 = z10;
                    textStyle3 = textStyleA;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new BasicTextKt$BasicText$3(text, modifier3, textStyle3, lVar3, i26, z11, i27, i12, i13));
            }
            i14 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            z10 = z6;
            i23 = i13 & 64;
            if (i23 != 0) {
                i14 |= 1572864;
            } else if ((i12 & 3670016) == 0) {
                if (composerS.p(i11)) {
                    i24 = 1048576;
                } else {
                    i24 = 524288;
                }
                i14 |= i24;
            }
            if ((i14 & 2995931) == 599186) {
                if (i28 != 0) {
                    modifier2 = Modifier.Companion;
                }
                if (i15 != 0) {
                    textStyleA = TextStyle.Companion.a();
                } else {
                    textStyleA = textStyle2;
                }
                if (i17 != 0) {
                    lVar2 = BasicTextKt$BasicText$1.INSTANCE;
                }
                if (i19 != 0) {
                    iA = TextOverflow.Companion.a();
                }
                if (i21 != 0) {
                    z10 = true;
                }
                if (i23 != 0) {
                    i25 = Integer.MAX_VALUE;
                } else {
                    i25 = i11;
                }
                if (i25 <= 0) {
                    throw new IllegalArgumentException("maxLines should be greater than 0".toString());
                }
                selectionRegistrar = (SelectionRegistrar) composerS.x(SelectionRegistrarKt.a());
                density = (Density) composerS.x(CompositionLocalsKt.e());
                resolver = (FontFamily.Resolver) composerS.x(CompositionLocalsKt.g());
                jLongValue = ((Number) RememberSaveableKt.b(new Object[]{text, selectionRegistrar}, c(selectionRegistrar), null, new BasicTextKt$BasicText$selectableId$1(selectionRegistrar), composerS, 72, 4)).longValue();
                composerS.G(-492369756);
                objH = composerS.H();
                if (objH == Composer.Companion.a()) {
                    objH = new TextController(new TextState(new TextDelegate(new AnnotatedString(text, null, null, 6, null), textStyleA, i25, z10, iA, density, resolver, null, 128, null), jLongValue));
                    composerS.z(objH);
                }
                composerS.Q();
                textController = (TextController) objH;
                textStateK = textController.k();
                if (!composerS.r()) {
                    textController.n(CoreTextKt.e(textStateK.i(), text, textStyleA, density, resolver, z10, iA, i25));
                }
                textStateK.m(lVar2);
                textController.o(selectionRegistrar);
                composerS.G(959239573);
                if (selectionRegistrar != null) {
                    textStateK.p(((TextSelectionColors) composerS.x(TextSelectionColorsKt.b())).a());
                }
                composerS.Q();
                Modifier modifierB11116 = modifier2.B(textController.j());
                MeasurePolicy measurePolicyI11116 = textController.i();
                composerS.G(544976794);
                Density density11117 = (Density) composerS.x(CompositionLocalsKt.e());
                LayoutDirection layoutDirection11116 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                ViewConfiguration viewConfiguration11116 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                Modifier modifierE11116 = ComposedModifierKt.e(composerS, modifierB11116);
                ComposeUiNode.Companion companion11116 = ComposeUiNode.Companion;
                aVarA = companion11116.a();
                composerS.G(1405779621);
                if (!(composerS.t() instanceof Applier)) {
                    ComposablesKt.c();
                }
                composerS.e();
                if (composerS.r()) {
                    composerS.w(new BasicTextKt$BasicTextBpD7jsM$$inlined$Layout$1(aVarA));
                } else {
                    composerS.c();
                }
                composerS.L();
                Composer composerA11116 = Updater.a(composerS);
                Updater.e(composerA11116, measurePolicyI11116, companion11116.d());
                Updater.e(composerA11116, density11117, companion11116.b());
                Updater.e(composerA11116, layoutDirection11116, companion11116.c());
                Updater.e(composerA11116, viewConfiguration11116, companion11116.f());
                Updater.e(composerA11116, modifierE11116, companion11116.e());
                composerS.o();
                composerS.d();
                composerS.Q();
                composerS.Q();
                i26 = iA;
                modifier3 = modifier2;
                i27 = i25;
                lVar3 = lVar2;
                z11 = z10;
                textStyle3 = textStyleA;
            } else {
                if (i28 != 0) {
                    modifier2 = Modifier.Companion;
                }
                if (i15 != 0) {
                    textStyleA = TextStyle.Companion.a();
                } else {
                    textStyleA = textStyle2;
                }
                if (i17 != 0) {
                    lVar2 = BasicTextKt$BasicText$1.INSTANCE;
                }
                if (i19 != 0) {
                    iA = TextOverflow.Companion.a();
                }
                if (i21 != 0) {
                    z10 = true;
                }
                if (i23 != 0) {
                    i25 = Integer.MAX_VALUE;
                } else {
                    i25 = i11;
                }
                if (i25 <= 0) {
                    throw new IllegalArgumentException("maxLines should be greater than 0".toString());
                }
                selectionRegistrar = (SelectionRegistrar) composerS.x(SelectionRegistrarKt.a());
                density = (Density) composerS.x(CompositionLocalsKt.e());
                resolver = (FontFamily.Resolver) composerS.x(CompositionLocalsKt.g());
                jLongValue = ((Number) RememberSaveableKt.b(new Object[]{text, selectionRegistrar}, c(selectionRegistrar), null, new BasicTextKt$BasicText$selectableId$1(selectionRegistrar), composerS, 72, 4)).longValue();
                composerS.G(-492369756);
                objH = composerS.H();
                if (objH == Composer.Companion.a()) {
                    objH = new TextController(new TextState(new TextDelegate(new AnnotatedString(text, null, null, 6, null), textStyleA, i25, z10, iA, density, resolver, null, 128, null), jLongValue));
                    composerS.z(objH);
                }
                composerS.Q();
                textController = (TextController) objH;
                textStateK = textController.k();
                if (!composerS.r()) {
                    textController.n(CoreTextKt.e(textStateK.i(), text, textStyleA, density, resolver, z10, iA, i25));
                }
                textStateK.m(lVar2);
                textController.o(selectionRegistrar);
                composerS.G(959239573);
                if (selectionRegistrar != null) {
                    textStateK.p(((TextSelectionColors) composerS.x(TextSelectionColorsKt.b())).a());
                }
                composerS.Q();
                Modifier modifierB11117 = modifier2.B(textController.j());
                MeasurePolicy measurePolicyI11117 = textController.i();
                composerS.G(544976794);
                Density density11118 = (Density) composerS.x(CompositionLocalsKt.e());
                LayoutDirection layoutDirection11117 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                ViewConfiguration viewConfiguration11117 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                Modifier modifierE11117 = ComposedModifierKt.e(composerS, modifierB11117);
                ComposeUiNode.Companion companion11117 = ComposeUiNode.Companion;
                aVarA = companion11117.a();
                composerS.G(1405779621);
                if (!(composerS.t() instanceof Applier)) {
                    ComposablesKt.c();
                }
                composerS.e();
                if (composerS.r()) {
                    composerS.w(new BasicTextKt$BasicTextBpD7jsM$$inlined$Layout$1(aVarA));
                } else {
                    composerS.c();
                }
                composerS.L();
                Composer composerA11117 = Updater.a(composerS);
                Updater.e(composerA11117, measurePolicyI11117, companion11117.d());
                Updater.e(composerA11117, density11118, companion11117.b());
                Updater.e(composerA11117, layoutDirection11117, companion11117.c());
                Updater.e(composerA11117, viewConfiguration11117, companion11117.f());
                Updater.e(composerA11117, modifierE11117, companion11117.e());
                composerS.o();
                composerS.d();
                composerS.Q();
                composerS.Q();
                i26 = iA;
                modifier3 = modifier2;
                i27 = i25;
                lVar3 = lVar2;
                z11 = z10;
                textStyle3 = textStyleA;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new BasicTextKt$BasicText$3(text, modifier3, textStyle3, lVar3, i26, z11, i27, i12, i13));
        }
        i14 |= 384;
        textStyle2 = textStyle;
        i17 = i13 & 8;
        if (i17 != 0) {
            if ((i12 & 7168) == 0) {
                lVar2 = lVar;
                if (composerS.k(lVar2)) {
                    i18 = 2048;
                } else {
                    i18 = 1024;
                }
                i14 |= i18;
            }
            i19 = i13 & 16;
            if (i19 != 0) {
                if ((57344 & i12) == 0) {
                    iA = i10;
                    if (composerS.p(iA)) {
                        i20 = 16384;
                    } else {
                        i20 = 8192;
                    }
                    i14 |= i20;
                }
                i21 = i13 & 32;
                if (i21 != 0) {
                    if ((458752 & i12) == 0) {
                        z10 = z6;
                        if (composerS.m(z10)) {
                            i22 = 131072;
                        } else {
                            i22 = 65536;
                        }
                        i14 |= i22;
                    }
                    i23 = i13 & 64;
                    if (i23 != 0) {
                        i14 |= 1572864;
                    } else if ((i12 & 3670016) == 0) {
                        if (composerS.p(i11)) {
                            i24 = 1048576;
                        } else {
                            i24 = 524288;
                        }
                        i14 |= i24;
                    }
                    if ((i14 & 2995931) == 599186) {
                        if (i28 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i15 != 0) {
                            textStyleA = TextStyle.Companion.a();
                        } else {
                            textStyleA = textStyle2;
                        }
                        if (i17 != 0) {
                            lVar2 = BasicTextKt$BasicText$1.INSTANCE;
                        }
                        if (i19 != 0) {
                            iA = TextOverflow.Companion.a();
                        }
                        if (i21 != 0) {
                            z10 = true;
                        }
                        if (i23 != 0) {
                            i25 = Integer.MAX_VALUE;
                        } else {
                            i25 = i11;
                        }
                        if (i25 <= 0) {
                            throw new IllegalArgumentException("maxLines should be greater than 0".toString());
                        }
                        selectionRegistrar = (SelectionRegistrar) composerS.x(SelectionRegistrarKt.a());
                        density = (Density) composerS.x(CompositionLocalsKt.e());
                        resolver = (FontFamily.Resolver) composerS.x(CompositionLocalsKt.g());
                        jLongValue = ((Number) RememberSaveableKt.b(new Object[]{text, selectionRegistrar}, c(selectionRegistrar), null, new BasicTextKt$BasicText$selectableId$1(selectionRegistrar), composerS, 72, 4)).longValue();
                        composerS.G(-492369756);
                        objH = composerS.H();
                        if (objH == Composer.Companion.a()) {
                            objH = new TextController(new TextState(new TextDelegate(new AnnotatedString(text, null, null, 6, null), textStyleA, i25, z10, iA, density, resolver, null, 128, null), jLongValue));
                            composerS.z(objH);
                        }
                        composerS.Q();
                        textController = (TextController) objH;
                        textStateK = textController.k();
                        if (!composerS.r()) {
                            textController.n(CoreTextKt.e(textStateK.i(), text, textStyleA, density, resolver, z10, iA, i25));
                        }
                        textStateK.m(lVar2);
                        textController.o(selectionRegistrar);
                        composerS.G(959239573);
                        if (selectionRegistrar != null) {
                            textStateK.p(((TextSelectionColors) composerS.x(TextSelectionColorsKt.b())).a());
                        }
                        composerS.Q();
                        Modifier modifierB11118 = modifier2.B(textController.j());
                        MeasurePolicy measurePolicyI11118 = textController.i();
                        composerS.G(544976794);
                        Density density11119 = (Density) composerS.x(CompositionLocalsKt.e());
                        LayoutDirection layoutDirection11118 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                        ViewConfiguration viewConfiguration11118 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                        Modifier modifierE11118 = ComposedModifierKt.e(composerS, modifierB11118);
                        ComposeUiNode.Companion companion11118 = ComposeUiNode.Companion;
                        aVarA = companion11118.a();
                        composerS.G(1405779621);
                        if (!(composerS.t() instanceof Applier)) {
                            ComposablesKt.c();
                        }
                        composerS.e();
                        if (composerS.r()) {
                            composerS.w(new BasicTextKt$BasicTextBpD7jsM$$inlined$Layout$1(aVarA));
                        } else {
                            composerS.c();
                        }
                        composerS.L();
                        Composer composerA11118 = Updater.a(composerS);
                        Updater.e(composerA11118, measurePolicyI11118, companion11118.d());
                        Updater.e(composerA11118, density11119, companion11118.b());
                        Updater.e(composerA11118, layoutDirection11118, companion11118.c());
                        Updater.e(composerA11118, viewConfiguration11118, companion11118.f());
                        Updater.e(composerA11118, modifierE11118, companion11118.e());
                        composerS.o();
                        composerS.d();
                        composerS.Q();
                        composerS.Q();
                        i26 = iA;
                        modifier3 = modifier2;
                        i27 = i25;
                        lVar3 = lVar2;
                        z11 = z10;
                        textStyle3 = textStyleA;
                    } else {
                        if (i28 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i15 != 0) {
                            textStyleA = TextStyle.Companion.a();
                        } else {
                            textStyleA = textStyle2;
                        }
                        if (i17 != 0) {
                            lVar2 = BasicTextKt$BasicText$1.INSTANCE;
                        }
                        if (i19 != 0) {
                            iA = TextOverflow.Companion.a();
                        }
                        if (i21 != 0) {
                            z10 = true;
                        }
                        if (i23 != 0) {
                            i25 = Integer.MAX_VALUE;
                        } else {
                            i25 = i11;
                        }
                        if (i25 <= 0) {
                            throw new IllegalArgumentException("maxLines should be greater than 0".toString());
                        }
                        selectionRegistrar = (SelectionRegistrar) composerS.x(SelectionRegistrarKt.a());
                        density = (Density) composerS.x(CompositionLocalsKt.e());
                        resolver = (FontFamily.Resolver) composerS.x(CompositionLocalsKt.g());
                        jLongValue = ((Number) RememberSaveableKt.b(new Object[]{text, selectionRegistrar}, c(selectionRegistrar), null, new BasicTextKt$BasicText$selectableId$1(selectionRegistrar), composerS, 72, 4)).longValue();
                        composerS.G(-492369756);
                        objH = composerS.H();
                        if (objH == Composer.Companion.a()) {
                            objH = new TextController(new TextState(new TextDelegate(new AnnotatedString(text, null, null, 6, null), textStyleA, i25, z10, iA, density, resolver, null, 128, null), jLongValue));
                            composerS.z(objH);
                        }
                        composerS.Q();
                        textController = (TextController) objH;
                        textStateK = textController.k();
                        if (!composerS.r()) {
                            textController.n(CoreTextKt.e(textStateK.i(), text, textStyleA, density, resolver, z10, iA, i25));
                        }
                        textStateK.m(lVar2);
                        textController.o(selectionRegistrar);
                        composerS.G(959239573);
                        if (selectionRegistrar != null) {
                            textStateK.p(((TextSelectionColors) composerS.x(TextSelectionColorsKt.b())).a());
                        }
                        composerS.Q();
                        Modifier modifierB11119 = modifier2.B(textController.j());
                        MeasurePolicy measurePolicyI11119 = textController.i();
                        composerS.G(544976794);
                        Density density111110 = (Density) composerS.x(CompositionLocalsKt.e());
                        LayoutDirection layoutDirection11119 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                        ViewConfiguration viewConfiguration11119 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                        Modifier modifierE11119 = ComposedModifierKt.e(composerS, modifierB11119);
                        ComposeUiNode.Companion companion11119 = ComposeUiNode.Companion;
                        aVarA = companion11119.a();
                        composerS.G(1405779621);
                        if (!(composerS.t() instanceof Applier)) {
                            ComposablesKt.c();
                        }
                        composerS.e();
                        if (composerS.r()) {
                            composerS.w(new BasicTextKt$BasicTextBpD7jsM$$inlined$Layout$1(aVarA));
                        } else {
                            composerS.c();
                        }
                        composerS.L();
                        Composer composerA11119 = Updater.a(composerS);
                        Updater.e(composerA11119, measurePolicyI11119, companion11119.d());
                        Updater.e(composerA11119, density111110, companion11119.b());
                        Updater.e(composerA11119, layoutDirection11119, companion11119.c());
                        Updater.e(composerA11119, viewConfiguration11119, companion11119.f());
                        Updater.e(composerA11119, modifierE11119, companion11119.e());
                        composerS.o();
                        composerS.d();
                        composerS.Q();
                        composerS.Q();
                        i26 = iA;
                        modifier3 = modifier2;
                        i27 = i25;
                        lVar3 = lVar2;
                        z11 = z10;
                        textStyle3 = textStyleA;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new BasicTextKt$BasicText$3(text, modifier3, textStyle3, lVar3, i26, z11, i27, i12, i13));
                }
                i14 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                z10 = z6;
                i23 = i13 & 64;
                if (i23 != 0) {
                    i14 |= 1572864;
                } else if ((i12 & 3670016) == 0) {
                    if (composerS.p(i11)) {
                        i24 = 1048576;
                    } else {
                        i24 = 524288;
                    }
                    i14 |= i24;
                }
                if ((i14 & 2995931) == 599186) {
                    if (i28 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if (i15 != 0) {
                        textStyleA = TextStyle.Companion.a();
                    } else {
                        textStyleA = textStyle2;
                    }
                    if (i17 != 0) {
                        lVar2 = BasicTextKt$BasicText$1.INSTANCE;
                    }
                    if (i19 != 0) {
                        iA = TextOverflow.Companion.a();
                    }
                    if (i21 != 0) {
                        z10 = true;
                    }
                    if (i23 != 0) {
                        i25 = Integer.MAX_VALUE;
                    } else {
                        i25 = i11;
                    }
                    if (i25 <= 0) {
                        throw new IllegalArgumentException("maxLines should be greater than 0".toString());
                    }
                    selectionRegistrar = (SelectionRegistrar) composerS.x(SelectionRegistrarKt.a());
                    density = (Density) composerS.x(CompositionLocalsKt.e());
                    resolver = (FontFamily.Resolver) composerS.x(CompositionLocalsKt.g());
                    jLongValue = ((Number) RememberSaveableKt.b(new Object[]{text, selectionRegistrar}, c(selectionRegistrar), null, new BasicTextKt$BasicText$selectableId$1(selectionRegistrar), composerS, 72, 4)).longValue();
                    composerS.G(-492369756);
                    objH = composerS.H();
                    if (objH == Composer.Companion.a()) {
                        objH = new TextController(new TextState(new TextDelegate(new AnnotatedString(text, null, null, 6, null), textStyleA, i25, z10, iA, density, resolver, null, 128, null), jLongValue));
                        composerS.z(objH);
                    }
                    composerS.Q();
                    textController = (TextController) objH;
                    textStateK = textController.k();
                    if (!composerS.r()) {
                        textController.n(CoreTextKt.e(textStateK.i(), text, textStyleA, density, resolver, z10, iA, i25));
                    }
                    textStateK.m(lVar2);
                    textController.o(selectionRegistrar);
                    composerS.G(959239573);
                    if (selectionRegistrar != null) {
                        textStateK.p(((TextSelectionColors) composerS.x(TextSelectionColorsKt.b())).a());
                    }
                    composerS.Q();
                    Modifier modifierB111110 = modifier2.B(textController.j());
                    MeasurePolicy measurePolicyI111110 = textController.i();
                    composerS.G(544976794);
                    Density density111111 = (Density) composerS.x(CompositionLocalsKt.e());
                    LayoutDirection layoutDirection111110 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                    ViewConfiguration viewConfiguration111110 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                    Modifier modifierE111110 = ComposedModifierKt.e(composerS, modifierB111110);
                    ComposeUiNode.Companion companion111110 = ComposeUiNode.Companion;
                    aVarA = companion111110.a();
                    composerS.G(1405779621);
                    if (!(composerS.t() instanceof Applier)) {
                        ComposablesKt.c();
                    }
                    composerS.e();
                    if (composerS.r()) {
                        composerS.w(new BasicTextKt$BasicTextBpD7jsM$$inlined$Layout$1(aVarA));
                    } else {
                        composerS.c();
                    }
                    composerS.L();
                    Composer composerA111110 = Updater.a(composerS);
                    Updater.e(composerA111110, measurePolicyI111110, companion111110.d());
                    Updater.e(composerA111110, density111111, companion111110.b());
                    Updater.e(composerA111110, layoutDirection111110, companion111110.c());
                    Updater.e(composerA111110, viewConfiguration111110, companion111110.f());
                    Updater.e(composerA111110, modifierE111110, companion111110.e());
                    composerS.o();
                    composerS.d();
                    composerS.Q();
                    composerS.Q();
                    i26 = iA;
                    modifier3 = modifier2;
                    i27 = i25;
                    lVar3 = lVar2;
                    z11 = z10;
                    textStyle3 = textStyleA;
                } else {
                    if (i28 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if (i15 != 0) {
                        textStyleA = TextStyle.Companion.a();
                    } else {
                        textStyleA = textStyle2;
                    }
                    if (i17 != 0) {
                        lVar2 = BasicTextKt$BasicText$1.INSTANCE;
                    }
                    if (i19 != 0) {
                        iA = TextOverflow.Companion.a();
                    }
                    if (i21 != 0) {
                        z10 = true;
                    }
                    if (i23 != 0) {
                        i25 = Integer.MAX_VALUE;
                    } else {
                        i25 = i11;
                    }
                    if (i25 <= 0) {
                        throw new IllegalArgumentException("maxLines should be greater than 0".toString());
                    }
                    selectionRegistrar = (SelectionRegistrar) composerS.x(SelectionRegistrarKt.a());
                    density = (Density) composerS.x(CompositionLocalsKt.e());
                    resolver = (FontFamily.Resolver) composerS.x(CompositionLocalsKt.g());
                    jLongValue = ((Number) RememberSaveableKt.b(new Object[]{text, selectionRegistrar}, c(selectionRegistrar), null, new BasicTextKt$BasicText$selectableId$1(selectionRegistrar), composerS, 72, 4)).longValue();
                    composerS.G(-492369756);
                    objH = composerS.H();
                    if (objH == Composer.Companion.a()) {
                        objH = new TextController(new TextState(new TextDelegate(new AnnotatedString(text, null, null, 6, null), textStyleA, i25, z10, iA, density, resolver, null, 128, null), jLongValue));
                        composerS.z(objH);
                    }
                    composerS.Q();
                    textController = (TextController) objH;
                    textStateK = textController.k();
                    if (!composerS.r()) {
                        textController.n(CoreTextKt.e(textStateK.i(), text, textStyleA, density, resolver, z10, iA, i25));
                    }
                    textStateK.m(lVar2);
                    textController.o(selectionRegistrar);
                    composerS.G(959239573);
                    if (selectionRegistrar != null) {
                        textStateK.p(((TextSelectionColors) composerS.x(TextSelectionColorsKt.b())).a());
                    }
                    composerS.Q();
                    Modifier modifierB111111 = modifier2.B(textController.j());
                    MeasurePolicy measurePolicyI111111 = textController.i();
                    composerS.G(544976794);
                    Density density111112 = (Density) composerS.x(CompositionLocalsKt.e());
                    LayoutDirection layoutDirection111111 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                    ViewConfiguration viewConfiguration111111 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                    Modifier modifierE111111 = ComposedModifierKt.e(composerS, modifierB111111);
                    ComposeUiNode.Companion companion111111 = ComposeUiNode.Companion;
                    aVarA = companion111111.a();
                    composerS.G(1405779621);
                    if (!(composerS.t() instanceof Applier)) {
                        ComposablesKt.c();
                    }
                    composerS.e();
                    if (composerS.r()) {
                        composerS.w(new BasicTextKt$BasicTextBpD7jsM$$inlined$Layout$1(aVarA));
                    } else {
                        composerS.c();
                    }
                    composerS.L();
                    Composer composerA111111 = Updater.a(composerS);
                    Updater.e(composerA111111, measurePolicyI111111, companion111111.d());
                    Updater.e(composerA111111, density111112, companion111111.b());
                    Updater.e(composerA111111, layoutDirection111111, companion111111.c());
                    Updater.e(composerA111111, viewConfiguration111111, companion111111.f());
                    Updater.e(composerA111111, modifierE111111, companion111111.e());
                    composerS.o();
                    composerS.d();
                    composerS.Q();
                    composerS.Q();
                    i26 = iA;
                    modifier3 = modifier2;
                    i27 = i25;
                    lVar3 = lVar2;
                    z11 = z10;
                    textStyle3 = textStyleA;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new BasicTextKt$BasicText$3(text, modifier3, textStyle3, lVar3, i26, z11, i27, i12, i13));
            }
            i14 |= CpioConstants.C_ISBLK;
            iA = i10;
            i21 = i13 & 32;
            if (i21 != 0) {
                if ((458752 & i12) == 0) {
                    z10 = z6;
                    if (composerS.m(z10)) {
                        i22 = 131072;
                    } else {
                        i22 = 65536;
                    }
                    i14 |= i22;
                }
                i23 = i13 & 64;
                if (i23 != 0) {
                    i14 |= 1572864;
                } else if ((i12 & 3670016) == 0) {
                    if (composerS.p(i11)) {
                        i24 = 1048576;
                    } else {
                        i24 = 524288;
                    }
                    i14 |= i24;
                }
                if ((i14 & 2995931) == 599186) {
                    if (i28 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if (i15 != 0) {
                        textStyleA = TextStyle.Companion.a();
                    } else {
                        textStyleA = textStyle2;
                    }
                    if (i17 != 0) {
                        lVar2 = BasicTextKt$BasicText$1.INSTANCE;
                    }
                    if (i19 != 0) {
                        iA = TextOverflow.Companion.a();
                    }
                    if (i21 != 0) {
                        z10 = true;
                    }
                    if (i23 != 0) {
                        i25 = Integer.MAX_VALUE;
                    } else {
                        i25 = i11;
                    }
                    if (i25 <= 0) {
                        throw new IllegalArgumentException("maxLines should be greater than 0".toString());
                    }
                    selectionRegistrar = (SelectionRegistrar) composerS.x(SelectionRegistrarKt.a());
                    density = (Density) composerS.x(CompositionLocalsKt.e());
                    resolver = (FontFamily.Resolver) composerS.x(CompositionLocalsKt.g());
                    jLongValue = ((Number) RememberSaveableKt.b(new Object[]{text, selectionRegistrar}, c(selectionRegistrar), null, new BasicTextKt$BasicText$selectableId$1(selectionRegistrar), composerS, 72, 4)).longValue();
                    composerS.G(-492369756);
                    objH = composerS.H();
                    if (objH == Composer.Companion.a()) {
                        objH = new TextController(new TextState(new TextDelegate(new AnnotatedString(text, null, null, 6, null), textStyleA, i25, z10, iA, density, resolver, null, 128, null), jLongValue));
                        composerS.z(objH);
                    }
                    composerS.Q();
                    textController = (TextController) objH;
                    textStateK = textController.k();
                    if (!composerS.r()) {
                        textController.n(CoreTextKt.e(textStateK.i(), text, textStyleA, density, resolver, z10, iA, i25));
                    }
                    textStateK.m(lVar2);
                    textController.o(selectionRegistrar);
                    composerS.G(959239573);
                    if (selectionRegistrar != null) {
                        textStateK.p(((TextSelectionColors) composerS.x(TextSelectionColorsKt.b())).a());
                    }
                    composerS.Q();
                    Modifier modifierB111112 = modifier2.B(textController.j());
                    MeasurePolicy measurePolicyI111112 = textController.i();
                    composerS.G(544976794);
                    Density density111113 = (Density) composerS.x(CompositionLocalsKt.e());
                    LayoutDirection layoutDirection111112 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                    ViewConfiguration viewConfiguration111112 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                    Modifier modifierE111112 = ComposedModifierKt.e(composerS, modifierB111112);
                    ComposeUiNode.Companion companion111112 = ComposeUiNode.Companion;
                    aVarA = companion111112.a();
                    composerS.G(1405779621);
                    if (!(composerS.t() instanceof Applier)) {
                        ComposablesKt.c();
                    }
                    composerS.e();
                    if (composerS.r()) {
                        composerS.w(new BasicTextKt$BasicTextBpD7jsM$$inlined$Layout$1(aVarA));
                    } else {
                        composerS.c();
                    }
                    composerS.L();
                    Composer composerA111112 = Updater.a(composerS);
                    Updater.e(composerA111112, measurePolicyI111112, companion111112.d());
                    Updater.e(composerA111112, density111113, companion111112.b());
                    Updater.e(composerA111112, layoutDirection111112, companion111112.c());
                    Updater.e(composerA111112, viewConfiguration111112, companion111112.f());
                    Updater.e(composerA111112, modifierE111112, companion111112.e());
                    composerS.o();
                    composerS.d();
                    composerS.Q();
                    composerS.Q();
                    i26 = iA;
                    modifier3 = modifier2;
                    i27 = i25;
                    lVar3 = lVar2;
                    z11 = z10;
                    textStyle3 = textStyleA;
                } else {
                    if (i28 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if (i15 != 0) {
                        textStyleA = TextStyle.Companion.a();
                    } else {
                        textStyleA = textStyle2;
                    }
                    if (i17 != 0) {
                        lVar2 = BasicTextKt$BasicText$1.INSTANCE;
                    }
                    if (i19 != 0) {
                        iA = TextOverflow.Companion.a();
                    }
                    if (i21 != 0) {
                        z10 = true;
                    }
                    if (i23 != 0) {
                        i25 = Integer.MAX_VALUE;
                    } else {
                        i25 = i11;
                    }
                    if (i25 <= 0) {
                        throw new IllegalArgumentException("maxLines should be greater than 0".toString());
                    }
                    selectionRegistrar = (SelectionRegistrar) composerS.x(SelectionRegistrarKt.a());
                    density = (Density) composerS.x(CompositionLocalsKt.e());
                    resolver = (FontFamily.Resolver) composerS.x(CompositionLocalsKt.g());
                    jLongValue = ((Number) RememberSaveableKt.b(new Object[]{text, selectionRegistrar}, c(selectionRegistrar), null, new BasicTextKt$BasicText$selectableId$1(selectionRegistrar), composerS, 72, 4)).longValue();
                    composerS.G(-492369756);
                    objH = composerS.H();
                    if (objH == Composer.Companion.a()) {
                        objH = new TextController(new TextState(new TextDelegate(new AnnotatedString(text, null, null, 6, null), textStyleA, i25, z10, iA, density, resolver, null, 128, null), jLongValue));
                        composerS.z(objH);
                    }
                    composerS.Q();
                    textController = (TextController) objH;
                    textStateK = textController.k();
                    if (!composerS.r()) {
                        textController.n(CoreTextKt.e(textStateK.i(), text, textStyleA, density, resolver, z10, iA, i25));
                    }
                    textStateK.m(lVar2);
                    textController.o(selectionRegistrar);
                    composerS.G(959239573);
                    if (selectionRegistrar != null) {
                        textStateK.p(((TextSelectionColors) composerS.x(TextSelectionColorsKt.b())).a());
                    }
                    composerS.Q();
                    Modifier modifierB111113 = modifier2.B(textController.j());
                    MeasurePolicy measurePolicyI111113 = textController.i();
                    composerS.G(544976794);
                    Density density111114 = (Density) composerS.x(CompositionLocalsKt.e());
                    LayoutDirection layoutDirection111113 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                    ViewConfiguration viewConfiguration111113 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                    Modifier modifierE111113 = ComposedModifierKt.e(composerS, modifierB111113);
                    ComposeUiNode.Companion companion111113 = ComposeUiNode.Companion;
                    aVarA = companion111113.a();
                    composerS.G(1405779621);
                    if (!(composerS.t() instanceof Applier)) {
                        ComposablesKt.c();
                    }
                    composerS.e();
                    if (composerS.r()) {
                        composerS.w(new BasicTextKt$BasicTextBpD7jsM$$inlined$Layout$1(aVarA));
                    } else {
                        composerS.c();
                    }
                    composerS.L();
                    Composer composerA111113 = Updater.a(composerS);
                    Updater.e(composerA111113, measurePolicyI111113, companion111113.d());
                    Updater.e(composerA111113, density111114, companion111113.b());
                    Updater.e(composerA111113, layoutDirection111113, companion111113.c());
                    Updater.e(composerA111113, viewConfiguration111113, companion111113.f());
                    Updater.e(composerA111113, modifierE111113, companion111113.e());
                    composerS.o();
                    composerS.d();
                    composerS.Q();
                    composerS.Q();
                    i26 = iA;
                    modifier3 = modifier2;
                    i27 = i25;
                    lVar3 = lVar2;
                    z11 = z10;
                    textStyle3 = textStyleA;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new BasicTextKt$BasicText$3(text, modifier3, textStyle3, lVar3, i26, z11, i27, i12, i13));
            }
            i14 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            z10 = z6;
            i23 = i13 & 64;
            if (i23 != 0) {
                i14 |= 1572864;
            } else if ((i12 & 3670016) == 0) {
                if (composerS.p(i11)) {
                    i24 = 1048576;
                } else {
                    i24 = 524288;
                }
                i14 |= i24;
            }
            if ((i14 & 2995931) == 599186) {
                if (i28 != 0) {
                    modifier2 = Modifier.Companion;
                }
                if (i15 != 0) {
                    textStyleA = TextStyle.Companion.a();
                } else {
                    textStyleA = textStyle2;
                }
                if (i17 != 0) {
                    lVar2 = BasicTextKt$BasicText$1.INSTANCE;
                }
                if (i19 != 0) {
                    iA = TextOverflow.Companion.a();
                }
                if (i21 != 0) {
                    z10 = true;
                }
                if (i23 != 0) {
                    i25 = Integer.MAX_VALUE;
                } else {
                    i25 = i11;
                }
                if (i25 <= 0) {
                    throw new IllegalArgumentException("maxLines should be greater than 0".toString());
                }
                selectionRegistrar = (SelectionRegistrar) composerS.x(SelectionRegistrarKt.a());
                density = (Density) composerS.x(CompositionLocalsKt.e());
                resolver = (FontFamily.Resolver) composerS.x(CompositionLocalsKt.g());
                jLongValue = ((Number) RememberSaveableKt.b(new Object[]{text, selectionRegistrar}, c(selectionRegistrar), null, new BasicTextKt$BasicText$selectableId$1(selectionRegistrar), composerS, 72, 4)).longValue();
                composerS.G(-492369756);
                objH = composerS.H();
                if (objH == Composer.Companion.a()) {
                    objH = new TextController(new TextState(new TextDelegate(new AnnotatedString(text, null, null, 6, null), textStyleA, i25, z10, iA, density, resolver, null, 128, null), jLongValue));
                    composerS.z(objH);
                }
                composerS.Q();
                textController = (TextController) objH;
                textStateK = textController.k();
                if (!composerS.r()) {
                    textController.n(CoreTextKt.e(textStateK.i(), text, textStyleA, density, resolver, z10, iA, i25));
                }
                textStateK.m(lVar2);
                textController.o(selectionRegistrar);
                composerS.G(959239573);
                if (selectionRegistrar != null) {
                    textStateK.p(((TextSelectionColors) composerS.x(TextSelectionColorsKt.b())).a());
                }
                composerS.Q();
                Modifier modifierB111114 = modifier2.B(textController.j());
                MeasurePolicy measurePolicyI111114 = textController.i();
                composerS.G(544976794);
                Density density111115 = (Density) composerS.x(CompositionLocalsKt.e());
                LayoutDirection layoutDirection111114 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                ViewConfiguration viewConfiguration111114 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                Modifier modifierE111114 = ComposedModifierKt.e(composerS, modifierB111114);
                ComposeUiNode.Companion companion111114 = ComposeUiNode.Companion;
                aVarA = companion111114.a();
                composerS.G(1405779621);
                if (!(composerS.t() instanceof Applier)) {
                    ComposablesKt.c();
                }
                composerS.e();
                if (composerS.r()) {
                    composerS.w(new BasicTextKt$BasicTextBpD7jsM$$inlined$Layout$1(aVarA));
                } else {
                    composerS.c();
                }
                composerS.L();
                Composer composerA111114 = Updater.a(composerS);
                Updater.e(composerA111114, measurePolicyI111114, companion111114.d());
                Updater.e(composerA111114, density111115, companion111114.b());
                Updater.e(composerA111114, layoutDirection111114, companion111114.c());
                Updater.e(composerA111114, viewConfiguration111114, companion111114.f());
                Updater.e(composerA111114, modifierE111114, companion111114.e());
                composerS.o();
                composerS.d();
                composerS.Q();
                composerS.Q();
                i26 = iA;
                modifier3 = modifier2;
                i27 = i25;
                lVar3 = lVar2;
                z11 = z10;
                textStyle3 = textStyleA;
            } else {
                if (i28 != 0) {
                    modifier2 = Modifier.Companion;
                }
                if (i15 != 0) {
                    textStyleA = TextStyle.Companion.a();
                } else {
                    textStyleA = textStyle2;
                }
                if (i17 != 0) {
                    lVar2 = BasicTextKt$BasicText$1.INSTANCE;
                }
                if (i19 != 0) {
                    iA = TextOverflow.Companion.a();
                }
                if (i21 != 0) {
                    z10 = true;
                }
                if (i23 != 0) {
                    i25 = Integer.MAX_VALUE;
                } else {
                    i25 = i11;
                }
                if (i25 <= 0) {
                    throw new IllegalArgumentException("maxLines should be greater than 0".toString());
                }
                selectionRegistrar = (SelectionRegistrar) composerS.x(SelectionRegistrarKt.a());
                density = (Density) composerS.x(CompositionLocalsKt.e());
                resolver = (FontFamily.Resolver) composerS.x(CompositionLocalsKt.g());
                jLongValue = ((Number) RememberSaveableKt.b(new Object[]{text, selectionRegistrar}, c(selectionRegistrar), null, new BasicTextKt$BasicText$selectableId$1(selectionRegistrar), composerS, 72, 4)).longValue();
                composerS.G(-492369756);
                objH = composerS.H();
                if (objH == Composer.Companion.a()) {
                    objH = new TextController(new TextState(new TextDelegate(new AnnotatedString(text, null, null, 6, null), textStyleA, i25, z10, iA, density, resolver, null, 128, null), jLongValue));
                    composerS.z(objH);
                }
                composerS.Q();
                textController = (TextController) objH;
                textStateK = textController.k();
                if (!composerS.r()) {
                    textController.n(CoreTextKt.e(textStateK.i(), text, textStyleA, density, resolver, z10, iA, i25));
                }
                textStateK.m(lVar2);
                textController.o(selectionRegistrar);
                composerS.G(959239573);
                if (selectionRegistrar != null) {
                    textStateK.p(((TextSelectionColors) composerS.x(TextSelectionColorsKt.b())).a());
                }
                composerS.Q();
                Modifier modifierB111115 = modifier2.B(textController.j());
                MeasurePolicy measurePolicyI111115 = textController.i();
                composerS.G(544976794);
                Density density111116 = (Density) composerS.x(CompositionLocalsKt.e());
                LayoutDirection layoutDirection111115 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                ViewConfiguration viewConfiguration111115 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                Modifier modifierE111115 = ComposedModifierKt.e(composerS, modifierB111115);
                ComposeUiNode.Companion companion111115 = ComposeUiNode.Companion;
                aVarA = companion111115.a();
                composerS.G(1405779621);
                if (!(composerS.t() instanceof Applier)) {
                    ComposablesKt.c();
                }
                composerS.e();
                if (composerS.r()) {
                    composerS.w(new BasicTextKt$BasicTextBpD7jsM$$inlined$Layout$1(aVarA));
                } else {
                    composerS.c();
                }
                composerS.L();
                Composer composerA111115 = Updater.a(composerS);
                Updater.e(composerA111115, measurePolicyI111115, companion111115.d());
                Updater.e(composerA111115, density111116, companion111115.b());
                Updater.e(composerA111115, layoutDirection111115, companion111115.c());
                Updater.e(composerA111115, viewConfiguration111115, companion111115.f());
                Updater.e(composerA111115, modifierE111115, companion111115.e());
                composerS.o();
                composerS.d();
                composerS.Q();
                composerS.Q();
                i26 = iA;
                modifier3 = modifier2;
                i27 = i25;
                lVar3 = lVar2;
                z11 = z10;
                textStyle3 = textStyleA;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new BasicTextKt$BasicText$3(text, modifier3, textStyle3, lVar3, i26, z11, i27, i12, i13));
        }
        i14 |= 3072;
        lVar2 = lVar;
        i19 = i13 & 16;
        if (i19 != 0) {
            if ((57344 & i12) == 0) {
                iA = i10;
                if (composerS.p(iA)) {
                    i20 = 16384;
                } else {
                    i20 = 8192;
                }
                i14 |= i20;
            }
            i21 = i13 & 32;
            if (i21 != 0) {
                if ((458752 & i12) == 0) {
                    z10 = z6;
                    if (composerS.m(z10)) {
                        i22 = 131072;
                    } else {
                        i22 = 65536;
                    }
                    i14 |= i22;
                }
                i23 = i13 & 64;
                if (i23 != 0) {
                    i14 |= 1572864;
                } else if ((i12 & 3670016) == 0) {
                    if (composerS.p(i11)) {
                        i24 = 1048576;
                    } else {
                        i24 = 524288;
                    }
                    i14 |= i24;
                }
                if ((i14 & 2995931) == 599186) {
                    if (i28 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if (i15 != 0) {
                        textStyleA = TextStyle.Companion.a();
                    } else {
                        textStyleA = textStyle2;
                    }
                    if (i17 != 0) {
                        lVar2 = BasicTextKt$BasicText$1.INSTANCE;
                    }
                    if (i19 != 0) {
                        iA = TextOverflow.Companion.a();
                    }
                    if (i21 != 0) {
                        z10 = true;
                    }
                    if (i23 != 0) {
                        i25 = Integer.MAX_VALUE;
                    } else {
                        i25 = i11;
                    }
                    if (i25 <= 0) {
                        throw new IllegalArgumentException("maxLines should be greater than 0".toString());
                    }
                    selectionRegistrar = (SelectionRegistrar) composerS.x(SelectionRegistrarKt.a());
                    density = (Density) composerS.x(CompositionLocalsKt.e());
                    resolver = (FontFamily.Resolver) composerS.x(CompositionLocalsKt.g());
                    jLongValue = ((Number) RememberSaveableKt.b(new Object[]{text, selectionRegistrar}, c(selectionRegistrar), null, new BasicTextKt$BasicText$selectableId$1(selectionRegistrar), composerS, 72, 4)).longValue();
                    composerS.G(-492369756);
                    objH = composerS.H();
                    if (objH == Composer.Companion.a()) {
                        objH = new TextController(new TextState(new TextDelegate(new AnnotatedString(text, null, null, 6, null), textStyleA, i25, z10, iA, density, resolver, null, 128, null), jLongValue));
                        composerS.z(objH);
                    }
                    composerS.Q();
                    textController = (TextController) objH;
                    textStateK = textController.k();
                    if (!composerS.r()) {
                        textController.n(CoreTextKt.e(textStateK.i(), text, textStyleA, density, resolver, z10, iA, i25));
                    }
                    textStateK.m(lVar2);
                    textController.o(selectionRegistrar);
                    composerS.G(959239573);
                    if (selectionRegistrar != null) {
                        textStateK.p(((TextSelectionColors) composerS.x(TextSelectionColorsKt.b())).a());
                    }
                    composerS.Q();
                    Modifier modifierB111116 = modifier2.B(textController.j());
                    MeasurePolicy measurePolicyI111116 = textController.i();
                    composerS.G(544976794);
                    Density density111117 = (Density) composerS.x(CompositionLocalsKt.e());
                    LayoutDirection layoutDirection111116 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                    ViewConfiguration viewConfiguration111116 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                    Modifier modifierE111116 = ComposedModifierKt.e(composerS, modifierB111116);
                    ComposeUiNode.Companion companion111116 = ComposeUiNode.Companion;
                    aVarA = companion111116.a();
                    composerS.G(1405779621);
                    if (!(composerS.t() instanceof Applier)) {
                        ComposablesKt.c();
                    }
                    composerS.e();
                    if (composerS.r()) {
                        composerS.w(new BasicTextKt$BasicTextBpD7jsM$$inlined$Layout$1(aVarA));
                    } else {
                        composerS.c();
                    }
                    composerS.L();
                    Composer composerA111116 = Updater.a(composerS);
                    Updater.e(composerA111116, measurePolicyI111116, companion111116.d());
                    Updater.e(composerA111116, density111117, companion111116.b());
                    Updater.e(composerA111116, layoutDirection111116, companion111116.c());
                    Updater.e(composerA111116, viewConfiguration111116, companion111116.f());
                    Updater.e(composerA111116, modifierE111116, companion111116.e());
                    composerS.o();
                    composerS.d();
                    composerS.Q();
                    composerS.Q();
                    i26 = iA;
                    modifier3 = modifier2;
                    i27 = i25;
                    lVar3 = lVar2;
                    z11 = z10;
                    textStyle3 = textStyleA;
                } else {
                    if (i28 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if (i15 != 0) {
                        textStyleA = TextStyle.Companion.a();
                    } else {
                        textStyleA = textStyle2;
                    }
                    if (i17 != 0) {
                        lVar2 = BasicTextKt$BasicText$1.INSTANCE;
                    }
                    if (i19 != 0) {
                        iA = TextOverflow.Companion.a();
                    }
                    if (i21 != 0) {
                        z10 = true;
                    }
                    if (i23 != 0) {
                        i25 = Integer.MAX_VALUE;
                    } else {
                        i25 = i11;
                    }
                    if (i25 <= 0) {
                        throw new IllegalArgumentException("maxLines should be greater than 0".toString());
                    }
                    selectionRegistrar = (SelectionRegistrar) composerS.x(SelectionRegistrarKt.a());
                    density = (Density) composerS.x(CompositionLocalsKt.e());
                    resolver = (FontFamily.Resolver) composerS.x(CompositionLocalsKt.g());
                    jLongValue = ((Number) RememberSaveableKt.b(new Object[]{text, selectionRegistrar}, c(selectionRegistrar), null, new BasicTextKt$BasicText$selectableId$1(selectionRegistrar), composerS, 72, 4)).longValue();
                    composerS.G(-492369756);
                    objH = composerS.H();
                    if (objH == Composer.Companion.a()) {
                        objH = new TextController(new TextState(new TextDelegate(new AnnotatedString(text, null, null, 6, null), textStyleA, i25, z10, iA, density, resolver, null, 128, null), jLongValue));
                        composerS.z(objH);
                    }
                    composerS.Q();
                    textController = (TextController) objH;
                    textStateK = textController.k();
                    if (!composerS.r()) {
                        textController.n(CoreTextKt.e(textStateK.i(), text, textStyleA, density, resolver, z10, iA, i25));
                    }
                    textStateK.m(lVar2);
                    textController.o(selectionRegistrar);
                    composerS.G(959239573);
                    if (selectionRegistrar != null) {
                        textStateK.p(((TextSelectionColors) composerS.x(TextSelectionColorsKt.b())).a());
                    }
                    composerS.Q();
                    Modifier modifierB111117 = modifier2.B(textController.j());
                    MeasurePolicy measurePolicyI111117 = textController.i();
                    composerS.G(544976794);
                    Density density111118 = (Density) composerS.x(CompositionLocalsKt.e());
                    LayoutDirection layoutDirection111117 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                    ViewConfiguration viewConfiguration111117 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                    Modifier modifierE111117 = ComposedModifierKt.e(composerS, modifierB111117);
                    ComposeUiNode.Companion companion111117 = ComposeUiNode.Companion;
                    aVarA = companion111117.a();
                    composerS.G(1405779621);
                    if (!(composerS.t() instanceof Applier)) {
                        ComposablesKt.c();
                    }
                    composerS.e();
                    if (composerS.r()) {
                        composerS.w(new BasicTextKt$BasicTextBpD7jsM$$inlined$Layout$1(aVarA));
                    } else {
                        composerS.c();
                    }
                    composerS.L();
                    Composer composerA111117 = Updater.a(composerS);
                    Updater.e(composerA111117, measurePolicyI111117, companion111117.d());
                    Updater.e(composerA111117, density111118, companion111117.b());
                    Updater.e(composerA111117, layoutDirection111117, companion111117.c());
                    Updater.e(composerA111117, viewConfiguration111117, companion111117.f());
                    Updater.e(composerA111117, modifierE111117, companion111117.e());
                    composerS.o();
                    composerS.d();
                    composerS.Q();
                    composerS.Q();
                    i26 = iA;
                    modifier3 = modifier2;
                    i27 = i25;
                    lVar3 = lVar2;
                    z11 = z10;
                    textStyle3 = textStyleA;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new BasicTextKt$BasicText$3(text, modifier3, textStyle3, lVar3, i26, z11, i27, i12, i13));
            }
            i14 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            z10 = z6;
            i23 = i13 & 64;
            if (i23 != 0) {
                i14 |= 1572864;
            } else if ((i12 & 3670016) == 0) {
                if (composerS.p(i11)) {
                    i24 = 1048576;
                } else {
                    i24 = 524288;
                }
                i14 |= i24;
            }
            if ((i14 & 2995931) == 599186) {
                if (i28 != 0) {
                    modifier2 = Modifier.Companion;
                }
                if (i15 != 0) {
                    textStyleA = TextStyle.Companion.a();
                } else {
                    textStyleA = textStyle2;
                }
                if (i17 != 0) {
                    lVar2 = BasicTextKt$BasicText$1.INSTANCE;
                }
                if (i19 != 0) {
                    iA = TextOverflow.Companion.a();
                }
                if (i21 != 0) {
                    z10 = true;
                }
                if (i23 != 0) {
                    i25 = Integer.MAX_VALUE;
                } else {
                    i25 = i11;
                }
                if (i25 <= 0) {
                    throw new IllegalArgumentException("maxLines should be greater than 0".toString());
                }
                selectionRegistrar = (SelectionRegistrar) composerS.x(SelectionRegistrarKt.a());
                density = (Density) composerS.x(CompositionLocalsKt.e());
                resolver = (FontFamily.Resolver) composerS.x(CompositionLocalsKt.g());
                jLongValue = ((Number) RememberSaveableKt.b(new Object[]{text, selectionRegistrar}, c(selectionRegistrar), null, new BasicTextKt$BasicText$selectableId$1(selectionRegistrar), composerS, 72, 4)).longValue();
                composerS.G(-492369756);
                objH = composerS.H();
                if (objH == Composer.Companion.a()) {
                    objH = new TextController(new TextState(new TextDelegate(new AnnotatedString(text, null, null, 6, null), textStyleA, i25, z10, iA, density, resolver, null, 128, null), jLongValue));
                    composerS.z(objH);
                }
                composerS.Q();
                textController = (TextController) objH;
                textStateK = textController.k();
                if (!composerS.r()) {
                    textController.n(CoreTextKt.e(textStateK.i(), text, textStyleA, density, resolver, z10, iA, i25));
                }
                textStateK.m(lVar2);
                textController.o(selectionRegistrar);
                composerS.G(959239573);
                if (selectionRegistrar != null) {
                    textStateK.p(((TextSelectionColors) composerS.x(TextSelectionColorsKt.b())).a());
                }
                composerS.Q();
                Modifier modifierB111118 = modifier2.B(textController.j());
                MeasurePolicy measurePolicyI111118 = textController.i();
                composerS.G(544976794);
                Density density111119 = (Density) composerS.x(CompositionLocalsKt.e());
                LayoutDirection layoutDirection111118 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                ViewConfiguration viewConfiguration111118 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                Modifier modifierE111118 = ComposedModifierKt.e(composerS, modifierB111118);
                ComposeUiNode.Companion companion111118 = ComposeUiNode.Companion;
                aVarA = companion111118.a();
                composerS.G(1405779621);
                if (!(composerS.t() instanceof Applier)) {
                    ComposablesKt.c();
                }
                composerS.e();
                if (composerS.r()) {
                    composerS.w(new BasicTextKt$BasicTextBpD7jsM$$inlined$Layout$1(aVarA));
                } else {
                    composerS.c();
                }
                composerS.L();
                Composer composerA111118 = Updater.a(composerS);
                Updater.e(composerA111118, measurePolicyI111118, companion111118.d());
                Updater.e(composerA111118, density111119, companion111118.b());
                Updater.e(composerA111118, layoutDirection111118, companion111118.c());
                Updater.e(composerA111118, viewConfiguration111118, companion111118.f());
                Updater.e(composerA111118, modifierE111118, companion111118.e());
                composerS.o();
                composerS.d();
                composerS.Q();
                composerS.Q();
                i26 = iA;
                modifier3 = modifier2;
                i27 = i25;
                lVar3 = lVar2;
                z11 = z10;
                textStyle3 = textStyleA;
            } else {
                if (i28 != 0) {
                    modifier2 = Modifier.Companion;
                }
                if (i15 != 0) {
                    textStyleA = TextStyle.Companion.a();
                } else {
                    textStyleA = textStyle2;
                }
                if (i17 != 0) {
                    lVar2 = BasicTextKt$BasicText$1.INSTANCE;
                }
                if (i19 != 0) {
                    iA = TextOverflow.Companion.a();
                }
                if (i21 != 0) {
                    z10 = true;
                }
                if (i23 != 0) {
                    i25 = Integer.MAX_VALUE;
                } else {
                    i25 = i11;
                }
                if (i25 <= 0) {
                    throw new IllegalArgumentException("maxLines should be greater than 0".toString());
                }
                selectionRegistrar = (SelectionRegistrar) composerS.x(SelectionRegistrarKt.a());
                density = (Density) composerS.x(CompositionLocalsKt.e());
                resolver = (FontFamily.Resolver) composerS.x(CompositionLocalsKt.g());
                jLongValue = ((Number) RememberSaveableKt.b(new Object[]{text, selectionRegistrar}, c(selectionRegistrar), null, new BasicTextKt$BasicText$selectableId$1(selectionRegistrar), composerS, 72, 4)).longValue();
                composerS.G(-492369756);
                objH = composerS.H();
                if (objH == Composer.Companion.a()) {
                    objH = new TextController(new TextState(new TextDelegate(new AnnotatedString(text, null, null, 6, null), textStyleA, i25, z10, iA, density, resolver, null, 128, null), jLongValue));
                    composerS.z(objH);
                }
                composerS.Q();
                textController = (TextController) objH;
                textStateK = textController.k();
                if (!composerS.r()) {
                    textController.n(CoreTextKt.e(textStateK.i(), text, textStyleA, density, resolver, z10, iA, i25));
                }
                textStateK.m(lVar2);
                textController.o(selectionRegistrar);
                composerS.G(959239573);
                if (selectionRegistrar != null) {
                    textStateK.p(((TextSelectionColors) composerS.x(TextSelectionColorsKt.b())).a());
                }
                composerS.Q();
                Modifier modifierB111119 = modifier2.B(textController.j());
                MeasurePolicy measurePolicyI111119 = textController.i();
                composerS.G(544976794);
                Density density1111110 = (Density) composerS.x(CompositionLocalsKt.e());
                LayoutDirection layoutDirection111119 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                ViewConfiguration viewConfiguration111119 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                Modifier modifierE111119 = ComposedModifierKt.e(composerS, modifierB111119);
                ComposeUiNode.Companion companion111119 = ComposeUiNode.Companion;
                aVarA = companion111119.a();
                composerS.G(1405779621);
                if (!(composerS.t() instanceof Applier)) {
                    ComposablesKt.c();
                }
                composerS.e();
                if (composerS.r()) {
                    composerS.w(new BasicTextKt$BasicTextBpD7jsM$$inlined$Layout$1(aVarA));
                } else {
                    composerS.c();
                }
                composerS.L();
                Composer composerA111119 = Updater.a(composerS);
                Updater.e(composerA111119, measurePolicyI111119, companion111119.d());
                Updater.e(composerA111119, density1111110, companion111119.b());
                Updater.e(composerA111119, layoutDirection111119, companion111119.c());
                Updater.e(composerA111119, viewConfiguration111119, companion111119.f());
                Updater.e(composerA111119, modifierE111119, companion111119.e());
                composerS.o();
                composerS.d();
                composerS.Q();
                composerS.Q();
                i26 = iA;
                modifier3 = modifier2;
                i27 = i25;
                lVar3 = lVar2;
                z11 = z10;
                textStyle3 = textStyleA;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new BasicTextKt$BasicText$3(text, modifier3, textStyle3, lVar3, i26, z11, i27, i12, i13));
        }
        i14 |= CpioConstants.C_ISBLK;
        iA = i10;
        i21 = i13 & 32;
        if (i21 != 0) {
            if ((458752 & i12) == 0) {
                z10 = z6;
                if (composerS.m(z10)) {
                    i22 = 131072;
                } else {
                    i22 = 65536;
                }
                i14 |= i22;
            }
            i23 = i13 & 64;
            if (i23 != 0) {
                i14 |= 1572864;
            } else if ((i12 & 3670016) == 0) {
                if (composerS.p(i11)) {
                    i24 = 1048576;
                } else {
                    i24 = 524288;
                }
                i14 |= i24;
            }
            if ((i14 & 2995931) == 599186) {
                if (i28 != 0) {
                    modifier2 = Modifier.Companion;
                }
                if (i15 != 0) {
                    textStyleA = TextStyle.Companion.a();
                } else {
                    textStyleA = textStyle2;
                }
                if (i17 != 0) {
                    lVar2 = BasicTextKt$BasicText$1.INSTANCE;
                }
                if (i19 != 0) {
                    iA = TextOverflow.Companion.a();
                }
                if (i21 != 0) {
                    z10 = true;
                }
                if (i23 != 0) {
                    i25 = Integer.MAX_VALUE;
                } else {
                    i25 = i11;
                }
                if (i25 <= 0) {
                    throw new IllegalArgumentException("maxLines should be greater than 0".toString());
                }
                selectionRegistrar = (SelectionRegistrar) composerS.x(SelectionRegistrarKt.a());
                density = (Density) composerS.x(CompositionLocalsKt.e());
                resolver = (FontFamily.Resolver) composerS.x(CompositionLocalsKt.g());
                jLongValue = ((Number) RememberSaveableKt.b(new Object[]{text, selectionRegistrar}, c(selectionRegistrar), null, new BasicTextKt$BasicText$selectableId$1(selectionRegistrar), composerS, 72, 4)).longValue();
                composerS.G(-492369756);
                objH = composerS.H();
                if (objH == Composer.Companion.a()) {
                    objH = new TextController(new TextState(new TextDelegate(new AnnotatedString(text, null, null, 6, null), textStyleA, i25, z10, iA, density, resolver, null, 128, null), jLongValue));
                    composerS.z(objH);
                }
                composerS.Q();
                textController = (TextController) objH;
                textStateK = textController.k();
                if (!composerS.r()) {
                    textController.n(CoreTextKt.e(textStateK.i(), text, textStyleA, density, resolver, z10, iA, i25));
                }
                textStateK.m(lVar2);
                textController.o(selectionRegistrar);
                composerS.G(959239573);
                if (selectionRegistrar != null) {
                    textStateK.p(((TextSelectionColors) composerS.x(TextSelectionColorsKt.b())).a());
                }
                composerS.Q();
                Modifier modifierB1111110 = modifier2.B(textController.j());
                MeasurePolicy measurePolicyI1111110 = textController.i();
                composerS.G(544976794);
                Density density1111111 = (Density) composerS.x(CompositionLocalsKt.e());
                LayoutDirection layoutDirection1111110 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                ViewConfiguration viewConfiguration1111110 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                Modifier modifierE1111110 = ComposedModifierKt.e(composerS, modifierB1111110);
                ComposeUiNode.Companion companion1111110 = ComposeUiNode.Companion;
                aVarA = companion1111110.a();
                composerS.G(1405779621);
                if (!(composerS.t() instanceof Applier)) {
                    ComposablesKt.c();
                }
                composerS.e();
                if (composerS.r()) {
                    composerS.w(new BasicTextKt$BasicTextBpD7jsM$$inlined$Layout$1(aVarA));
                } else {
                    composerS.c();
                }
                composerS.L();
                Composer composerA1111110 = Updater.a(composerS);
                Updater.e(composerA1111110, measurePolicyI1111110, companion1111110.d());
                Updater.e(composerA1111110, density1111111, companion1111110.b());
                Updater.e(composerA1111110, layoutDirection1111110, companion1111110.c());
                Updater.e(composerA1111110, viewConfiguration1111110, companion1111110.f());
                Updater.e(composerA1111110, modifierE1111110, companion1111110.e());
                composerS.o();
                composerS.d();
                composerS.Q();
                composerS.Q();
                i26 = iA;
                modifier3 = modifier2;
                i27 = i25;
                lVar3 = lVar2;
                z11 = z10;
                textStyle3 = textStyleA;
            } else {
                if (i28 != 0) {
                    modifier2 = Modifier.Companion;
                }
                if (i15 != 0) {
                    textStyleA = TextStyle.Companion.a();
                } else {
                    textStyleA = textStyle2;
                }
                if (i17 != 0) {
                    lVar2 = BasicTextKt$BasicText$1.INSTANCE;
                }
                if (i19 != 0) {
                    iA = TextOverflow.Companion.a();
                }
                if (i21 != 0) {
                    z10 = true;
                }
                if (i23 != 0) {
                    i25 = Integer.MAX_VALUE;
                } else {
                    i25 = i11;
                }
                if (i25 <= 0) {
                    throw new IllegalArgumentException("maxLines should be greater than 0".toString());
                }
                selectionRegistrar = (SelectionRegistrar) composerS.x(SelectionRegistrarKt.a());
                density = (Density) composerS.x(CompositionLocalsKt.e());
                resolver = (FontFamily.Resolver) composerS.x(CompositionLocalsKt.g());
                jLongValue = ((Number) RememberSaveableKt.b(new Object[]{text, selectionRegistrar}, c(selectionRegistrar), null, new BasicTextKt$BasicText$selectableId$1(selectionRegistrar), composerS, 72, 4)).longValue();
                composerS.G(-492369756);
                objH = composerS.H();
                if (objH == Composer.Companion.a()) {
                    objH = new TextController(new TextState(new TextDelegate(new AnnotatedString(text, null, null, 6, null), textStyleA, i25, z10, iA, density, resolver, null, 128, null), jLongValue));
                    composerS.z(objH);
                }
                composerS.Q();
                textController = (TextController) objH;
                textStateK = textController.k();
                if (!composerS.r()) {
                    textController.n(CoreTextKt.e(textStateK.i(), text, textStyleA, density, resolver, z10, iA, i25));
                }
                textStateK.m(lVar2);
                textController.o(selectionRegistrar);
                composerS.G(959239573);
                if (selectionRegistrar != null) {
                    textStateK.p(((TextSelectionColors) composerS.x(TextSelectionColorsKt.b())).a());
                }
                composerS.Q();
                Modifier modifierB1111111 = modifier2.B(textController.j());
                MeasurePolicy measurePolicyI1111111 = textController.i();
                composerS.G(544976794);
                Density density1111112 = (Density) composerS.x(CompositionLocalsKt.e());
                LayoutDirection layoutDirection1111111 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                ViewConfiguration viewConfiguration1111111 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                Modifier modifierE1111111 = ComposedModifierKt.e(composerS, modifierB1111111);
                ComposeUiNode.Companion companion1111111 = ComposeUiNode.Companion;
                aVarA = companion1111111.a();
                composerS.G(1405779621);
                if (!(composerS.t() instanceof Applier)) {
                    ComposablesKt.c();
                }
                composerS.e();
                if (composerS.r()) {
                    composerS.w(new BasicTextKt$BasicTextBpD7jsM$$inlined$Layout$1(aVarA));
                } else {
                    composerS.c();
                }
                composerS.L();
                Composer composerA1111111 = Updater.a(composerS);
                Updater.e(composerA1111111, measurePolicyI1111111, companion1111111.d());
                Updater.e(composerA1111111, density1111112, companion1111111.b());
                Updater.e(composerA1111111, layoutDirection1111111, companion1111111.c());
                Updater.e(composerA1111111, viewConfiguration1111111, companion1111111.f());
                Updater.e(composerA1111111, modifierE1111111, companion1111111.e());
                composerS.o();
                composerS.d();
                composerS.Q();
                composerS.Q();
                i26 = iA;
                modifier3 = modifier2;
                i27 = i25;
                lVar3 = lVar2;
                z11 = z10;
                textStyle3 = textStyleA;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new BasicTextKt$BasicText$3(text, modifier3, textStyle3, lVar3, i26, z11, i27, i12, i13));
        }
        i14 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
        z10 = z6;
        i23 = i13 & 64;
        if (i23 != 0) {
            i14 |= 1572864;
        } else if ((i12 & 3670016) == 0) {
            if (composerS.p(i11)) {
                i24 = 1048576;
            } else {
                i24 = 524288;
            }
            i14 |= i24;
        }
        if ((i14 & 2995931) == 599186) {
            if (i28 != 0) {
                modifier2 = Modifier.Companion;
            }
            if (i15 != 0) {
                textStyleA = TextStyle.Companion.a();
            } else {
                textStyleA = textStyle2;
            }
            if (i17 != 0) {
                lVar2 = BasicTextKt$BasicText$1.INSTANCE;
            }
            if (i19 != 0) {
                iA = TextOverflow.Companion.a();
            }
            if (i21 != 0) {
                z10 = true;
            }
            if (i23 != 0) {
                i25 = Integer.MAX_VALUE;
            } else {
                i25 = i11;
            }
            if (i25 <= 0) {
                throw new IllegalArgumentException("maxLines should be greater than 0".toString());
            }
            selectionRegistrar = (SelectionRegistrar) composerS.x(SelectionRegistrarKt.a());
            density = (Density) composerS.x(CompositionLocalsKt.e());
            resolver = (FontFamily.Resolver) composerS.x(CompositionLocalsKt.g());
            jLongValue = ((Number) RememberSaveableKt.b(new Object[]{text, selectionRegistrar}, c(selectionRegistrar), null, new BasicTextKt$BasicText$selectableId$1(selectionRegistrar), composerS, 72, 4)).longValue();
            composerS.G(-492369756);
            objH = composerS.H();
            if (objH == Composer.Companion.a()) {
                objH = new TextController(new TextState(new TextDelegate(new AnnotatedString(text, null, null, 6, null), textStyleA, i25, z10, iA, density, resolver, null, 128, null), jLongValue));
                composerS.z(objH);
            }
            composerS.Q();
            textController = (TextController) objH;
            textStateK = textController.k();
            if (!composerS.r()) {
                textController.n(CoreTextKt.e(textStateK.i(), text, textStyleA, density, resolver, z10, iA, i25));
            }
            textStateK.m(lVar2);
            textController.o(selectionRegistrar);
            composerS.G(959239573);
            if (selectionRegistrar != null) {
                textStateK.p(((TextSelectionColors) composerS.x(TextSelectionColorsKt.b())).a());
            }
            composerS.Q();
            Modifier modifierB1111112 = modifier2.B(textController.j());
            MeasurePolicy measurePolicyI1111112 = textController.i();
            composerS.G(544976794);
            Density density1111113 = (Density) composerS.x(CompositionLocalsKt.e());
            LayoutDirection layoutDirection1111112 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
            ViewConfiguration viewConfiguration1111112 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
            Modifier modifierE1111112 = ComposedModifierKt.e(composerS, modifierB1111112);
            ComposeUiNode.Companion companion1111112 = ComposeUiNode.Companion;
            aVarA = companion1111112.a();
            composerS.G(1405779621);
            if (!(composerS.t() instanceof Applier)) {
                ComposablesKt.c();
            }
            composerS.e();
            if (composerS.r()) {
                composerS.w(new BasicTextKt$BasicTextBpD7jsM$$inlined$Layout$1(aVarA));
            } else {
                composerS.c();
            }
            composerS.L();
            Composer composerA1111112 = Updater.a(composerS);
            Updater.e(composerA1111112, measurePolicyI1111112, companion1111112.d());
            Updater.e(composerA1111112, density1111113, companion1111112.b());
            Updater.e(composerA1111112, layoutDirection1111112, companion1111112.c());
            Updater.e(composerA1111112, viewConfiguration1111112, companion1111112.f());
            Updater.e(composerA1111112, modifierE1111112, companion1111112.e());
            composerS.o();
            composerS.d();
            composerS.Q();
            composerS.Q();
            i26 = iA;
            modifier3 = modifier2;
            i27 = i25;
            lVar3 = lVar2;
            z11 = z10;
            textStyle3 = textStyleA;
        } else {
            if (i28 != 0) {
                modifier2 = Modifier.Companion;
            }
            if (i15 != 0) {
                textStyleA = TextStyle.Companion.a();
            } else {
                textStyleA = textStyle2;
            }
            if (i17 != 0) {
                lVar2 = BasicTextKt$BasicText$1.INSTANCE;
            }
            if (i19 != 0) {
                iA = TextOverflow.Companion.a();
            }
            if (i21 != 0) {
                z10 = true;
            }
            if (i23 != 0) {
                i25 = Integer.MAX_VALUE;
            } else {
                i25 = i11;
            }
            if (i25 <= 0) {
                throw new IllegalArgumentException("maxLines should be greater than 0".toString());
            }
            selectionRegistrar = (SelectionRegistrar) composerS.x(SelectionRegistrarKt.a());
            density = (Density) composerS.x(CompositionLocalsKt.e());
            resolver = (FontFamily.Resolver) composerS.x(CompositionLocalsKt.g());
            jLongValue = ((Number) RememberSaveableKt.b(new Object[]{text, selectionRegistrar}, c(selectionRegistrar), null, new BasicTextKt$BasicText$selectableId$1(selectionRegistrar), composerS, 72, 4)).longValue();
            composerS.G(-492369756);
            objH = composerS.H();
            if (objH == Composer.Companion.a()) {
                objH = new TextController(new TextState(new TextDelegate(new AnnotatedString(text, null, null, 6, null), textStyleA, i25, z10, iA, density, resolver, null, 128, null), jLongValue));
                composerS.z(objH);
            }
            composerS.Q();
            textController = (TextController) objH;
            textStateK = textController.k();
            if (!composerS.r()) {
                textController.n(CoreTextKt.e(textStateK.i(), text, textStyleA, density, resolver, z10, iA, i25));
            }
            textStateK.m(lVar2);
            textController.o(selectionRegistrar);
            composerS.G(959239573);
            if (selectionRegistrar != null) {
                textStateK.p(((TextSelectionColors) composerS.x(TextSelectionColorsKt.b())).a());
            }
            composerS.Q();
            Modifier modifierB1111113 = modifier2.B(textController.j());
            MeasurePolicy measurePolicyI1111113 = textController.i();
            composerS.G(544976794);
            Density density1111114 = (Density) composerS.x(CompositionLocalsKt.e());
            LayoutDirection layoutDirection1111113 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
            ViewConfiguration viewConfiguration1111113 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
            Modifier modifierE1111113 = ComposedModifierKt.e(composerS, modifierB1111113);
            ComposeUiNode.Companion companion1111113 = ComposeUiNode.Companion;
            aVarA = companion1111113.a();
            composerS.G(1405779621);
            if (!(composerS.t() instanceof Applier)) {
                ComposablesKt.c();
            }
            composerS.e();
            if (composerS.r()) {
                composerS.w(new BasicTextKt$BasicTextBpD7jsM$$inlined$Layout$1(aVarA));
            } else {
                composerS.c();
            }
            composerS.L();
            Composer composerA1111113 = Updater.a(composerS);
            Updater.e(composerA1111113, measurePolicyI1111113, companion1111113.d());
            Updater.e(composerA1111113, density1111114, companion1111113.b());
            Updater.e(composerA1111113, layoutDirection1111113, companion1111113.c());
            Updater.e(composerA1111113, viewConfiguration1111113, companion1111113.f());
            Updater.e(composerA1111113, modifierE1111113, companion1111113.e());
            composerS.o();
            composerS.d();
            composerS.Q();
            composerS.Q();
            i26 = iA;
            modifier3 = modifier2;
            i27 = i25;
            lVar3 = lVar2;
            z11 = z10;
            textStyle3 = textStyleA;
        }
        scopeUpdateScopeU = composerS.u();
        if (scopeUpdateScopeU == null) {
            return;
        }
        scopeUpdateScopeU.a(new BasicTextKt$BasicText$3(text, modifier3, textStyle3, lVar3, i26, z11, i27, i12, i13));
    }

    private static final Saver<Long, Long> c(SelectionRegistrar selectionRegistrar) {
        return SaverKt.a(new BasicTextKt$selectionIdSaver$1(selectionRegistrar), BasicTextKt$selectionIdSaver$2.INSTANCE);
    }
}
