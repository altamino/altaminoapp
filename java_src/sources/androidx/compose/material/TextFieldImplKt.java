package androidx.compose.material;

import androidx.compose.foundation.interaction.FocusInteractionKt;
import androidx.compose.foundation.interaction.InteractionSource;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposableInferredTarget;
import androidx.compose.runtime.ComposableOpenTarget;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.internal.ComposableLambda;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.layout.IntrinsicMeasurable;
import androidx.compose.ui.layout.LayoutIdParentData;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.input.TransformedText;
import androidx.compose.ui.text.input.VisualTransformation;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.Dp;
import androidx.profileinstaller.ProfileVerifier;
import e8.p;
import kotlin.jvm.internal.t;
import org.apache.commons.compress.archivers.cpio.CpioConstants;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes8.dex */
public final class TextFieldImplKt {
    public static final int AnimationDuration = 150;

    @NotNull
    private static final Modifier IconDefaultSizeModifier;

    @NotNull
    public static final String LabelId = "Label";

    @NotNull
    public static final String LeadingId = "Leading";
    private static final int PlaceholderAnimationDelayOrDuration = 67;
    private static final int PlaceholderAnimationDuration = 83;

    @NotNull
    public static final String PlaceholderId = "Hint";

    @NotNull
    public static final String TextFieldId = "TextField";

    @NotNull
    public static final String TrailingId = "Trailing";
    private static final long ZeroConstraints = ConstraintsKt.a(0, 0, 0, 0);
    private static final float TextFieldPadding = Dp.f(16);
    private static final float HorizontalIconPadding = Dp.f(12);

    static {
        float f = 48;
        IconDefaultSizeModifier = SizeKt.g(Modifier.Companion, Dp.f(f), Dp.f(f));
    }

    @Composable
    @ComposableInferredTarget
    public static final void a(@NotNull TextFieldType type, @NotNull String value, @NotNull p<? super Composer, ? super Integer, l0> innerTextField, @NotNull VisualTransformation visualTransformation, @Nullable p<? super Composer, ? super Integer, l0> pVar, @Nullable p<? super Composer, ? super Integer, l0> pVar2, @Nullable p<? super Composer, ? super Integer, l0> pVar3, @Nullable p<? super Composer, ? super Integer, l0> pVar4, boolean z6, boolean z10, boolean z11, @NotNull InteractionSource interactionSource, @NotNull PaddingValues contentPadding, @NotNull TextFieldColors colors, @Nullable p<? super Composer, ? super Integer, l0> pVar5, @Nullable Composer composer, int i10, int i11, int i12) {
        int i13;
        int i14;
        InputPhase inputPhase;
        Composer composer2;
        p<? super Composer, ? super Integer, l0> pVar6;
        p<? super Composer, ? super Integer, l0> pVar7;
        p<? super Composer, ? super Integer, l0> pVar8;
        boolean z12;
        boolean z13;
        boolean z14;
        p<? super Composer, ? super Integer, l0> pVar9;
        t.j(type, "type");
        t.j(value, "value");
        t.j(innerTextField, "innerTextField");
        t.j(visualTransformation, "visualTransformation");
        t.j(interactionSource, "interactionSource");
        t.j(contentPadding, "contentPadding");
        t.j(colors, "colors");
        Composer composerS = composer.s(-712568069);
        if ((i12 & 1) != 0) {
            i13 = i10 | 6;
        } else if ((i10 & 14) == 0) {
            i13 = (composerS.k(type) ? 4 : 2) | i10;
        } else {
            i13 = i10;
        }
        if ((i12 & 2) != 0) {
            i13 |= 48;
        } else if ((i10 & 112) == 0) {
            i13 |= composerS.k(value) ? 32 : 16;
        }
        if ((i12 & 4) != 0) {
            i13 |= 384;
        } else if ((i10 & 896) == 0) {
            i13 |= composerS.k(innerTextField) ? 256 : 128;
        }
        if ((i12 & 8) != 0) {
            i13 |= 3072;
        } else if ((i10 & 7168) == 0) {
            i13 |= composerS.k(visualTransformation) ? 2048 : 1024;
        }
        if ((i12 & 16) != 0) {
            i13 |= CpioConstants.C_ISBLK;
        } else if ((57344 & i10) == 0) {
            i13 |= composerS.k(pVar) ? 16384 : 8192;
        }
        int i15 = i12 & 32;
        if (i15 != 0) {
            i13 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
        } else if ((i10 & 458752) == 0) {
            i13 |= composerS.k(pVar2) ? 131072 : 65536;
        }
        int i16 = i12 & 64;
        if (i16 != 0) {
            i13 |= 1572864;
        } else if ((i10 & 3670016) == 0) {
            i13 |= composerS.k(pVar3) ? 1048576 : 524288;
        }
        int i17 = i12 & 128;
        if (i17 != 0) {
            i13 |= 12582912;
        } else if ((i10 & 29360128) == 0) {
            i13 |= composerS.k(pVar4) ? 8388608 : 4194304;
        }
        int i18 = i12 & 256;
        if (i18 != 0) {
            i13 |= 100663296;
        } else if ((i10 & 234881024) == 0) {
            i13 |= composerS.m(z6) ? 67108864 : 33554432;
        }
        int i19 = i12 & 512;
        if (i19 != 0) {
            i13 |= 805306368;
        } else if ((i10 & 1879048192) == 0) {
            i13 |= composerS.m(z10) ? 536870912 : 268435456;
        }
        int i20 = i13;
        int i21 = i12 & 1024;
        if (i21 != 0) {
            i14 = i11 | 6;
        } else if ((i11 & 14) == 0) {
            i14 = i11 | (composerS.m(z11) ? 4 : 2);
        } else {
            i14 = i11;
        }
        if ((i12 & 2048) != 0) {
            i14 |= 48;
        } else if ((i11 & 112) == 0) {
            i14 |= composerS.k(interactionSource) ? 32 : 16;
        }
        int i22 = i14;
        if ((i12 & 4096) != 0) {
            i22 |= 384;
        } else if ((i11 & 896) == 0) {
            i22 |= composerS.k(contentPadding) ? 256 : 128;
        }
        if ((i12 & 8192) != 0) {
            i22 |= 3072;
        } else if ((i11 & 7168) == 0) {
            i22 |= composerS.k(colors) ? 2048 : 1024;
        }
        int i23 = i12 & 16384;
        if (i23 != 0) {
            i22 |= CpioConstants.C_ISBLK;
        } else if ((i11 & 57344) == 0) {
            i22 |= composerS.k(pVar5) ? 16384 : 8192;
        }
        if ((i20 & 1533916891) == 306783378 && (46811 & i22) == 9362 && composerS.b()) {
            composerS.g();
            pVar6 = pVar2;
            pVar7 = pVar3;
            pVar8 = pVar4;
            z12 = z6;
            z13 = z10;
            z14 = z11;
            pVar9 = pVar5;
            composer2 = composerS;
        } else {
            p<? super Composer, ? super Integer, l0> pVar10 = i15 != 0 ? null : pVar2;
            p<? super Composer, ? super Integer, l0> pVar11 = i16 != 0 ? null : pVar3;
            p<? super Composer, ? super Integer, l0> pVar12 = i17 != 0 ? null : pVar4;
            boolean z15 = i18 != 0 ? false : z6;
            boolean z16 = i19 != 0 ? true : z10;
            boolean z17 = i21 != 0 ? false : z11;
            p<? super Composer, ? super Integer, l0> pVar13 = i23 != 0 ? null : pVar5;
            composerS.G(511388516);
            boolean zK = composerS.k(value) | composerS.k(visualTransformation);
            Object objH = composerS.H();
            if (zK || objH == Composer.Companion.a()) {
                objH = visualTransformation.a(new AnnotatedString(value, null, null, 6, null));
                composerS.z(objH);
            }
            composerS.Q();
            String strG = ((TransformedText) objH).b().g();
            if (FocusInteractionKt.a(interactionSource, composerS, (i22 >> 3) & 14).getValue().booleanValue()) {
                inputPhase = InputPhase.Focused;
            } else {
                inputPhase = strG.length() == 0 ? InputPhase.UnfocusedEmpty : InputPhase.UnfocusedNotEmpty;
            }
            InputPhase inputPhase2 = inputPhase;
            TextFieldImplKt$CommonDecorationBox$labelColor$1 textFieldImplKt$CommonDecorationBox$labelColor$1 = new TextFieldImplKt$CommonDecorationBox$labelColor$1(colors, z16, z17, interactionSource, i20, i22);
            MaterialTheme materialTheme = MaterialTheme.INSTANCE;
            Typography typographyC = materialTheme.c(composerS, 6);
            TextStyle textStyleG = typographyC.g();
            TextStyle textStyleD = typographyC.d();
            long jG = textStyleG.g();
            Color.Companion companion = Color.Companion;
            boolean z18 = (Color.n(jG, companion.f()) && !Color.n(textStyleD.g(), companion.f())) || (!Color.n(textStyleG.g(), companion.f()) && Color.n(textStyleD.g(), companion.f()));
            TextFieldTransitionScope textFieldTransitionScope = TextFieldTransitionScope.INSTANCE;
            composerS.G(2129141006);
            long jG2 = materialTheme.c(composerS, 6).d().g();
            if (z18 && jG2 == companion.f()) {
                jG2 = textFieldImplKt$CommonDecorationBox$labelColor$1.invoke(inputPhase2, composerS, 0).v();
            }
            long j6 = jG2;
            composerS.Q();
            long jG3 = materialTheme.c(composerS, 6).g().g();
            if (z18 && jG3 == companion.f()) {
                jG3 = textFieldImplKt$CommonDecorationBox$labelColor$1.invoke(inputPhase2, composerS, 0).v();
            }
            composer2 = composerS;
            textFieldTransitionScope.a(inputPhase2, j6, jG3, textFieldImplKt$CommonDecorationBox$labelColor$1, pVar != null, ComposableLambdaKt.b(composer2, 341865432, true, new TextFieldImplKt$CommonDecorationBox$3(pVar, pVar10, strG, z17, i22, colors, z16, interactionSource, i20, pVar11, pVar12, type, innerTextField, z15, contentPadding, z18, pVar13)), composer2, 1769472);
            pVar6 = pVar10;
            pVar7 = pVar11;
            pVar8 = pVar12;
            z12 = z15;
            z13 = z16;
            z14 = z17;
            pVar9 = pVar13;
        }
        ScopeUpdateScope scopeUpdateScopeU = composer2.u();
        if (scopeUpdateScopeU == null) {
            return;
        }
        scopeUpdateScopeU.a(new TextFieldImplKt$CommonDecorationBox$4(type, value, innerTextField, visualTransformation, pVar, pVar6, pVar7, pVar8, z12, z13, z14, interactionSource, contentPadding, colors, pVar9, i10, i11, i12));
    }

    public static final float c() {
        return HorizontalIconPadding;
    }

    @NotNull
    public static final Modifier d() {
        return IconDefaultSizeModifier;
    }

    public static final float f() {
        return TextFieldPadding;
    }

    public static final long g() {
        return ZeroConstraints;
    }

    /* JADX WARN: Code duplicated, block: B:26:0x004a  */
    /* JADX WARN: Code duplicated, block: B:28:0x004f  */
    /* JADX WARN: Code duplicated, block: B:30:0x0053  */
    /* JADX WARN: Code duplicated, block: B:32:0x005b  */
    /* JADX WARN: Code duplicated, block: B:33:0x005e  */
    /* JADX WARN: Code duplicated, block: B:37:0x0065  */
    /* JADX WARN: Code duplicated, block: B:39:0x0069  */
    /* JADX WARN: Code duplicated, block: B:41:0x006d  */
    /* JADX WARN: Code duplicated, block: B:43:0x0073  */
    /* JADX WARN: Code duplicated, block: B:44:0x0076  */
    /* JADX WARN: Code duplicated, block: B:48:0x0080  */
    /* JADX WARN: Code duplicated, block: B:52:0x008c  */
    /* JADX WARN: Code duplicated, block: B:54:0x008f  */
    /* JADX WARN: Code duplicated, block: B:55:0x0091  */
    /* JADX WARN: Code duplicated, block: B:57:0x0094  */
    /* JADX WARN: Code duplicated, block: B:58:0x0096  */
    /* JADX WARN: Code duplicated, block: B:61:0x00ac  */
    /* JADX WARN: Code duplicated, block: B:63:0x00bf  */
    /* JADX WARN: Code duplicated, block: B:68:0x00d7  */
    /* JADX WARN: Code duplicated, block: B:70:? A[RETURN, SYNTHETIC] */
    @Composable
    @ComposableOpenTarget
    public static final void b(long j6, @Nullable TextStyle textStyle, @Nullable Float f, @NotNull p<? super Composer, ? super Integer, l0> content, @Nullable Composer composer, int i10, int i11) {
        int i12;
        TextStyle textStyle2;
        int i13;
        Float f6;
        int i14;
        int i15;
        int i16;
        TextStyle textStyle3;
        Float f7;
        ComposableLambda composableLambdaB;
        TextStyle textStyle4;
        ScopeUpdateScope scopeUpdateScopeU;
        t.j(content, "content");
        Composer composerS = composer.s(-399493340);
        if ((i11 & 1) != 0) {
            i12 = i10 | 6;
        } else if ((i10 & 14) == 0) {
            i12 = (composerS.q(j6) ? 4 : 2) | i10;
        } else {
            i12 = i10;
        }
        int i17 = i11 & 2;
        if (i17 == 0) {
            if ((i10 & 112) == 0) {
                textStyle2 = textStyle;
                i12 |= composerS.k(textStyle2) ? 32 : 16;
            }
            i13 = i11 & 4;
            if (i13 != 0) {
                if ((i10 & 896) == 0) {
                    f6 = f;
                    if (composerS.k(f6)) {
                        i14 = 256;
                    } else {
                        i14 = 128;
                    }
                    i12 |= i14;
                }
                if ((i11 & 8) != 0) {
                    i12 |= 3072;
                } else if ((i10 & 7168) == 0) {
                    if (composerS.k(content)) {
                        i15 = 2048;
                    } else {
                        i15 = 1024;
                    }
                    i12 |= i15;
                }
                i16 = i12;
                if ((i16 & 5851) == 1170 || !composerS.b()) {
                    if (i17 != 0) {
                        textStyle3 = null;
                    } else {
                        textStyle3 = textStyle2;
                    }
                    if (i13 != 0) {
                        f7 = null;
                    } else {
                        f7 = f6;
                    }
                    composableLambdaB = ComposableLambdaKt.b(composerS, 494684590, true, new TextFieldImplKt$Decoration$colorAndEmphasis$1(j6, f7, content, i16));
                    if (textStyle3 != null) {
                        composerS.G(-2009952864);
                        TextKt.a(textStyle3, composableLambdaB, composerS, ((i16 >> 3) & 14) | 48);
                    } else {
                        composerS.G(-2009952812);
                        composableLambdaB.invoke(composerS, 6);
                    }
                    composerS.Q();
                    textStyle4 = textStyle3;
                    f6 = f7;
                } else {
                    composerS.g();
                    textStyle4 = textStyle2;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new TextFieldImplKt$Decoration$1(j6, textStyle4, f6, content, i10, i11));
            }
            i12 |= 384;
            f6 = f;
            if ((i11 & 8) != 0) {
                i12 |= 3072;
            } else if ((i10 & 7168) == 0) {
                if (composerS.k(content)) {
                    i15 = 2048;
                } else {
                    i15 = 1024;
                }
                i12 |= i15;
            }
            i16 = i12;
            if ((i16 & 5851) == 1170) {
                if (i17 != 0) {
                    textStyle3 = null;
                } else {
                    textStyle3 = textStyle2;
                }
                if (i13 != 0) {
                    f7 = null;
                } else {
                    f7 = f6;
                }
                composableLambdaB = ComposableLambdaKt.b(composerS, 494684590, true, new TextFieldImplKt$Decoration$colorAndEmphasis$1(j6, f7, content, i16));
                if (textStyle3 != null) {
                    composerS.G(-2009952864);
                    TextKt.a(textStyle3, composableLambdaB, composerS, ((i16 >> 3) & 14) | 48);
                } else {
                    composerS.G(-2009952812);
                    composableLambdaB.invoke(composerS, 6);
                }
                composerS.Q();
                textStyle4 = textStyle3;
                f6 = f7;
            } else {
                if (i17 != 0) {
                    textStyle3 = null;
                } else {
                    textStyle3 = textStyle2;
                }
                if (i13 != 0) {
                    f7 = null;
                } else {
                    f7 = f6;
                }
                composableLambdaB = ComposableLambdaKt.b(composerS, 494684590, true, new TextFieldImplKt$Decoration$colorAndEmphasis$1(j6, f7, content, i16));
                if (textStyle3 != null) {
                    composerS.G(-2009952864);
                    TextKt.a(textStyle3, composableLambdaB, composerS, ((i16 >> 3) & 14) | 48);
                } else {
                    composerS.G(-2009952812);
                    composableLambdaB.invoke(composerS, 6);
                }
                composerS.Q();
                textStyle4 = textStyle3;
                f6 = f7;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new TextFieldImplKt$Decoration$1(j6, textStyle4, f6, content, i10, i11));
        }
        i12 |= 48;
        textStyle2 = textStyle;
        i13 = i11 & 4;
        if (i13 != 0) {
            if ((i10 & 896) == 0) {
                f6 = f;
                if (composerS.k(f6)) {
                    i14 = 256;
                } else {
                    i14 = 128;
                }
                i12 |= i14;
            }
            if ((i11 & 8) != 0) {
                i12 |= 3072;
            } else if ((i10 & 7168) == 0) {
                if (composerS.k(content)) {
                    i15 = 2048;
                } else {
                    i15 = 1024;
                }
                i12 |= i15;
            }
            i16 = i12;
            if ((i16 & 5851) == 1170) {
                if (i17 != 0) {
                    textStyle3 = null;
                } else {
                    textStyle3 = textStyle2;
                }
                if (i13 != 0) {
                    f7 = null;
                } else {
                    f7 = f6;
                }
                composableLambdaB = ComposableLambdaKt.b(composerS, 494684590, true, new TextFieldImplKt$Decoration$colorAndEmphasis$1(j6, f7, content, i16));
                if (textStyle3 != null) {
                    composerS.G(-2009952864);
                    TextKt.a(textStyle3, composableLambdaB, composerS, ((i16 >> 3) & 14) | 48);
                } else {
                    composerS.G(-2009952812);
                    composableLambdaB.invoke(composerS, 6);
                }
                composerS.Q();
                textStyle4 = textStyle3;
                f6 = f7;
            } else {
                if (i17 != 0) {
                    textStyle3 = null;
                } else {
                    textStyle3 = textStyle2;
                }
                if (i13 != 0) {
                    f7 = null;
                } else {
                    f7 = f6;
                }
                composableLambdaB = ComposableLambdaKt.b(composerS, 494684590, true, new TextFieldImplKt$Decoration$colorAndEmphasis$1(j6, f7, content, i16));
                if (textStyle3 != null) {
                    composerS.G(-2009952864);
                    TextKt.a(textStyle3, composableLambdaB, composerS, ((i16 >> 3) & 14) | 48);
                } else {
                    composerS.G(-2009952812);
                    composableLambdaB.invoke(composerS, 6);
                }
                composerS.Q();
                textStyle4 = textStyle3;
                f6 = f7;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new TextFieldImplKt$Decoration$1(j6, textStyle4, f6, content, i10, i11));
        }
        i12 |= 384;
        f6 = f;
        if ((i11 & 8) != 0) {
            i12 |= 3072;
        } else if ((i10 & 7168) == 0) {
            if (composerS.k(content)) {
                i15 = 2048;
            } else {
                i15 = 1024;
            }
            i12 |= i15;
        }
        i16 = i12;
        if ((i16 & 5851) == 1170) {
            if (i17 != 0) {
                textStyle3 = null;
            } else {
                textStyle3 = textStyle2;
            }
            if (i13 != 0) {
                f7 = null;
            } else {
                f7 = f6;
            }
            composableLambdaB = ComposableLambdaKt.b(composerS, 494684590, true, new TextFieldImplKt$Decoration$colorAndEmphasis$1(j6, f7, content, i16));
            if (textStyle3 != null) {
                composerS.G(-2009952864);
                TextKt.a(textStyle3, composableLambdaB, composerS, ((i16 >> 3) & 14) | 48);
            } else {
                composerS.G(-2009952812);
                composableLambdaB.invoke(composerS, 6);
            }
            composerS.Q();
            textStyle4 = textStyle3;
            f6 = f7;
        } else {
            if (i17 != 0) {
                textStyle3 = null;
            } else {
                textStyle3 = textStyle2;
            }
            if (i13 != 0) {
                f7 = null;
            } else {
                f7 = f6;
            }
            composableLambdaB = ComposableLambdaKt.b(composerS, 494684590, true, new TextFieldImplKt$Decoration$colorAndEmphasis$1(j6, f7, content, i16));
            if (textStyle3 != null) {
                composerS.G(-2009952864);
                TextKt.a(textStyle3, composableLambdaB, composerS, ((i16 >> 3) & 14) | 48);
            } else {
                composerS.G(-2009952812);
                composableLambdaB.invoke(composerS, 6);
            }
            composerS.Q();
            textStyle4 = textStyle3;
            f6 = f7;
        }
        scopeUpdateScopeU = composerS.u();
        if (scopeUpdateScopeU == null) {
            return;
        }
        scopeUpdateScopeU.a(new TextFieldImplKt$Decoration$1(j6, textStyle4, f6, content, i10, i11));
    }

    @Nullable
    public static final Object e(@NotNull IntrinsicMeasurable intrinsicMeasurable) {
        t.j(intrinsicMeasurable, "<this>");
        Object objE = intrinsicMeasurable.e();
        LayoutIdParentData layoutIdParentData = objE instanceof LayoutIdParentData ? (LayoutIdParentData) objE : null;
        if (layoutIdParentData != null) {
            return layoutIdParentData.getLayoutId();
        }
        return null;
    }

    public static final int h(@Nullable Placeable placeable) {
        if (placeable != null) {
            return placeable.B0();
        }
        return 0;
    }

    public static final int i(@Nullable Placeable placeable) {
        if (placeable != null) {
            return placeable.Q0();
        }
        return 0;
    }
}
