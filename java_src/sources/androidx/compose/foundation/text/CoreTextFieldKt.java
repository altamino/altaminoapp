package androidx.compose.foundation.text;

import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.relocation.BringIntoViewRequester;
import androidx.compose.foundation.relocation.BringIntoViewRequesterKt;
import androidx.compose.foundation.text.selection.TextFieldSelectionManager;
import androidx.compose.foundation.text.selection.TextFieldSelectionManagerKt;
import androidx.compose.foundation.text.selection.TextFieldSelectionManager_androidKt;
import androidx.compose.foundation.text.selection.TextSelectionColors;
import androidx.compose.foundation.text.selection.TextSelectionColorsKt;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposableInferredTarget;
import androidx.compose.runtime.ComposableTarget;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.CompositionScopedCoroutineScopeCanceller;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.RecomposeScope;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.SkippableUpdater;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.runtime.saveable.RememberSaveableKt;
import androidx.compose.runtime.saveable.Saver;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.DrawModifierKt;
import androidx.compose.ui.focus.FocusManager;
import androidx.compose.ui.focus.FocusRequester;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.SolidColor;
import androidx.compose.ui.hapticfeedback.HapticFeedback;
import androidx.compose.ui.input.key.KeyInputModifierKt;
import androidx.compose.ui.input.pointer.PointerIconKt;
import androidx.compose.ui.input.pointer.SuspendingPointerInputFilterKt;
import androidx.compose.ui.layout.LayoutKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.OnGloballyPositionedModifierKt;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.ClipboardManager;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.platform.TextToolbar;
import androidx.compose.ui.platform.ViewConfiguration;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.input.ImeOptions;
import androidx.compose.ui.text.input.OffsetMapping;
import androidx.compose.ui.text.input.PasswordVisualTransformation;
import androidx.compose.ui.text.input.TextFieldValue;
import androidx.compose.ui.text.input.TextInputService;
import androidx.compose.ui.text.input.TextInputSession;
import androidx.compose.ui.text.input.TransformedText;
import androidx.compose.ui.text.input.VisualTransformation;
import androidx.compose.ui.text.style.ResolvedTextDirection;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.profileinstaller.ProfileVerifier;
import e8.a;
import e8.l;
import e8.p;
import e8.q;
import kotlin.coroutines.d;
import kotlin.coroutines.h;
import kotlin.jvm.internal.t;
import kotlinx.coroutines.o0;
import org.apache.commons.compress.archivers.cpio.CpioConstants;
import org.apache.commons.compress.archivers.tar.TarConstants;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
public final class CoreTextFieldKt {
    /* JADX WARN: Code duplicated, block: B:101:0x013b  */
    /* JADX WARN: Code duplicated, block: B:103:0x0141  */
    /* JADX WARN: Code duplicated, block: B:104:0x0144  */
    /* JADX WARN: Code duplicated, block: B:108:0x014c  */
    /* JADX WARN: Code duplicated, block: B:110:0x0150  */
    /* JADX WARN: Code duplicated, block: B:113:0x015b A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:116:0x0162  */
    /* JADX WARN: Code duplicated, block: B:119:0x016a  */
    /* JADX WARN: Code duplicated, block: B:121:0x016f  */
    /* JADX WARN: Code duplicated, block: B:123:0x0175  */
    /* JADX WARN: Code duplicated, block: B:125:0x017b  */
    /* JADX WARN: Code duplicated, block: B:126:0x017e  */
    /* JADX WARN: Code duplicated, block: B:130:0x0187  */
    /* JADX WARN: Code duplicated, block: B:132:0x018c  */
    /* JADX WARN: Code duplicated, block: B:134:0x0190  */
    /* JADX WARN: Code duplicated, block: B:136:0x0198  */
    /* JADX WARN: Code duplicated, block: B:137:0x019b  */
    /* JADX WARN: Code duplicated, block: B:141:0x01a3  */
    /* JADX WARN: Code duplicated, block: B:143:0x01a8  */
    /* JADX WARN: Code duplicated, block: B:145:0x01ac  */
    /* JADX WARN: Code duplicated, block: B:148:0x01b5  */
    /* JADX WARN: Code duplicated, block: B:152:0x01bd  */
    /* JADX WARN: Code duplicated, block: B:153:0x01c2  */
    /* JADX WARN: Code duplicated, block: B:155:0x01cb  */
    /* JADX WARN: Code duplicated, block: B:157:0x01d1  */
    /* JADX WARN: Code duplicated, block: B:161:0x01df  */
    /* JADX WARN: Code duplicated, block: B:167:0x020e  */
    /* JADX WARN: Code duplicated, block: B:169:0x0215  */
    /* JADX WARN: Code duplicated, block: B:176:0x025f A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:177:0x0261  */
    /* JADX WARN: Code duplicated, block: B:178:0x0264  */
    /* JADX WARN: Code duplicated, block: B:180:0x0268  */
    /* JADX WARN: Code duplicated, block: B:181:0x026f  */
    /* JADX WARN: Code duplicated, block: B:183:0x0273  */
    /* JADX WARN: Code duplicated, block: B:184:0x027a  */
    /* JADX WARN: Code duplicated, block: B:186:0x027e  */
    /* JADX WARN: Code duplicated, block: B:187:0x0281  */
    /* JADX WARN: Code duplicated, block: B:189:0x0285  */
    /* JADX WARN: Code duplicated, block: B:190:0x0288  */
    /* JADX WARN: Code duplicated, block: B:193:0x028e  */
    /* JADX WARN: Code duplicated, block: B:194:0x029d  */
    /* JADX WARN: Code duplicated, block: B:196:0x02a3  */
    /* JADX WARN: Code duplicated, block: B:197:0x02a5  */
    /* JADX WARN: Code duplicated, block: B:199:0x02a9  */
    /* JADX WARN: Code duplicated, block: B:200:0x02ad  */
    /* JADX WARN: Code duplicated, block: B:203:0x02b3  */
    /* JADX WARN: Code duplicated, block: B:204:0x02bc  */
    /* JADX WARN: Code duplicated, block: B:206:0x02c0  */
    /* JADX WARN: Code duplicated, block: B:207:0x02c7  */
    /* JADX WARN: Code duplicated, block: B:209:0x02cb  */
    /* JADX WARN: Code duplicated, block: B:210:0x02cd  */
    /* JADX WARN: Code duplicated, block: B:212:0x02d1  */
    /* JADX WARN: Code duplicated, block: B:213:0x02d3  */
    /* JADX WARN: Code duplicated, block: B:215:0x02d7  */
    /* JADX WARN: Code duplicated, block: B:217:0x02f5  */
    /* JADX WARN: Code duplicated, block: B:220:0x031c A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:223:0x032a  */
    /* JADX WARN: Code duplicated, block: B:226:0x035f A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:231:0x0370  */
    /* JADX WARN: Code duplicated, block: B:234:0x0394  */
    /* JADX WARN: Code duplicated, block: B:236:0x039c  */
    /* JADX WARN: Code duplicated, block: B:239:0x03d7  */
    /* JADX WARN: Code duplicated, block: B:243:0x03e3  */
    /* JADX WARN: Code duplicated, block: B:245:0x03f3  */
    /* JADX WARN: Code duplicated, block: B:249:0x0402  */
    /* JADX WARN: Code duplicated, block: B:253:0x042f  */
    /* JADX WARN: Code duplicated, block: B:256:0x0494  */
    /* JADX WARN: Code duplicated, block: B:259:0x04c5  */
    /* JADX WARN: Code duplicated, block: B:262:0x052b  */
    /* JADX WARN: Code duplicated, block: B:265:0x0556  */
    /* JADX WARN: Code duplicated, block: B:268:0x0595  */
    /* JADX WARN: Code duplicated, block: B:269:0x05be  */
    /* JADX WARN: Code duplicated, block: B:272:0x060d A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:274:0x0611  */
    /* JADX WARN: Code duplicated, block: B:277:0x0643  */
    /* JADX WARN: Code duplicated, block: B:278:0x0646  */
    /* JADX WARN: Code duplicated, block: B:281:0x0689  */
    /* JADX WARN: Code duplicated, block: B:286:0x0698  */
    /* JADX WARN: Code duplicated, block: B:288:0x069c  */
    /* JADX WARN: Code duplicated, block: B:289:0x06a3  */
    /* JADX WARN: Code duplicated, block: B:294:0x0719  */
    /* JADX WARN: Code duplicated, block: B:296:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:36:0x006f  */
    /* JADX WARN: Code duplicated, block: B:38:0x0074  */
    /* JADX WARN: Code duplicated, block: B:40:0x0078  */
    /* JADX WARN: Code duplicated, block: B:42:0x0080  */
    /* JADX WARN: Code duplicated, block: B:43:0x0083  */
    /* JADX WARN: Code duplicated, block: B:47:0x008f  */
    /* JADX WARN: Code duplicated, block: B:48:0x0094  */
    /* JADX WARN: Code duplicated, block: B:50:0x009d  */
    /* JADX WARN: Code duplicated, block: B:52:0x00a3  */
    /* JADX WARN: Code duplicated, block: B:53:0x00a6  */
    /* JADX WARN: Code duplicated, block: B:57:0x00ae  */
    /* JADX WARN: Code duplicated, block: B:58:0x00b5  */
    /* JADX WARN: Code duplicated, block: B:60:0x00bd  */
    /* JADX WARN: Code duplicated, block: B:62:0x00c3  */
    /* JADX WARN: Code duplicated, block: B:63:0x00c6  */
    /* JADX WARN: Code duplicated, block: B:67:0x00ce  */
    /* JADX WARN: Code duplicated, block: B:68:0x00d5  */
    /* JADX WARN: Code duplicated, block: B:70:0x00dd  */
    /* JADX WARN: Code duplicated, block: B:72:0x00e3  */
    /* JADX WARN: Code duplicated, block: B:73:0x00e6  */
    /* JADX WARN: Code duplicated, block: B:77:0x00f0  */
    /* JADX WARN: Code duplicated, block: B:79:0x00f4  */
    /* JADX WARN: Code duplicated, block: B:82:0x00ff A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:85:0x0106  */
    /* JADX WARN: Code duplicated, block: B:88:0x010c  */
    /* JADX WARN: Code duplicated, block: B:89:0x0113  */
    /* JADX WARN: Code duplicated, block: B:91:0x011b  */
    /* JADX WARN: Code duplicated, block: B:93:0x0121  */
    /* JADX WARN: Code duplicated, block: B:94:0x0124  */
    /* JADX WARN: Code duplicated, block: B:98:0x012c  */
    /* JADX WARN: Code duplicated, block: B:99:0x0133  */
    @Composable
    @ComposableInferredTarget
    public static final void a(@NotNull TextFieldValue value, @NotNull l<? super TextFieldValue, l0> onValueChange, @Nullable Modifier modifier, @Nullable TextStyle textStyle, @Nullable VisualTransformation visualTransformation, @Nullable l<? super TextLayoutResult, l0> lVar, @Nullable MutableInteractionSource mutableInteractionSource, @Nullable Brush brush, boolean z6, int i10, @Nullable ImeOptions imeOptions, @Nullable KeyboardActions keyboardActions, boolean z10, boolean z11, @Nullable q<? super p<? super Composer, ? super Integer, l0>, ? super Composer, ? super Integer, l0> qVar, @Nullable Composer composer, int i11, int i12, int i13) {
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        int i19;
        int i20;
        int i21;
        int i22;
        int i23;
        int i24;
        int i25;
        int i26;
        int i27;
        int i28;
        int i29;
        int i30;
        int i31;
        int i32;
        int i33;
        int i34;
        Modifier modifier2;
        TextStyle textStyleA;
        VisualTransformation visualTransformationC;
        l<? super TextLayoutResult, l0> lVar2;
        MutableInteractionSource mutableInteractionSource2;
        Brush solidColor;
        boolean z12;
        int i35;
        ImeOptions imeOptionsA;
        KeyboardActions keyboardActionsA;
        boolean z13;
        boolean z14;
        q<? super p<? super Composer, ? super Integer, l0>, ? super Composer, ? super Integer, l0> qVarA;
        boolean z15;
        FocusRequester focusRequester;
        TextInputService textInputService;
        Density density;
        FontFamily.Resolver resolver;
        Orientation orientation;
        int i36;
        Orientation orientation2;
        boolean z16;
        boolean zK;
        MutableInteractionSource mutableInteractionSource3;
        Object objH;
        boolean zK2;
        Object objH2;
        TransformedText transformedTextA;
        TextRange textRangeF;
        TransformedText transformedTextB;
        AnnotatedString annotatedStringB;
        OffsetMapping offsetMappingA;
        RecomposeScope recomposeScopeB;
        Object objH3;
        Composer.Companion companion;
        TextFieldState textFieldState;
        Object objH4;
        UndoManager undoManager;
        Object objH5;
        TextFieldSelectionManager textFieldSelectionManager;
        Object objH6;
        Object objH7;
        Modifier.Companion companion2;
        boolean z17;
        Modifier modifierB;
        boolean z18;
        boolean z19;
        boolean z20;
        Modifier modifierB2;
        Composer composer2;
        TextStyle textStyle2;
        MutableInteractionSource mutableInteractionSource4;
        l<? super TextLayoutResult, l0> lVar3;
        Brush brush2;
        boolean z21;
        KeyboardActions keyboardActions2;
        boolean z22;
        q<? super p<? super Composer, ? super Integer, l0>, ? super Composer, ? super Integer, l0> qVar2;
        VisualTransformation visualTransformation2;
        Modifier modifier3;
        int i37;
        boolean z23;
        ImeOptions imeOptions2;
        ScopeUpdateScope scopeUpdateScopeU;
        t.j(value, "value");
        t.j(onValueChange, "onValueChange");
        Composer composerS = composer.s(109313709);
        if ((i13 & 1) != 0) {
            i14 = i11 | 6;
        } else if ((i11 & 14) == 0) {
            i14 = (composerS.k(value) ? 4 : 2) | i11;
        } else {
            i14 = i11;
        }
        if ((i13 & 2) != 0) {
            i14 |= 48;
        } else if ((i11 & 112) == 0) {
            i14 |= composerS.k(onValueChange) ? 32 : 16;
        }
        int i38 = i13 & 4;
        if (i38 == 0) {
            if ((i11 & 896) == 0) {
                i14 |= composerS.k(modifier) ? 256 : 128;
            }
            i15 = i13 & 8;
            if (i15 != 0) {
                if ((i11 & 7168) == 0) {
                    if (composerS.k(textStyle)) {
                        i16 = 2048;
                    } else {
                        i16 = 1024;
                    }
                    i14 |= i16;
                }
                i17 = i13 & 16;
                if (i17 != 0) {
                    i14 |= CpioConstants.C_ISBLK;
                } else if ((i11 & 57344) == 0) {
                    if (composerS.k(visualTransformation)) {
                        i18 = 16384;
                    } else {
                        i18 = 8192;
                    }
                    i14 |= i18;
                }
                i19 = i13 & 32;
                if (i19 != 0) {
                    i14 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                } else if ((i11 & 458752) == 0) {
                    if (composerS.k(lVar)) {
                        i20 = 131072;
                    } else {
                        i20 = 65536;
                    }
                    i14 |= i20;
                }
                i21 = i13 & 64;
                if (i21 != 0) {
                    i14 |= 1572864;
                } else if ((i11 & 3670016) == 0) {
                    if (composerS.k(mutableInteractionSource)) {
                        i22 = 1048576;
                    } else {
                        i22 = 524288;
                    }
                    i14 |= i22;
                }
                if ((i11 & 29360128) != 0) {
                    i14 |= ((i13 & 128) == 0 || !composerS.k(brush)) ? 4194304 : 8388608;
                }
                i23 = i13 & 256;
                if (i23 != 0) {
                    i14 |= 100663296;
                } else if ((i11 & 234881024) == 0) {
                    if (composerS.m(z6)) {
                        i24 = 67108864;
                    } else {
                        i24 = 33554432;
                    }
                    i14 |= i24;
                }
                i25 = i13 & 512;
                if (i25 != 0) {
                    i14 |= 805306368;
                } else if ((i11 & 1879048192) == 0) {
                    if (composerS.p(i10)) {
                        i26 = 536870912;
                    } else {
                        i26 = 268435456;
                    }
                    i14 |= i26;
                }
                if ((i12 & 14) == 0) {
                    i27 = i12 | (((i13 & 1024) == 0 || !composerS.k(imeOptions)) ? 2 : 4);
                } else {
                    i27 = i12;
                }
                i28 = i13 & 2048;
                if (i28 != 0) {
                    i27 |= 48;
                } else if ((i12 & 112) == 0) {
                    if (composerS.k(keyboardActions)) {
                        i29 = 32;
                    } else {
                        i29 = 16;
                    }
                    i27 |= i29;
                }
                i30 = i27;
                i31 = i13 & 4096;
                if (i31 != 0) {
                    if ((i12 & 896) == 0) {
                        if (composerS.m(z10)) {
                            i32 = 256;
                        } else {
                            i32 = 128;
                        }
                        i30 |= i32;
                    }
                    i33 = i13 & 8192;
                    if (i33 != 0) {
                        if ((i12 & 7168) == 0) {
                            i30 |= composerS.m(z11) ? 2048 : 1024;
                        }
                        i34 = i13 & 16384;
                        if (i34 != 0) {
                            i30 |= CpioConstants.C_ISBLK;
                        } else if ((i12 & 57344) == 0) {
                            i30 |= composerS.k(qVar) ? 16384 : 8192;
                        }
                        if ((i14 & 1533916891) != 306783378 && (46811 & i30) == 9362 && composerS.b()) {
                            composerS.g();
                            modifier3 = modifier;
                            textStyle2 = textStyle;
                            visualTransformation2 = visualTransformation;
                            lVar3 = lVar;
                            mutableInteractionSource4 = mutableInteractionSource;
                            brush2 = brush;
                            z21 = z6;
                            imeOptions2 = imeOptions;
                            keyboardActions2 = keyboardActions;
                            z23 = z10;
                            z22 = z11;
                            qVar2 = qVar;
                            composer2 = composerS;
                            i37 = i10;
                        } else {
                            composerS.J();
                            if ((i11 & 1) != 0 || composerS.h()) {
                                if (i38 != 0) {
                                    modifier2 = Modifier.Companion;
                                } else {
                                    modifier2 = modifier;
                                }
                                if (i15 != 0) {
                                    textStyleA = TextStyle.Companion.a();
                                } else {
                                    textStyleA = textStyle;
                                }
                                if (i17 != 0) {
                                    visualTransformationC = VisualTransformation.Companion.c();
                                } else {
                                    visualTransformationC = visualTransformation;
                                }
                                if (i19 != 0) {
                                    lVar2 = CoreTextFieldKt$CoreTextField$1.INSTANCE;
                                } else {
                                    lVar2 = lVar;
                                }
                                if (i21 != 0) {
                                    mutableInteractionSource2 = null;
                                } else {
                                    mutableInteractionSource2 = mutableInteractionSource;
                                }
                                if ((i13 & 128) != 0) {
                                    solidColor = new SolidColor(Color.Companion.f(), null);
                                } else {
                                    solidColor = brush;
                                }
                                if (i23 != 0) {
                                    z12 = true;
                                } else {
                                    z12 = z6;
                                }
                                if (i25 != 0) {
                                    i35 = Integer.MAX_VALUE;
                                } else {
                                    i35 = i10;
                                }
                                if ((i13 & 1024) != 0) {
                                    imeOptionsA = ImeOptions.Companion.a();
                                    i30 &= -15;
                                } else {
                                    imeOptionsA = imeOptions;
                                }
                                if (i28 != 0) {
                                    keyboardActionsA = KeyboardActions.Companion.a();
                                } else {
                                    keyboardActionsA = keyboardActions;
                                }
                                if (i31 != 0) {
                                    z13 = true;
                                } else {
                                    z13 = z10;
                                }
                                if (i33 != 0) {
                                    z14 = false;
                                } else {
                                    z14 = z11;
                                }
                                if (i34 != 0) {
                                    qVarA = ComposableSingletons$CoreTextFieldKt.INSTANCE.a();
                                } else {
                                    qVarA = qVar;
                                }
                                z15 = z13;
                            } else {
                                composerS.g();
                                if ((i13 & 1024) != 0) {
                                    modifier2 = modifier;
                                    textStyleA = textStyle;
                                    visualTransformationC = visualTransformation;
                                    lVar2 = lVar;
                                    mutableInteractionSource2 = mutableInteractionSource;
                                    solidColor = brush;
                                    z12 = z6;
                                    i35 = i10;
                                    imeOptionsA = imeOptions;
                                    keyboardActionsA = keyboardActions;
                                    z15 = z10;
                                    z14 = z11;
                                    qVarA = qVar;
                                    i30 &= -15;
                                } else {
                                    modifier2 = modifier;
                                    textStyleA = textStyle;
                                    visualTransformationC = visualTransformation;
                                    lVar2 = lVar;
                                    mutableInteractionSource2 = mutableInteractionSource;
                                    solidColor = brush;
                                    z12 = z6;
                                    i35 = i10;
                                    imeOptionsA = imeOptions;
                                    keyboardActionsA = keyboardActions;
                                    z15 = z10;
                                    z14 = z11;
                                    qVarA = qVar;
                                    i30 = i30;
                                }
                            }
                            composerS.A();
                            focusRequester = new FocusRequester();
                            composerS.G(-55013392);
                            if (z15 || z14) {
                                textInputService = null;
                            } else {
                                textInputService = (TextInputService) composerS.x(CompositionLocalsKt.l());
                            }
                            composerS.Q();
                            density = (Density) composerS.x(CompositionLocalsKt.e());
                            resolver = (FontFamily.Resolver) composerS.x(CompositionLocalsKt.g());
                            long jA = ((TextSelectionColors) composerS.x(TextSelectionColorsKt.b())).a();
                            FocusManager focusManager = (FocusManager) composerS.x(CompositionLocalsKt.f());
                            Modifier modifier4 = modifier2;
                            if (i35 == 1 || z12 || !imeOptionsA.f()) {
                                orientation = Orientation.Vertical;
                            } else {
                                orientation = Orientation.Horizontal;
                            }
                            int i39 = i30;
                            i36 = i35;
                            orientation2 = orientation;
                            Object[] objArr = {orientation2};
                            Saver<TextFieldScrollerPosition, Object> saverA = TextFieldScrollerPosition.Companion.a();
                            z16 = z15;
                            composerS.G(1157296644);
                            zK = composerS.k(orientation2);
                            mutableInteractionSource3 = mutableInteractionSource2;
                            objH = composerS.H();
                            if (zK || objH == Composer.Companion.a()) {
                                objH = new CoreTextFieldKt$CoreTextField$scrollerPosition$1$1(orientation2);
                                composerS.z(objH);
                            }
                            composerS.Q();
                            TextFieldScrollerPosition textFieldScrollerPosition = (TextFieldScrollerPosition) RememberSaveableKt.b(objArr, saverA, null, (a) objH, composerS, 72, 4);
                            composerS.G(511388516);
                            zK2 = composerS.k(value) | composerS.k(visualTransformationC);
                            objH2 = composerS.H();
                            if (zK2 || objH2 == Composer.Companion.a()) {
                                transformedTextA = visualTransformationC.a(value.e());
                                textRangeF = value.f();
                                if (textRangeF != null || (transformedTextB = TextFieldDelegate.Companion.b(textRangeF.r(), transformedTextA)) == null) {
                                    objH2 = transformedTextA;
                                } else {
                                    objH2 = transformedTextB;
                                }
                                composerS.z(objH2);
                            }
                            composerS.Q();
                            TransformedText transformedText = (TransformedText) objH2;
                            annotatedStringB = transformedText.b();
                            offsetMappingA = transformedText.a();
                            recomposeScopeB = ComposablesKt.b(composerS, 0);
                            composerS.G(-492369756);
                            objH3 = composerS.H();
                            companion = Composer.Companion;
                            if (objH3 == companion.a()) {
                                objH3 = new TextFieldState(new TextDelegate(annotatedStringB, textStyleA, 0, z12, 0, density, resolver, null, TarConstants.CHKSUM_OFFSET, null), recomposeScopeB);
                                composerS.z(objH3);
                            }
                            composerS.Q();
                            textFieldState = (TextFieldState) objH3;
                            textFieldState.A(annotatedStringB, textStyleA, z12, density, resolver, onValueChange, keyboardActionsA, focusManager, jA);
                            textFieldState.j().b(value, textFieldState.e());
                            composerS.G(-492369756);
                            objH4 = composerS.H();
                            if (objH4 == companion.a()) {
                                objH4 = new UndoManager(0, 1, null);
                                composerS.z(objH4);
                            }
                            composerS.Q();
                            undoManager = (UndoManager) objH4;
                            UndoManager.f(undoManager, value, 0L, 2, null);
                            composerS.G(-492369756);
                            objH5 = composerS.H();
                            if (objH5 == companion.a()) {
                                objH5 = new TextFieldSelectionManager(undoManager);
                                composerS.z(objH5);
                            }
                            composerS.Q();
                            textFieldSelectionManager = (TextFieldSelectionManager) objH5;
                            textFieldSelectionManager.U(offsetMappingA);
                            textFieldSelectionManager.Z(visualTransformationC);
                            textFieldSelectionManager.V(textFieldState.i());
                            textFieldSelectionManager.W(textFieldState);
                            textFieldSelectionManager.Y(value);
                            textFieldSelectionManager.N((ClipboardManager) composerS.x(CompositionLocalsKt.d()));
                            textFieldSelectionManager.X((TextToolbar) composerS.x(CompositionLocalsKt.m()));
                            textFieldSelectionManager.T((HapticFeedback) composerS.x(CompositionLocalsKt.h()));
                            textFieldSelectionManager.R(focusRequester);
                            textFieldSelectionManager.Q(!z14);
                            composerS.G(773894976);
                            composerS.G(-492369756);
                            objH6 = composerS.H();
                            if (objH6 == companion.a()) {
                                CompositionScopedCoroutineScopeCanceller compositionScopedCoroutineScopeCanceller = new CompositionScopedCoroutineScopeCanceller(EffectsKt.j(h.INSTANCE, composerS));
                                composerS.z(compositionScopedCoroutineScopeCanceller);
                                objH6 = compositionScopedCoroutineScopeCanceller;
                            }
                            composerS.Q();
                            o0 o0VarA = ((CompositionScopedCoroutineScopeCanceller) objH6).a();
                            composerS.Q();
                            composerS.G(-492369756);
                            objH7 = composerS.H();
                            if (objH7 == companion.a()) {
                                objH7 = BringIntoViewRequesterKt.a();
                                composerS.z(objH7);
                            }
                            composerS.Q();
                            BringIntoViewRequester bringIntoViewRequester = (BringIntoViewRequester) objH7;
                            companion2 = Modifier.Companion;
                            Modifier modifierC = TextFieldGestureModifiersKt.c(companion2, z16, focusRequester, mutableInteractionSource3, new CoreTextFieldKt$CoreTextField$focusModifier$1(textFieldState, textInputService, value, imeOptionsA, textFieldSelectionManager, o0VarA, bringIntoViewRequester, offsetMappingA));
                            EffectsKt.a(textFieldState, new CoreTextFieldKt$CoreTextField$2(textFieldState), composerS, 8);
                            if (TouchMode_androidKt.a()) {
                                modifierB = TextFieldPressGestureFilterKt.a(companion2, mutableInteractionSource3, z16, new CoreTextFieldKt$CoreTextField$pointerModifier$1(textFieldState, focusRequester, z14, textFieldSelectionManager, offsetMappingA)).B(TextFieldGestureModifiersKt.a(companion2, textFieldSelectionManager.G(), z16));
                                z17 = false;
                            } else {
                                z17 = false;
                                modifierB = PointerIconKt.b(TextFieldGestureModifiersKt.b(companion2, textFieldSelectionManager.B(), z16), TextPointerIcon_androidKt.a(), false, 2, null);
                            }
                            Modifier modifierA = DrawModifierKt.a(companion2, new CoreTextFieldKt$CoreTextField$drawModifier$1(textFieldState, value, offsetMappingA));
                            Modifier modifierA2 = OnGloballyPositionedModifierKt.a(companion2, new CoreTextFieldKt$CoreTextField$onPositionedModifier$1(textFieldState, z16, textFieldSelectionManager));
                            Modifier modifierB3 = SemanticsModifierKt.b(companion2, true, new CoreTextFieldKt$CoreTextField$semanticsModifier$1(imeOptionsA, transformedText, value, z16, visualTransformationC instanceof PasswordVisualTransformation, z14, textFieldState, offsetMappingA, textFieldSelectionManager, focusRequester));
                            if (z16 || z14) {
                                z18 = z17;
                            } else {
                                z18 = true;
                            }
                            Modifier modifierB4 = TextFieldCursorKt.b(companion2, textFieldState, value, offsetMappingA, solidColor, z18);
                            EffectsKt.a(textFieldSelectionManager, new CoreTextFieldKt$CoreTextField$3(textFieldSelectionManager), composerS, 8);
                            EffectsKt.a(imeOptionsA, new CoreTextFieldKt$CoreTextField$4(textInputService, textFieldState, value, imeOptionsA), composerS, i39 & 14);
                            l<TextFieldValue, l0> lVarI = textFieldState.i();
                            boolean z24 = !z14;
                            if (i36 == 1) {
                                z19 = true;
                            } else {
                                z19 = z17;
                            }
                            Modifier modifierA3 = OnGloballyPositionedModifierKt.a(TextFieldScrollKt.d(m(modifier4.B(modifierC), textFieldState, textFieldSelectionManager).B(TextFieldKeyInputKt.a(companion2, textFieldState, textFieldSelectionManager, value, lVarI, z24, z19, offsetMappingA, undoManager)), textFieldScrollerPosition, mutableInteractionSource3, z16).B(modifierB).B(modifierB3), new CoreTextFieldKt$CoreTextField$decorationBoxModifier$1(textFieldState));
                            if (!z16 && textFieldState.d() && TouchMode_androidKt.a()) {
                                z20 = true;
                            } else {
                                z20 = z17;
                            }
                            if (z20) {
                                modifierB2 = TextFieldSelectionManager_androidKt.b(companion2, textFieldSelectionManager);
                            } else {
                                modifierB2 = companion2;
                            }
                            ImeOptions imeOptions3 = imeOptionsA;
                            composer2 = composerS;
                            b(modifierA3, textFieldSelectionManager, ComposableLambdaKt.b(composer2, -1885146845, true, new CoreTextFieldKt$CoreTextField$5(qVarA, i39, i36, textStyleA, textFieldScrollerPosition, value, visualTransformationC, modifierB4, modifierA, modifierA2, modifierB2, bringIntoViewRequester, textFieldState, textFieldSelectionManager, z20, z14, lVar2)), composer2, 448);
                            textStyle2 = textStyleA;
                            mutableInteractionSource4 = mutableInteractionSource3;
                            lVar3 = lVar2;
                            brush2 = solidColor;
                            z21 = z12;
                            keyboardActions2 = keyboardActionsA;
                            z22 = z14;
                            qVar2 = qVarA;
                            visualTransformation2 = visualTransformationC;
                            modifier3 = modifier4;
                            i37 = i36;
                            z23 = z16;
                            imeOptions2 = imeOptions3;
                        }
                        scopeUpdateScopeU = composer2.u();
                        if (scopeUpdateScopeU == null) {
                            return;
                        }
                        scopeUpdateScopeU.a(new CoreTextFieldKt$CoreTextField$6(value, onValueChange, modifier3, textStyle2, visualTransformation2, lVar3, mutableInteractionSource4, brush2, z21, i37, imeOptions2, keyboardActions2, z23, z22, qVar2, i11, i12, i13));
                    }
                    i30 |= 3072;
                    i34 = i13 & 16384;
                    if (i34 != 0) {
                        i30 |= CpioConstants.C_ISBLK;
                    } else if ((i12 & 57344) == 0) {
                        i30 |= composerS.k(qVar) ? 16384 : 8192;
                    }
                    if ((i14 & 1533916891) != 306783378) {
                        composerS.J();
                        if ((i11 & 1) != 0) {
                            if (i38 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i15 != 0) {
                                textStyleA = TextStyle.Companion.a();
                            } else {
                                textStyleA = textStyle;
                            }
                            if (i17 != 0) {
                                visualTransformationC = VisualTransformation.Companion.c();
                            } else {
                                visualTransformationC = visualTransformation;
                            }
                            if (i19 != 0) {
                                lVar2 = CoreTextFieldKt$CoreTextField$1.INSTANCE;
                            } else {
                                lVar2 = lVar;
                            }
                            if (i21 != 0) {
                                mutableInteractionSource2 = null;
                            } else {
                                mutableInteractionSource2 = mutableInteractionSource;
                            }
                            if ((i13 & 128) != 0) {
                                solidColor = new SolidColor(Color.Companion.f(), null);
                            } else {
                                solidColor = brush;
                            }
                            if (i23 != 0) {
                                z12 = true;
                            } else {
                                z12 = z6;
                            }
                            if (i25 != 0) {
                                i35 = Integer.MAX_VALUE;
                            } else {
                                i35 = i10;
                            }
                            if ((i13 & 1024) != 0) {
                                imeOptionsA = ImeOptions.Companion.a();
                                i30 &= -15;
                            } else {
                                imeOptionsA = imeOptions;
                            }
                            if (i28 != 0) {
                                keyboardActionsA = KeyboardActions.Companion.a();
                            } else {
                                keyboardActionsA = keyboardActions;
                            }
                            if (i31 != 0) {
                                z13 = true;
                            } else {
                                z13 = z10;
                            }
                            if (i33 != 0) {
                                z14 = false;
                            } else {
                                z14 = z11;
                            }
                            if (i34 != 0) {
                                qVarA = ComposableSingletons$CoreTextFieldKt.INSTANCE.a();
                            } else {
                                qVarA = qVar;
                            }
                            z15 = z13;
                        } else {
                            if (i38 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i15 != 0) {
                                textStyleA = TextStyle.Companion.a();
                            } else {
                                textStyleA = textStyle;
                            }
                            if (i17 != 0) {
                                visualTransformationC = VisualTransformation.Companion.c();
                            } else {
                                visualTransformationC = visualTransformation;
                            }
                            if (i19 != 0) {
                                lVar2 = CoreTextFieldKt$CoreTextField$1.INSTANCE;
                            } else {
                                lVar2 = lVar;
                            }
                            if (i21 != 0) {
                                mutableInteractionSource2 = null;
                            } else {
                                mutableInteractionSource2 = mutableInteractionSource;
                            }
                            if ((i13 & 128) != 0) {
                                solidColor = new SolidColor(Color.Companion.f(), null);
                            } else {
                                solidColor = brush;
                            }
                            if (i23 != 0) {
                                z12 = true;
                            } else {
                                z12 = z6;
                            }
                            if (i25 != 0) {
                                i35 = Integer.MAX_VALUE;
                            } else {
                                i35 = i10;
                            }
                            if ((i13 & 1024) != 0) {
                                imeOptionsA = ImeOptions.Companion.a();
                                i30 &= -15;
                            } else {
                                imeOptionsA = imeOptions;
                            }
                            if (i28 != 0) {
                                keyboardActionsA = KeyboardActions.Companion.a();
                            } else {
                                keyboardActionsA = keyboardActions;
                            }
                            if (i31 != 0) {
                                z13 = true;
                            } else {
                                z13 = z10;
                            }
                            if (i33 != 0) {
                                z14 = false;
                            } else {
                                z14 = z11;
                            }
                            if (i34 != 0) {
                                qVarA = ComposableSingletons$CoreTextFieldKt.INSTANCE.a();
                            } else {
                                qVarA = qVar;
                            }
                            z15 = z13;
                        }
                        composerS.A();
                        focusRequester = new FocusRequester();
                        composerS.G(-55013392);
                        if (z15) {
                            textInputService = null;
                        } else {
                            textInputService = null;
                        }
                        composerS.Q();
                        density = (Density) composerS.x(CompositionLocalsKt.e());
                        resolver = (FontFamily.Resolver) composerS.x(CompositionLocalsKt.g());
                        long jA2 = ((TextSelectionColors) composerS.x(TextSelectionColorsKt.b())).a();
                        FocusManager focusManager2 = (FocusManager) composerS.x(CompositionLocalsKt.f());
                        Modifier modifier5 = modifier2;
                        if (i35 == 1) {
                            orientation = Orientation.Vertical;
                        } else {
                            orientation = Orientation.Vertical;
                        }
                        int i310 = i30;
                        i36 = i35;
                        orientation2 = orientation;
                        Object[] objArr2 = {orientation2};
                        Saver<TextFieldScrollerPosition, Object> saverA2 = TextFieldScrollerPosition.Companion.a();
                        z16 = z15;
                        composerS.G(1157296644);
                        zK = composerS.k(orientation2);
                        mutableInteractionSource3 = mutableInteractionSource2;
                        objH = composerS.H();
                        if (zK) {
                            objH = new CoreTextFieldKt$CoreTextField$scrollerPosition$1$1(orientation2);
                            composerS.z(objH);
                        } else {
                            objH = new CoreTextFieldKt$CoreTextField$scrollerPosition$1$1(orientation2);
                            composerS.z(objH);
                        }
                        composerS.Q();
                        TextFieldScrollerPosition textFieldScrollerPosition2 = (TextFieldScrollerPosition) RememberSaveableKt.b(objArr2, saverA2, null, (a) objH, composerS, 72, 4);
                        composerS.G(511388516);
                        zK2 = composerS.k(value) | composerS.k(visualTransformationC);
                        objH2 = composerS.H();
                        if (zK2) {
                            transformedTextA = visualTransformationC.a(value.e());
                            textRangeF = value.f();
                            if (textRangeF != null) {
                                objH2 = transformedTextA;
                            } else {
                                objH2 = transformedTextA;
                            }
                            composerS.z(objH2);
                        } else {
                            transformedTextA = visualTransformationC.a(value.e());
                            textRangeF = value.f();
                            if (textRangeF != null) {
                                objH2 = transformedTextA;
                            } else {
                                objH2 = transformedTextA;
                            }
                            composerS.z(objH2);
                        }
                        composerS.Q();
                        TransformedText transformedText2 = (TransformedText) objH2;
                        annotatedStringB = transformedText2.b();
                        offsetMappingA = transformedText2.a();
                        recomposeScopeB = ComposablesKt.b(composerS, 0);
                        composerS.G(-492369756);
                        objH3 = composerS.H();
                        companion = Composer.Companion;
                        if (objH3 == companion.a()) {
                            objH3 = new TextFieldState(new TextDelegate(annotatedStringB, textStyleA, 0, z12, 0, density, resolver, null, TarConstants.CHKSUM_OFFSET, null), recomposeScopeB);
                            composerS.z(objH3);
                        }
                        composerS.Q();
                        textFieldState = (TextFieldState) objH3;
                        textFieldState.A(annotatedStringB, textStyleA, z12, density, resolver, onValueChange, keyboardActionsA, focusManager2, jA2);
                        textFieldState.j().b(value, textFieldState.e());
                        composerS.G(-492369756);
                        objH4 = composerS.H();
                        if (objH4 == companion.a()) {
                            objH4 = new UndoManager(0, 1, null);
                            composerS.z(objH4);
                        }
                        composerS.Q();
                        undoManager = (UndoManager) objH4;
                        UndoManager.f(undoManager, value, 0L, 2, null);
                        composerS.G(-492369756);
                        objH5 = composerS.H();
                        if (objH5 == companion.a()) {
                            objH5 = new TextFieldSelectionManager(undoManager);
                            composerS.z(objH5);
                        }
                        composerS.Q();
                        textFieldSelectionManager = (TextFieldSelectionManager) objH5;
                        textFieldSelectionManager.U(offsetMappingA);
                        textFieldSelectionManager.Z(visualTransformationC);
                        textFieldSelectionManager.V(textFieldState.i());
                        textFieldSelectionManager.W(textFieldState);
                        textFieldSelectionManager.Y(value);
                        textFieldSelectionManager.N((ClipboardManager) composerS.x(CompositionLocalsKt.d()));
                        textFieldSelectionManager.X((TextToolbar) composerS.x(CompositionLocalsKt.m()));
                        textFieldSelectionManager.T((HapticFeedback) composerS.x(CompositionLocalsKt.h()));
                        textFieldSelectionManager.R(focusRequester);
                        textFieldSelectionManager.Q(!z14);
                        composerS.G(773894976);
                        composerS.G(-492369756);
                        objH6 = composerS.H();
                        if (objH6 == companion.a()) {
                            CompositionScopedCoroutineScopeCanceller compositionScopedCoroutineScopeCanceller2 = new CompositionScopedCoroutineScopeCanceller(EffectsKt.j(h.INSTANCE, composerS));
                            composerS.z(compositionScopedCoroutineScopeCanceller2);
                            objH6 = compositionScopedCoroutineScopeCanceller2;
                        }
                        composerS.Q();
                        o0 o0VarA2 = ((CompositionScopedCoroutineScopeCanceller) objH6).a();
                        composerS.Q();
                        composerS.G(-492369756);
                        objH7 = composerS.H();
                        if (objH7 == companion.a()) {
                            objH7 = BringIntoViewRequesterKt.a();
                            composerS.z(objH7);
                        }
                        composerS.Q();
                        BringIntoViewRequester bringIntoViewRequester2 = (BringIntoViewRequester) objH7;
                        companion2 = Modifier.Companion;
                        Modifier modifierC2 = TextFieldGestureModifiersKt.c(companion2, z16, focusRequester, mutableInteractionSource3, new CoreTextFieldKt$CoreTextField$focusModifier$1(textFieldState, textInputService, value, imeOptionsA, textFieldSelectionManager, o0VarA2, bringIntoViewRequester2, offsetMappingA));
                        EffectsKt.a(textFieldState, new CoreTextFieldKt$CoreTextField$2(textFieldState), composerS, 8);
                        if (TouchMode_androidKt.a()) {
                            modifierB = TextFieldPressGestureFilterKt.a(companion2, mutableInteractionSource3, z16, new CoreTextFieldKt$CoreTextField$pointerModifier$1(textFieldState, focusRequester, z14, textFieldSelectionManager, offsetMappingA)).B(TextFieldGestureModifiersKt.a(companion2, textFieldSelectionManager.G(), z16));
                            z17 = false;
                        } else {
                            z17 = false;
                            modifierB = PointerIconKt.b(TextFieldGestureModifiersKt.b(companion2, textFieldSelectionManager.B(), z16), TextPointerIcon_androidKt.a(), false, 2, null);
                        }
                        Modifier modifierA4 = DrawModifierKt.a(companion2, new CoreTextFieldKt$CoreTextField$drawModifier$1(textFieldState, value, offsetMappingA));
                        Modifier modifierA5 = OnGloballyPositionedModifierKt.a(companion2, new CoreTextFieldKt$CoreTextField$onPositionedModifier$1(textFieldState, z16, textFieldSelectionManager));
                        Modifier modifierB5 = SemanticsModifierKt.b(companion2, true, new CoreTextFieldKt$CoreTextField$semanticsModifier$1(imeOptionsA, transformedText2, value, z16, visualTransformationC instanceof PasswordVisualTransformation, z14, textFieldState, offsetMappingA, textFieldSelectionManager, focusRequester));
                        if (z16) {
                            z18 = z17;
                        } else {
                            z18 = z17;
                        }
                        Modifier modifierB6 = TextFieldCursorKt.b(companion2, textFieldState, value, offsetMappingA, solidColor, z18);
                        EffectsKt.a(textFieldSelectionManager, new CoreTextFieldKt$CoreTextField$3(textFieldSelectionManager), composerS, 8);
                        EffectsKt.a(imeOptionsA, new CoreTextFieldKt$CoreTextField$4(textInputService, textFieldState, value, imeOptionsA), composerS, i310 & 14);
                        l<TextFieldValue, l0> lVarI2 = textFieldState.i();
                        boolean z25 = !z14;
                        if (i36 == 1) {
                            z19 = true;
                        } else {
                            z19 = z17;
                        }
                        Modifier modifierA6 = OnGloballyPositionedModifierKt.a(TextFieldScrollKt.d(m(modifier5.B(modifierC2), textFieldState, textFieldSelectionManager).B(TextFieldKeyInputKt.a(companion2, textFieldState, textFieldSelectionManager, value, lVarI2, z25, z19, offsetMappingA, undoManager)), textFieldScrollerPosition2, mutableInteractionSource3, z16).B(modifierB).B(modifierB5), new CoreTextFieldKt$CoreTextField$decorationBoxModifier$1(textFieldState));
                        if (!z16) {
                            z20 = z17;
                        } else {
                            z20 = z17;
                        }
                        if (z20) {
                            modifierB2 = TextFieldSelectionManager_androidKt.b(companion2, textFieldSelectionManager);
                        } else {
                            modifierB2 = companion2;
                        }
                        ImeOptions imeOptions4 = imeOptionsA;
                        composer2 = composerS;
                        b(modifierA6, textFieldSelectionManager, ComposableLambdaKt.b(composer2, -1885146845, true, new CoreTextFieldKt$CoreTextField$5(qVarA, i310, i36, textStyleA, textFieldScrollerPosition2, value, visualTransformationC, modifierB6, modifierA4, modifierA5, modifierB2, bringIntoViewRequester2, textFieldState, textFieldSelectionManager, z20, z14, lVar2)), composer2, 448);
                        textStyle2 = textStyleA;
                        mutableInteractionSource4 = mutableInteractionSource3;
                        lVar3 = lVar2;
                        brush2 = solidColor;
                        z21 = z12;
                        keyboardActions2 = keyboardActionsA;
                        z22 = z14;
                        qVar2 = qVarA;
                        visualTransformation2 = visualTransformationC;
                        modifier3 = modifier5;
                        i37 = i36;
                        z23 = z16;
                        imeOptions2 = imeOptions4;
                    } else {
                        composerS.J();
                        if ((i11 & 1) != 0) {
                            if (i38 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i15 != 0) {
                                textStyleA = TextStyle.Companion.a();
                            } else {
                                textStyleA = textStyle;
                            }
                            if (i17 != 0) {
                                visualTransformationC = VisualTransformation.Companion.c();
                            } else {
                                visualTransformationC = visualTransformation;
                            }
                            if (i19 != 0) {
                                lVar2 = CoreTextFieldKt$CoreTextField$1.INSTANCE;
                            } else {
                                lVar2 = lVar;
                            }
                            if (i21 != 0) {
                                mutableInteractionSource2 = null;
                            } else {
                                mutableInteractionSource2 = mutableInteractionSource;
                            }
                            if ((i13 & 128) != 0) {
                                solidColor = new SolidColor(Color.Companion.f(), null);
                            } else {
                                solidColor = brush;
                            }
                            if (i23 != 0) {
                                z12 = true;
                            } else {
                                z12 = z6;
                            }
                            if (i25 != 0) {
                                i35 = Integer.MAX_VALUE;
                            } else {
                                i35 = i10;
                            }
                            if ((i13 & 1024) != 0) {
                                imeOptionsA = ImeOptions.Companion.a();
                                i30 &= -15;
                            } else {
                                imeOptionsA = imeOptions;
                            }
                            if (i28 != 0) {
                                keyboardActionsA = KeyboardActions.Companion.a();
                            } else {
                                keyboardActionsA = keyboardActions;
                            }
                            if (i31 != 0) {
                                z13 = true;
                            } else {
                                z13 = z10;
                            }
                            if (i33 != 0) {
                                z14 = false;
                            } else {
                                z14 = z11;
                            }
                            if (i34 != 0) {
                                qVarA = ComposableSingletons$CoreTextFieldKt.INSTANCE.a();
                            } else {
                                qVarA = qVar;
                            }
                            z15 = z13;
                        } else {
                            if (i38 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i15 != 0) {
                                textStyleA = TextStyle.Companion.a();
                            } else {
                                textStyleA = textStyle;
                            }
                            if (i17 != 0) {
                                visualTransformationC = VisualTransformation.Companion.c();
                            } else {
                                visualTransformationC = visualTransformation;
                            }
                            if (i19 != 0) {
                                lVar2 = CoreTextFieldKt$CoreTextField$1.INSTANCE;
                            } else {
                                lVar2 = lVar;
                            }
                            if (i21 != 0) {
                                mutableInteractionSource2 = null;
                            } else {
                                mutableInteractionSource2 = mutableInteractionSource;
                            }
                            if ((i13 & 128) != 0) {
                                solidColor = new SolidColor(Color.Companion.f(), null);
                            } else {
                                solidColor = brush;
                            }
                            if (i23 != 0) {
                                z12 = true;
                            } else {
                                z12 = z6;
                            }
                            if (i25 != 0) {
                                i35 = Integer.MAX_VALUE;
                            } else {
                                i35 = i10;
                            }
                            if ((i13 & 1024) != 0) {
                                imeOptionsA = ImeOptions.Companion.a();
                                i30 &= -15;
                            } else {
                                imeOptionsA = imeOptions;
                            }
                            if (i28 != 0) {
                                keyboardActionsA = KeyboardActions.Companion.a();
                            } else {
                                keyboardActionsA = keyboardActions;
                            }
                            if (i31 != 0) {
                                z13 = true;
                            } else {
                                z13 = z10;
                            }
                            if (i33 != 0) {
                                z14 = false;
                            } else {
                                z14 = z11;
                            }
                            if (i34 != 0) {
                                qVarA = ComposableSingletons$CoreTextFieldKt.INSTANCE.a();
                            } else {
                                qVarA = qVar;
                            }
                            z15 = z13;
                        }
                        composerS.A();
                        focusRequester = new FocusRequester();
                        composerS.G(-55013392);
                        if (z15) {
                            textInputService = null;
                        } else {
                            textInputService = null;
                        }
                        composerS.Q();
                        density = (Density) composerS.x(CompositionLocalsKt.e());
                        resolver = (FontFamily.Resolver) composerS.x(CompositionLocalsKt.g());
                        long jA3 = ((TextSelectionColors) composerS.x(TextSelectionColorsKt.b())).a();
                        FocusManager focusManager3 = (FocusManager) composerS.x(CompositionLocalsKt.f());
                        Modifier modifier6 = modifier2;
                        if (i35 == 1) {
                            orientation = Orientation.Vertical;
                        } else {
                            orientation = Orientation.Vertical;
                        }
                        int i311 = i30;
                        i36 = i35;
                        orientation2 = orientation;
                        Object[] objArr3 = {orientation2};
                        Saver<TextFieldScrollerPosition, Object> saverA3 = TextFieldScrollerPosition.Companion.a();
                        z16 = z15;
                        composerS.G(1157296644);
                        zK = composerS.k(orientation2);
                        mutableInteractionSource3 = mutableInteractionSource2;
                        objH = composerS.H();
                        if (zK) {
                            objH = new CoreTextFieldKt$CoreTextField$scrollerPosition$1$1(orientation2);
                            composerS.z(objH);
                        } else {
                            objH = new CoreTextFieldKt$CoreTextField$scrollerPosition$1$1(orientation2);
                            composerS.z(objH);
                        }
                        composerS.Q();
                        TextFieldScrollerPosition textFieldScrollerPosition3 = (TextFieldScrollerPosition) RememberSaveableKt.b(objArr3, saverA3, null, (a) objH, composerS, 72, 4);
                        composerS.G(511388516);
                        zK2 = composerS.k(value) | composerS.k(visualTransformationC);
                        objH2 = composerS.H();
                        if (zK2) {
                            transformedTextA = visualTransformationC.a(value.e());
                            textRangeF = value.f();
                            if (textRangeF != null) {
                                objH2 = transformedTextA;
                            } else {
                                objH2 = transformedTextA;
                            }
                            composerS.z(objH2);
                        } else {
                            transformedTextA = visualTransformationC.a(value.e());
                            textRangeF = value.f();
                            if (textRangeF != null) {
                                objH2 = transformedTextA;
                            } else {
                                objH2 = transformedTextA;
                            }
                            composerS.z(objH2);
                        }
                        composerS.Q();
                        TransformedText transformedText3 = (TransformedText) objH2;
                        annotatedStringB = transformedText3.b();
                        offsetMappingA = transformedText3.a();
                        recomposeScopeB = ComposablesKt.b(composerS, 0);
                        composerS.G(-492369756);
                        objH3 = composerS.H();
                        companion = Composer.Companion;
                        if (objH3 == companion.a()) {
                            objH3 = new TextFieldState(new TextDelegate(annotatedStringB, textStyleA, 0, z12, 0, density, resolver, null, TarConstants.CHKSUM_OFFSET, null), recomposeScopeB);
                            composerS.z(objH3);
                        }
                        composerS.Q();
                        textFieldState = (TextFieldState) objH3;
                        textFieldState.A(annotatedStringB, textStyleA, z12, density, resolver, onValueChange, keyboardActionsA, focusManager3, jA3);
                        textFieldState.j().b(value, textFieldState.e());
                        composerS.G(-492369756);
                        objH4 = composerS.H();
                        if (objH4 == companion.a()) {
                            objH4 = new UndoManager(0, 1, null);
                            composerS.z(objH4);
                        }
                        composerS.Q();
                        undoManager = (UndoManager) objH4;
                        UndoManager.f(undoManager, value, 0L, 2, null);
                        composerS.G(-492369756);
                        objH5 = composerS.H();
                        if (objH5 == companion.a()) {
                            objH5 = new TextFieldSelectionManager(undoManager);
                            composerS.z(objH5);
                        }
                        composerS.Q();
                        textFieldSelectionManager = (TextFieldSelectionManager) objH5;
                        textFieldSelectionManager.U(offsetMappingA);
                        textFieldSelectionManager.Z(visualTransformationC);
                        textFieldSelectionManager.V(textFieldState.i());
                        textFieldSelectionManager.W(textFieldState);
                        textFieldSelectionManager.Y(value);
                        textFieldSelectionManager.N((ClipboardManager) composerS.x(CompositionLocalsKt.d()));
                        textFieldSelectionManager.X((TextToolbar) composerS.x(CompositionLocalsKt.m()));
                        textFieldSelectionManager.T((HapticFeedback) composerS.x(CompositionLocalsKt.h()));
                        textFieldSelectionManager.R(focusRequester);
                        textFieldSelectionManager.Q(!z14);
                        composerS.G(773894976);
                        composerS.G(-492369756);
                        objH6 = composerS.H();
                        if (objH6 == companion.a()) {
                            CompositionScopedCoroutineScopeCanceller compositionScopedCoroutineScopeCanceller3 = new CompositionScopedCoroutineScopeCanceller(EffectsKt.j(h.INSTANCE, composerS));
                            composerS.z(compositionScopedCoroutineScopeCanceller3);
                            objH6 = compositionScopedCoroutineScopeCanceller3;
                        }
                        composerS.Q();
                        o0 o0VarA3 = ((CompositionScopedCoroutineScopeCanceller) objH6).a();
                        composerS.Q();
                        composerS.G(-492369756);
                        objH7 = composerS.H();
                        if (objH7 == companion.a()) {
                            objH7 = BringIntoViewRequesterKt.a();
                            composerS.z(objH7);
                        }
                        composerS.Q();
                        BringIntoViewRequester bringIntoViewRequester3 = (BringIntoViewRequester) objH7;
                        companion2 = Modifier.Companion;
                        Modifier modifierC3 = TextFieldGestureModifiersKt.c(companion2, z16, focusRequester, mutableInteractionSource3, new CoreTextFieldKt$CoreTextField$focusModifier$1(textFieldState, textInputService, value, imeOptionsA, textFieldSelectionManager, o0VarA3, bringIntoViewRequester3, offsetMappingA));
                        EffectsKt.a(textFieldState, new CoreTextFieldKt$CoreTextField$2(textFieldState), composerS, 8);
                        if (TouchMode_androidKt.a()) {
                            modifierB = TextFieldPressGestureFilterKt.a(companion2, mutableInteractionSource3, z16, new CoreTextFieldKt$CoreTextField$pointerModifier$1(textFieldState, focusRequester, z14, textFieldSelectionManager, offsetMappingA)).B(TextFieldGestureModifiersKt.a(companion2, textFieldSelectionManager.G(), z16));
                            z17 = false;
                        } else {
                            z17 = false;
                            modifierB = PointerIconKt.b(TextFieldGestureModifiersKt.b(companion2, textFieldSelectionManager.B(), z16), TextPointerIcon_androidKt.a(), false, 2, null);
                        }
                        Modifier modifierA7 = DrawModifierKt.a(companion2, new CoreTextFieldKt$CoreTextField$drawModifier$1(textFieldState, value, offsetMappingA));
                        Modifier modifierA8 = OnGloballyPositionedModifierKt.a(companion2, new CoreTextFieldKt$CoreTextField$onPositionedModifier$1(textFieldState, z16, textFieldSelectionManager));
                        Modifier modifierB7 = SemanticsModifierKt.b(companion2, true, new CoreTextFieldKt$CoreTextField$semanticsModifier$1(imeOptionsA, transformedText3, value, z16, visualTransformationC instanceof PasswordVisualTransformation, z14, textFieldState, offsetMappingA, textFieldSelectionManager, focusRequester));
                        if (z16) {
                            z18 = z17;
                        } else {
                            z18 = z17;
                        }
                        Modifier modifierB8 = TextFieldCursorKt.b(companion2, textFieldState, value, offsetMappingA, solidColor, z18);
                        EffectsKt.a(textFieldSelectionManager, new CoreTextFieldKt$CoreTextField$3(textFieldSelectionManager), composerS, 8);
                        EffectsKt.a(imeOptionsA, new CoreTextFieldKt$CoreTextField$4(textInputService, textFieldState, value, imeOptionsA), composerS, i311 & 14);
                        l<TextFieldValue, l0> lVarI3 = textFieldState.i();
                        boolean z26 = !z14;
                        if (i36 == 1) {
                            z19 = true;
                        } else {
                            z19 = z17;
                        }
                        Modifier modifierA9 = OnGloballyPositionedModifierKt.a(TextFieldScrollKt.d(m(modifier6.B(modifierC3), textFieldState, textFieldSelectionManager).B(TextFieldKeyInputKt.a(companion2, textFieldState, textFieldSelectionManager, value, lVarI3, z26, z19, offsetMappingA, undoManager)), textFieldScrollerPosition3, mutableInteractionSource3, z16).B(modifierB).B(modifierB7), new CoreTextFieldKt$CoreTextField$decorationBoxModifier$1(textFieldState));
                        if (!z16) {
                            z20 = z17;
                        } else {
                            z20 = z17;
                        }
                        if (z20) {
                            modifierB2 = TextFieldSelectionManager_androidKt.b(companion2, textFieldSelectionManager);
                        } else {
                            modifierB2 = companion2;
                        }
                        ImeOptions imeOptions5 = imeOptionsA;
                        composer2 = composerS;
                        b(modifierA9, textFieldSelectionManager, ComposableLambdaKt.b(composer2, -1885146845, true, new CoreTextFieldKt$CoreTextField$5(qVarA, i311, i36, textStyleA, textFieldScrollerPosition3, value, visualTransformationC, modifierB8, modifierA7, modifierA8, modifierB2, bringIntoViewRequester3, textFieldState, textFieldSelectionManager, z20, z14, lVar2)), composer2, 448);
                        textStyle2 = textStyleA;
                        mutableInteractionSource4 = mutableInteractionSource3;
                        lVar3 = lVar2;
                        brush2 = solidColor;
                        z21 = z12;
                        keyboardActions2 = keyboardActionsA;
                        z22 = z14;
                        qVar2 = qVarA;
                        visualTransformation2 = visualTransformationC;
                        modifier3 = modifier6;
                        i37 = i36;
                        z23 = z16;
                        imeOptions2 = imeOptions5;
                    }
                    scopeUpdateScopeU = composer2.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new CoreTextFieldKt$CoreTextField$6(value, onValueChange, modifier3, textStyle2, visualTransformation2, lVar3, mutableInteractionSource4, brush2, z21, i37, imeOptions2, keyboardActions2, z23, z22, qVar2, i11, i12, i13));
                }
                i30 |= 384;
                i33 = i13 & 8192;
                if (i33 != 0) {
                    if ((i12 & 7168) == 0) {
                        i30 |= composerS.m(z11) ? 2048 : 1024;
                    }
                    i34 = i13 & 16384;
                    if (i34 != 0) {
                        i30 |= CpioConstants.C_ISBLK;
                    } else if ((i12 & 57344) == 0) {
                        i30 |= composerS.k(qVar) ? 16384 : 8192;
                    }
                    if ((i14 & 1533916891) != 306783378) {
                        composerS.J();
                        if ((i11 & 1) != 0) {
                            if (i38 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i15 != 0) {
                                textStyleA = TextStyle.Companion.a();
                            } else {
                                textStyleA = textStyle;
                            }
                            if (i17 != 0) {
                                visualTransformationC = VisualTransformation.Companion.c();
                            } else {
                                visualTransformationC = visualTransformation;
                            }
                            if (i19 != 0) {
                                lVar2 = CoreTextFieldKt$CoreTextField$1.INSTANCE;
                            } else {
                                lVar2 = lVar;
                            }
                            if (i21 != 0) {
                                mutableInteractionSource2 = null;
                            } else {
                                mutableInteractionSource2 = mutableInteractionSource;
                            }
                            if ((i13 & 128) != 0) {
                                solidColor = new SolidColor(Color.Companion.f(), null);
                            } else {
                                solidColor = brush;
                            }
                            if (i23 != 0) {
                                z12 = true;
                            } else {
                                z12 = z6;
                            }
                            if (i25 != 0) {
                                i35 = Integer.MAX_VALUE;
                            } else {
                                i35 = i10;
                            }
                            if ((i13 & 1024) != 0) {
                                imeOptionsA = ImeOptions.Companion.a();
                                i30 &= -15;
                            } else {
                                imeOptionsA = imeOptions;
                            }
                            if (i28 != 0) {
                                keyboardActionsA = KeyboardActions.Companion.a();
                            } else {
                                keyboardActionsA = keyboardActions;
                            }
                            if (i31 != 0) {
                                z13 = true;
                            } else {
                                z13 = z10;
                            }
                            if (i33 != 0) {
                                z14 = false;
                            } else {
                                z14 = z11;
                            }
                            if (i34 != 0) {
                                qVarA = ComposableSingletons$CoreTextFieldKt.INSTANCE.a();
                            } else {
                                qVarA = qVar;
                            }
                            z15 = z13;
                        } else {
                            if (i38 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i15 != 0) {
                                textStyleA = TextStyle.Companion.a();
                            } else {
                                textStyleA = textStyle;
                            }
                            if (i17 != 0) {
                                visualTransformationC = VisualTransformation.Companion.c();
                            } else {
                                visualTransformationC = visualTransformation;
                            }
                            if (i19 != 0) {
                                lVar2 = CoreTextFieldKt$CoreTextField$1.INSTANCE;
                            } else {
                                lVar2 = lVar;
                            }
                            if (i21 != 0) {
                                mutableInteractionSource2 = null;
                            } else {
                                mutableInteractionSource2 = mutableInteractionSource;
                            }
                            if ((i13 & 128) != 0) {
                                solidColor = new SolidColor(Color.Companion.f(), null);
                            } else {
                                solidColor = brush;
                            }
                            if (i23 != 0) {
                                z12 = true;
                            } else {
                                z12 = z6;
                            }
                            if (i25 != 0) {
                                i35 = Integer.MAX_VALUE;
                            } else {
                                i35 = i10;
                            }
                            if ((i13 & 1024) != 0) {
                                imeOptionsA = ImeOptions.Companion.a();
                                i30 &= -15;
                            } else {
                                imeOptionsA = imeOptions;
                            }
                            if (i28 != 0) {
                                keyboardActionsA = KeyboardActions.Companion.a();
                            } else {
                                keyboardActionsA = keyboardActions;
                            }
                            if (i31 != 0) {
                                z13 = true;
                            } else {
                                z13 = z10;
                            }
                            if (i33 != 0) {
                                z14 = false;
                            } else {
                                z14 = z11;
                            }
                            if (i34 != 0) {
                                qVarA = ComposableSingletons$CoreTextFieldKt.INSTANCE.a();
                            } else {
                                qVarA = qVar;
                            }
                            z15 = z13;
                        }
                        composerS.A();
                        focusRequester = new FocusRequester();
                        composerS.G(-55013392);
                        if (z15) {
                            textInputService = null;
                        } else {
                            textInputService = null;
                        }
                        composerS.Q();
                        density = (Density) composerS.x(CompositionLocalsKt.e());
                        resolver = (FontFamily.Resolver) composerS.x(CompositionLocalsKt.g());
                        long jA4 = ((TextSelectionColors) composerS.x(TextSelectionColorsKt.b())).a();
                        FocusManager focusManager4 = (FocusManager) composerS.x(CompositionLocalsKt.f());
                        Modifier modifier7 = modifier2;
                        if (i35 == 1) {
                            orientation = Orientation.Vertical;
                        } else {
                            orientation = Orientation.Vertical;
                        }
                        int i312 = i30;
                        i36 = i35;
                        orientation2 = orientation;
                        Object[] objArr4 = {orientation2};
                        Saver<TextFieldScrollerPosition, Object> saverA4 = TextFieldScrollerPosition.Companion.a();
                        z16 = z15;
                        composerS.G(1157296644);
                        zK = composerS.k(orientation2);
                        mutableInteractionSource3 = mutableInteractionSource2;
                        objH = composerS.H();
                        if (zK) {
                            objH = new CoreTextFieldKt$CoreTextField$scrollerPosition$1$1(orientation2);
                            composerS.z(objH);
                        } else {
                            objH = new CoreTextFieldKt$CoreTextField$scrollerPosition$1$1(orientation2);
                            composerS.z(objH);
                        }
                        composerS.Q();
                        TextFieldScrollerPosition textFieldScrollerPosition4 = (TextFieldScrollerPosition) RememberSaveableKt.b(objArr4, saverA4, null, (a) objH, composerS, 72, 4);
                        composerS.G(511388516);
                        zK2 = composerS.k(value) | composerS.k(visualTransformationC);
                        objH2 = composerS.H();
                        if (zK2) {
                            transformedTextA = visualTransformationC.a(value.e());
                            textRangeF = value.f();
                            if (textRangeF != null) {
                                objH2 = transformedTextA;
                            } else {
                                objH2 = transformedTextA;
                            }
                            composerS.z(objH2);
                        } else {
                            transformedTextA = visualTransformationC.a(value.e());
                            textRangeF = value.f();
                            if (textRangeF != null) {
                                objH2 = transformedTextA;
                            } else {
                                objH2 = transformedTextA;
                            }
                            composerS.z(objH2);
                        }
                        composerS.Q();
                        TransformedText transformedText4 = (TransformedText) objH2;
                        annotatedStringB = transformedText4.b();
                        offsetMappingA = transformedText4.a();
                        recomposeScopeB = ComposablesKt.b(composerS, 0);
                        composerS.G(-492369756);
                        objH3 = composerS.H();
                        companion = Composer.Companion;
                        if (objH3 == companion.a()) {
                            objH3 = new TextFieldState(new TextDelegate(annotatedStringB, textStyleA, 0, z12, 0, density, resolver, null, TarConstants.CHKSUM_OFFSET, null), recomposeScopeB);
                            composerS.z(objH3);
                        }
                        composerS.Q();
                        textFieldState = (TextFieldState) objH3;
                        textFieldState.A(annotatedStringB, textStyleA, z12, density, resolver, onValueChange, keyboardActionsA, focusManager4, jA4);
                        textFieldState.j().b(value, textFieldState.e());
                        composerS.G(-492369756);
                        objH4 = composerS.H();
                        if (objH4 == companion.a()) {
                            objH4 = new UndoManager(0, 1, null);
                            composerS.z(objH4);
                        }
                        composerS.Q();
                        undoManager = (UndoManager) objH4;
                        UndoManager.f(undoManager, value, 0L, 2, null);
                        composerS.G(-492369756);
                        objH5 = composerS.H();
                        if (objH5 == companion.a()) {
                            objH5 = new TextFieldSelectionManager(undoManager);
                            composerS.z(objH5);
                        }
                        composerS.Q();
                        textFieldSelectionManager = (TextFieldSelectionManager) objH5;
                        textFieldSelectionManager.U(offsetMappingA);
                        textFieldSelectionManager.Z(visualTransformationC);
                        textFieldSelectionManager.V(textFieldState.i());
                        textFieldSelectionManager.W(textFieldState);
                        textFieldSelectionManager.Y(value);
                        textFieldSelectionManager.N((ClipboardManager) composerS.x(CompositionLocalsKt.d()));
                        textFieldSelectionManager.X((TextToolbar) composerS.x(CompositionLocalsKt.m()));
                        textFieldSelectionManager.T((HapticFeedback) composerS.x(CompositionLocalsKt.h()));
                        textFieldSelectionManager.R(focusRequester);
                        textFieldSelectionManager.Q(!z14);
                        composerS.G(773894976);
                        composerS.G(-492369756);
                        objH6 = composerS.H();
                        if (objH6 == companion.a()) {
                            CompositionScopedCoroutineScopeCanceller compositionScopedCoroutineScopeCanceller4 = new CompositionScopedCoroutineScopeCanceller(EffectsKt.j(h.INSTANCE, composerS));
                            composerS.z(compositionScopedCoroutineScopeCanceller4);
                            objH6 = compositionScopedCoroutineScopeCanceller4;
                        }
                        composerS.Q();
                        o0 o0VarA4 = ((CompositionScopedCoroutineScopeCanceller) objH6).a();
                        composerS.Q();
                        composerS.G(-492369756);
                        objH7 = composerS.H();
                        if (objH7 == companion.a()) {
                            objH7 = BringIntoViewRequesterKt.a();
                            composerS.z(objH7);
                        }
                        composerS.Q();
                        BringIntoViewRequester bringIntoViewRequester4 = (BringIntoViewRequester) objH7;
                        companion2 = Modifier.Companion;
                        Modifier modifierC4 = TextFieldGestureModifiersKt.c(companion2, z16, focusRequester, mutableInteractionSource3, new CoreTextFieldKt$CoreTextField$focusModifier$1(textFieldState, textInputService, value, imeOptionsA, textFieldSelectionManager, o0VarA4, bringIntoViewRequester4, offsetMappingA));
                        EffectsKt.a(textFieldState, new CoreTextFieldKt$CoreTextField$2(textFieldState), composerS, 8);
                        if (TouchMode_androidKt.a()) {
                            modifierB = TextFieldPressGestureFilterKt.a(companion2, mutableInteractionSource3, z16, new CoreTextFieldKt$CoreTextField$pointerModifier$1(textFieldState, focusRequester, z14, textFieldSelectionManager, offsetMappingA)).B(TextFieldGestureModifiersKt.a(companion2, textFieldSelectionManager.G(), z16));
                            z17 = false;
                        } else {
                            z17 = false;
                            modifierB = PointerIconKt.b(TextFieldGestureModifiersKt.b(companion2, textFieldSelectionManager.B(), z16), TextPointerIcon_androidKt.a(), false, 2, null);
                        }
                        Modifier modifierA10 = DrawModifierKt.a(companion2, new CoreTextFieldKt$CoreTextField$drawModifier$1(textFieldState, value, offsetMappingA));
                        Modifier modifierA11 = OnGloballyPositionedModifierKt.a(companion2, new CoreTextFieldKt$CoreTextField$onPositionedModifier$1(textFieldState, z16, textFieldSelectionManager));
                        Modifier modifierB9 = SemanticsModifierKt.b(companion2, true, new CoreTextFieldKt$CoreTextField$semanticsModifier$1(imeOptionsA, transformedText4, value, z16, visualTransformationC instanceof PasswordVisualTransformation, z14, textFieldState, offsetMappingA, textFieldSelectionManager, focusRequester));
                        if (z16) {
                            z18 = z17;
                        } else {
                            z18 = z17;
                        }
                        Modifier modifierB10 = TextFieldCursorKt.b(companion2, textFieldState, value, offsetMappingA, solidColor, z18);
                        EffectsKt.a(textFieldSelectionManager, new CoreTextFieldKt$CoreTextField$3(textFieldSelectionManager), composerS, 8);
                        EffectsKt.a(imeOptionsA, new CoreTextFieldKt$CoreTextField$4(textInputService, textFieldState, value, imeOptionsA), composerS, i312 & 14);
                        l<TextFieldValue, l0> lVarI4 = textFieldState.i();
                        boolean z27 = !z14;
                        if (i36 == 1) {
                            z19 = true;
                        } else {
                            z19 = z17;
                        }
                        Modifier modifierA12 = OnGloballyPositionedModifierKt.a(TextFieldScrollKt.d(m(modifier7.B(modifierC4), textFieldState, textFieldSelectionManager).B(TextFieldKeyInputKt.a(companion2, textFieldState, textFieldSelectionManager, value, lVarI4, z27, z19, offsetMappingA, undoManager)), textFieldScrollerPosition4, mutableInteractionSource3, z16).B(modifierB).B(modifierB9), new CoreTextFieldKt$CoreTextField$decorationBoxModifier$1(textFieldState));
                        if (!z16) {
                            z20 = z17;
                        } else {
                            z20 = z17;
                        }
                        if (z20) {
                            modifierB2 = TextFieldSelectionManager_androidKt.b(companion2, textFieldSelectionManager);
                        } else {
                            modifierB2 = companion2;
                        }
                        ImeOptions imeOptions6 = imeOptionsA;
                        composer2 = composerS;
                        b(modifierA12, textFieldSelectionManager, ComposableLambdaKt.b(composer2, -1885146845, true, new CoreTextFieldKt$CoreTextField$5(qVarA, i312, i36, textStyleA, textFieldScrollerPosition4, value, visualTransformationC, modifierB10, modifierA10, modifierA11, modifierB2, bringIntoViewRequester4, textFieldState, textFieldSelectionManager, z20, z14, lVar2)), composer2, 448);
                        textStyle2 = textStyleA;
                        mutableInteractionSource4 = mutableInteractionSource3;
                        lVar3 = lVar2;
                        brush2 = solidColor;
                        z21 = z12;
                        keyboardActions2 = keyboardActionsA;
                        z22 = z14;
                        qVar2 = qVarA;
                        visualTransformation2 = visualTransformationC;
                        modifier3 = modifier7;
                        i37 = i36;
                        z23 = z16;
                        imeOptions2 = imeOptions6;
                    } else {
                        composerS.J();
                        if ((i11 & 1) != 0) {
                            if (i38 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i15 != 0) {
                                textStyleA = TextStyle.Companion.a();
                            } else {
                                textStyleA = textStyle;
                            }
                            if (i17 != 0) {
                                visualTransformationC = VisualTransformation.Companion.c();
                            } else {
                                visualTransformationC = visualTransformation;
                            }
                            if (i19 != 0) {
                                lVar2 = CoreTextFieldKt$CoreTextField$1.INSTANCE;
                            } else {
                                lVar2 = lVar;
                            }
                            if (i21 != 0) {
                                mutableInteractionSource2 = null;
                            } else {
                                mutableInteractionSource2 = mutableInteractionSource;
                            }
                            if ((i13 & 128) != 0) {
                                solidColor = new SolidColor(Color.Companion.f(), null);
                            } else {
                                solidColor = brush;
                            }
                            if (i23 != 0) {
                                z12 = true;
                            } else {
                                z12 = z6;
                            }
                            if (i25 != 0) {
                                i35 = Integer.MAX_VALUE;
                            } else {
                                i35 = i10;
                            }
                            if ((i13 & 1024) != 0) {
                                imeOptionsA = ImeOptions.Companion.a();
                                i30 &= -15;
                            } else {
                                imeOptionsA = imeOptions;
                            }
                            if (i28 != 0) {
                                keyboardActionsA = KeyboardActions.Companion.a();
                            } else {
                                keyboardActionsA = keyboardActions;
                            }
                            if (i31 != 0) {
                                z13 = true;
                            } else {
                                z13 = z10;
                            }
                            if (i33 != 0) {
                                z14 = false;
                            } else {
                                z14 = z11;
                            }
                            if (i34 != 0) {
                                qVarA = ComposableSingletons$CoreTextFieldKt.INSTANCE.a();
                            } else {
                                qVarA = qVar;
                            }
                            z15 = z13;
                        } else {
                            if (i38 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i15 != 0) {
                                textStyleA = TextStyle.Companion.a();
                            } else {
                                textStyleA = textStyle;
                            }
                            if (i17 != 0) {
                                visualTransformationC = VisualTransformation.Companion.c();
                            } else {
                                visualTransformationC = visualTransformation;
                            }
                            if (i19 != 0) {
                                lVar2 = CoreTextFieldKt$CoreTextField$1.INSTANCE;
                            } else {
                                lVar2 = lVar;
                            }
                            if (i21 != 0) {
                                mutableInteractionSource2 = null;
                            } else {
                                mutableInteractionSource2 = mutableInteractionSource;
                            }
                            if ((i13 & 128) != 0) {
                                solidColor = new SolidColor(Color.Companion.f(), null);
                            } else {
                                solidColor = brush;
                            }
                            if (i23 != 0) {
                                z12 = true;
                            } else {
                                z12 = z6;
                            }
                            if (i25 != 0) {
                                i35 = Integer.MAX_VALUE;
                            } else {
                                i35 = i10;
                            }
                            if ((i13 & 1024) != 0) {
                                imeOptionsA = ImeOptions.Companion.a();
                                i30 &= -15;
                            } else {
                                imeOptionsA = imeOptions;
                            }
                            if (i28 != 0) {
                                keyboardActionsA = KeyboardActions.Companion.a();
                            } else {
                                keyboardActionsA = keyboardActions;
                            }
                            if (i31 != 0) {
                                z13 = true;
                            } else {
                                z13 = z10;
                            }
                            if (i33 != 0) {
                                z14 = false;
                            } else {
                                z14 = z11;
                            }
                            if (i34 != 0) {
                                qVarA = ComposableSingletons$CoreTextFieldKt.INSTANCE.a();
                            } else {
                                qVarA = qVar;
                            }
                            z15 = z13;
                        }
                        composerS.A();
                        focusRequester = new FocusRequester();
                        composerS.G(-55013392);
                        if (z15) {
                            textInputService = null;
                        } else {
                            textInputService = null;
                        }
                        composerS.Q();
                        density = (Density) composerS.x(CompositionLocalsKt.e());
                        resolver = (FontFamily.Resolver) composerS.x(CompositionLocalsKt.g());
                        long jA5 = ((TextSelectionColors) composerS.x(TextSelectionColorsKt.b())).a();
                        FocusManager focusManager5 = (FocusManager) composerS.x(CompositionLocalsKt.f());
                        Modifier modifier8 = modifier2;
                        if (i35 == 1) {
                            orientation = Orientation.Vertical;
                        } else {
                            orientation = Orientation.Vertical;
                        }
                        int i313 = i30;
                        i36 = i35;
                        orientation2 = orientation;
                        Object[] objArr5 = {orientation2};
                        Saver<TextFieldScrollerPosition, Object> saverA5 = TextFieldScrollerPosition.Companion.a();
                        z16 = z15;
                        composerS.G(1157296644);
                        zK = composerS.k(orientation2);
                        mutableInteractionSource3 = mutableInteractionSource2;
                        objH = composerS.H();
                        if (zK) {
                            objH = new CoreTextFieldKt$CoreTextField$scrollerPosition$1$1(orientation2);
                            composerS.z(objH);
                        } else {
                            objH = new CoreTextFieldKt$CoreTextField$scrollerPosition$1$1(orientation2);
                            composerS.z(objH);
                        }
                        composerS.Q();
                        TextFieldScrollerPosition textFieldScrollerPosition5 = (TextFieldScrollerPosition) RememberSaveableKt.b(objArr5, saverA5, null, (a) objH, composerS, 72, 4);
                        composerS.G(511388516);
                        zK2 = composerS.k(value) | composerS.k(visualTransformationC);
                        objH2 = composerS.H();
                        if (zK2) {
                            transformedTextA = visualTransformationC.a(value.e());
                            textRangeF = value.f();
                            if (textRangeF != null) {
                                objH2 = transformedTextA;
                            } else {
                                objH2 = transformedTextA;
                            }
                            composerS.z(objH2);
                        } else {
                            transformedTextA = visualTransformationC.a(value.e());
                            textRangeF = value.f();
                            if (textRangeF != null) {
                                objH2 = transformedTextA;
                            } else {
                                objH2 = transformedTextA;
                            }
                            composerS.z(objH2);
                        }
                        composerS.Q();
                        TransformedText transformedText5 = (TransformedText) objH2;
                        annotatedStringB = transformedText5.b();
                        offsetMappingA = transformedText5.a();
                        recomposeScopeB = ComposablesKt.b(composerS, 0);
                        composerS.G(-492369756);
                        objH3 = composerS.H();
                        companion = Composer.Companion;
                        if (objH3 == companion.a()) {
                            objH3 = new TextFieldState(new TextDelegate(annotatedStringB, textStyleA, 0, z12, 0, density, resolver, null, TarConstants.CHKSUM_OFFSET, null), recomposeScopeB);
                            composerS.z(objH3);
                        }
                        composerS.Q();
                        textFieldState = (TextFieldState) objH3;
                        textFieldState.A(annotatedStringB, textStyleA, z12, density, resolver, onValueChange, keyboardActionsA, focusManager5, jA5);
                        textFieldState.j().b(value, textFieldState.e());
                        composerS.G(-492369756);
                        objH4 = composerS.H();
                        if (objH4 == companion.a()) {
                            objH4 = new UndoManager(0, 1, null);
                            composerS.z(objH4);
                        }
                        composerS.Q();
                        undoManager = (UndoManager) objH4;
                        UndoManager.f(undoManager, value, 0L, 2, null);
                        composerS.G(-492369756);
                        objH5 = composerS.H();
                        if (objH5 == companion.a()) {
                            objH5 = new TextFieldSelectionManager(undoManager);
                            composerS.z(objH5);
                        }
                        composerS.Q();
                        textFieldSelectionManager = (TextFieldSelectionManager) objH5;
                        textFieldSelectionManager.U(offsetMappingA);
                        textFieldSelectionManager.Z(visualTransformationC);
                        textFieldSelectionManager.V(textFieldState.i());
                        textFieldSelectionManager.W(textFieldState);
                        textFieldSelectionManager.Y(value);
                        textFieldSelectionManager.N((ClipboardManager) composerS.x(CompositionLocalsKt.d()));
                        textFieldSelectionManager.X((TextToolbar) composerS.x(CompositionLocalsKt.m()));
                        textFieldSelectionManager.T((HapticFeedback) composerS.x(CompositionLocalsKt.h()));
                        textFieldSelectionManager.R(focusRequester);
                        textFieldSelectionManager.Q(!z14);
                        composerS.G(773894976);
                        composerS.G(-492369756);
                        objH6 = composerS.H();
                        if (objH6 == companion.a()) {
                            CompositionScopedCoroutineScopeCanceller compositionScopedCoroutineScopeCanceller5 = new CompositionScopedCoroutineScopeCanceller(EffectsKt.j(h.INSTANCE, composerS));
                            composerS.z(compositionScopedCoroutineScopeCanceller5);
                            objH6 = compositionScopedCoroutineScopeCanceller5;
                        }
                        composerS.Q();
                        o0 o0VarA5 = ((CompositionScopedCoroutineScopeCanceller) objH6).a();
                        composerS.Q();
                        composerS.G(-492369756);
                        objH7 = composerS.H();
                        if (objH7 == companion.a()) {
                            objH7 = BringIntoViewRequesterKt.a();
                            composerS.z(objH7);
                        }
                        composerS.Q();
                        BringIntoViewRequester bringIntoViewRequester5 = (BringIntoViewRequester) objH7;
                        companion2 = Modifier.Companion;
                        Modifier modifierC5 = TextFieldGestureModifiersKt.c(companion2, z16, focusRequester, mutableInteractionSource3, new CoreTextFieldKt$CoreTextField$focusModifier$1(textFieldState, textInputService, value, imeOptionsA, textFieldSelectionManager, o0VarA5, bringIntoViewRequester5, offsetMappingA));
                        EffectsKt.a(textFieldState, new CoreTextFieldKt$CoreTextField$2(textFieldState), composerS, 8);
                        if (TouchMode_androidKt.a()) {
                            modifierB = TextFieldPressGestureFilterKt.a(companion2, mutableInteractionSource3, z16, new CoreTextFieldKt$CoreTextField$pointerModifier$1(textFieldState, focusRequester, z14, textFieldSelectionManager, offsetMappingA)).B(TextFieldGestureModifiersKt.a(companion2, textFieldSelectionManager.G(), z16));
                            z17 = false;
                        } else {
                            z17 = false;
                            modifierB = PointerIconKt.b(TextFieldGestureModifiersKt.b(companion2, textFieldSelectionManager.B(), z16), TextPointerIcon_androidKt.a(), false, 2, null);
                        }
                        Modifier modifierA13 = DrawModifierKt.a(companion2, new CoreTextFieldKt$CoreTextField$drawModifier$1(textFieldState, value, offsetMappingA));
                        Modifier modifierA14 = OnGloballyPositionedModifierKt.a(companion2, new CoreTextFieldKt$CoreTextField$onPositionedModifier$1(textFieldState, z16, textFieldSelectionManager));
                        Modifier modifierB11 = SemanticsModifierKt.b(companion2, true, new CoreTextFieldKt$CoreTextField$semanticsModifier$1(imeOptionsA, transformedText5, value, z16, visualTransformationC instanceof PasswordVisualTransformation, z14, textFieldState, offsetMappingA, textFieldSelectionManager, focusRequester));
                        if (z16) {
                            z18 = z17;
                        } else {
                            z18 = z17;
                        }
                        Modifier modifierB12 = TextFieldCursorKt.b(companion2, textFieldState, value, offsetMappingA, solidColor, z18);
                        EffectsKt.a(textFieldSelectionManager, new CoreTextFieldKt$CoreTextField$3(textFieldSelectionManager), composerS, 8);
                        EffectsKt.a(imeOptionsA, new CoreTextFieldKt$CoreTextField$4(textInputService, textFieldState, value, imeOptionsA), composerS, i313 & 14);
                        l<TextFieldValue, l0> lVarI5 = textFieldState.i();
                        boolean z28 = !z14;
                        if (i36 == 1) {
                            z19 = true;
                        } else {
                            z19 = z17;
                        }
                        Modifier modifierA15 = OnGloballyPositionedModifierKt.a(TextFieldScrollKt.d(m(modifier8.B(modifierC5), textFieldState, textFieldSelectionManager).B(TextFieldKeyInputKt.a(companion2, textFieldState, textFieldSelectionManager, value, lVarI5, z28, z19, offsetMappingA, undoManager)), textFieldScrollerPosition5, mutableInteractionSource3, z16).B(modifierB).B(modifierB11), new CoreTextFieldKt$CoreTextField$decorationBoxModifier$1(textFieldState));
                        if (!z16) {
                            z20 = z17;
                        } else {
                            z20 = z17;
                        }
                        if (z20) {
                            modifierB2 = TextFieldSelectionManager_androidKt.b(companion2, textFieldSelectionManager);
                        } else {
                            modifierB2 = companion2;
                        }
                        ImeOptions imeOptions7 = imeOptionsA;
                        composer2 = composerS;
                        b(modifierA15, textFieldSelectionManager, ComposableLambdaKt.b(composer2, -1885146845, true, new CoreTextFieldKt$CoreTextField$5(qVarA, i313, i36, textStyleA, textFieldScrollerPosition5, value, visualTransformationC, modifierB12, modifierA13, modifierA14, modifierB2, bringIntoViewRequester5, textFieldState, textFieldSelectionManager, z20, z14, lVar2)), composer2, 448);
                        textStyle2 = textStyleA;
                        mutableInteractionSource4 = mutableInteractionSource3;
                        lVar3 = lVar2;
                        brush2 = solidColor;
                        z21 = z12;
                        keyboardActions2 = keyboardActionsA;
                        z22 = z14;
                        qVar2 = qVarA;
                        visualTransformation2 = visualTransformationC;
                        modifier3 = modifier8;
                        i37 = i36;
                        z23 = z16;
                        imeOptions2 = imeOptions7;
                    }
                    scopeUpdateScopeU = composer2.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new CoreTextFieldKt$CoreTextField$6(value, onValueChange, modifier3, textStyle2, visualTransformation2, lVar3, mutableInteractionSource4, brush2, z21, i37, imeOptions2, keyboardActions2, z23, z22, qVar2, i11, i12, i13));
                }
                i30 |= 3072;
                i34 = i13 & 16384;
                if (i34 != 0) {
                    i30 |= CpioConstants.C_ISBLK;
                } else if ((i12 & 57344) == 0) {
                    i30 |= composerS.k(qVar) ? 16384 : 8192;
                }
                if ((i14 & 1533916891) != 306783378) {
                    composerS.J();
                    if ((i11 & 1) != 0) {
                        if (i38 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i15 != 0) {
                            textStyleA = TextStyle.Companion.a();
                        } else {
                            textStyleA = textStyle;
                        }
                        if (i17 != 0) {
                            visualTransformationC = VisualTransformation.Companion.c();
                        } else {
                            visualTransformationC = visualTransformation;
                        }
                        if (i19 != 0) {
                            lVar2 = CoreTextFieldKt$CoreTextField$1.INSTANCE;
                        } else {
                            lVar2 = lVar;
                        }
                        if (i21 != 0) {
                            mutableInteractionSource2 = null;
                        } else {
                            mutableInteractionSource2 = mutableInteractionSource;
                        }
                        if ((i13 & 128) != 0) {
                            solidColor = new SolidColor(Color.Companion.f(), null);
                        } else {
                            solidColor = brush;
                        }
                        if (i23 != 0) {
                            z12 = true;
                        } else {
                            z12 = z6;
                        }
                        if (i25 != 0) {
                            i35 = Integer.MAX_VALUE;
                        } else {
                            i35 = i10;
                        }
                        if ((i13 & 1024) != 0) {
                            imeOptionsA = ImeOptions.Companion.a();
                            i30 &= -15;
                        } else {
                            imeOptionsA = imeOptions;
                        }
                        if (i28 != 0) {
                            keyboardActionsA = KeyboardActions.Companion.a();
                        } else {
                            keyboardActionsA = keyboardActions;
                        }
                        if (i31 != 0) {
                            z13 = true;
                        } else {
                            z13 = z10;
                        }
                        if (i33 != 0) {
                            z14 = false;
                        } else {
                            z14 = z11;
                        }
                        if (i34 != 0) {
                            qVarA = ComposableSingletons$CoreTextFieldKt.INSTANCE.a();
                        } else {
                            qVarA = qVar;
                        }
                        z15 = z13;
                    } else {
                        if (i38 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i15 != 0) {
                            textStyleA = TextStyle.Companion.a();
                        } else {
                            textStyleA = textStyle;
                        }
                        if (i17 != 0) {
                            visualTransformationC = VisualTransformation.Companion.c();
                        } else {
                            visualTransformationC = visualTransformation;
                        }
                        if (i19 != 0) {
                            lVar2 = CoreTextFieldKt$CoreTextField$1.INSTANCE;
                        } else {
                            lVar2 = lVar;
                        }
                        if (i21 != 0) {
                            mutableInteractionSource2 = null;
                        } else {
                            mutableInteractionSource2 = mutableInteractionSource;
                        }
                        if ((i13 & 128) != 0) {
                            solidColor = new SolidColor(Color.Companion.f(), null);
                        } else {
                            solidColor = brush;
                        }
                        if (i23 != 0) {
                            z12 = true;
                        } else {
                            z12 = z6;
                        }
                        if (i25 != 0) {
                            i35 = Integer.MAX_VALUE;
                        } else {
                            i35 = i10;
                        }
                        if ((i13 & 1024) != 0) {
                            imeOptionsA = ImeOptions.Companion.a();
                            i30 &= -15;
                        } else {
                            imeOptionsA = imeOptions;
                        }
                        if (i28 != 0) {
                            keyboardActionsA = KeyboardActions.Companion.a();
                        } else {
                            keyboardActionsA = keyboardActions;
                        }
                        if (i31 != 0) {
                            z13 = true;
                        } else {
                            z13 = z10;
                        }
                        if (i33 != 0) {
                            z14 = false;
                        } else {
                            z14 = z11;
                        }
                        if (i34 != 0) {
                            qVarA = ComposableSingletons$CoreTextFieldKt.INSTANCE.a();
                        } else {
                            qVarA = qVar;
                        }
                        z15 = z13;
                    }
                    composerS.A();
                    focusRequester = new FocusRequester();
                    composerS.G(-55013392);
                    if (z15) {
                        textInputService = null;
                    } else {
                        textInputService = null;
                    }
                    composerS.Q();
                    density = (Density) composerS.x(CompositionLocalsKt.e());
                    resolver = (FontFamily.Resolver) composerS.x(CompositionLocalsKt.g());
                    long jA6 = ((TextSelectionColors) composerS.x(TextSelectionColorsKt.b())).a();
                    FocusManager focusManager6 = (FocusManager) composerS.x(CompositionLocalsKt.f());
                    Modifier modifier9 = modifier2;
                    if (i35 == 1) {
                        orientation = Orientation.Vertical;
                    } else {
                        orientation = Orientation.Vertical;
                    }
                    int i314 = i30;
                    i36 = i35;
                    orientation2 = orientation;
                    Object[] objArr6 = {orientation2};
                    Saver<TextFieldScrollerPosition, Object> saverA6 = TextFieldScrollerPosition.Companion.a();
                    z16 = z15;
                    composerS.G(1157296644);
                    zK = composerS.k(orientation2);
                    mutableInteractionSource3 = mutableInteractionSource2;
                    objH = composerS.H();
                    if (zK) {
                        objH = new CoreTextFieldKt$CoreTextField$scrollerPosition$1$1(orientation2);
                        composerS.z(objH);
                    } else {
                        objH = new CoreTextFieldKt$CoreTextField$scrollerPosition$1$1(orientation2);
                        composerS.z(objH);
                    }
                    composerS.Q();
                    TextFieldScrollerPosition textFieldScrollerPosition6 = (TextFieldScrollerPosition) RememberSaveableKt.b(objArr6, saverA6, null, (a) objH, composerS, 72, 4);
                    composerS.G(511388516);
                    zK2 = composerS.k(value) | composerS.k(visualTransformationC);
                    objH2 = composerS.H();
                    if (zK2) {
                        transformedTextA = visualTransformationC.a(value.e());
                        textRangeF = value.f();
                        if (textRangeF != null) {
                            objH2 = transformedTextA;
                        } else {
                            objH2 = transformedTextA;
                        }
                        composerS.z(objH2);
                    } else {
                        transformedTextA = visualTransformationC.a(value.e());
                        textRangeF = value.f();
                        if (textRangeF != null) {
                            objH2 = transformedTextA;
                        } else {
                            objH2 = transformedTextA;
                        }
                        composerS.z(objH2);
                    }
                    composerS.Q();
                    TransformedText transformedText6 = (TransformedText) objH2;
                    annotatedStringB = transformedText6.b();
                    offsetMappingA = transformedText6.a();
                    recomposeScopeB = ComposablesKt.b(composerS, 0);
                    composerS.G(-492369756);
                    objH3 = composerS.H();
                    companion = Composer.Companion;
                    if (objH3 == companion.a()) {
                        objH3 = new TextFieldState(new TextDelegate(annotatedStringB, textStyleA, 0, z12, 0, density, resolver, null, TarConstants.CHKSUM_OFFSET, null), recomposeScopeB);
                        composerS.z(objH3);
                    }
                    composerS.Q();
                    textFieldState = (TextFieldState) objH3;
                    textFieldState.A(annotatedStringB, textStyleA, z12, density, resolver, onValueChange, keyboardActionsA, focusManager6, jA6);
                    textFieldState.j().b(value, textFieldState.e());
                    composerS.G(-492369756);
                    objH4 = composerS.H();
                    if (objH4 == companion.a()) {
                        objH4 = new UndoManager(0, 1, null);
                        composerS.z(objH4);
                    }
                    composerS.Q();
                    undoManager = (UndoManager) objH4;
                    UndoManager.f(undoManager, value, 0L, 2, null);
                    composerS.G(-492369756);
                    objH5 = composerS.H();
                    if (objH5 == companion.a()) {
                        objH5 = new TextFieldSelectionManager(undoManager);
                        composerS.z(objH5);
                    }
                    composerS.Q();
                    textFieldSelectionManager = (TextFieldSelectionManager) objH5;
                    textFieldSelectionManager.U(offsetMappingA);
                    textFieldSelectionManager.Z(visualTransformationC);
                    textFieldSelectionManager.V(textFieldState.i());
                    textFieldSelectionManager.W(textFieldState);
                    textFieldSelectionManager.Y(value);
                    textFieldSelectionManager.N((ClipboardManager) composerS.x(CompositionLocalsKt.d()));
                    textFieldSelectionManager.X((TextToolbar) composerS.x(CompositionLocalsKt.m()));
                    textFieldSelectionManager.T((HapticFeedback) composerS.x(CompositionLocalsKt.h()));
                    textFieldSelectionManager.R(focusRequester);
                    textFieldSelectionManager.Q(!z14);
                    composerS.G(773894976);
                    composerS.G(-492369756);
                    objH6 = composerS.H();
                    if (objH6 == companion.a()) {
                        CompositionScopedCoroutineScopeCanceller compositionScopedCoroutineScopeCanceller6 = new CompositionScopedCoroutineScopeCanceller(EffectsKt.j(h.INSTANCE, composerS));
                        composerS.z(compositionScopedCoroutineScopeCanceller6);
                        objH6 = compositionScopedCoroutineScopeCanceller6;
                    }
                    composerS.Q();
                    o0 o0VarA6 = ((CompositionScopedCoroutineScopeCanceller) objH6).a();
                    composerS.Q();
                    composerS.G(-492369756);
                    objH7 = composerS.H();
                    if (objH7 == companion.a()) {
                        objH7 = BringIntoViewRequesterKt.a();
                        composerS.z(objH7);
                    }
                    composerS.Q();
                    BringIntoViewRequester bringIntoViewRequester6 = (BringIntoViewRequester) objH7;
                    companion2 = Modifier.Companion;
                    Modifier modifierC6 = TextFieldGestureModifiersKt.c(companion2, z16, focusRequester, mutableInteractionSource3, new CoreTextFieldKt$CoreTextField$focusModifier$1(textFieldState, textInputService, value, imeOptionsA, textFieldSelectionManager, o0VarA6, bringIntoViewRequester6, offsetMappingA));
                    EffectsKt.a(textFieldState, new CoreTextFieldKt$CoreTextField$2(textFieldState), composerS, 8);
                    if (TouchMode_androidKt.a()) {
                        modifierB = TextFieldPressGestureFilterKt.a(companion2, mutableInteractionSource3, z16, new CoreTextFieldKt$CoreTextField$pointerModifier$1(textFieldState, focusRequester, z14, textFieldSelectionManager, offsetMappingA)).B(TextFieldGestureModifiersKt.a(companion2, textFieldSelectionManager.G(), z16));
                        z17 = false;
                    } else {
                        z17 = false;
                        modifierB = PointerIconKt.b(TextFieldGestureModifiersKt.b(companion2, textFieldSelectionManager.B(), z16), TextPointerIcon_androidKt.a(), false, 2, null);
                    }
                    Modifier modifierA16 = DrawModifierKt.a(companion2, new CoreTextFieldKt$CoreTextField$drawModifier$1(textFieldState, value, offsetMappingA));
                    Modifier modifierA17 = OnGloballyPositionedModifierKt.a(companion2, new CoreTextFieldKt$CoreTextField$onPositionedModifier$1(textFieldState, z16, textFieldSelectionManager));
                    Modifier modifierB13 = SemanticsModifierKt.b(companion2, true, new CoreTextFieldKt$CoreTextField$semanticsModifier$1(imeOptionsA, transformedText6, value, z16, visualTransformationC instanceof PasswordVisualTransformation, z14, textFieldState, offsetMappingA, textFieldSelectionManager, focusRequester));
                    if (z16) {
                        z18 = z17;
                    } else {
                        z18 = z17;
                    }
                    Modifier modifierB14 = TextFieldCursorKt.b(companion2, textFieldState, value, offsetMappingA, solidColor, z18);
                    EffectsKt.a(textFieldSelectionManager, new CoreTextFieldKt$CoreTextField$3(textFieldSelectionManager), composerS, 8);
                    EffectsKt.a(imeOptionsA, new CoreTextFieldKt$CoreTextField$4(textInputService, textFieldState, value, imeOptionsA), composerS, i314 & 14);
                    l<TextFieldValue, l0> lVarI6 = textFieldState.i();
                    boolean z29 = !z14;
                    if (i36 == 1) {
                        z19 = true;
                    } else {
                        z19 = z17;
                    }
                    Modifier modifierA18 = OnGloballyPositionedModifierKt.a(TextFieldScrollKt.d(m(modifier9.B(modifierC6), textFieldState, textFieldSelectionManager).B(TextFieldKeyInputKt.a(companion2, textFieldState, textFieldSelectionManager, value, lVarI6, z29, z19, offsetMappingA, undoManager)), textFieldScrollerPosition6, mutableInteractionSource3, z16).B(modifierB).B(modifierB13), new CoreTextFieldKt$CoreTextField$decorationBoxModifier$1(textFieldState));
                    if (!z16) {
                        z20 = z17;
                    } else {
                        z20 = z17;
                    }
                    if (z20) {
                        modifierB2 = TextFieldSelectionManager_androidKt.b(companion2, textFieldSelectionManager);
                    } else {
                        modifierB2 = companion2;
                    }
                    ImeOptions imeOptions8 = imeOptionsA;
                    composer2 = composerS;
                    b(modifierA18, textFieldSelectionManager, ComposableLambdaKt.b(composer2, -1885146845, true, new CoreTextFieldKt$CoreTextField$5(qVarA, i314, i36, textStyleA, textFieldScrollerPosition6, value, visualTransformationC, modifierB14, modifierA16, modifierA17, modifierB2, bringIntoViewRequester6, textFieldState, textFieldSelectionManager, z20, z14, lVar2)), composer2, 448);
                    textStyle2 = textStyleA;
                    mutableInteractionSource4 = mutableInteractionSource3;
                    lVar3 = lVar2;
                    brush2 = solidColor;
                    z21 = z12;
                    keyboardActions2 = keyboardActionsA;
                    z22 = z14;
                    qVar2 = qVarA;
                    visualTransformation2 = visualTransformationC;
                    modifier3 = modifier9;
                    i37 = i36;
                    z23 = z16;
                    imeOptions2 = imeOptions8;
                } else {
                    composerS.J();
                    if ((i11 & 1) != 0) {
                        if (i38 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i15 != 0) {
                            textStyleA = TextStyle.Companion.a();
                        } else {
                            textStyleA = textStyle;
                        }
                        if (i17 != 0) {
                            visualTransformationC = VisualTransformation.Companion.c();
                        } else {
                            visualTransformationC = visualTransformation;
                        }
                        if (i19 != 0) {
                            lVar2 = CoreTextFieldKt$CoreTextField$1.INSTANCE;
                        } else {
                            lVar2 = lVar;
                        }
                        if (i21 != 0) {
                            mutableInteractionSource2 = null;
                        } else {
                            mutableInteractionSource2 = mutableInteractionSource;
                        }
                        if ((i13 & 128) != 0) {
                            solidColor = new SolidColor(Color.Companion.f(), null);
                        } else {
                            solidColor = brush;
                        }
                        if (i23 != 0) {
                            z12 = true;
                        } else {
                            z12 = z6;
                        }
                        if (i25 != 0) {
                            i35 = Integer.MAX_VALUE;
                        } else {
                            i35 = i10;
                        }
                        if ((i13 & 1024) != 0) {
                            imeOptionsA = ImeOptions.Companion.a();
                            i30 &= -15;
                        } else {
                            imeOptionsA = imeOptions;
                        }
                        if (i28 != 0) {
                            keyboardActionsA = KeyboardActions.Companion.a();
                        } else {
                            keyboardActionsA = keyboardActions;
                        }
                        if (i31 != 0) {
                            z13 = true;
                        } else {
                            z13 = z10;
                        }
                        if (i33 != 0) {
                            z14 = false;
                        } else {
                            z14 = z11;
                        }
                        if (i34 != 0) {
                            qVarA = ComposableSingletons$CoreTextFieldKt.INSTANCE.a();
                        } else {
                            qVarA = qVar;
                        }
                        z15 = z13;
                    } else {
                        if (i38 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i15 != 0) {
                            textStyleA = TextStyle.Companion.a();
                        } else {
                            textStyleA = textStyle;
                        }
                        if (i17 != 0) {
                            visualTransformationC = VisualTransformation.Companion.c();
                        } else {
                            visualTransformationC = visualTransformation;
                        }
                        if (i19 != 0) {
                            lVar2 = CoreTextFieldKt$CoreTextField$1.INSTANCE;
                        } else {
                            lVar2 = lVar;
                        }
                        if (i21 != 0) {
                            mutableInteractionSource2 = null;
                        } else {
                            mutableInteractionSource2 = mutableInteractionSource;
                        }
                        if ((i13 & 128) != 0) {
                            solidColor = new SolidColor(Color.Companion.f(), null);
                        } else {
                            solidColor = brush;
                        }
                        if (i23 != 0) {
                            z12 = true;
                        } else {
                            z12 = z6;
                        }
                        if (i25 != 0) {
                            i35 = Integer.MAX_VALUE;
                        } else {
                            i35 = i10;
                        }
                        if ((i13 & 1024) != 0) {
                            imeOptionsA = ImeOptions.Companion.a();
                            i30 &= -15;
                        } else {
                            imeOptionsA = imeOptions;
                        }
                        if (i28 != 0) {
                            keyboardActionsA = KeyboardActions.Companion.a();
                        } else {
                            keyboardActionsA = keyboardActions;
                        }
                        if (i31 != 0) {
                            z13 = true;
                        } else {
                            z13 = z10;
                        }
                        if (i33 != 0) {
                            z14 = false;
                        } else {
                            z14 = z11;
                        }
                        if (i34 != 0) {
                            qVarA = ComposableSingletons$CoreTextFieldKt.INSTANCE.a();
                        } else {
                            qVarA = qVar;
                        }
                        z15 = z13;
                    }
                    composerS.A();
                    focusRequester = new FocusRequester();
                    composerS.G(-55013392);
                    if (z15) {
                        textInputService = null;
                    } else {
                        textInputService = null;
                    }
                    composerS.Q();
                    density = (Density) composerS.x(CompositionLocalsKt.e());
                    resolver = (FontFamily.Resolver) composerS.x(CompositionLocalsKt.g());
                    long jA7 = ((TextSelectionColors) composerS.x(TextSelectionColorsKt.b())).a();
                    FocusManager focusManager7 = (FocusManager) composerS.x(CompositionLocalsKt.f());
                    Modifier modifier10 = modifier2;
                    if (i35 == 1) {
                        orientation = Orientation.Vertical;
                    } else {
                        orientation = Orientation.Vertical;
                    }
                    int i315 = i30;
                    i36 = i35;
                    orientation2 = orientation;
                    Object[] objArr7 = {orientation2};
                    Saver<TextFieldScrollerPosition, Object> saverA7 = TextFieldScrollerPosition.Companion.a();
                    z16 = z15;
                    composerS.G(1157296644);
                    zK = composerS.k(orientation2);
                    mutableInteractionSource3 = mutableInteractionSource2;
                    objH = composerS.H();
                    if (zK) {
                        objH = new CoreTextFieldKt$CoreTextField$scrollerPosition$1$1(orientation2);
                        composerS.z(objH);
                    } else {
                        objH = new CoreTextFieldKt$CoreTextField$scrollerPosition$1$1(orientation2);
                        composerS.z(objH);
                    }
                    composerS.Q();
                    TextFieldScrollerPosition textFieldScrollerPosition7 = (TextFieldScrollerPosition) RememberSaveableKt.b(objArr7, saverA7, null, (a) objH, composerS, 72, 4);
                    composerS.G(511388516);
                    zK2 = composerS.k(value) | composerS.k(visualTransformationC);
                    objH2 = composerS.H();
                    if (zK2) {
                        transformedTextA = visualTransformationC.a(value.e());
                        textRangeF = value.f();
                        if (textRangeF != null) {
                            objH2 = transformedTextA;
                        } else {
                            objH2 = transformedTextA;
                        }
                        composerS.z(objH2);
                    } else {
                        transformedTextA = visualTransformationC.a(value.e());
                        textRangeF = value.f();
                        if (textRangeF != null) {
                            objH2 = transformedTextA;
                        } else {
                            objH2 = transformedTextA;
                        }
                        composerS.z(objH2);
                    }
                    composerS.Q();
                    TransformedText transformedText7 = (TransformedText) objH2;
                    annotatedStringB = transformedText7.b();
                    offsetMappingA = transformedText7.a();
                    recomposeScopeB = ComposablesKt.b(composerS, 0);
                    composerS.G(-492369756);
                    objH3 = composerS.H();
                    companion = Composer.Companion;
                    if (objH3 == companion.a()) {
                        objH3 = new TextFieldState(new TextDelegate(annotatedStringB, textStyleA, 0, z12, 0, density, resolver, null, TarConstants.CHKSUM_OFFSET, null), recomposeScopeB);
                        composerS.z(objH3);
                    }
                    composerS.Q();
                    textFieldState = (TextFieldState) objH3;
                    textFieldState.A(annotatedStringB, textStyleA, z12, density, resolver, onValueChange, keyboardActionsA, focusManager7, jA7);
                    textFieldState.j().b(value, textFieldState.e());
                    composerS.G(-492369756);
                    objH4 = composerS.H();
                    if (objH4 == companion.a()) {
                        objH4 = new UndoManager(0, 1, null);
                        composerS.z(objH4);
                    }
                    composerS.Q();
                    undoManager = (UndoManager) objH4;
                    UndoManager.f(undoManager, value, 0L, 2, null);
                    composerS.G(-492369756);
                    objH5 = composerS.H();
                    if (objH5 == companion.a()) {
                        objH5 = new TextFieldSelectionManager(undoManager);
                        composerS.z(objH5);
                    }
                    composerS.Q();
                    textFieldSelectionManager = (TextFieldSelectionManager) objH5;
                    textFieldSelectionManager.U(offsetMappingA);
                    textFieldSelectionManager.Z(visualTransformationC);
                    textFieldSelectionManager.V(textFieldState.i());
                    textFieldSelectionManager.W(textFieldState);
                    textFieldSelectionManager.Y(value);
                    textFieldSelectionManager.N((ClipboardManager) composerS.x(CompositionLocalsKt.d()));
                    textFieldSelectionManager.X((TextToolbar) composerS.x(CompositionLocalsKt.m()));
                    textFieldSelectionManager.T((HapticFeedback) composerS.x(CompositionLocalsKt.h()));
                    textFieldSelectionManager.R(focusRequester);
                    textFieldSelectionManager.Q(!z14);
                    composerS.G(773894976);
                    composerS.G(-492369756);
                    objH6 = composerS.H();
                    if (objH6 == companion.a()) {
                        CompositionScopedCoroutineScopeCanceller compositionScopedCoroutineScopeCanceller7 = new CompositionScopedCoroutineScopeCanceller(EffectsKt.j(h.INSTANCE, composerS));
                        composerS.z(compositionScopedCoroutineScopeCanceller7);
                        objH6 = compositionScopedCoroutineScopeCanceller7;
                    }
                    composerS.Q();
                    o0 o0VarA7 = ((CompositionScopedCoroutineScopeCanceller) objH6).a();
                    composerS.Q();
                    composerS.G(-492369756);
                    objH7 = composerS.H();
                    if (objH7 == companion.a()) {
                        objH7 = BringIntoViewRequesterKt.a();
                        composerS.z(objH7);
                    }
                    composerS.Q();
                    BringIntoViewRequester bringIntoViewRequester7 = (BringIntoViewRequester) objH7;
                    companion2 = Modifier.Companion;
                    Modifier modifierC7 = TextFieldGestureModifiersKt.c(companion2, z16, focusRequester, mutableInteractionSource3, new CoreTextFieldKt$CoreTextField$focusModifier$1(textFieldState, textInputService, value, imeOptionsA, textFieldSelectionManager, o0VarA7, bringIntoViewRequester7, offsetMappingA));
                    EffectsKt.a(textFieldState, new CoreTextFieldKt$CoreTextField$2(textFieldState), composerS, 8);
                    if (TouchMode_androidKt.a()) {
                        modifierB = TextFieldPressGestureFilterKt.a(companion2, mutableInteractionSource3, z16, new CoreTextFieldKt$CoreTextField$pointerModifier$1(textFieldState, focusRequester, z14, textFieldSelectionManager, offsetMappingA)).B(TextFieldGestureModifiersKt.a(companion2, textFieldSelectionManager.G(), z16));
                        z17 = false;
                    } else {
                        z17 = false;
                        modifierB = PointerIconKt.b(TextFieldGestureModifiersKt.b(companion2, textFieldSelectionManager.B(), z16), TextPointerIcon_androidKt.a(), false, 2, null);
                    }
                    Modifier modifierA19 = DrawModifierKt.a(companion2, new CoreTextFieldKt$CoreTextField$drawModifier$1(textFieldState, value, offsetMappingA));
                    Modifier modifierA110 = OnGloballyPositionedModifierKt.a(companion2, new CoreTextFieldKt$CoreTextField$onPositionedModifier$1(textFieldState, z16, textFieldSelectionManager));
                    Modifier modifierB15 = SemanticsModifierKt.b(companion2, true, new CoreTextFieldKt$CoreTextField$semanticsModifier$1(imeOptionsA, transformedText7, value, z16, visualTransformationC instanceof PasswordVisualTransformation, z14, textFieldState, offsetMappingA, textFieldSelectionManager, focusRequester));
                    if (z16) {
                        z18 = z17;
                    } else {
                        z18 = z17;
                    }
                    Modifier modifierB16 = TextFieldCursorKt.b(companion2, textFieldState, value, offsetMappingA, solidColor, z18);
                    EffectsKt.a(textFieldSelectionManager, new CoreTextFieldKt$CoreTextField$3(textFieldSelectionManager), composerS, 8);
                    EffectsKt.a(imeOptionsA, new CoreTextFieldKt$CoreTextField$4(textInputService, textFieldState, value, imeOptionsA), composerS, i315 & 14);
                    l<TextFieldValue, l0> lVarI7 = textFieldState.i();
                    boolean z210 = !z14;
                    if (i36 == 1) {
                        z19 = true;
                    } else {
                        z19 = z17;
                    }
                    Modifier modifierA111 = OnGloballyPositionedModifierKt.a(TextFieldScrollKt.d(m(modifier10.B(modifierC7), textFieldState, textFieldSelectionManager).B(TextFieldKeyInputKt.a(companion2, textFieldState, textFieldSelectionManager, value, lVarI7, z210, z19, offsetMappingA, undoManager)), textFieldScrollerPosition7, mutableInteractionSource3, z16).B(modifierB).B(modifierB15), new CoreTextFieldKt$CoreTextField$decorationBoxModifier$1(textFieldState));
                    if (!z16) {
                        z20 = z17;
                    } else {
                        z20 = z17;
                    }
                    if (z20) {
                        modifierB2 = TextFieldSelectionManager_androidKt.b(companion2, textFieldSelectionManager);
                    } else {
                        modifierB2 = companion2;
                    }
                    ImeOptions imeOptions9 = imeOptionsA;
                    composer2 = composerS;
                    b(modifierA111, textFieldSelectionManager, ComposableLambdaKt.b(composer2, -1885146845, true, new CoreTextFieldKt$CoreTextField$5(qVarA, i315, i36, textStyleA, textFieldScrollerPosition7, value, visualTransformationC, modifierB16, modifierA19, modifierA110, modifierB2, bringIntoViewRequester7, textFieldState, textFieldSelectionManager, z20, z14, lVar2)), composer2, 448);
                    textStyle2 = textStyleA;
                    mutableInteractionSource4 = mutableInteractionSource3;
                    lVar3 = lVar2;
                    brush2 = solidColor;
                    z21 = z12;
                    keyboardActions2 = keyboardActionsA;
                    z22 = z14;
                    qVar2 = qVarA;
                    visualTransformation2 = visualTransformationC;
                    modifier3 = modifier10;
                    i37 = i36;
                    z23 = z16;
                    imeOptions2 = imeOptions9;
                }
                scopeUpdateScopeU = composer2.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new CoreTextFieldKt$CoreTextField$6(value, onValueChange, modifier3, textStyle2, visualTransformation2, lVar3, mutableInteractionSource4, brush2, z21, i37, imeOptions2, keyboardActions2, z23, z22, qVar2, i11, i12, i13));
            }
            i14 |= 3072;
            i17 = i13 & 16;
            if (i17 != 0) {
                i14 |= CpioConstants.C_ISBLK;
            } else if ((i11 & 57344) == 0) {
                if (composerS.k(visualTransformation)) {
                    i18 = 16384;
                } else {
                    i18 = 8192;
                }
                i14 |= i18;
            }
            i19 = i13 & 32;
            if (i19 != 0) {
                i14 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            } else if ((i11 & 458752) == 0) {
                if (composerS.k(lVar)) {
                    i20 = 131072;
                } else {
                    i20 = 65536;
                }
                i14 |= i20;
            }
            i21 = i13 & 64;
            if (i21 != 0) {
                i14 |= 1572864;
            } else if ((i11 & 3670016) == 0) {
                if (composerS.k(mutableInteractionSource)) {
                    i22 = 1048576;
                } else {
                    i22 = 524288;
                }
                i14 |= i22;
            }
            if ((i11 & 29360128) != 0) {
                i14 |= ((i13 & 128) == 0 || !composerS.k(brush)) ? 4194304 : 8388608;
            }
            i23 = i13 & 256;
            if (i23 != 0) {
                i14 |= 100663296;
            } else if ((i11 & 234881024) == 0) {
                if (composerS.m(z6)) {
                    i24 = 67108864;
                } else {
                    i24 = 33554432;
                }
                i14 |= i24;
            }
            i25 = i13 & 512;
            if (i25 != 0) {
                i14 |= 805306368;
            } else if ((i11 & 1879048192) == 0) {
                if (composerS.p(i10)) {
                    i26 = 536870912;
                } else {
                    i26 = 268435456;
                }
                i14 |= i26;
            }
            if ((i12 & 14) == 0) {
                i27 = i12 | (((i13 & 1024) == 0 || !composerS.k(imeOptions)) ? 2 : 4);
            } else {
                i27 = i12;
            }
            i28 = i13 & 2048;
            if (i28 != 0) {
                i27 |= 48;
            } else if ((i12 & 112) == 0) {
                if (composerS.k(keyboardActions)) {
                    i29 = 32;
                } else {
                    i29 = 16;
                }
                i27 |= i29;
            }
            i30 = i27;
            i31 = i13 & 4096;
            if (i31 != 0) {
                if ((i12 & 896) == 0) {
                    if (composerS.m(z10)) {
                        i32 = 256;
                    } else {
                        i32 = 128;
                    }
                    i30 |= i32;
                }
                i33 = i13 & 8192;
                if (i33 != 0) {
                    if ((i12 & 7168) == 0) {
                        i30 |= composerS.m(z11) ? 2048 : 1024;
                    }
                    i34 = i13 & 16384;
                    if (i34 != 0) {
                        i30 |= CpioConstants.C_ISBLK;
                    } else if ((i12 & 57344) == 0) {
                        i30 |= composerS.k(qVar) ? 16384 : 8192;
                    }
                    if ((i14 & 1533916891) != 306783378) {
                        composerS.J();
                        if ((i11 & 1) != 0) {
                            if (i38 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i15 != 0) {
                                textStyleA = TextStyle.Companion.a();
                            } else {
                                textStyleA = textStyle;
                            }
                            if (i17 != 0) {
                                visualTransformationC = VisualTransformation.Companion.c();
                            } else {
                                visualTransformationC = visualTransformation;
                            }
                            if (i19 != 0) {
                                lVar2 = CoreTextFieldKt$CoreTextField$1.INSTANCE;
                            } else {
                                lVar2 = lVar;
                            }
                            if (i21 != 0) {
                                mutableInteractionSource2 = null;
                            } else {
                                mutableInteractionSource2 = mutableInteractionSource;
                            }
                            if ((i13 & 128) != 0) {
                                solidColor = new SolidColor(Color.Companion.f(), null);
                            } else {
                                solidColor = brush;
                            }
                            if (i23 != 0) {
                                z12 = true;
                            } else {
                                z12 = z6;
                            }
                            if (i25 != 0) {
                                i35 = Integer.MAX_VALUE;
                            } else {
                                i35 = i10;
                            }
                            if ((i13 & 1024) != 0) {
                                imeOptionsA = ImeOptions.Companion.a();
                                i30 &= -15;
                            } else {
                                imeOptionsA = imeOptions;
                            }
                            if (i28 != 0) {
                                keyboardActionsA = KeyboardActions.Companion.a();
                            } else {
                                keyboardActionsA = keyboardActions;
                            }
                            if (i31 != 0) {
                                z13 = true;
                            } else {
                                z13 = z10;
                            }
                            if (i33 != 0) {
                                z14 = false;
                            } else {
                                z14 = z11;
                            }
                            if (i34 != 0) {
                                qVarA = ComposableSingletons$CoreTextFieldKt.INSTANCE.a();
                            } else {
                                qVarA = qVar;
                            }
                            z15 = z13;
                        } else {
                            if (i38 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i15 != 0) {
                                textStyleA = TextStyle.Companion.a();
                            } else {
                                textStyleA = textStyle;
                            }
                            if (i17 != 0) {
                                visualTransformationC = VisualTransformation.Companion.c();
                            } else {
                                visualTransformationC = visualTransformation;
                            }
                            if (i19 != 0) {
                                lVar2 = CoreTextFieldKt$CoreTextField$1.INSTANCE;
                            } else {
                                lVar2 = lVar;
                            }
                            if (i21 != 0) {
                                mutableInteractionSource2 = null;
                            } else {
                                mutableInteractionSource2 = mutableInteractionSource;
                            }
                            if ((i13 & 128) != 0) {
                                solidColor = new SolidColor(Color.Companion.f(), null);
                            } else {
                                solidColor = brush;
                            }
                            if (i23 != 0) {
                                z12 = true;
                            } else {
                                z12 = z6;
                            }
                            if (i25 != 0) {
                                i35 = Integer.MAX_VALUE;
                            } else {
                                i35 = i10;
                            }
                            if ((i13 & 1024) != 0) {
                                imeOptionsA = ImeOptions.Companion.a();
                                i30 &= -15;
                            } else {
                                imeOptionsA = imeOptions;
                            }
                            if (i28 != 0) {
                                keyboardActionsA = KeyboardActions.Companion.a();
                            } else {
                                keyboardActionsA = keyboardActions;
                            }
                            if (i31 != 0) {
                                z13 = true;
                            } else {
                                z13 = z10;
                            }
                            if (i33 != 0) {
                                z14 = false;
                            } else {
                                z14 = z11;
                            }
                            if (i34 != 0) {
                                qVarA = ComposableSingletons$CoreTextFieldKt.INSTANCE.a();
                            } else {
                                qVarA = qVar;
                            }
                            z15 = z13;
                        }
                        composerS.A();
                        focusRequester = new FocusRequester();
                        composerS.G(-55013392);
                        if (z15) {
                            textInputService = null;
                        } else {
                            textInputService = null;
                        }
                        composerS.Q();
                        density = (Density) composerS.x(CompositionLocalsKt.e());
                        resolver = (FontFamily.Resolver) composerS.x(CompositionLocalsKt.g());
                        long jA8 = ((TextSelectionColors) composerS.x(TextSelectionColorsKt.b())).a();
                        FocusManager focusManager8 = (FocusManager) composerS.x(CompositionLocalsKt.f());
                        Modifier modifier11 = modifier2;
                        if (i35 == 1) {
                            orientation = Orientation.Vertical;
                        } else {
                            orientation = Orientation.Vertical;
                        }
                        int i316 = i30;
                        i36 = i35;
                        orientation2 = orientation;
                        Object[] objArr8 = {orientation2};
                        Saver<TextFieldScrollerPosition, Object> saverA8 = TextFieldScrollerPosition.Companion.a();
                        z16 = z15;
                        composerS.G(1157296644);
                        zK = composerS.k(orientation2);
                        mutableInteractionSource3 = mutableInteractionSource2;
                        objH = composerS.H();
                        if (zK) {
                            objH = new CoreTextFieldKt$CoreTextField$scrollerPosition$1$1(orientation2);
                            composerS.z(objH);
                        } else {
                            objH = new CoreTextFieldKt$CoreTextField$scrollerPosition$1$1(orientation2);
                            composerS.z(objH);
                        }
                        composerS.Q();
                        TextFieldScrollerPosition textFieldScrollerPosition8 = (TextFieldScrollerPosition) RememberSaveableKt.b(objArr8, saverA8, null, (a) objH, composerS, 72, 4);
                        composerS.G(511388516);
                        zK2 = composerS.k(value) | composerS.k(visualTransformationC);
                        objH2 = composerS.H();
                        if (zK2) {
                            transformedTextA = visualTransformationC.a(value.e());
                            textRangeF = value.f();
                            if (textRangeF != null) {
                                objH2 = transformedTextA;
                            } else {
                                objH2 = transformedTextA;
                            }
                            composerS.z(objH2);
                        } else {
                            transformedTextA = visualTransformationC.a(value.e());
                            textRangeF = value.f();
                            if (textRangeF != null) {
                                objH2 = transformedTextA;
                            } else {
                                objH2 = transformedTextA;
                            }
                            composerS.z(objH2);
                        }
                        composerS.Q();
                        TransformedText transformedText8 = (TransformedText) objH2;
                        annotatedStringB = transformedText8.b();
                        offsetMappingA = transformedText8.a();
                        recomposeScopeB = ComposablesKt.b(composerS, 0);
                        composerS.G(-492369756);
                        objH3 = composerS.H();
                        companion = Composer.Companion;
                        if (objH3 == companion.a()) {
                            objH3 = new TextFieldState(new TextDelegate(annotatedStringB, textStyleA, 0, z12, 0, density, resolver, null, TarConstants.CHKSUM_OFFSET, null), recomposeScopeB);
                            composerS.z(objH3);
                        }
                        composerS.Q();
                        textFieldState = (TextFieldState) objH3;
                        textFieldState.A(annotatedStringB, textStyleA, z12, density, resolver, onValueChange, keyboardActionsA, focusManager8, jA8);
                        textFieldState.j().b(value, textFieldState.e());
                        composerS.G(-492369756);
                        objH4 = composerS.H();
                        if (objH4 == companion.a()) {
                            objH4 = new UndoManager(0, 1, null);
                            composerS.z(objH4);
                        }
                        composerS.Q();
                        undoManager = (UndoManager) objH4;
                        UndoManager.f(undoManager, value, 0L, 2, null);
                        composerS.G(-492369756);
                        objH5 = composerS.H();
                        if (objH5 == companion.a()) {
                            objH5 = new TextFieldSelectionManager(undoManager);
                            composerS.z(objH5);
                        }
                        composerS.Q();
                        textFieldSelectionManager = (TextFieldSelectionManager) objH5;
                        textFieldSelectionManager.U(offsetMappingA);
                        textFieldSelectionManager.Z(visualTransformationC);
                        textFieldSelectionManager.V(textFieldState.i());
                        textFieldSelectionManager.W(textFieldState);
                        textFieldSelectionManager.Y(value);
                        textFieldSelectionManager.N((ClipboardManager) composerS.x(CompositionLocalsKt.d()));
                        textFieldSelectionManager.X((TextToolbar) composerS.x(CompositionLocalsKt.m()));
                        textFieldSelectionManager.T((HapticFeedback) composerS.x(CompositionLocalsKt.h()));
                        textFieldSelectionManager.R(focusRequester);
                        textFieldSelectionManager.Q(!z14);
                        composerS.G(773894976);
                        composerS.G(-492369756);
                        objH6 = composerS.H();
                        if (objH6 == companion.a()) {
                            CompositionScopedCoroutineScopeCanceller compositionScopedCoroutineScopeCanceller8 = new CompositionScopedCoroutineScopeCanceller(EffectsKt.j(h.INSTANCE, composerS));
                            composerS.z(compositionScopedCoroutineScopeCanceller8);
                            objH6 = compositionScopedCoroutineScopeCanceller8;
                        }
                        composerS.Q();
                        o0 o0VarA8 = ((CompositionScopedCoroutineScopeCanceller) objH6).a();
                        composerS.Q();
                        composerS.G(-492369756);
                        objH7 = composerS.H();
                        if (objH7 == companion.a()) {
                            objH7 = BringIntoViewRequesterKt.a();
                            composerS.z(objH7);
                        }
                        composerS.Q();
                        BringIntoViewRequester bringIntoViewRequester8 = (BringIntoViewRequester) objH7;
                        companion2 = Modifier.Companion;
                        Modifier modifierC8 = TextFieldGestureModifiersKt.c(companion2, z16, focusRequester, mutableInteractionSource3, new CoreTextFieldKt$CoreTextField$focusModifier$1(textFieldState, textInputService, value, imeOptionsA, textFieldSelectionManager, o0VarA8, bringIntoViewRequester8, offsetMappingA));
                        EffectsKt.a(textFieldState, new CoreTextFieldKt$CoreTextField$2(textFieldState), composerS, 8);
                        if (TouchMode_androidKt.a()) {
                            modifierB = TextFieldPressGestureFilterKt.a(companion2, mutableInteractionSource3, z16, new CoreTextFieldKt$CoreTextField$pointerModifier$1(textFieldState, focusRequester, z14, textFieldSelectionManager, offsetMappingA)).B(TextFieldGestureModifiersKt.a(companion2, textFieldSelectionManager.G(), z16));
                            z17 = false;
                        } else {
                            z17 = false;
                            modifierB = PointerIconKt.b(TextFieldGestureModifiersKt.b(companion2, textFieldSelectionManager.B(), z16), TextPointerIcon_androidKt.a(), false, 2, null);
                        }
                        Modifier modifierA112 = DrawModifierKt.a(companion2, new CoreTextFieldKt$CoreTextField$drawModifier$1(textFieldState, value, offsetMappingA));
                        Modifier modifierA113 = OnGloballyPositionedModifierKt.a(companion2, new CoreTextFieldKt$CoreTextField$onPositionedModifier$1(textFieldState, z16, textFieldSelectionManager));
                        Modifier modifierB17 = SemanticsModifierKt.b(companion2, true, new CoreTextFieldKt$CoreTextField$semanticsModifier$1(imeOptionsA, transformedText8, value, z16, visualTransformationC instanceof PasswordVisualTransformation, z14, textFieldState, offsetMappingA, textFieldSelectionManager, focusRequester));
                        if (z16) {
                            z18 = z17;
                        } else {
                            z18 = z17;
                        }
                        Modifier modifierB18 = TextFieldCursorKt.b(companion2, textFieldState, value, offsetMappingA, solidColor, z18);
                        EffectsKt.a(textFieldSelectionManager, new CoreTextFieldKt$CoreTextField$3(textFieldSelectionManager), composerS, 8);
                        EffectsKt.a(imeOptionsA, new CoreTextFieldKt$CoreTextField$4(textInputService, textFieldState, value, imeOptionsA), composerS, i316 & 14);
                        l<TextFieldValue, l0> lVarI8 = textFieldState.i();
                        boolean z211 = !z14;
                        if (i36 == 1) {
                            z19 = true;
                        } else {
                            z19 = z17;
                        }
                        Modifier modifierA114 = OnGloballyPositionedModifierKt.a(TextFieldScrollKt.d(m(modifier11.B(modifierC8), textFieldState, textFieldSelectionManager).B(TextFieldKeyInputKt.a(companion2, textFieldState, textFieldSelectionManager, value, lVarI8, z211, z19, offsetMappingA, undoManager)), textFieldScrollerPosition8, mutableInteractionSource3, z16).B(modifierB).B(modifierB17), new CoreTextFieldKt$CoreTextField$decorationBoxModifier$1(textFieldState));
                        if (!z16) {
                            z20 = z17;
                        } else {
                            z20 = z17;
                        }
                        if (z20) {
                            modifierB2 = TextFieldSelectionManager_androidKt.b(companion2, textFieldSelectionManager);
                        } else {
                            modifierB2 = companion2;
                        }
                        ImeOptions imeOptions10 = imeOptionsA;
                        composer2 = composerS;
                        b(modifierA114, textFieldSelectionManager, ComposableLambdaKt.b(composer2, -1885146845, true, new CoreTextFieldKt$CoreTextField$5(qVarA, i316, i36, textStyleA, textFieldScrollerPosition8, value, visualTransformationC, modifierB18, modifierA112, modifierA113, modifierB2, bringIntoViewRequester8, textFieldState, textFieldSelectionManager, z20, z14, lVar2)), composer2, 448);
                        textStyle2 = textStyleA;
                        mutableInteractionSource4 = mutableInteractionSource3;
                        lVar3 = lVar2;
                        brush2 = solidColor;
                        z21 = z12;
                        keyboardActions2 = keyboardActionsA;
                        z22 = z14;
                        qVar2 = qVarA;
                        visualTransformation2 = visualTransformationC;
                        modifier3 = modifier11;
                        i37 = i36;
                        z23 = z16;
                        imeOptions2 = imeOptions10;
                    } else {
                        composerS.J();
                        if ((i11 & 1) != 0) {
                            if (i38 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i15 != 0) {
                                textStyleA = TextStyle.Companion.a();
                            } else {
                                textStyleA = textStyle;
                            }
                            if (i17 != 0) {
                                visualTransformationC = VisualTransformation.Companion.c();
                            } else {
                                visualTransformationC = visualTransformation;
                            }
                            if (i19 != 0) {
                                lVar2 = CoreTextFieldKt$CoreTextField$1.INSTANCE;
                            } else {
                                lVar2 = lVar;
                            }
                            if (i21 != 0) {
                                mutableInteractionSource2 = null;
                            } else {
                                mutableInteractionSource2 = mutableInteractionSource;
                            }
                            if ((i13 & 128) != 0) {
                                solidColor = new SolidColor(Color.Companion.f(), null);
                            } else {
                                solidColor = brush;
                            }
                            if (i23 != 0) {
                                z12 = true;
                            } else {
                                z12 = z6;
                            }
                            if (i25 != 0) {
                                i35 = Integer.MAX_VALUE;
                            } else {
                                i35 = i10;
                            }
                            if ((i13 & 1024) != 0) {
                                imeOptionsA = ImeOptions.Companion.a();
                                i30 &= -15;
                            } else {
                                imeOptionsA = imeOptions;
                            }
                            if (i28 != 0) {
                                keyboardActionsA = KeyboardActions.Companion.a();
                            } else {
                                keyboardActionsA = keyboardActions;
                            }
                            if (i31 != 0) {
                                z13 = true;
                            } else {
                                z13 = z10;
                            }
                            if (i33 != 0) {
                                z14 = false;
                            } else {
                                z14 = z11;
                            }
                            if (i34 != 0) {
                                qVarA = ComposableSingletons$CoreTextFieldKt.INSTANCE.a();
                            } else {
                                qVarA = qVar;
                            }
                            z15 = z13;
                        } else {
                            if (i38 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i15 != 0) {
                                textStyleA = TextStyle.Companion.a();
                            } else {
                                textStyleA = textStyle;
                            }
                            if (i17 != 0) {
                                visualTransformationC = VisualTransformation.Companion.c();
                            } else {
                                visualTransformationC = visualTransformation;
                            }
                            if (i19 != 0) {
                                lVar2 = CoreTextFieldKt$CoreTextField$1.INSTANCE;
                            } else {
                                lVar2 = lVar;
                            }
                            if (i21 != 0) {
                                mutableInteractionSource2 = null;
                            } else {
                                mutableInteractionSource2 = mutableInteractionSource;
                            }
                            if ((i13 & 128) != 0) {
                                solidColor = new SolidColor(Color.Companion.f(), null);
                            } else {
                                solidColor = brush;
                            }
                            if (i23 != 0) {
                                z12 = true;
                            } else {
                                z12 = z6;
                            }
                            if (i25 != 0) {
                                i35 = Integer.MAX_VALUE;
                            } else {
                                i35 = i10;
                            }
                            if ((i13 & 1024) != 0) {
                                imeOptionsA = ImeOptions.Companion.a();
                                i30 &= -15;
                            } else {
                                imeOptionsA = imeOptions;
                            }
                            if (i28 != 0) {
                                keyboardActionsA = KeyboardActions.Companion.a();
                            } else {
                                keyboardActionsA = keyboardActions;
                            }
                            if (i31 != 0) {
                                z13 = true;
                            } else {
                                z13 = z10;
                            }
                            if (i33 != 0) {
                                z14 = false;
                            } else {
                                z14 = z11;
                            }
                            if (i34 != 0) {
                                qVarA = ComposableSingletons$CoreTextFieldKt.INSTANCE.a();
                            } else {
                                qVarA = qVar;
                            }
                            z15 = z13;
                        }
                        composerS.A();
                        focusRequester = new FocusRequester();
                        composerS.G(-55013392);
                        if (z15) {
                            textInputService = null;
                        } else {
                            textInputService = null;
                        }
                        composerS.Q();
                        density = (Density) composerS.x(CompositionLocalsKt.e());
                        resolver = (FontFamily.Resolver) composerS.x(CompositionLocalsKt.g());
                        long jA9 = ((TextSelectionColors) composerS.x(TextSelectionColorsKt.b())).a();
                        FocusManager focusManager9 = (FocusManager) composerS.x(CompositionLocalsKt.f());
                        Modifier modifier12 = modifier2;
                        if (i35 == 1) {
                            orientation = Orientation.Vertical;
                        } else {
                            orientation = Orientation.Vertical;
                        }
                        int i317 = i30;
                        i36 = i35;
                        orientation2 = orientation;
                        Object[] objArr9 = {orientation2};
                        Saver<TextFieldScrollerPosition, Object> saverA9 = TextFieldScrollerPosition.Companion.a();
                        z16 = z15;
                        composerS.G(1157296644);
                        zK = composerS.k(orientation2);
                        mutableInteractionSource3 = mutableInteractionSource2;
                        objH = composerS.H();
                        if (zK) {
                            objH = new CoreTextFieldKt$CoreTextField$scrollerPosition$1$1(orientation2);
                            composerS.z(objH);
                        } else {
                            objH = new CoreTextFieldKt$CoreTextField$scrollerPosition$1$1(orientation2);
                            composerS.z(objH);
                        }
                        composerS.Q();
                        TextFieldScrollerPosition textFieldScrollerPosition9 = (TextFieldScrollerPosition) RememberSaveableKt.b(objArr9, saverA9, null, (a) objH, composerS, 72, 4);
                        composerS.G(511388516);
                        zK2 = composerS.k(value) | composerS.k(visualTransformationC);
                        objH2 = composerS.H();
                        if (zK2) {
                            transformedTextA = visualTransformationC.a(value.e());
                            textRangeF = value.f();
                            if (textRangeF != null) {
                                objH2 = transformedTextA;
                            } else {
                                objH2 = transformedTextA;
                            }
                            composerS.z(objH2);
                        } else {
                            transformedTextA = visualTransformationC.a(value.e());
                            textRangeF = value.f();
                            if (textRangeF != null) {
                                objH2 = transformedTextA;
                            } else {
                                objH2 = transformedTextA;
                            }
                            composerS.z(objH2);
                        }
                        composerS.Q();
                        TransformedText transformedText9 = (TransformedText) objH2;
                        annotatedStringB = transformedText9.b();
                        offsetMappingA = transformedText9.a();
                        recomposeScopeB = ComposablesKt.b(composerS, 0);
                        composerS.G(-492369756);
                        objH3 = composerS.H();
                        companion = Composer.Companion;
                        if (objH3 == companion.a()) {
                            objH3 = new TextFieldState(new TextDelegate(annotatedStringB, textStyleA, 0, z12, 0, density, resolver, null, TarConstants.CHKSUM_OFFSET, null), recomposeScopeB);
                            composerS.z(objH3);
                        }
                        composerS.Q();
                        textFieldState = (TextFieldState) objH3;
                        textFieldState.A(annotatedStringB, textStyleA, z12, density, resolver, onValueChange, keyboardActionsA, focusManager9, jA9);
                        textFieldState.j().b(value, textFieldState.e());
                        composerS.G(-492369756);
                        objH4 = composerS.H();
                        if (objH4 == companion.a()) {
                            objH4 = new UndoManager(0, 1, null);
                            composerS.z(objH4);
                        }
                        composerS.Q();
                        undoManager = (UndoManager) objH4;
                        UndoManager.f(undoManager, value, 0L, 2, null);
                        composerS.G(-492369756);
                        objH5 = composerS.H();
                        if (objH5 == companion.a()) {
                            objH5 = new TextFieldSelectionManager(undoManager);
                            composerS.z(objH5);
                        }
                        composerS.Q();
                        textFieldSelectionManager = (TextFieldSelectionManager) objH5;
                        textFieldSelectionManager.U(offsetMappingA);
                        textFieldSelectionManager.Z(visualTransformationC);
                        textFieldSelectionManager.V(textFieldState.i());
                        textFieldSelectionManager.W(textFieldState);
                        textFieldSelectionManager.Y(value);
                        textFieldSelectionManager.N((ClipboardManager) composerS.x(CompositionLocalsKt.d()));
                        textFieldSelectionManager.X((TextToolbar) composerS.x(CompositionLocalsKt.m()));
                        textFieldSelectionManager.T((HapticFeedback) composerS.x(CompositionLocalsKt.h()));
                        textFieldSelectionManager.R(focusRequester);
                        textFieldSelectionManager.Q(!z14);
                        composerS.G(773894976);
                        composerS.G(-492369756);
                        objH6 = composerS.H();
                        if (objH6 == companion.a()) {
                            CompositionScopedCoroutineScopeCanceller compositionScopedCoroutineScopeCanceller9 = new CompositionScopedCoroutineScopeCanceller(EffectsKt.j(h.INSTANCE, composerS));
                            composerS.z(compositionScopedCoroutineScopeCanceller9);
                            objH6 = compositionScopedCoroutineScopeCanceller9;
                        }
                        composerS.Q();
                        o0 o0VarA9 = ((CompositionScopedCoroutineScopeCanceller) objH6).a();
                        composerS.Q();
                        composerS.G(-492369756);
                        objH7 = composerS.H();
                        if (objH7 == companion.a()) {
                            objH7 = BringIntoViewRequesterKt.a();
                            composerS.z(objH7);
                        }
                        composerS.Q();
                        BringIntoViewRequester bringIntoViewRequester9 = (BringIntoViewRequester) objH7;
                        companion2 = Modifier.Companion;
                        Modifier modifierC9 = TextFieldGestureModifiersKt.c(companion2, z16, focusRequester, mutableInteractionSource3, new CoreTextFieldKt$CoreTextField$focusModifier$1(textFieldState, textInputService, value, imeOptionsA, textFieldSelectionManager, o0VarA9, bringIntoViewRequester9, offsetMappingA));
                        EffectsKt.a(textFieldState, new CoreTextFieldKt$CoreTextField$2(textFieldState), composerS, 8);
                        if (TouchMode_androidKt.a()) {
                            modifierB = TextFieldPressGestureFilterKt.a(companion2, mutableInteractionSource3, z16, new CoreTextFieldKt$CoreTextField$pointerModifier$1(textFieldState, focusRequester, z14, textFieldSelectionManager, offsetMappingA)).B(TextFieldGestureModifiersKt.a(companion2, textFieldSelectionManager.G(), z16));
                            z17 = false;
                        } else {
                            z17 = false;
                            modifierB = PointerIconKt.b(TextFieldGestureModifiersKt.b(companion2, textFieldSelectionManager.B(), z16), TextPointerIcon_androidKt.a(), false, 2, null);
                        }
                        Modifier modifierA115 = DrawModifierKt.a(companion2, new CoreTextFieldKt$CoreTextField$drawModifier$1(textFieldState, value, offsetMappingA));
                        Modifier modifierA116 = OnGloballyPositionedModifierKt.a(companion2, new CoreTextFieldKt$CoreTextField$onPositionedModifier$1(textFieldState, z16, textFieldSelectionManager));
                        Modifier modifierB19 = SemanticsModifierKt.b(companion2, true, new CoreTextFieldKt$CoreTextField$semanticsModifier$1(imeOptionsA, transformedText9, value, z16, visualTransformationC instanceof PasswordVisualTransformation, z14, textFieldState, offsetMappingA, textFieldSelectionManager, focusRequester));
                        if (z16) {
                            z18 = z17;
                        } else {
                            z18 = z17;
                        }
                        Modifier modifierB110 = TextFieldCursorKt.b(companion2, textFieldState, value, offsetMappingA, solidColor, z18);
                        EffectsKt.a(textFieldSelectionManager, new CoreTextFieldKt$CoreTextField$3(textFieldSelectionManager), composerS, 8);
                        EffectsKt.a(imeOptionsA, new CoreTextFieldKt$CoreTextField$4(textInputService, textFieldState, value, imeOptionsA), composerS, i317 & 14);
                        l<TextFieldValue, l0> lVarI9 = textFieldState.i();
                        boolean z212 = !z14;
                        if (i36 == 1) {
                            z19 = true;
                        } else {
                            z19 = z17;
                        }
                        Modifier modifierA117 = OnGloballyPositionedModifierKt.a(TextFieldScrollKt.d(m(modifier12.B(modifierC9), textFieldState, textFieldSelectionManager).B(TextFieldKeyInputKt.a(companion2, textFieldState, textFieldSelectionManager, value, lVarI9, z212, z19, offsetMappingA, undoManager)), textFieldScrollerPosition9, mutableInteractionSource3, z16).B(modifierB).B(modifierB19), new CoreTextFieldKt$CoreTextField$decorationBoxModifier$1(textFieldState));
                        if (!z16) {
                            z20 = z17;
                        } else {
                            z20 = z17;
                        }
                        if (z20) {
                            modifierB2 = TextFieldSelectionManager_androidKt.b(companion2, textFieldSelectionManager);
                        } else {
                            modifierB2 = companion2;
                        }
                        ImeOptions imeOptions11 = imeOptionsA;
                        composer2 = composerS;
                        b(modifierA117, textFieldSelectionManager, ComposableLambdaKt.b(composer2, -1885146845, true, new CoreTextFieldKt$CoreTextField$5(qVarA, i317, i36, textStyleA, textFieldScrollerPosition9, value, visualTransformationC, modifierB110, modifierA115, modifierA116, modifierB2, bringIntoViewRequester9, textFieldState, textFieldSelectionManager, z20, z14, lVar2)), composer2, 448);
                        textStyle2 = textStyleA;
                        mutableInteractionSource4 = mutableInteractionSource3;
                        lVar3 = lVar2;
                        brush2 = solidColor;
                        z21 = z12;
                        keyboardActions2 = keyboardActionsA;
                        z22 = z14;
                        qVar2 = qVarA;
                        visualTransformation2 = visualTransformationC;
                        modifier3 = modifier12;
                        i37 = i36;
                        z23 = z16;
                        imeOptions2 = imeOptions11;
                    }
                    scopeUpdateScopeU = composer2.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new CoreTextFieldKt$CoreTextField$6(value, onValueChange, modifier3, textStyle2, visualTransformation2, lVar3, mutableInteractionSource4, brush2, z21, i37, imeOptions2, keyboardActions2, z23, z22, qVar2, i11, i12, i13));
                }
                i30 |= 3072;
                i34 = i13 & 16384;
                if (i34 != 0) {
                    i30 |= CpioConstants.C_ISBLK;
                } else if ((i12 & 57344) == 0) {
                    i30 |= composerS.k(qVar) ? 16384 : 8192;
                }
                if ((i14 & 1533916891) != 306783378) {
                    composerS.J();
                    if ((i11 & 1) != 0) {
                        if (i38 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i15 != 0) {
                            textStyleA = TextStyle.Companion.a();
                        } else {
                            textStyleA = textStyle;
                        }
                        if (i17 != 0) {
                            visualTransformationC = VisualTransformation.Companion.c();
                        } else {
                            visualTransformationC = visualTransformation;
                        }
                        if (i19 != 0) {
                            lVar2 = CoreTextFieldKt$CoreTextField$1.INSTANCE;
                        } else {
                            lVar2 = lVar;
                        }
                        if (i21 != 0) {
                            mutableInteractionSource2 = null;
                        } else {
                            mutableInteractionSource2 = mutableInteractionSource;
                        }
                        if ((i13 & 128) != 0) {
                            solidColor = new SolidColor(Color.Companion.f(), null);
                        } else {
                            solidColor = brush;
                        }
                        if (i23 != 0) {
                            z12 = true;
                        } else {
                            z12 = z6;
                        }
                        if (i25 != 0) {
                            i35 = Integer.MAX_VALUE;
                        } else {
                            i35 = i10;
                        }
                        if ((i13 & 1024) != 0) {
                            imeOptionsA = ImeOptions.Companion.a();
                            i30 &= -15;
                        } else {
                            imeOptionsA = imeOptions;
                        }
                        if (i28 != 0) {
                            keyboardActionsA = KeyboardActions.Companion.a();
                        } else {
                            keyboardActionsA = keyboardActions;
                        }
                        if (i31 != 0) {
                            z13 = true;
                        } else {
                            z13 = z10;
                        }
                        if (i33 != 0) {
                            z14 = false;
                        } else {
                            z14 = z11;
                        }
                        if (i34 != 0) {
                            qVarA = ComposableSingletons$CoreTextFieldKt.INSTANCE.a();
                        } else {
                            qVarA = qVar;
                        }
                        z15 = z13;
                    } else {
                        if (i38 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i15 != 0) {
                            textStyleA = TextStyle.Companion.a();
                        } else {
                            textStyleA = textStyle;
                        }
                        if (i17 != 0) {
                            visualTransformationC = VisualTransformation.Companion.c();
                        } else {
                            visualTransformationC = visualTransformation;
                        }
                        if (i19 != 0) {
                            lVar2 = CoreTextFieldKt$CoreTextField$1.INSTANCE;
                        } else {
                            lVar2 = lVar;
                        }
                        if (i21 != 0) {
                            mutableInteractionSource2 = null;
                        } else {
                            mutableInteractionSource2 = mutableInteractionSource;
                        }
                        if ((i13 & 128) != 0) {
                            solidColor = new SolidColor(Color.Companion.f(), null);
                        } else {
                            solidColor = brush;
                        }
                        if (i23 != 0) {
                            z12 = true;
                        } else {
                            z12 = z6;
                        }
                        if (i25 != 0) {
                            i35 = Integer.MAX_VALUE;
                        } else {
                            i35 = i10;
                        }
                        if ((i13 & 1024) != 0) {
                            imeOptionsA = ImeOptions.Companion.a();
                            i30 &= -15;
                        } else {
                            imeOptionsA = imeOptions;
                        }
                        if (i28 != 0) {
                            keyboardActionsA = KeyboardActions.Companion.a();
                        } else {
                            keyboardActionsA = keyboardActions;
                        }
                        if (i31 != 0) {
                            z13 = true;
                        } else {
                            z13 = z10;
                        }
                        if (i33 != 0) {
                            z14 = false;
                        } else {
                            z14 = z11;
                        }
                        if (i34 != 0) {
                            qVarA = ComposableSingletons$CoreTextFieldKt.INSTANCE.a();
                        } else {
                            qVarA = qVar;
                        }
                        z15 = z13;
                    }
                    composerS.A();
                    focusRequester = new FocusRequester();
                    composerS.G(-55013392);
                    if (z15) {
                        textInputService = null;
                    } else {
                        textInputService = null;
                    }
                    composerS.Q();
                    density = (Density) composerS.x(CompositionLocalsKt.e());
                    resolver = (FontFamily.Resolver) composerS.x(CompositionLocalsKt.g());
                    long jA10 = ((TextSelectionColors) composerS.x(TextSelectionColorsKt.b())).a();
                    FocusManager focusManager10 = (FocusManager) composerS.x(CompositionLocalsKt.f());
                    Modifier modifier13 = modifier2;
                    if (i35 == 1) {
                        orientation = Orientation.Vertical;
                    } else {
                        orientation = Orientation.Vertical;
                    }
                    int i318 = i30;
                    i36 = i35;
                    orientation2 = orientation;
                    Object[] objArr10 = {orientation2};
                    Saver<TextFieldScrollerPosition, Object> saverA10 = TextFieldScrollerPosition.Companion.a();
                    z16 = z15;
                    composerS.G(1157296644);
                    zK = composerS.k(orientation2);
                    mutableInteractionSource3 = mutableInteractionSource2;
                    objH = composerS.H();
                    if (zK) {
                        objH = new CoreTextFieldKt$CoreTextField$scrollerPosition$1$1(orientation2);
                        composerS.z(objH);
                    } else {
                        objH = new CoreTextFieldKt$CoreTextField$scrollerPosition$1$1(orientation2);
                        composerS.z(objH);
                    }
                    composerS.Q();
                    TextFieldScrollerPosition textFieldScrollerPosition10 = (TextFieldScrollerPosition) RememberSaveableKt.b(objArr10, saverA10, null, (a) objH, composerS, 72, 4);
                    composerS.G(511388516);
                    zK2 = composerS.k(value) | composerS.k(visualTransformationC);
                    objH2 = composerS.H();
                    if (zK2) {
                        transformedTextA = visualTransformationC.a(value.e());
                        textRangeF = value.f();
                        if (textRangeF != null) {
                            objH2 = transformedTextA;
                        } else {
                            objH2 = transformedTextA;
                        }
                        composerS.z(objH2);
                    } else {
                        transformedTextA = visualTransformationC.a(value.e());
                        textRangeF = value.f();
                        if (textRangeF != null) {
                            objH2 = transformedTextA;
                        } else {
                            objH2 = transformedTextA;
                        }
                        composerS.z(objH2);
                    }
                    composerS.Q();
                    TransformedText transformedText10 = (TransformedText) objH2;
                    annotatedStringB = transformedText10.b();
                    offsetMappingA = transformedText10.a();
                    recomposeScopeB = ComposablesKt.b(composerS, 0);
                    composerS.G(-492369756);
                    objH3 = composerS.H();
                    companion = Composer.Companion;
                    if (objH3 == companion.a()) {
                        objH3 = new TextFieldState(new TextDelegate(annotatedStringB, textStyleA, 0, z12, 0, density, resolver, null, TarConstants.CHKSUM_OFFSET, null), recomposeScopeB);
                        composerS.z(objH3);
                    }
                    composerS.Q();
                    textFieldState = (TextFieldState) objH3;
                    textFieldState.A(annotatedStringB, textStyleA, z12, density, resolver, onValueChange, keyboardActionsA, focusManager10, jA10);
                    textFieldState.j().b(value, textFieldState.e());
                    composerS.G(-492369756);
                    objH4 = composerS.H();
                    if (objH4 == companion.a()) {
                        objH4 = new UndoManager(0, 1, null);
                        composerS.z(objH4);
                    }
                    composerS.Q();
                    undoManager = (UndoManager) objH4;
                    UndoManager.f(undoManager, value, 0L, 2, null);
                    composerS.G(-492369756);
                    objH5 = composerS.H();
                    if (objH5 == companion.a()) {
                        objH5 = new TextFieldSelectionManager(undoManager);
                        composerS.z(objH5);
                    }
                    composerS.Q();
                    textFieldSelectionManager = (TextFieldSelectionManager) objH5;
                    textFieldSelectionManager.U(offsetMappingA);
                    textFieldSelectionManager.Z(visualTransformationC);
                    textFieldSelectionManager.V(textFieldState.i());
                    textFieldSelectionManager.W(textFieldState);
                    textFieldSelectionManager.Y(value);
                    textFieldSelectionManager.N((ClipboardManager) composerS.x(CompositionLocalsKt.d()));
                    textFieldSelectionManager.X((TextToolbar) composerS.x(CompositionLocalsKt.m()));
                    textFieldSelectionManager.T((HapticFeedback) composerS.x(CompositionLocalsKt.h()));
                    textFieldSelectionManager.R(focusRequester);
                    textFieldSelectionManager.Q(!z14);
                    composerS.G(773894976);
                    composerS.G(-492369756);
                    objH6 = composerS.H();
                    if (objH6 == companion.a()) {
                        CompositionScopedCoroutineScopeCanceller compositionScopedCoroutineScopeCanceller10 = new CompositionScopedCoroutineScopeCanceller(EffectsKt.j(h.INSTANCE, composerS));
                        composerS.z(compositionScopedCoroutineScopeCanceller10);
                        objH6 = compositionScopedCoroutineScopeCanceller10;
                    }
                    composerS.Q();
                    o0 o0VarA10 = ((CompositionScopedCoroutineScopeCanceller) objH6).a();
                    composerS.Q();
                    composerS.G(-492369756);
                    objH7 = composerS.H();
                    if (objH7 == companion.a()) {
                        objH7 = BringIntoViewRequesterKt.a();
                        composerS.z(objH7);
                    }
                    composerS.Q();
                    BringIntoViewRequester bringIntoViewRequester10 = (BringIntoViewRequester) objH7;
                    companion2 = Modifier.Companion;
                    Modifier modifierC10 = TextFieldGestureModifiersKt.c(companion2, z16, focusRequester, mutableInteractionSource3, new CoreTextFieldKt$CoreTextField$focusModifier$1(textFieldState, textInputService, value, imeOptionsA, textFieldSelectionManager, o0VarA10, bringIntoViewRequester10, offsetMappingA));
                    EffectsKt.a(textFieldState, new CoreTextFieldKt$CoreTextField$2(textFieldState), composerS, 8);
                    if (TouchMode_androidKt.a()) {
                        modifierB = TextFieldPressGestureFilterKt.a(companion2, mutableInteractionSource3, z16, new CoreTextFieldKt$CoreTextField$pointerModifier$1(textFieldState, focusRequester, z14, textFieldSelectionManager, offsetMappingA)).B(TextFieldGestureModifiersKt.a(companion2, textFieldSelectionManager.G(), z16));
                        z17 = false;
                    } else {
                        z17 = false;
                        modifierB = PointerIconKt.b(TextFieldGestureModifiersKt.b(companion2, textFieldSelectionManager.B(), z16), TextPointerIcon_androidKt.a(), false, 2, null);
                    }
                    Modifier modifierA118 = DrawModifierKt.a(companion2, new CoreTextFieldKt$CoreTextField$drawModifier$1(textFieldState, value, offsetMappingA));
                    Modifier modifierA119 = OnGloballyPositionedModifierKt.a(companion2, new CoreTextFieldKt$CoreTextField$onPositionedModifier$1(textFieldState, z16, textFieldSelectionManager));
                    Modifier modifierB111 = SemanticsModifierKt.b(companion2, true, new CoreTextFieldKt$CoreTextField$semanticsModifier$1(imeOptionsA, transformedText10, value, z16, visualTransformationC instanceof PasswordVisualTransformation, z14, textFieldState, offsetMappingA, textFieldSelectionManager, focusRequester));
                    if (z16) {
                        z18 = z17;
                    } else {
                        z18 = z17;
                    }
                    Modifier modifierB112 = TextFieldCursorKt.b(companion2, textFieldState, value, offsetMappingA, solidColor, z18);
                    EffectsKt.a(textFieldSelectionManager, new CoreTextFieldKt$CoreTextField$3(textFieldSelectionManager), composerS, 8);
                    EffectsKt.a(imeOptionsA, new CoreTextFieldKt$CoreTextField$4(textInputService, textFieldState, value, imeOptionsA), composerS, i318 & 14);
                    l<TextFieldValue, l0> lVarI10 = textFieldState.i();
                    boolean z213 = !z14;
                    if (i36 == 1) {
                        z19 = true;
                    } else {
                        z19 = z17;
                    }
                    Modifier modifierA1110 = OnGloballyPositionedModifierKt.a(TextFieldScrollKt.d(m(modifier13.B(modifierC10), textFieldState, textFieldSelectionManager).B(TextFieldKeyInputKt.a(companion2, textFieldState, textFieldSelectionManager, value, lVarI10, z213, z19, offsetMappingA, undoManager)), textFieldScrollerPosition10, mutableInteractionSource3, z16).B(modifierB).B(modifierB111), new CoreTextFieldKt$CoreTextField$decorationBoxModifier$1(textFieldState));
                    if (!z16) {
                        z20 = z17;
                    } else {
                        z20 = z17;
                    }
                    if (z20) {
                        modifierB2 = TextFieldSelectionManager_androidKt.b(companion2, textFieldSelectionManager);
                    } else {
                        modifierB2 = companion2;
                    }
                    ImeOptions imeOptions12 = imeOptionsA;
                    composer2 = composerS;
                    b(modifierA1110, textFieldSelectionManager, ComposableLambdaKt.b(composer2, -1885146845, true, new CoreTextFieldKt$CoreTextField$5(qVarA, i318, i36, textStyleA, textFieldScrollerPosition10, value, visualTransformationC, modifierB112, modifierA118, modifierA119, modifierB2, bringIntoViewRequester10, textFieldState, textFieldSelectionManager, z20, z14, lVar2)), composer2, 448);
                    textStyle2 = textStyleA;
                    mutableInteractionSource4 = mutableInteractionSource3;
                    lVar3 = lVar2;
                    brush2 = solidColor;
                    z21 = z12;
                    keyboardActions2 = keyboardActionsA;
                    z22 = z14;
                    qVar2 = qVarA;
                    visualTransformation2 = visualTransformationC;
                    modifier3 = modifier13;
                    i37 = i36;
                    z23 = z16;
                    imeOptions2 = imeOptions12;
                } else {
                    composerS.J();
                    if ((i11 & 1) != 0) {
                        if (i38 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i15 != 0) {
                            textStyleA = TextStyle.Companion.a();
                        } else {
                            textStyleA = textStyle;
                        }
                        if (i17 != 0) {
                            visualTransformationC = VisualTransformation.Companion.c();
                        } else {
                            visualTransformationC = visualTransformation;
                        }
                        if (i19 != 0) {
                            lVar2 = CoreTextFieldKt$CoreTextField$1.INSTANCE;
                        } else {
                            lVar2 = lVar;
                        }
                        if (i21 != 0) {
                            mutableInteractionSource2 = null;
                        } else {
                            mutableInteractionSource2 = mutableInteractionSource;
                        }
                        if ((i13 & 128) != 0) {
                            solidColor = new SolidColor(Color.Companion.f(), null);
                        } else {
                            solidColor = brush;
                        }
                        if (i23 != 0) {
                            z12 = true;
                        } else {
                            z12 = z6;
                        }
                        if (i25 != 0) {
                            i35 = Integer.MAX_VALUE;
                        } else {
                            i35 = i10;
                        }
                        if ((i13 & 1024) != 0) {
                            imeOptionsA = ImeOptions.Companion.a();
                            i30 &= -15;
                        } else {
                            imeOptionsA = imeOptions;
                        }
                        if (i28 != 0) {
                            keyboardActionsA = KeyboardActions.Companion.a();
                        } else {
                            keyboardActionsA = keyboardActions;
                        }
                        if (i31 != 0) {
                            z13 = true;
                        } else {
                            z13 = z10;
                        }
                        if (i33 != 0) {
                            z14 = false;
                        } else {
                            z14 = z11;
                        }
                        if (i34 != 0) {
                            qVarA = ComposableSingletons$CoreTextFieldKt.INSTANCE.a();
                        } else {
                            qVarA = qVar;
                        }
                        z15 = z13;
                    } else {
                        if (i38 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i15 != 0) {
                            textStyleA = TextStyle.Companion.a();
                        } else {
                            textStyleA = textStyle;
                        }
                        if (i17 != 0) {
                            visualTransformationC = VisualTransformation.Companion.c();
                        } else {
                            visualTransformationC = visualTransformation;
                        }
                        if (i19 != 0) {
                            lVar2 = CoreTextFieldKt$CoreTextField$1.INSTANCE;
                        } else {
                            lVar2 = lVar;
                        }
                        if (i21 != 0) {
                            mutableInteractionSource2 = null;
                        } else {
                            mutableInteractionSource2 = mutableInteractionSource;
                        }
                        if ((i13 & 128) != 0) {
                            solidColor = new SolidColor(Color.Companion.f(), null);
                        } else {
                            solidColor = brush;
                        }
                        if (i23 != 0) {
                            z12 = true;
                        } else {
                            z12 = z6;
                        }
                        if (i25 != 0) {
                            i35 = Integer.MAX_VALUE;
                        } else {
                            i35 = i10;
                        }
                        if ((i13 & 1024) != 0) {
                            imeOptionsA = ImeOptions.Companion.a();
                            i30 &= -15;
                        } else {
                            imeOptionsA = imeOptions;
                        }
                        if (i28 != 0) {
                            keyboardActionsA = KeyboardActions.Companion.a();
                        } else {
                            keyboardActionsA = keyboardActions;
                        }
                        if (i31 != 0) {
                            z13 = true;
                        } else {
                            z13 = z10;
                        }
                        if (i33 != 0) {
                            z14 = false;
                        } else {
                            z14 = z11;
                        }
                        if (i34 != 0) {
                            qVarA = ComposableSingletons$CoreTextFieldKt.INSTANCE.a();
                        } else {
                            qVarA = qVar;
                        }
                        z15 = z13;
                    }
                    composerS.A();
                    focusRequester = new FocusRequester();
                    composerS.G(-55013392);
                    if (z15) {
                        textInputService = null;
                    } else {
                        textInputService = null;
                    }
                    composerS.Q();
                    density = (Density) composerS.x(CompositionLocalsKt.e());
                    resolver = (FontFamily.Resolver) composerS.x(CompositionLocalsKt.g());
                    long jA11 = ((TextSelectionColors) composerS.x(TextSelectionColorsKt.b())).a();
                    FocusManager focusManager11 = (FocusManager) composerS.x(CompositionLocalsKt.f());
                    Modifier modifier14 = modifier2;
                    if (i35 == 1) {
                        orientation = Orientation.Vertical;
                    } else {
                        orientation = Orientation.Vertical;
                    }
                    int i319 = i30;
                    i36 = i35;
                    orientation2 = orientation;
                    Object[] objArr11 = {orientation2};
                    Saver<TextFieldScrollerPosition, Object> saverA11 = TextFieldScrollerPosition.Companion.a();
                    z16 = z15;
                    composerS.G(1157296644);
                    zK = composerS.k(orientation2);
                    mutableInteractionSource3 = mutableInteractionSource2;
                    objH = composerS.H();
                    if (zK) {
                        objH = new CoreTextFieldKt$CoreTextField$scrollerPosition$1$1(orientation2);
                        composerS.z(objH);
                    } else {
                        objH = new CoreTextFieldKt$CoreTextField$scrollerPosition$1$1(orientation2);
                        composerS.z(objH);
                    }
                    composerS.Q();
                    TextFieldScrollerPosition textFieldScrollerPosition11 = (TextFieldScrollerPosition) RememberSaveableKt.b(objArr11, saverA11, null, (a) objH, composerS, 72, 4);
                    composerS.G(511388516);
                    zK2 = composerS.k(value) | composerS.k(visualTransformationC);
                    objH2 = composerS.H();
                    if (zK2) {
                        transformedTextA = visualTransformationC.a(value.e());
                        textRangeF = value.f();
                        if (textRangeF != null) {
                            objH2 = transformedTextA;
                        } else {
                            objH2 = transformedTextA;
                        }
                        composerS.z(objH2);
                    } else {
                        transformedTextA = visualTransformationC.a(value.e());
                        textRangeF = value.f();
                        if (textRangeF != null) {
                            objH2 = transformedTextA;
                        } else {
                            objH2 = transformedTextA;
                        }
                        composerS.z(objH2);
                    }
                    composerS.Q();
                    TransformedText transformedText11 = (TransformedText) objH2;
                    annotatedStringB = transformedText11.b();
                    offsetMappingA = transformedText11.a();
                    recomposeScopeB = ComposablesKt.b(composerS, 0);
                    composerS.G(-492369756);
                    objH3 = composerS.H();
                    companion = Composer.Companion;
                    if (objH3 == companion.a()) {
                        objH3 = new TextFieldState(new TextDelegate(annotatedStringB, textStyleA, 0, z12, 0, density, resolver, null, TarConstants.CHKSUM_OFFSET, null), recomposeScopeB);
                        composerS.z(objH3);
                    }
                    composerS.Q();
                    textFieldState = (TextFieldState) objH3;
                    textFieldState.A(annotatedStringB, textStyleA, z12, density, resolver, onValueChange, keyboardActionsA, focusManager11, jA11);
                    textFieldState.j().b(value, textFieldState.e());
                    composerS.G(-492369756);
                    objH4 = composerS.H();
                    if (objH4 == companion.a()) {
                        objH4 = new UndoManager(0, 1, null);
                        composerS.z(objH4);
                    }
                    composerS.Q();
                    undoManager = (UndoManager) objH4;
                    UndoManager.f(undoManager, value, 0L, 2, null);
                    composerS.G(-492369756);
                    objH5 = composerS.H();
                    if (objH5 == companion.a()) {
                        objH5 = new TextFieldSelectionManager(undoManager);
                        composerS.z(objH5);
                    }
                    composerS.Q();
                    textFieldSelectionManager = (TextFieldSelectionManager) objH5;
                    textFieldSelectionManager.U(offsetMappingA);
                    textFieldSelectionManager.Z(visualTransformationC);
                    textFieldSelectionManager.V(textFieldState.i());
                    textFieldSelectionManager.W(textFieldState);
                    textFieldSelectionManager.Y(value);
                    textFieldSelectionManager.N((ClipboardManager) composerS.x(CompositionLocalsKt.d()));
                    textFieldSelectionManager.X((TextToolbar) composerS.x(CompositionLocalsKt.m()));
                    textFieldSelectionManager.T((HapticFeedback) composerS.x(CompositionLocalsKt.h()));
                    textFieldSelectionManager.R(focusRequester);
                    textFieldSelectionManager.Q(!z14);
                    composerS.G(773894976);
                    composerS.G(-492369756);
                    objH6 = composerS.H();
                    if (objH6 == companion.a()) {
                        CompositionScopedCoroutineScopeCanceller compositionScopedCoroutineScopeCanceller11 = new CompositionScopedCoroutineScopeCanceller(EffectsKt.j(h.INSTANCE, composerS));
                        composerS.z(compositionScopedCoroutineScopeCanceller11);
                        objH6 = compositionScopedCoroutineScopeCanceller11;
                    }
                    composerS.Q();
                    o0 o0VarA11 = ((CompositionScopedCoroutineScopeCanceller) objH6).a();
                    composerS.Q();
                    composerS.G(-492369756);
                    objH7 = composerS.H();
                    if (objH7 == companion.a()) {
                        objH7 = BringIntoViewRequesterKt.a();
                        composerS.z(objH7);
                    }
                    composerS.Q();
                    BringIntoViewRequester bringIntoViewRequester11 = (BringIntoViewRequester) objH7;
                    companion2 = Modifier.Companion;
                    Modifier modifierC11 = TextFieldGestureModifiersKt.c(companion2, z16, focusRequester, mutableInteractionSource3, new CoreTextFieldKt$CoreTextField$focusModifier$1(textFieldState, textInputService, value, imeOptionsA, textFieldSelectionManager, o0VarA11, bringIntoViewRequester11, offsetMappingA));
                    EffectsKt.a(textFieldState, new CoreTextFieldKt$CoreTextField$2(textFieldState), composerS, 8);
                    if (TouchMode_androidKt.a()) {
                        modifierB = TextFieldPressGestureFilterKt.a(companion2, mutableInteractionSource3, z16, new CoreTextFieldKt$CoreTextField$pointerModifier$1(textFieldState, focusRequester, z14, textFieldSelectionManager, offsetMappingA)).B(TextFieldGestureModifiersKt.a(companion2, textFieldSelectionManager.G(), z16));
                        z17 = false;
                    } else {
                        z17 = false;
                        modifierB = PointerIconKt.b(TextFieldGestureModifiersKt.b(companion2, textFieldSelectionManager.B(), z16), TextPointerIcon_androidKt.a(), false, 2, null);
                    }
                    Modifier modifierA1111 = DrawModifierKt.a(companion2, new CoreTextFieldKt$CoreTextField$drawModifier$1(textFieldState, value, offsetMappingA));
                    Modifier modifierA1112 = OnGloballyPositionedModifierKt.a(companion2, new CoreTextFieldKt$CoreTextField$onPositionedModifier$1(textFieldState, z16, textFieldSelectionManager));
                    Modifier modifierB113 = SemanticsModifierKt.b(companion2, true, new CoreTextFieldKt$CoreTextField$semanticsModifier$1(imeOptionsA, transformedText11, value, z16, visualTransformationC instanceof PasswordVisualTransformation, z14, textFieldState, offsetMappingA, textFieldSelectionManager, focusRequester));
                    if (z16) {
                        z18 = z17;
                    } else {
                        z18 = z17;
                    }
                    Modifier modifierB114 = TextFieldCursorKt.b(companion2, textFieldState, value, offsetMappingA, solidColor, z18);
                    EffectsKt.a(textFieldSelectionManager, new CoreTextFieldKt$CoreTextField$3(textFieldSelectionManager), composerS, 8);
                    EffectsKt.a(imeOptionsA, new CoreTextFieldKt$CoreTextField$4(textInputService, textFieldState, value, imeOptionsA), composerS, i319 & 14);
                    l<TextFieldValue, l0> lVarI11 = textFieldState.i();
                    boolean z214 = !z14;
                    if (i36 == 1) {
                        z19 = true;
                    } else {
                        z19 = z17;
                    }
                    Modifier modifierA1113 = OnGloballyPositionedModifierKt.a(TextFieldScrollKt.d(m(modifier14.B(modifierC11), textFieldState, textFieldSelectionManager).B(TextFieldKeyInputKt.a(companion2, textFieldState, textFieldSelectionManager, value, lVarI11, z214, z19, offsetMappingA, undoManager)), textFieldScrollerPosition11, mutableInteractionSource3, z16).B(modifierB).B(modifierB113), new CoreTextFieldKt$CoreTextField$decorationBoxModifier$1(textFieldState));
                    if (!z16) {
                        z20 = z17;
                    } else {
                        z20 = z17;
                    }
                    if (z20) {
                        modifierB2 = TextFieldSelectionManager_androidKt.b(companion2, textFieldSelectionManager);
                    } else {
                        modifierB2 = companion2;
                    }
                    ImeOptions imeOptions13 = imeOptionsA;
                    composer2 = composerS;
                    b(modifierA1113, textFieldSelectionManager, ComposableLambdaKt.b(composer2, -1885146845, true, new CoreTextFieldKt$CoreTextField$5(qVarA, i319, i36, textStyleA, textFieldScrollerPosition11, value, visualTransformationC, modifierB114, modifierA1111, modifierA1112, modifierB2, bringIntoViewRequester11, textFieldState, textFieldSelectionManager, z20, z14, lVar2)), composer2, 448);
                    textStyle2 = textStyleA;
                    mutableInteractionSource4 = mutableInteractionSource3;
                    lVar3 = lVar2;
                    brush2 = solidColor;
                    z21 = z12;
                    keyboardActions2 = keyboardActionsA;
                    z22 = z14;
                    qVar2 = qVarA;
                    visualTransformation2 = visualTransformationC;
                    modifier3 = modifier14;
                    i37 = i36;
                    z23 = z16;
                    imeOptions2 = imeOptions13;
                }
                scopeUpdateScopeU = composer2.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new CoreTextFieldKt$CoreTextField$6(value, onValueChange, modifier3, textStyle2, visualTransformation2, lVar3, mutableInteractionSource4, brush2, z21, i37, imeOptions2, keyboardActions2, z23, z22, qVar2, i11, i12, i13));
            }
            i30 |= 384;
            i33 = i13 & 8192;
            if (i33 != 0) {
                if ((i12 & 7168) == 0) {
                    i30 |= composerS.m(z11) ? 2048 : 1024;
                }
                i34 = i13 & 16384;
                if (i34 != 0) {
                    i30 |= CpioConstants.C_ISBLK;
                } else if ((i12 & 57344) == 0) {
                    i30 |= composerS.k(qVar) ? 16384 : 8192;
                }
                if ((i14 & 1533916891) != 306783378) {
                    composerS.J();
                    if ((i11 & 1) != 0) {
                        if (i38 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i15 != 0) {
                            textStyleA = TextStyle.Companion.a();
                        } else {
                            textStyleA = textStyle;
                        }
                        if (i17 != 0) {
                            visualTransformationC = VisualTransformation.Companion.c();
                        } else {
                            visualTransformationC = visualTransformation;
                        }
                        if (i19 != 0) {
                            lVar2 = CoreTextFieldKt$CoreTextField$1.INSTANCE;
                        } else {
                            lVar2 = lVar;
                        }
                        if (i21 != 0) {
                            mutableInteractionSource2 = null;
                        } else {
                            mutableInteractionSource2 = mutableInteractionSource;
                        }
                        if ((i13 & 128) != 0) {
                            solidColor = new SolidColor(Color.Companion.f(), null);
                        } else {
                            solidColor = brush;
                        }
                        if (i23 != 0) {
                            z12 = true;
                        } else {
                            z12 = z6;
                        }
                        if (i25 != 0) {
                            i35 = Integer.MAX_VALUE;
                        } else {
                            i35 = i10;
                        }
                        if ((i13 & 1024) != 0) {
                            imeOptionsA = ImeOptions.Companion.a();
                            i30 &= -15;
                        } else {
                            imeOptionsA = imeOptions;
                        }
                        if (i28 != 0) {
                            keyboardActionsA = KeyboardActions.Companion.a();
                        } else {
                            keyboardActionsA = keyboardActions;
                        }
                        if (i31 != 0) {
                            z13 = true;
                        } else {
                            z13 = z10;
                        }
                        if (i33 != 0) {
                            z14 = false;
                        } else {
                            z14 = z11;
                        }
                        if (i34 != 0) {
                            qVarA = ComposableSingletons$CoreTextFieldKt.INSTANCE.a();
                        } else {
                            qVarA = qVar;
                        }
                        z15 = z13;
                    } else {
                        if (i38 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i15 != 0) {
                            textStyleA = TextStyle.Companion.a();
                        } else {
                            textStyleA = textStyle;
                        }
                        if (i17 != 0) {
                            visualTransformationC = VisualTransformation.Companion.c();
                        } else {
                            visualTransformationC = visualTransformation;
                        }
                        if (i19 != 0) {
                            lVar2 = CoreTextFieldKt$CoreTextField$1.INSTANCE;
                        } else {
                            lVar2 = lVar;
                        }
                        if (i21 != 0) {
                            mutableInteractionSource2 = null;
                        } else {
                            mutableInteractionSource2 = mutableInteractionSource;
                        }
                        if ((i13 & 128) != 0) {
                            solidColor = new SolidColor(Color.Companion.f(), null);
                        } else {
                            solidColor = brush;
                        }
                        if (i23 != 0) {
                            z12 = true;
                        } else {
                            z12 = z6;
                        }
                        if (i25 != 0) {
                            i35 = Integer.MAX_VALUE;
                        } else {
                            i35 = i10;
                        }
                        if ((i13 & 1024) != 0) {
                            imeOptionsA = ImeOptions.Companion.a();
                            i30 &= -15;
                        } else {
                            imeOptionsA = imeOptions;
                        }
                        if (i28 != 0) {
                            keyboardActionsA = KeyboardActions.Companion.a();
                        } else {
                            keyboardActionsA = keyboardActions;
                        }
                        if (i31 != 0) {
                            z13 = true;
                        } else {
                            z13 = z10;
                        }
                        if (i33 != 0) {
                            z14 = false;
                        } else {
                            z14 = z11;
                        }
                        if (i34 != 0) {
                            qVarA = ComposableSingletons$CoreTextFieldKt.INSTANCE.a();
                        } else {
                            qVarA = qVar;
                        }
                        z15 = z13;
                    }
                    composerS.A();
                    focusRequester = new FocusRequester();
                    composerS.G(-55013392);
                    if (z15) {
                        textInputService = null;
                    } else {
                        textInputService = null;
                    }
                    composerS.Q();
                    density = (Density) composerS.x(CompositionLocalsKt.e());
                    resolver = (FontFamily.Resolver) composerS.x(CompositionLocalsKt.g());
                    long jA12 = ((TextSelectionColors) composerS.x(TextSelectionColorsKt.b())).a();
                    FocusManager focusManager12 = (FocusManager) composerS.x(CompositionLocalsKt.f());
                    Modifier modifier15 = modifier2;
                    if (i35 == 1) {
                        orientation = Orientation.Vertical;
                    } else {
                        orientation = Orientation.Vertical;
                    }
                    int i3110 = i30;
                    i36 = i35;
                    orientation2 = orientation;
                    Object[] objArr12 = {orientation2};
                    Saver<TextFieldScrollerPosition, Object> saverA12 = TextFieldScrollerPosition.Companion.a();
                    z16 = z15;
                    composerS.G(1157296644);
                    zK = composerS.k(orientation2);
                    mutableInteractionSource3 = mutableInteractionSource2;
                    objH = composerS.H();
                    if (zK) {
                        objH = new CoreTextFieldKt$CoreTextField$scrollerPosition$1$1(orientation2);
                        composerS.z(objH);
                    } else {
                        objH = new CoreTextFieldKt$CoreTextField$scrollerPosition$1$1(orientation2);
                        composerS.z(objH);
                    }
                    composerS.Q();
                    TextFieldScrollerPosition textFieldScrollerPosition12 = (TextFieldScrollerPosition) RememberSaveableKt.b(objArr12, saverA12, null, (a) objH, composerS, 72, 4);
                    composerS.G(511388516);
                    zK2 = composerS.k(value) | composerS.k(visualTransformationC);
                    objH2 = composerS.H();
                    if (zK2) {
                        transformedTextA = visualTransformationC.a(value.e());
                        textRangeF = value.f();
                        if (textRangeF != null) {
                            objH2 = transformedTextA;
                        } else {
                            objH2 = transformedTextA;
                        }
                        composerS.z(objH2);
                    } else {
                        transformedTextA = visualTransformationC.a(value.e());
                        textRangeF = value.f();
                        if (textRangeF != null) {
                            objH2 = transformedTextA;
                        } else {
                            objH2 = transformedTextA;
                        }
                        composerS.z(objH2);
                    }
                    composerS.Q();
                    TransformedText transformedText12 = (TransformedText) objH2;
                    annotatedStringB = transformedText12.b();
                    offsetMappingA = transformedText12.a();
                    recomposeScopeB = ComposablesKt.b(composerS, 0);
                    composerS.G(-492369756);
                    objH3 = composerS.H();
                    companion = Composer.Companion;
                    if (objH3 == companion.a()) {
                        objH3 = new TextFieldState(new TextDelegate(annotatedStringB, textStyleA, 0, z12, 0, density, resolver, null, TarConstants.CHKSUM_OFFSET, null), recomposeScopeB);
                        composerS.z(objH3);
                    }
                    composerS.Q();
                    textFieldState = (TextFieldState) objH3;
                    textFieldState.A(annotatedStringB, textStyleA, z12, density, resolver, onValueChange, keyboardActionsA, focusManager12, jA12);
                    textFieldState.j().b(value, textFieldState.e());
                    composerS.G(-492369756);
                    objH4 = composerS.H();
                    if (objH4 == companion.a()) {
                        objH4 = new UndoManager(0, 1, null);
                        composerS.z(objH4);
                    }
                    composerS.Q();
                    undoManager = (UndoManager) objH4;
                    UndoManager.f(undoManager, value, 0L, 2, null);
                    composerS.G(-492369756);
                    objH5 = composerS.H();
                    if (objH5 == companion.a()) {
                        objH5 = new TextFieldSelectionManager(undoManager);
                        composerS.z(objH5);
                    }
                    composerS.Q();
                    textFieldSelectionManager = (TextFieldSelectionManager) objH5;
                    textFieldSelectionManager.U(offsetMappingA);
                    textFieldSelectionManager.Z(visualTransformationC);
                    textFieldSelectionManager.V(textFieldState.i());
                    textFieldSelectionManager.W(textFieldState);
                    textFieldSelectionManager.Y(value);
                    textFieldSelectionManager.N((ClipboardManager) composerS.x(CompositionLocalsKt.d()));
                    textFieldSelectionManager.X((TextToolbar) composerS.x(CompositionLocalsKt.m()));
                    textFieldSelectionManager.T((HapticFeedback) composerS.x(CompositionLocalsKt.h()));
                    textFieldSelectionManager.R(focusRequester);
                    textFieldSelectionManager.Q(!z14);
                    composerS.G(773894976);
                    composerS.G(-492369756);
                    objH6 = composerS.H();
                    if (objH6 == companion.a()) {
                        CompositionScopedCoroutineScopeCanceller compositionScopedCoroutineScopeCanceller12 = new CompositionScopedCoroutineScopeCanceller(EffectsKt.j(h.INSTANCE, composerS));
                        composerS.z(compositionScopedCoroutineScopeCanceller12);
                        objH6 = compositionScopedCoroutineScopeCanceller12;
                    }
                    composerS.Q();
                    o0 o0VarA12 = ((CompositionScopedCoroutineScopeCanceller) objH6).a();
                    composerS.Q();
                    composerS.G(-492369756);
                    objH7 = composerS.H();
                    if (objH7 == companion.a()) {
                        objH7 = BringIntoViewRequesterKt.a();
                        composerS.z(objH7);
                    }
                    composerS.Q();
                    BringIntoViewRequester bringIntoViewRequester12 = (BringIntoViewRequester) objH7;
                    companion2 = Modifier.Companion;
                    Modifier modifierC12 = TextFieldGestureModifiersKt.c(companion2, z16, focusRequester, mutableInteractionSource3, new CoreTextFieldKt$CoreTextField$focusModifier$1(textFieldState, textInputService, value, imeOptionsA, textFieldSelectionManager, o0VarA12, bringIntoViewRequester12, offsetMappingA));
                    EffectsKt.a(textFieldState, new CoreTextFieldKt$CoreTextField$2(textFieldState), composerS, 8);
                    if (TouchMode_androidKt.a()) {
                        modifierB = TextFieldPressGestureFilterKt.a(companion2, mutableInteractionSource3, z16, new CoreTextFieldKt$CoreTextField$pointerModifier$1(textFieldState, focusRequester, z14, textFieldSelectionManager, offsetMappingA)).B(TextFieldGestureModifiersKt.a(companion2, textFieldSelectionManager.G(), z16));
                        z17 = false;
                    } else {
                        z17 = false;
                        modifierB = PointerIconKt.b(TextFieldGestureModifiersKt.b(companion2, textFieldSelectionManager.B(), z16), TextPointerIcon_androidKt.a(), false, 2, null);
                    }
                    Modifier modifierA1114 = DrawModifierKt.a(companion2, new CoreTextFieldKt$CoreTextField$drawModifier$1(textFieldState, value, offsetMappingA));
                    Modifier modifierA1115 = OnGloballyPositionedModifierKt.a(companion2, new CoreTextFieldKt$CoreTextField$onPositionedModifier$1(textFieldState, z16, textFieldSelectionManager));
                    Modifier modifierB115 = SemanticsModifierKt.b(companion2, true, new CoreTextFieldKt$CoreTextField$semanticsModifier$1(imeOptionsA, transformedText12, value, z16, visualTransformationC instanceof PasswordVisualTransformation, z14, textFieldState, offsetMappingA, textFieldSelectionManager, focusRequester));
                    if (z16) {
                        z18 = z17;
                    } else {
                        z18 = z17;
                    }
                    Modifier modifierB116 = TextFieldCursorKt.b(companion2, textFieldState, value, offsetMappingA, solidColor, z18);
                    EffectsKt.a(textFieldSelectionManager, new CoreTextFieldKt$CoreTextField$3(textFieldSelectionManager), composerS, 8);
                    EffectsKt.a(imeOptionsA, new CoreTextFieldKt$CoreTextField$4(textInputService, textFieldState, value, imeOptionsA), composerS, i3110 & 14);
                    l<TextFieldValue, l0> lVarI12 = textFieldState.i();
                    boolean z215 = !z14;
                    if (i36 == 1) {
                        z19 = true;
                    } else {
                        z19 = z17;
                    }
                    Modifier modifierA1116 = OnGloballyPositionedModifierKt.a(TextFieldScrollKt.d(m(modifier15.B(modifierC12), textFieldState, textFieldSelectionManager).B(TextFieldKeyInputKt.a(companion2, textFieldState, textFieldSelectionManager, value, lVarI12, z215, z19, offsetMappingA, undoManager)), textFieldScrollerPosition12, mutableInteractionSource3, z16).B(modifierB).B(modifierB115), new CoreTextFieldKt$CoreTextField$decorationBoxModifier$1(textFieldState));
                    if (!z16) {
                        z20 = z17;
                    } else {
                        z20 = z17;
                    }
                    if (z20) {
                        modifierB2 = TextFieldSelectionManager_androidKt.b(companion2, textFieldSelectionManager);
                    } else {
                        modifierB2 = companion2;
                    }
                    ImeOptions imeOptions14 = imeOptionsA;
                    composer2 = composerS;
                    b(modifierA1116, textFieldSelectionManager, ComposableLambdaKt.b(composer2, -1885146845, true, new CoreTextFieldKt$CoreTextField$5(qVarA, i3110, i36, textStyleA, textFieldScrollerPosition12, value, visualTransformationC, modifierB116, modifierA1114, modifierA1115, modifierB2, bringIntoViewRequester12, textFieldState, textFieldSelectionManager, z20, z14, lVar2)), composer2, 448);
                    textStyle2 = textStyleA;
                    mutableInteractionSource4 = mutableInteractionSource3;
                    lVar3 = lVar2;
                    brush2 = solidColor;
                    z21 = z12;
                    keyboardActions2 = keyboardActionsA;
                    z22 = z14;
                    qVar2 = qVarA;
                    visualTransformation2 = visualTransformationC;
                    modifier3 = modifier15;
                    i37 = i36;
                    z23 = z16;
                    imeOptions2 = imeOptions14;
                } else {
                    composerS.J();
                    if ((i11 & 1) != 0) {
                        if (i38 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i15 != 0) {
                            textStyleA = TextStyle.Companion.a();
                        } else {
                            textStyleA = textStyle;
                        }
                        if (i17 != 0) {
                            visualTransformationC = VisualTransformation.Companion.c();
                        } else {
                            visualTransformationC = visualTransformation;
                        }
                        if (i19 != 0) {
                            lVar2 = CoreTextFieldKt$CoreTextField$1.INSTANCE;
                        } else {
                            lVar2 = lVar;
                        }
                        if (i21 != 0) {
                            mutableInteractionSource2 = null;
                        } else {
                            mutableInteractionSource2 = mutableInteractionSource;
                        }
                        if ((i13 & 128) != 0) {
                            solidColor = new SolidColor(Color.Companion.f(), null);
                        } else {
                            solidColor = brush;
                        }
                        if (i23 != 0) {
                            z12 = true;
                        } else {
                            z12 = z6;
                        }
                        if (i25 != 0) {
                            i35 = Integer.MAX_VALUE;
                        } else {
                            i35 = i10;
                        }
                        if ((i13 & 1024) != 0) {
                            imeOptionsA = ImeOptions.Companion.a();
                            i30 &= -15;
                        } else {
                            imeOptionsA = imeOptions;
                        }
                        if (i28 != 0) {
                            keyboardActionsA = KeyboardActions.Companion.a();
                        } else {
                            keyboardActionsA = keyboardActions;
                        }
                        if (i31 != 0) {
                            z13 = true;
                        } else {
                            z13 = z10;
                        }
                        if (i33 != 0) {
                            z14 = false;
                        } else {
                            z14 = z11;
                        }
                        if (i34 != 0) {
                            qVarA = ComposableSingletons$CoreTextFieldKt.INSTANCE.a();
                        } else {
                            qVarA = qVar;
                        }
                        z15 = z13;
                    } else {
                        if (i38 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i15 != 0) {
                            textStyleA = TextStyle.Companion.a();
                        } else {
                            textStyleA = textStyle;
                        }
                        if (i17 != 0) {
                            visualTransformationC = VisualTransformation.Companion.c();
                        } else {
                            visualTransformationC = visualTransformation;
                        }
                        if (i19 != 0) {
                            lVar2 = CoreTextFieldKt$CoreTextField$1.INSTANCE;
                        } else {
                            lVar2 = lVar;
                        }
                        if (i21 != 0) {
                            mutableInteractionSource2 = null;
                        } else {
                            mutableInteractionSource2 = mutableInteractionSource;
                        }
                        if ((i13 & 128) != 0) {
                            solidColor = new SolidColor(Color.Companion.f(), null);
                        } else {
                            solidColor = brush;
                        }
                        if (i23 != 0) {
                            z12 = true;
                        } else {
                            z12 = z6;
                        }
                        if (i25 != 0) {
                            i35 = Integer.MAX_VALUE;
                        } else {
                            i35 = i10;
                        }
                        if ((i13 & 1024) != 0) {
                            imeOptionsA = ImeOptions.Companion.a();
                            i30 &= -15;
                        } else {
                            imeOptionsA = imeOptions;
                        }
                        if (i28 != 0) {
                            keyboardActionsA = KeyboardActions.Companion.a();
                        } else {
                            keyboardActionsA = keyboardActions;
                        }
                        if (i31 != 0) {
                            z13 = true;
                        } else {
                            z13 = z10;
                        }
                        if (i33 != 0) {
                            z14 = false;
                        } else {
                            z14 = z11;
                        }
                        if (i34 != 0) {
                            qVarA = ComposableSingletons$CoreTextFieldKt.INSTANCE.a();
                        } else {
                            qVarA = qVar;
                        }
                        z15 = z13;
                    }
                    composerS.A();
                    focusRequester = new FocusRequester();
                    composerS.G(-55013392);
                    if (z15) {
                        textInputService = null;
                    } else {
                        textInputService = null;
                    }
                    composerS.Q();
                    density = (Density) composerS.x(CompositionLocalsKt.e());
                    resolver = (FontFamily.Resolver) composerS.x(CompositionLocalsKt.g());
                    long jA13 = ((TextSelectionColors) composerS.x(TextSelectionColorsKt.b())).a();
                    FocusManager focusManager13 = (FocusManager) composerS.x(CompositionLocalsKt.f());
                    Modifier modifier16 = modifier2;
                    if (i35 == 1) {
                        orientation = Orientation.Vertical;
                    } else {
                        orientation = Orientation.Vertical;
                    }
                    int i3111 = i30;
                    i36 = i35;
                    orientation2 = orientation;
                    Object[] objArr13 = {orientation2};
                    Saver<TextFieldScrollerPosition, Object> saverA13 = TextFieldScrollerPosition.Companion.a();
                    z16 = z15;
                    composerS.G(1157296644);
                    zK = composerS.k(orientation2);
                    mutableInteractionSource3 = mutableInteractionSource2;
                    objH = composerS.H();
                    if (zK) {
                        objH = new CoreTextFieldKt$CoreTextField$scrollerPosition$1$1(orientation2);
                        composerS.z(objH);
                    } else {
                        objH = new CoreTextFieldKt$CoreTextField$scrollerPosition$1$1(orientation2);
                        composerS.z(objH);
                    }
                    composerS.Q();
                    TextFieldScrollerPosition textFieldScrollerPosition13 = (TextFieldScrollerPosition) RememberSaveableKt.b(objArr13, saverA13, null, (a) objH, composerS, 72, 4);
                    composerS.G(511388516);
                    zK2 = composerS.k(value) | composerS.k(visualTransformationC);
                    objH2 = composerS.H();
                    if (zK2) {
                        transformedTextA = visualTransformationC.a(value.e());
                        textRangeF = value.f();
                        if (textRangeF != null) {
                            objH2 = transformedTextA;
                        } else {
                            objH2 = transformedTextA;
                        }
                        composerS.z(objH2);
                    } else {
                        transformedTextA = visualTransformationC.a(value.e());
                        textRangeF = value.f();
                        if (textRangeF != null) {
                            objH2 = transformedTextA;
                        } else {
                            objH2 = transformedTextA;
                        }
                        composerS.z(objH2);
                    }
                    composerS.Q();
                    TransformedText transformedText13 = (TransformedText) objH2;
                    annotatedStringB = transformedText13.b();
                    offsetMappingA = transformedText13.a();
                    recomposeScopeB = ComposablesKt.b(composerS, 0);
                    composerS.G(-492369756);
                    objH3 = composerS.H();
                    companion = Composer.Companion;
                    if (objH3 == companion.a()) {
                        objH3 = new TextFieldState(new TextDelegate(annotatedStringB, textStyleA, 0, z12, 0, density, resolver, null, TarConstants.CHKSUM_OFFSET, null), recomposeScopeB);
                        composerS.z(objH3);
                    }
                    composerS.Q();
                    textFieldState = (TextFieldState) objH3;
                    textFieldState.A(annotatedStringB, textStyleA, z12, density, resolver, onValueChange, keyboardActionsA, focusManager13, jA13);
                    textFieldState.j().b(value, textFieldState.e());
                    composerS.G(-492369756);
                    objH4 = composerS.H();
                    if (objH4 == companion.a()) {
                        objH4 = new UndoManager(0, 1, null);
                        composerS.z(objH4);
                    }
                    composerS.Q();
                    undoManager = (UndoManager) objH4;
                    UndoManager.f(undoManager, value, 0L, 2, null);
                    composerS.G(-492369756);
                    objH5 = composerS.H();
                    if (objH5 == companion.a()) {
                        objH5 = new TextFieldSelectionManager(undoManager);
                        composerS.z(objH5);
                    }
                    composerS.Q();
                    textFieldSelectionManager = (TextFieldSelectionManager) objH5;
                    textFieldSelectionManager.U(offsetMappingA);
                    textFieldSelectionManager.Z(visualTransformationC);
                    textFieldSelectionManager.V(textFieldState.i());
                    textFieldSelectionManager.W(textFieldState);
                    textFieldSelectionManager.Y(value);
                    textFieldSelectionManager.N((ClipboardManager) composerS.x(CompositionLocalsKt.d()));
                    textFieldSelectionManager.X((TextToolbar) composerS.x(CompositionLocalsKt.m()));
                    textFieldSelectionManager.T((HapticFeedback) composerS.x(CompositionLocalsKt.h()));
                    textFieldSelectionManager.R(focusRequester);
                    textFieldSelectionManager.Q(!z14);
                    composerS.G(773894976);
                    composerS.G(-492369756);
                    objH6 = composerS.H();
                    if (objH6 == companion.a()) {
                        CompositionScopedCoroutineScopeCanceller compositionScopedCoroutineScopeCanceller13 = new CompositionScopedCoroutineScopeCanceller(EffectsKt.j(h.INSTANCE, composerS));
                        composerS.z(compositionScopedCoroutineScopeCanceller13);
                        objH6 = compositionScopedCoroutineScopeCanceller13;
                    }
                    composerS.Q();
                    o0 o0VarA13 = ((CompositionScopedCoroutineScopeCanceller) objH6).a();
                    composerS.Q();
                    composerS.G(-492369756);
                    objH7 = composerS.H();
                    if (objH7 == companion.a()) {
                        objH7 = BringIntoViewRequesterKt.a();
                        composerS.z(objH7);
                    }
                    composerS.Q();
                    BringIntoViewRequester bringIntoViewRequester13 = (BringIntoViewRequester) objH7;
                    companion2 = Modifier.Companion;
                    Modifier modifierC13 = TextFieldGestureModifiersKt.c(companion2, z16, focusRequester, mutableInteractionSource3, new CoreTextFieldKt$CoreTextField$focusModifier$1(textFieldState, textInputService, value, imeOptionsA, textFieldSelectionManager, o0VarA13, bringIntoViewRequester13, offsetMappingA));
                    EffectsKt.a(textFieldState, new CoreTextFieldKt$CoreTextField$2(textFieldState), composerS, 8);
                    if (TouchMode_androidKt.a()) {
                        modifierB = TextFieldPressGestureFilterKt.a(companion2, mutableInteractionSource3, z16, new CoreTextFieldKt$CoreTextField$pointerModifier$1(textFieldState, focusRequester, z14, textFieldSelectionManager, offsetMappingA)).B(TextFieldGestureModifiersKt.a(companion2, textFieldSelectionManager.G(), z16));
                        z17 = false;
                    } else {
                        z17 = false;
                        modifierB = PointerIconKt.b(TextFieldGestureModifiersKt.b(companion2, textFieldSelectionManager.B(), z16), TextPointerIcon_androidKt.a(), false, 2, null);
                    }
                    Modifier modifierA1117 = DrawModifierKt.a(companion2, new CoreTextFieldKt$CoreTextField$drawModifier$1(textFieldState, value, offsetMappingA));
                    Modifier modifierA1118 = OnGloballyPositionedModifierKt.a(companion2, new CoreTextFieldKt$CoreTextField$onPositionedModifier$1(textFieldState, z16, textFieldSelectionManager));
                    Modifier modifierB117 = SemanticsModifierKt.b(companion2, true, new CoreTextFieldKt$CoreTextField$semanticsModifier$1(imeOptionsA, transformedText13, value, z16, visualTransformationC instanceof PasswordVisualTransformation, z14, textFieldState, offsetMappingA, textFieldSelectionManager, focusRequester));
                    if (z16) {
                        z18 = z17;
                    } else {
                        z18 = z17;
                    }
                    Modifier modifierB118 = TextFieldCursorKt.b(companion2, textFieldState, value, offsetMappingA, solidColor, z18);
                    EffectsKt.a(textFieldSelectionManager, new CoreTextFieldKt$CoreTextField$3(textFieldSelectionManager), composerS, 8);
                    EffectsKt.a(imeOptionsA, new CoreTextFieldKt$CoreTextField$4(textInputService, textFieldState, value, imeOptionsA), composerS, i3111 & 14);
                    l<TextFieldValue, l0> lVarI13 = textFieldState.i();
                    boolean z216 = !z14;
                    if (i36 == 1) {
                        z19 = true;
                    } else {
                        z19 = z17;
                    }
                    Modifier modifierA1119 = OnGloballyPositionedModifierKt.a(TextFieldScrollKt.d(m(modifier16.B(modifierC13), textFieldState, textFieldSelectionManager).B(TextFieldKeyInputKt.a(companion2, textFieldState, textFieldSelectionManager, value, lVarI13, z216, z19, offsetMappingA, undoManager)), textFieldScrollerPosition13, mutableInteractionSource3, z16).B(modifierB).B(modifierB117), new CoreTextFieldKt$CoreTextField$decorationBoxModifier$1(textFieldState));
                    if (!z16) {
                        z20 = z17;
                    } else {
                        z20 = z17;
                    }
                    if (z20) {
                        modifierB2 = TextFieldSelectionManager_androidKt.b(companion2, textFieldSelectionManager);
                    } else {
                        modifierB2 = companion2;
                    }
                    ImeOptions imeOptions15 = imeOptionsA;
                    composer2 = composerS;
                    b(modifierA1119, textFieldSelectionManager, ComposableLambdaKt.b(composer2, -1885146845, true, new CoreTextFieldKt$CoreTextField$5(qVarA, i3111, i36, textStyleA, textFieldScrollerPosition13, value, visualTransformationC, modifierB118, modifierA1117, modifierA1118, modifierB2, bringIntoViewRequester13, textFieldState, textFieldSelectionManager, z20, z14, lVar2)), composer2, 448);
                    textStyle2 = textStyleA;
                    mutableInteractionSource4 = mutableInteractionSource3;
                    lVar3 = lVar2;
                    brush2 = solidColor;
                    z21 = z12;
                    keyboardActions2 = keyboardActionsA;
                    z22 = z14;
                    qVar2 = qVarA;
                    visualTransformation2 = visualTransformationC;
                    modifier3 = modifier16;
                    i37 = i36;
                    z23 = z16;
                    imeOptions2 = imeOptions15;
                }
                scopeUpdateScopeU = composer2.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new CoreTextFieldKt$CoreTextField$6(value, onValueChange, modifier3, textStyle2, visualTransformation2, lVar3, mutableInteractionSource4, brush2, z21, i37, imeOptions2, keyboardActions2, z23, z22, qVar2, i11, i12, i13));
            }
            i30 |= 3072;
            i34 = i13 & 16384;
            if (i34 != 0) {
                i30 |= CpioConstants.C_ISBLK;
            } else if ((i12 & 57344) == 0) {
                i30 |= composerS.k(qVar) ? 16384 : 8192;
            }
            if ((i14 & 1533916891) != 306783378) {
                composerS.J();
                if ((i11 & 1) != 0) {
                    if (i38 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i15 != 0) {
                        textStyleA = TextStyle.Companion.a();
                    } else {
                        textStyleA = textStyle;
                    }
                    if (i17 != 0) {
                        visualTransformationC = VisualTransformation.Companion.c();
                    } else {
                        visualTransformationC = visualTransformation;
                    }
                    if (i19 != 0) {
                        lVar2 = CoreTextFieldKt$CoreTextField$1.INSTANCE;
                    } else {
                        lVar2 = lVar;
                    }
                    if (i21 != 0) {
                        mutableInteractionSource2 = null;
                    } else {
                        mutableInteractionSource2 = mutableInteractionSource;
                    }
                    if ((i13 & 128) != 0) {
                        solidColor = new SolidColor(Color.Companion.f(), null);
                    } else {
                        solidColor = brush;
                    }
                    if (i23 != 0) {
                        z12 = true;
                    } else {
                        z12 = z6;
                    }
                    if (i25 != 0) {
                        i35 = Integer.MAX_VALUE;
                    } else {
                        i35 = i10;
                    }
                    if ((i13 & 1024) != 0) {
                        imeOptionsA = ImeOptions.Companion.a();
                        i30 &= -15;
                    } else {
                        imeOptionsA = imeOptions;
                    }
                    if (i28 != 0) {
                        keyboardActionsA = KeyboardActions.Companion.a();
                    } else {
                        keyboardActionsA = keyboardActions;
                    }
                    if (i31 != 0) {
                        z13 = true;
                    } else {
                        z13 = z10;
                    }
                    if (i33 != 0) {
                        z14 = false;
                    } else {
                        z14 = z11;
                    }
                    if (i34 != 0) {
                        qVarA = ComposableSingletons$CoreTextFieldKt.INSTANCE.a();
                    } else {
                        qVarA = qVar;
                    }
                    z15 = z13;
                } else {
                    if (i38 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i15 != 0) {
                        textStyleA = TextStyle.Companion.a();
                    } else {
                        textStyleA = textStyle;
                    }
                    if (i17 != 0) {
                        visualTransformationC = VisualTransformation.Companion.c();
                    } else {
                        visualTransformationC = visualTransformation;
                    }
                    if (i19 != 0) {
                        lVar2 = CoreTextFieldKt$CoreTextField$1.INSTANCE;
                    } else {
                        lVar2 = lVar;
                    }
                    if (i21 != 0) {
                        mutableInteractionSource2 = null;
                    } else {
                        mutableInteractionSource2 = mutableInteractionSource;
                    }
                    if ((i13 & 128) != 0) {
                        solidColor = new SolidColor(Color.Companion.f(), null);
                    } else {
                        solidColor = brush;
                    }
                    if (i23 != 0) {
                        z12 = true;
                    } else {
                        z12 = z6;
                    }
                    if (i25 != 0) {
                        i35 = Integer.MAX_VALUE;
                    } else {
                        i35 = i10;
                    }
                    if ((i13 & 1024) != 0) {
                        imeOptionsA = ImeOptions.Companion.a();
                        i30 &= -15;
                    } else {
                        imeOptionsA = imeOptions;
                    }
                    if (i28 != 0) {
                        keyboardActionsA = KeyboardActions.Companion.a();
                    } else {
                        keyboardActionsA = keyboardActions;
                    }
                    if (i31 != 0) {
                        z13 = true;
                    } else {
                        z13 = z10;
                    }
                    if (i33 != 0) {
                        z14 = false;
                    } else {
                        z14 = z11;
                    }
                    if (i34 != 0) {
                        qVarA = ComposableSingletons$CoreTextFieldKt.INSTANCE.a();
                    } else {
                        qVarA = qVar;
                    }
                    z15 = z13;
                }
                composerS.A();
                focusRequester = new FocusRequester();
                composerS.G(-55013392);
                if (z15) {
                    textInputService = null;
                } else {
                    textInputService = null;
                }
                composerS.Q();
                density = (Density) composerS.x(CompositionLocalsKt.e());
                resolver = (FontFamily.Resolver) composerS.x(CompositionLocalsKt.g());
                long jA14 = ((TextSelectionColors) composerS.x(TextSelectionColorsKt.b())).a();
                FocusManager focusManager14 = (FocusManager) composerS.x(CompositionLocalsKt.f());
                Modifier modifier17 = modifier2;
                if (i35 == 1) {
                    orientation = Orientation.Vertical;
                } else {
                    orientation = Orientation.Vertical;
                }
                int i3112 = i30;
                i36 = i35;
                orientation2 = orientation;
                Object[] objArr14 = {orientation2};
                Saver<TextFieldScrollerPosition, Object> saverA14 = TextFieldScrollerPosition.Companion.a();
                z16 = z15;
                composerS.G(1157296644);
                zK = composerS.k(orientation2);
                mutableInteractionSource3 = mutableInteractionSource2;
                objH = composerS.H();
                if (zK) {
                    objH = new CoreTextFieldKt$CoreTextField$scrollerPosition$1$1(orientation2);
                    composerS.z(objH);
                } else {
                    objH = new CoreTextFieldKt$CoreTextField$scrollerPosition$1$1(orientation2);
                    composerS.z(objH);
                }
                composerS.Q();
                TextFieldScrollerPosition textFieldScrollerPosition14 = (TextFieldScrollerPosition) RememberSaveableKt.b(objArr14, saverA14, null, (a) objH, composerS, 72, 4);
                composerS.G(511388516);
                zK2 = composerS.k(value) | composerS.k(visualTransformationC);
                objH2 = composerS.H();
                if (zK2) {
                    transformedTextA = visualTransformationC.a(value.e());
                    textRangeF = value.f();
                    if (textRangeF != null) {
                        objH2 = transformedTextA;
                    } else {
                        objH2 = transformedTextA;
                    }
                    composerS.z(objH2);
                } else {
                    transformedTextA = visualTransformationC.a(value.e());
                    textRangeF = value.f();
                    if (textRangeF != null) {
                        objH2 = transformedTextA;
                    } else {
                        objH2 = transformedTextA;
                    }
                    composerS.z(objH2);
                }
                composerS.Q();
                TransformedText transformedText14 = (TransformedText) objH2;
                annotatedStringB = transformedText14.b();
                offsetMappingA = transformedText14.a();
                recomposeScopeB = ComposablesKt.b(composerS, 0);
                composerS.G(-492369756);
                objH3 = composerS.H();
                companion = Composer.Companion;
                if (objH3 == companion.a()) {
                    objH3 = new TextFieldState(new TextDelegate(annotatedStringB, textStyleA, 0, z12, 0, density, resolver, null, TarConstants.CHKSUM_OFFSET, null), recomposeScopeB);
                    composerS.z(objH3);
                }
                composerS.Q();
                textFieldState = (TextFieldState) objH3;
                textFieldState.A(annotatedStringB, textStyleA, z12, density, resolver, onValueChange, keyboardActionsA, focusManager14, jA14);
                textFieldState.j().b(value, textFieldState.e());
                composerS.G(-492369756);
                objH4 = composerS.H();
                if (objH4 == companion.a()) {
                    objH4 = new UndoManager(0, 1, null);
                    composerS.z(objH4);
                }
                composerS.Q();
                undoManager = (UndoManager) objH4;
                UndoManager.f(undoManager, value, 0L, 2, null);
                composerS.G(-492369756);
                objH5 = composerS.H();
                if (objH5 == companion.a()) {
                    objH5 = new TextFieldSelectionManager(undoManager);
                    composerS.z(objH5);
                }
                composerS.Q();
                textFieldSelectionManager = (TextFieldSelectionManager) objH5;
                textFieldSelectionManager.U(offsetMappingA);
                textFieldSelectionManager.Z(visualTransformationC);
                textFieldSelectionManager.V(textFieldState.i());
                textFieldSelectionManager.W(textFieldState);
                textFieldSelectionManager.Y(value);
                textFieldSelectionManager.N((ClipboardManager) composerS.x(CompositionLocalsKt.d()));
                textFieldSelectionManager.X((TextToolbar) composerS.x(CompositionLocalsKt.m()));
                textFieldSelectionManager.T((HapticFeedback) composerS.x(CompositionLocalsKt.h()));
                textFieldSelectionManager.R(focusRequester);
                textFieldSelectionManager.Q(!z14);
                composerS.G(773894976);
                composerS.G(-492369756);
                objH6 = composerS.H();
                if (objH6 == companion.a()) {
                    CompositionScopedCoroutineScopeCanceller compositionScopedCoroutineScopeCanceller14 = new CompositionScopedCoroutineScopeCanceller(EffectsKt.j(h.INSTANCE, composerS));
                    composerS.z(compositionScopedCoroutineScopeCanceller14);
                    objH6 = compositionScopedCoroutineScopeCanceller14;
                }
                composerS.Q();
                o0 o0VarA14 = ((CompositionScopedCoroutineScopeCanceller) objH6).a();
                composerS.Q();
                composerS.G(-492369756);
                objH7 = composerS.H();
                if (objH7 == companion.a()) {
                    objH7 = BringIntoViewRequesterKt.a();
                    composerS.z(objH7);
                }
                composerS.Q();
                BringIntoViewRequester bringIntoViewRequester14 = (BringIntoViewRequester) objH7;
                companion2 = Modifier.Companion;
                Modifier modifierC14 = TextFieldGestureModifiersKt.c(companion2, z16, focusRequester, mutableInteractionSource3, new CoreTextFieldKt$CoreTextField$focusModifier$1(textFieldState, textInputService, value, imeOptionsA, textFieldSelectionManager, o0VarA14, bringIntoViewRequester14, offsetMappingA));
                EffectsKt.a(textFieldState, new CoreTextFieldKt$CoreTextField$2(textFieldState), composerS, 8);
                if (TouchMode_androidKt.a()) {
                    modifierB = TextFieldPressGestureFilterKt.a(companion2, mutableInteractionSource3, z16, new CoreTextFieldKt$CoreTextField$pointerModifier$1(textFieldState, focusRequester, z14, textFieldSelectionManager, offsetMappingA)).B(TextFieldGestureModifiersKt.a(companion2, textFieldSelectionManager.G(), z16));
                    z17 = false;
                } else {
                    z17 = false;
                    modifierB = PointerIconKt.b(TextFieldGestureModifiersKt.b(companion2, textFieldSelectionManager.B(), z16), TextPointerIcon_androidKt.a(), false, 2, null);
                }
                Modifier modifierA11110 = DrawModifierKt.a(companion2, new CoreTextFieldKt$CoreTextField$drawModifier$1(textFieldState, value, offsetMappingA));
                Modifier modifierA11111 = OnGloballyPositionedModifierKt.a(companion2, new CoreTextFieldKt$CoreTextField$onPositionedModifier$1(textFieldState, z16, textFieldSelectionManager));
                Modifier modifierB119 = SemanticsModifierKt.b(companion2, true, new CoreTextFieldKt$CoreTextField$semanticsModifier$1(imeOptionsA, transformedText14, value, z16, visualTransformationC instanceof PasswordVisualTransformation, z14, textFieldState, offsetMappingA, textFieldSelectionManager, focusRequester));
                if (z16) {
                    z18 = z17;
                } else {
                    z18 = z17;
                }
                Modifier modifierB1110 = TextFieldCursorKt.b(companion2, textFieldState, value, offsetMappingA, solidColor, z18);
                EffectsKt.a(textFieldSelectionManager, new CoreTextFieldKt$CoreTextField$3(textFieldSelectionManager), composerS, 8);
                EffectsKt.a(imeOptionsA, new CoreTextFieldKt$CoreTextField$4(textInputService, textFieldState, value, imeOptionsA), composerS, i3112 & 14);
                l<TextFieldValue, l0> lVarI14 = textFieldState.i();
                boolean z217 = !z14;
                if (i36 == 1) {
                    z19 = true;
                } else {
                    z19 = z17;
                }
                Modifier modifierA11112 = OnGloballyPositionedModifierKt.a(TextFieldScrollKt.d(m(modifier17.B(modifierC14), textFieldState, textFieldSelectionManager).B(TextFieldKeyInputKt.a(companion2, textFieldState, textFieldSelectionManager, value, lVarI14, z217, z19, offsetMappingA, undoManager)), textFieldScrollerPosition14, mutableInteractionSource3, z16).B(modifierB).B(modifierB119), new CoreTextFieldKt$CoreTextField$decorationBoxModifier$1(textFieldState));
                if (!z16) {
                    z20 = z17;
                } else {
                    z20 = z17;
                }
                if (z20) {
                    modifierB2 = TextFieldSelectionManager_androidKt.b(companion2, textFieldSelectionManager);
                } else {
                    modifierB2 = companion2;
                }
                ImeOptions imeOptions16 = imeOptionsA;
                composer2 = composerS;
                b(modifierA11112, textFieldSelectionManager, ComposableLambdaKt.b(composer2, -1885146845, true, new CoreTextFieldKt$CoreTextField$5(qVarA, i3112, i36, textStyleA, textFieldScrollerPosition14, value, visualTransformationC, modifierB1110, modifierA11110, modifierA11111, modifierB2, bringIntoViewRequester14, textFieldState, textFieldSelectionManager, z20, z14, lVar2)), composer2, 448);
                textStyle2 = textStyleA;
                mutableInteractionSource4 = mutableInteractionSource3;
                lVar3 = lVar2;
                brush2 = solidColor;
                z21 = z12;
                keyboardActions2 = keyboardActionsA;
                z22 = z14;
                qVar2 = qVarA;
                visualTransformation2 = visualTransformationC;
                modifier3 = modifier17;
                i37 = i36;
                z23 = z16;
                imeOptions2 = imeOptions16;
            } else {
                composerS.J();
                if ((i11 & 1) != 0) {
                    if (i38 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i15 != 0) {
                        textStyleA = TextStyle.Companion.a();
                    } else {
                        textStyleA = textStyle;
                    }
                    if (i17 != 0) {
                        visualTransformationC = VisualTransformation.Companion.c();
                    } else {
                        visualTransformationC = visualTransformation;
                    }
                    if (i19 != 0) {
                        lVar2 = CoreTextFieldKt$CoreTextField$1.INSTANCE;
                    } else {
                        lVar2 = lVar;
                    }
                    if (i21 != 0) {
                        mutableInteractionSource2 = null;
                    } else {
                        mutableInteractionSource2 = mutableInteractionSource;
                    }
                    if ((i13 & 128) != 0) {
                        solidColor = new SolidColor(Color.Companion.f(), null);
                    } else {
                        solidColor = brush;
                    }
                    if (i23 != 0) {
                        z12 = true;
                    } else {
                        z12 = z6;
                    }
                    if (i25 != 0) {
                        i35 = Integer.MAX_VALUE;
                    } else {
                        i35 = i10;
                    }
                    if ((i13 & 1024) != 0) {
                        imeOptionsA = ImeOptions.Companion.a();
                        i30 &= -15;
                    } else {
                        imeOptionsA = imeOptions;
                    }
                    if (i28 != 0) {
                        keyboardActionsA = KeyboardActions.Companion.a();
                    } else {
                        keyboardActionsA = keyboardActions;
                    }
                    if (i31 != 0) {
                        z13 = true;
                    } else {
                        z13 = z10;
                    }
                    if (i33 != 0) {
                        z14 = false;
                    } else {
                        z14 = z11;
                    }
                    if (i34 != 0) {
                        qVarA = ComposableSingletons$CoreTextFieldKt.INSTANCE.a();
                    } else {
                        qVarA = qVar;
                    }
                    z15 = z13;
                } else {
                    if (i38 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i15 != 0) {
                        textStyleA = TextStyle.Companion.a();
                    } else {
                        textStyleA = textStyle;
                    }
                    if (i17 != 0) {
                        visualTransformationC = VisualTransformation.Companion.c();
                    } else {
                        visualTransformationC = visualTransformation;
                    }
                    if (i19 != 0) {
                        lVar2 = CoreTextFieldKt$CoreTextField$1.INSTANCE;
                    } else {
                        lVar2 = lVar;
                    }
                    if (i21 != 0) {
                        mutableInteractionSource2 = null;
                    } else {
                        mutableInteractionSource2 = mutableInteractionSource;
                    }
                    if ((i13 & 128) != 0) {
                        solidColor = new SolidColor(Color.Companion.f(), null);
                    } else {
                        solidColor = brush;
                    }
                    if (i23 != 0) {
                        z12 = true;
                    } else {
                        z12 = z6;
                    }
                    if (i25 != 0) {
                        i35 = Integer.MAX_VALUE;
                    } else {
                        i35 = i10;
                    }
                    if ((i13 & 1024) != 0) {
                        imeOptionsA = ImeOptions.Companion.a();
                        i30 &= -15;
                    } else {
                        imeOptionsA = imeOptions;
                    }
                    if (i28 != 0) {
                        keyboardActionsA = KeyboardActions.Companion.a();
                    } else {
                        keyboardActionsA = keyboardActions;
                    }
                    if (i31 != 0) {
                        z13 = true;
                    } else {
                        z13 = z10;
                    }
                    if (i33 != 0) {
                        z14 = false;
                    } else {
                        z14 = z11;
                    }
                    if (i34 != 0) {
                        qVarA = ComposableSingletons$CoreTextFieldKt.INSTANCE.a();
                    } else {
                        qVarA = qVar;
                    }
                    z15 = z13;
                }
                composerS.A();
                focusRequester = new FocusRequester();
                composerS.G(-55013392);
                if (z15) {
                    textInputService = null;
                } else {
                    textInputService = null;
                }
                composerS.Q();
                density = (Density) composerS.x(CompositionLocalsKt.e());
                resolver = (FontFamily.Resolver) composerS.x(CompositionLocalsKt.g());
                long jA15 = ((TextSelectionColors) composerS.x(TextSelectionColorsKt.b())).a();
                FocusManager focusManager15 = (FocusManager) composerS.x(CompositionLocalsKt.f());
                Modifier modifier18 = modifier2;
                if (i35 == 1) {
                    orientation = Orientation.Vertical;
                } else {
                    orientation = Orientation.Vertical;
                }
                int i3113 = i30;
                i36 = i35;
                orientation2 = orientation;
                Object[] objArr15 = {orientation2};
                Saver<TextFieldScrollerPosition, Object> saverA15 = TextFieldScrollerPosition.Companion.a();
                z16 = z15;
                composerS.G(1157296644);
                zK = composerS.k(orientation2);
                mutableInteractionSource3 = mutableInteractionSource2;
                objH = composerS.H();
                if (zK) {
                    objH = new CoreTextFieldKt$CoreTextField$scrollerPosition$1$1(orientation2);
                    composerS.z(objH);
                } else {
                    objH = new CoreTextFieldKt$CoreTextField$scrollerPosition$1$1(orientation2);
                    composerS.z(objH);
                }
                composerS.Q();
                TextFieldScrollerPosition textFieldScrollerPosition15 = (TextFieldScrollerPosition) RememberSaveableKt.b(objArr15, saverA15, null, (a) objH, composerS, 72, 4);
                composerS.G(511388516);
                zK2 = composerS.k(value) | composerS.k(visualTransformationC);
                objH2 = composerS.H();
                if (zK2) {
                    transformedTextA = visualTransformationC.a(value.e());
                    textRangeF = value.f();
                    if (textRangeF != null) {
                        objH2 = transformedTextA;
                    } else {
                        objH2 = transformedTextA;
                    }
                    composerS.z(objH2);
                } else {
                    transformedTextA = visualTransformationC.a(value.e());
                    textRangeF = value.f();
                    if (textRangeF != null) {
                        objH2 = transformedTextA;
                    } else {
                        objH2 = transformedTextA;
                    }
                    composerS.z(objH2);
                }
                composerS.Q();
                TransformedText transformedText15 = (TransformedText) objH2;
                annotatedStringB = transformedText15.b();
                offsetMappingA = transformedText15.a();
                recomposeScopeB = ComposablesKt.b(composerS, 0);
                composerS.G(-492369756);
                objH3 = composerS.H();
                companion = Composer.Companion;
                if (objH3 == companion.a()) {
                    objH3 = new TextFieldState(new TextDelegate(annotatedStringB, textStyleA, 0, z12, 0, density, resolver, null, TarConstants.CHKSUM_OFFSET, null), recomposeScopeB);
                    composerS.z(objH3);
                }
                composerS.Q();
                textFieldState = (TextFieldState) objH3;
                textFieldState.A(annotatedStringB, textStyleA, z12, density, resolver, onValueChange, keyboardActionsA, focusManager15, jA15);
                textFieldState.j().b(value, textFieldState.e());
                composerS.G(-492369756);
                objH4 = composerS.H();
                if (objH4 == companion.a()) {
                    objH4 = new UndoManager(0, 1, null);
                    composerS.z(objH4);
                }
                composerS.Q();
                undoManager = (UndoManager) objH4;
                UndoManager.f(undoManager, value, 0L, 2, null);
                composerS.G(-492369756);
                objH5 = composerS.H();
                if (objH5 == companion.a()) {
                    objH5 = new TextFieldSelectionManager(undoManager);
                    composerS.z(objH5);
                }
                composerS.Q();
                textFieldSelectionManager = (TextFieldSelectionManager) objH5;
                textFieldSelectionManager.U(offsetMappingA);
                textFieldSelectionManager.Z(visualTransformationC);
                textFieldSelectionManager.V(textFieldState.i());
                textFieldSelectionManager.W(textFieldState);
                textFieldSelectionManager.Y(value);
                textFieldSelectionManager.N((ClipboardManager) composerS.x(CompositionLocalsKt.d()));
                textFieldSelectionManager.X((TextToolbar) composerS.x(CompositionLocalsKt.m()));
                textFieldSelectionManager.T((HapticFeedback) composerS.x(CompositionLocalsKt.h()));
                textFieldSelectionManager.R(focusRequester);
                textFieldSelectionManager.Q(!z14);
                composerS.G(773894976);
                composerS.G(-492369756);
                objH6 = composerS.H();
                if (objH6 == companion.a()) {
                    CompositionScopedCoroutineScopeCanceller compositionScopedCoroutineScopeCanceller15 = new CompositionScopedCoroutineScopeCanceller(EffectsKt.j(h.INSTANCE, composerS));
                    composerS.z(compositionScopedCoroutineScopeCanceller15);
                    objH6 = compositionScopedCoroutineScopeCanceller15;
                }
                composerS.Q();
                o0 o0VarA15 = ((CompositionScopedCoroutineScopeCanceller) objH6).a();
                composerS.Q();
                composerS.G(-492369756);
                objH7 = composerS.H();
                if (objH7 == companion.a()) {
                    objH7 = BringIntoViewRequesterKt.a();
                    composerS.z(objH7);
                }
                composerS.Q();
                BringIntoViewRequester bringIntoViewRequester15 = (BringIntoViewRequester) objH7;
                companion2 = Modifier.Companion;
                Modifier modifierC15 = TextFieldGestureModifiersKt.c(companion2, z16, focusRequester, mutableInteractionSource3, new CoreTextFieldKt$CoreTextField$focusModifier$1(textFieldState, textInputService, value, imeOptionsA, textFieldSelectionManager, o0VarA15, bringIntoViewRequester15, offsetMappingA));
                EffectsKt.a(textFieldState, new CoreTextFieldKt$CoreTextField$2(textFieldState), composerS, 8);
                if (TouchMode_androidKt.a()) {
                    modifierB = TextFieldPressGestureFilterKt.a(companion2, mutableInteractionSource3, z16, new CoreTextFieldKt$CoreTextField$pointerModifier$1(textFieldState, focusRequester, z14, textFieldSelectionManager, offsetMappingA)).B(TextFieldGestureModifiersKt.a(companion2, textFieldSelectionManager.G(), z16));
                    z17 = false;
                } else {
                    z17 = false;
                    modifierB = PointerIconKt.b(TextFieldGestureModifiersKt.b(companion2, textFieldSelectionManager.B(), z16), TextPointerIcon_androidKt.a(), false, 2, null);
                }
                Modifier modifierA11113 = DrawModifierKt.a(companion2, new CoreTextFieldKt$CoreTextField$drawModifier$1(textFieldState, value, offsetMappingA));
                Modifier modifierA11114 = OnGloballyPositionedModifierKt.a(companion2, new CoreTextFieldKt$CoreTextField$onPositionedModifier$1(textFieldState, z16, textFieldSelectionManager));
                Modifier modifierB1111 = SemanticsModifierKt.b(companion2, true, new CoreTextFieldKt$CoreTextField$semanticsModifier$1(imeOptionsA, transformedText15, value, z16, visualTransformationC instanceof PasswordVisualTransformation, z14, textFieldState, offsetMappingA, textFieldSelectionManager, focusRequester));
                if (z16) {
                    z18 = z17;
                } else {
                    z18 = z17;
                }
                Modifier modifierB1112 = TextFieldCursorKt.b(companion2, textFieldState, value, offsetMappingA, solidColor, z18);
                EffectsKt.a(textFieldSelectionManager, new CoreTextFieldKt$CoreTextField$3(textFieldSelectionManager), composerS, 8);
                EffectsKt.a(imeOptionsA, new CoreTextFieldKt$CoreTextField$4(textInputService, textFieldState, value, imeOptionsA), composerS, i3113 & 14);
                l<TextFieldValue, l0> lVarI15 = textFieldState.i();
                boolean z218 = !z14;
                if (i36 == 1) {
                    z19 = true;
                } else {
                    z19 = z17;
                }
                Modifier modifierA11115 = OnGloballyPositionedModifierKt.a(TextFieldScrollKt.d(m(modifier18.B(modifierC15), textFieldState, textFieldSelectionManager).B(TextFieldKeyInputKt.a(companion2, textFieldState, textFieldSelectionManager, value, lVarI15, z218, z19, offsetMappingA, undoManager)), textFieldScrollerPosition15, mutableInteractionSource3, z16).B(modifierB).B(modifierB1111), new CoreTextFieldKt$CoreTextField$decorationBoxModifier$1(textFieldState));
                if (!z16) {
                    z20 = z17;
                } else {
                    z20 = z17;
                }
                if (z20) {
                    modifierB2 = TextFieldSelectionManager_androidKt.b(companion2, textFieldSelectionManager);
                } else {
                    modifierB2 = companion2;
                }
                ImeOptions imeOptions17 = imeOptionsA;
                composer2 = composerS;
                b(modifierA11115, textFieldSelectionManager, ComposableLambdaKt.b(composer2, -1885146845, true, new CoreTextFieldKt$CoreTextField$5(qVarA, i3113, i36, textStyleA, textFieldScrollerPosition15, value, visualTransformationC, modifierB1112, modifierA11113, modifierA11114, modifierB2, bringIntoViewRequester15, textFieldState, textFieldSelectionManager, z20, z14, lVar2)), composer2, 448);
                textStyle2 = textStyleA;
                mutableInteractionSource4 = mutableInteractionSource3;
                lVar3 = lVar2;
                brush2 = solidColor;
                z21 = z12;
                keyboardActions2 = keyboardActionsA;
                z22 = z14;
                qVar2 = qVarA;
                visualTransformation2 = visualTransformationC;
                modifier3 = modifier18;
                i37 = i36;
                z23 = z16;
                imeOptions2 = imeOptions17;
            }
            scopeUpdateScopeU = composer2.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new CoreTextFieldKt$CoreTextField$6(value, onValueChange, modifier3, textStyle2, visualTransformation2, lVar3, mutableInteractionSource4, brush2, z21, i37, imeOptions2, keyboardActions2, z23, z22, qVar2, i11, i12, i13));
        }
        i14 |= 384;
        i15 = i13 & 8;
        if (i15 != 0) {
            if ((i11 & 7168) == 0) {
                if (composerS.k(textStyle)) {
                    i16 = 2048;
                } else {
                    i16 = 1024;
                }
                i14 |= i16;
            }
            i17 = i13 & 16;
            if (i17 != 0) {
                i14 |= CpioConstants.C_ISBLK;
            } else if ((i11 & 57344) == 0) {
                if (composerS.k(visualTransformation)) {
                    i18 = 16384;
                } else {
                    i18 = 8192;
                }
                i14 |= i18;
            }
            i19 = i13 & 32;
            if (i19 != 0) {
                i14 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            } else if ((i11 & 458752) == 0) {
                if (composerS.k(lVar)) {
                    i20 = 131072;
                } else {
                    i20 = 65536;
                }
                i14 |= i20;
            }
            i21 = i13 & 64;
            if (i21 != 0) {
                i14 |= 1572864;
            } else if ((i11 & 3670016) == 0) {
                if (composerS.k(mutableInteractionSource)) {
                    i22 = 1048576;
                } else {
                    i22 = 524288;
                }
                i14 |= i22;
            }
            if ((i11 & 29360128) != 0) {
                i14 |= ((i13 & 128) == 0 || !composerS.k(brush)) ? 4194304 : 8388608;
            }
            i23 = i13 & 256;
            if (i23 != 0) {
                i14 |= 100663296;
            } else if ((i11 & 234881024) == 0) {
                if (composerS.m(z6)) {
                    i24 = 67108864;
                } else {
                    i24 = 33554432;
                }
                i14 |= i24;
            }
            i25 = i13 & 512;
            if (i25 != 0) {
                i14 |= 805306368;
            } else if ((i11 & 1879048192) == 0) {
                if (composerS.p(i10)) {
                    i26 = 536870912;
                } else {
                    i26 = 268435456;
                }
                i14 |= i26;
            }
            if ((i12 & 14) == 0) {
                i27 = i12 | (((i13 & 1024) == 0 || !composerS.k(imeOptions)) ? 2 : 4);
            } else {
                i27 = i12;
            }
            i28 = i13 & 2048;
            if (i28 != 0) {
                i27 |= 48;
            } else if ((i12 & 112) == 0) {
                if (composerS.k(keyboardActions)) {
                    i29 = 32;
                } else {
                    i29 = 16;
                }
                i27 |= i29;
            }
            i30 = i27;
            i31 = i13 & 4096;
            if (i31 != 0) {
                if ((i12 & 896) == 0) {
                    if (composerS.m(z10)) {
                        i32 = 256;
                    } else {
                        i32 = 128;
                    }
                    i30 |= i32;
                }
                i33 = i13 & 8192;
                if (i33 != 0) {
                    if ((i12 & 7168) == 0) {
                        i30 |= composerS.m(z11) ? 2048 : 1024;
                    }
                    i34 = i13 & 16384;
                    if (i34 != 0) {
                        i30 |= CpioConstants.C_ISBLK;
                    } else if ((i12 & 57344) == 0) {
                        i30 |= composerS.k(qVar) ? 16384 : 8192;
                    }
                    if ((i14 & 1533916891) != 306783378) {
                        composerS.J();
                        if ((i11 & 1) != 0) {
                            if (i38 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i15 != 0) {
                                textStyleA = TextStyle.Companion.a();
                            } else {
                                textStyleA = textStyle;
                            }
                            if (i17 != 0) {
                                visualTransformationC = VisualTransformation.Companion.c();
                            } else {
                                visualTransformationC = visualTransformation;
                            }
                            if (i19 != 0) {
                                lVar2 = CoreTextFieldKt$CoreTextField$1.INSTANCE;
                            } else {
                                lVar2 = lVar;
                            }
                            if (i21 != 0) {
                                mutableInteractionSource2 = null;
                            } else {
                                mutableInteractionSource2 = mutableInteractionSource;
                            }
                            if ((i13 & 128) != 0) {
                                solidColor = new SolidColor(Color.Companion.f(), null);
                            } else {
                                solidColor = brush;
                            }
                            if (i23 != 0) {
                                z12 = true;
                            } else {
                                z12 = z6;
                            }
                            if (i25 != 0) {
                                i35 = Integer.MAX_VALUE;
                            } else {
                                i35 = i10;
                            }
                            if ((i13 & 1024) != 0) {
                                imeOptionsA = ImeOptions.Companion.a();
                                i30 &= -15;
                            } else {
                                imeOptionsA = imeOptions;
                            }
                            if (i28 != 0) {
                                keyboardActionsA = KeyboardActions.Companion.a();
                            } else {
                                keyboardActionsA = keyboardActions;
                            }
                            if (i31 != 0) {
                                z13 = true;
                            } else {
                                z13 = z10;
                            }
                            if (i33 != 0) {
                                z14 = false;
                            } else {
                                z14 = z11;
                            }
                            if (i34 != 0) {
                                qVarA = ComposableSingletons$CoreTextFieldKt.INSTANCE.a();
                            } else {
                                qVarA = qVar;
                            }
                            z15 = z13;
                        } else {
                            if (i38 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i15 != 0) {
                                textStyleA = TextStyle.Companion.a();
                            } else {
                                textStyleA = textStyle;
                            }
                            if (i17 != 0) {
                                visualTransformationC = VisualTransformation.Companion.c();
                            } else {
                                visualTransformationC = visualTransformation;
                            }
                            if (i19 != 0) {
                                lVar2 = CoreTextFieldKt$CoreTextField$1.INSTANCE;
                            } else {
                                lVar2 = lVar;
                            }
                            if (i21 != 0) {
                                mutableInteractionSource2 = null;
                            } else {
                                mutableInteractionSource2 = mutableInteractionSource;
                            }
                            if ((i13 & 128) != 0) {
                                solidColor = new SolidColor(Color.Companion.f(), null);
                            } else {
                                solidColor = brush;
                            }
                            if (i23 != 0) {
                                z12 = true;
                            } else {
                                z12 = z6;
                            }
                            if (i25 != 0) {
                                i35 = Integer.MAX_VALUE;
                            } else {
                                i35 = i10;
                            }
                            if ((i13 & 1024) != 0) {
                                imeOptionsA = ImeOptions.Companion.a();
                                i30 &= -15;
                            } else {
                                imeOptionsA = imeOptions;
                            }
                            if (i28 != 0) {
                                keyboardActionsA = KeyboardActions.Companion.a();
                            } else {
                                keyboardActionsA = keyboardActions;
                            }
                            if (i31 != 0) {
                                z13 = true;
                            } else {
                                z13 = z10;
                            }
                            if (i33 != 0) {
                                z14 = false;
                            } else {
                                z14 = z11;
                            }
                            if (i34 != 0) {
                                qVarA = ComposableSingletons$CoreTextFieldKt.INSTANCE.a();
                            } else {
                                qVarA = qVar;
                            }
                            z15 = z13;
                        }
                        composerS.A();
                        focusRequester = new FocusRequester();
                        composerS.G(-55013392);
                        if (z15) {
                            textInputService = null;
                        } else {
                            textInputService = null;
                        }
                        composerS.Q();
                        density = (Density) composerS.x(CompositionLocalsKt.e());
                        resolver = (FontFamily.Resolver) composerS.x(CompositionLocalsKt.g());
                        long jA16 = ((TextSelectionColors) composerS.x(TextSelectionColorsKt.b())).a();
                        FocusManager focusManager16 = (FocusManager) composerS.x(CompositionLocalsKt.f());
                        Modifier modifier19 = modifier2;
                        if (i35 == 1) {
                            orientation = Orientation.Vertical;
                        } else {
                            orientation = Orientation.Vertical;
                        }
                        int i3114 = i30;
                        i36 = i35;
                        orientation2 = orientation;
                        Object[] objArr16 = {orientation2};
                        Saver<TextFieldScrollerPosition, Object> saverA16 = TextFieldScrollerPosition.Companion.a();
                        z16 = z15;
                        composerS.G(1157296644);
                        zK = composerS.k(orientation2);
                        mutableInteractionSource3 = mutableInteractionSource2;
                        objH = composerS.H();
                        if (zK) {
                            objH = new CoreTextFieldKt$CoreTextField$scrollerPosition$1$1(orientation2);
                            composerS.z(objH);
                        } else {
                            objH = new CoreTextFieldKt$CoreTextField$scrollerPosition$1$1(orientation2);
                            composerS.z(objH);
                        }
                        composerS.Q();
                        TextFieldScrollerPosition textFieldScrollerPosition16 = (TextFieldScrollerPosition) RememberSaveableKt.b(objArr16, saverA16, null, (a) objH, composerS, 72, 4);
                        composerS.G(511388516);
                        zK2 = composerS.k(value) | composerS.k(visualTransformationC);
                        objH2 = composerS.H();
                        if (zK2) {
                            transformedTextA = visualTransformationC.a(value.e());
                            textRangeF = value.f();
                            if (textRangeF != null) {
                                objH2 = transformedTextA;
                            } else {
                                objH2 = transformedTextA;
                            }
                            composerS.z(objH2);
                        } else {
                            transformedTextA = visualTransformationC.a(value.e());
                            textRangeF = value.f();
                            if (textRangeF != null) {
                                objH2 = transformedTextA;
                            } else {
                                objH2 = transformedTextA;
                            }
                            composerS.z(objH2);
                        }
                        composerS.Q();
                        TransformedText transformedText16 = (TransformedText) objH2;
                        annotatedStringB = transformedText16.b();
                        offsetMappingA = transformedText16.a();
                        recomposeScopeB = ComposablesKt.b(composerS, 0);
                        composerS.G(-492369756);
                        objH3 = composerS.H();
                        companion = Composer.Companion;
                        if (objH3 == companion.a()) {
                            objH3 = new TextFieldState(new TextDelegate(annotatedStringB, textStyleA, 0, z12, 0, density, resolver, null, TarConstants.CHKSUM_OFFSET, null), recomposeScopeB);
                            composerS.z(objH3);
                        }
                        composerS.Q();
                        textFieldState = (TextFieldState) objH3;
                        textFieldState.A(annotatedStringB, textStyleA, z12, density, resolver, onValueChange, keyboardActionsA, focusManager16, jA16);
                        textFieldState.j().b(value, textFieldState.e());
                        composerS.G(-492369756);
                        objH4 = composerS.H();
                        if (objH4 == companion.a()) {
                            objH4 = new UndoManager(0, 1, null);
                            composerS.z(objH4);
                        }
                        composerS.Q();
                        undoManager = (UndoManager) objH4;
                        UndoManager.f(undoManager, value, 0L, 2, null);
                        composerS.G(-492369756);
                        objH5 = composerS.H();
                        if (objH5 == companion.a()) {
                            objH5 = new TextFieldSelectionManager(undoManager);
                            composerS.z(objH5);
                        }
                        composerS.Q();
                        textFieldSelectionManager = (TextFieldSelectionManager) objH5;
                        textFieldSelectionManager.U(offsetMappingA);
                        textFieldSelectionManager.Z(visualTransformationC);
                        textFieldSelectionManager.V(textFieldState.i());
                        textFieldSelectionManager.W(textFieldState);
                        textFieldSelectionManager.Y(value);
                        textFieldSelectionManager.N((ClipboardManager) composerS.x(CompositionLocalsKt.d()));
                        textFieldSelectionManager.X((TextToolbar) composerS.x(CompositionLocalsKt.m()));
                        textFieldSelectionManager.T((HapticFeedback) composerS.x(CompositionLocalsKt.h()));
                        textFieldSelectionManager.R(focusRequester);
                        textFieldSelectionManager.Q(!z14);
                        composerS.G(773894976);
                        composerS.G(-492369756);
                        objH6 = composerS.H();
                        if (objH6 == companion.a()) {
                            CompositionScopedCoroutineScopeCanceller compositionScopedCoroutineScopeCanceller16 = new CompositionScopedCoroutineScopeCanceller(EffectsKt.j(h.INSTANCE, composerS));
                            composerS.z(compositionScopedCoroutineScopeCanceller16);
                            objH6 = compositionScopedCoroutineScopeCanceller16;
                        }
                        composerS.Q();
                        o0 o0VarA16 = ((CompositionScopedCoroutineScopeCanceller) objH6).a();
                        composerS.Q();
                        composerS.G(-492369756);
                        objH7 = composerS.H();
                        if (objH7 == companion.a()) {
                            objH7 = BringIntoViewRequesterKt.a();
                            composerS.z(objH7);
                        }
                        composerS.Q();
                        BringIntoViewRequester bringIntoViewRequester16 = (BringIntoViewRequester) objH7;
                        companion2 = Modifier.Companion;
                        Modifier modifierC16 = TextFieldGestureModifiersKt.c(companion2, z16, focusRequester, mutableInteractionSource3, new CoreTextFieldKt$CoreTextField$focusModifier$1(textFieldState, textInputService, value, imeOptionsA, textFieldSelectionManager, o0VarA16, bringIntoViewRequester16, offsetMappingA));
                        EffectsKt.a(textFieldState, new CoreTextFieldKt$CoreTextField$2(textFieldState), composerS, 8);
                        if (TouchMode_androidKt.a()) {
                            modifierB = TextFieldPressGestureFilterKt.a(companion2, mutableInteractionSource3, z16, new CoreTextFieldKt$CoreTextField$pointerModifier$1(textFieldState, focusRequester, z14, textFieldSelectionManager, offsetMappingA)).B(TextFieldGestureModifiersKt.a(companion2, textFieldSelectionManager.G(), z16));
                            z17 = false;
                        } else {
                            z17 = false;
                            modifierB = PointerIconKt.b(TextFieldGestureModifiersKt.b(companion2, textFieldSelectionManager.B(), z16), TextPointerIcon_androidKt.a(), false, 2, null);
                        }
                        Modifier modifierA11116 = DrawModifierKt.a(companion2, new CoreTextFieldKt$CoreTextField$drawModifier$1(textFieldState, value, offsetMappingA));
                        Modifier modifierA11117 = OnGloballyPositionedModifierKt.a(companion2, new CoreTextFieldKt$CoreTextField$onPositionedModifier$1(textFieldState, z16, textFieldSelectionManager));
                        Modifier modifierB1113 = SemanticsModifierKt.b(companion2, true, new CoreTextFieldKt$CoreTextField$semanticsModifier$1(imeOptionsA, transformedText16, value, z16, visualTransformationC instanceof PasswordVisualTransformation, z14, textFieldState, offsetMappingA, textFieldSelectionManager, focusRequester));
                        if (z16) {
                            z18 = z17;
                        } else {
                            z18 = z17;
                        }
                        Modifier modifierB1114 = TextFieldCursorKt.b(companion2, textFieldState, value, offsetMappingA, solidColor, z18);
                        EffectsKt.a(textFieldSelectionManager, new CoreTextFieldKt$CoreTextField$3(textFieldSelectionManager), composerS, 8);
                        EffectsKt.a(imeOptionsA, new CoreTextFieldKt$CoreTextField$4(textInputService, textFieldState, value, imeOptionsA), composerS, i3114 & 14);
                        l<TextFieldValue, l0> lVarI16 = textFieldState.i();
                        boolean z219 = !z14;
                        if (i36 == 1) {
                            z19 = true;
                        } else {
                            z19 = z17;
                        }
                        Modifier modifierA11118 = OnGloballyPositionedModifierKt.a(TextFieldScrollKt.d(m(modifier19.B(modifierC16), textFieldState, textFieldSelectionManager).B(TextFieldKeyInputKt.a(companion2, textFieldState, textFieldSelectionManager, value, lVarI16, z219, z19, offsetMappingA, undoManager)), textFieldScrollerPosition16, mutableInteractionSource3, z16).B(modifierB).B(modifierB1113), new CoreTextFieldKt$CoreTextField$decorationBoxModifier$1(textFieldState));
                        if (!z16) {
                            z20 = z17;
                        } else {
                            z20 = z17;
                        }
                        if (z20) {
                            modifierB2 = TextFieldSelectionManager_androidKt.b(companion2, textFieldSelectionManager);
                        } else {
                            modifierB2 = companion2;
                        }
                        ImeOptions imeOptions18 = imeOptionsA;
                        composer2 = composerS;
                        b(modifierA11118, textFieldSelectionManager, ComposableLambdaKt.b(composer2, -1885146845, true, new CoreTextFieldKt$CoreTextField$5(qVarA, i3114, i36, textStyleA, textFieldScrollerPosition16, value, visualTransformationC, modifierB1114, modifierA11116, modifierA11117, modifierB2, bringIntoViewRequester16, textFieldState, textFieldSelectionManager, z20, z14, lVar2)), composer2, 448);
                        textStyle2 = textStyleA;
                        mutableInteractionSource4 = mutableInteractionSource3;
                        lVar3 = lVar2;
                        brush2 = solidColor;
                        z21 = z12;
                        keyboardActions2 = keyboardActionsA;
                        z22 = z14;
                        qVar2 = qVarA;
                        visualTransformation2 = visualTransformationC;
                        modifier3 = modifier19;
                        i37 = i36;
                        z23 = z16;
                        imeOptions2 = imeOptions18;
                    } else {
                        composerS.J();
                        if ((i11 & 1) != 0) {
                            if (i38 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i15 != 0) {
                                textStyleA = TextStyle.Companion.a();
                            } else {
                                textStyleA = textStyle;
                            }
                            if (i17 != 0) {
                                visualTransformationC = VisualTransformation.Companion.c();
                            } else {
                                visualTransformationC = visualTransformation;
                            }
                            if (i19 != 0) {
                                lVar2 = CoreTextFieldKt$CoreTextField$1.INSTANCE;
                            } else {
                                lVar2 = lVar;
                            }
                            if (i21 != 0) {
                                mutableInteractionSource2 = null;
                            } else {
                                mutableInteractionSource2 = mutableInteractionSource;
                            }
                            if ((i13 & 128) != 0) {
                                solidColor = new SolidColor(Color.Companion.f(), null);
                            } else {
                                solidColor = brush;
                            }
                            if (i23 != 0) {
                                z12 = true;
                            } else {
                                z12 = z6;
                            }
                            if (i25 != 0) {
                                i35 = Integer.MAX_VALUE;
                            } else {
                                i35 = i10;
                            }
                            if ((i13 & 1024) != 0) {
                                imeOptionsA = ImeOptions.Companion.a();
                                i30 &= -15;
                            } else {
                                imeOptionsA = imeOptions;
                            }
                            if (i28 != 0) {
                                keyboardActionsA = KeyboardActions.Companion.a();
                            } else {
                                keyboardActionsA = keyboardActions;
                            }
                            if (i31 != 0) {
                                z13 = true;
                            } else {
                                z13 = z10;
                            }
                            if (i33 != 0) {
                                z14 = false;
                            } else {
                                z14 = z11;
                            }
                            if (i34 != 0) {
                                qVarA = ComposableSingletons$CoreTextFieldKt.INSTANCE.a();
                            } else {
                                qVarA = qVar;
                            }
                            z15 = z13;
                        } else {
                            if (i38 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i15 != 0) {
                                textStyleA = TextStyle.Companion.a();
                            } else {
                                textStyleA = textStyle;
                            }
                            if (i17 != 0) {
                                visualTransformationC = VisualTransformation.Companion.c();
                            } else {
                                visualTransformationC = visualTransformation;
                            }
                            if (i19 != 0) {
                                lVar2 = CoreTextFieldKt$CoreTextField$1.INSTANCE;
                            } else {
                                lVar2 = lVar;
                            }
                            if (i21 != 0) {
                                mutableInteractionSource2 = null;
                            } else {
                                mutableInteractionSource2 = mutableInteractionSource;
                            }
                            if ((i13 & 128) != 0) {
                                solidColor = new SolidColor(Color.Companion.f(), null);
                            } else {
                                solidColor = brush;
                            }
                            if (i23 != 0) {
                                z12 = true;
                            } else {
                                z12 = z6;
                            }
                            if (i25 != 0) {
                                i35 = Integer.MAX_VALUE;
                            } else {
                                i35 = i10;
                            }
                            if ((i13 & 1024) != 0) {
                                imeOptionsA = ImeOptions.Companion.a();
                                i30 &= -15;
                            } else {
                                imeOptionsA = imeOptions;
                            }
                            if (i28 != 0) {
                                keyboardActionsA = KeyboardActions.Companion.a();
                            } else {
                                keyboardActionsA = keyboardActions;
                            }
                            if (i31 != 0) {
                                z13 = true;
                            } else {
                                z13 = z10;
                            }
                            if (i33 != 0) {
                                z14 = false;
                            } else {
                                z14 = z11;
                            }
                            if (i34 != 0) {
                                qVarA = ComposableSingletons$CoreTextFieldKt.INSTANCE.a();
                            } else {
                                qVarA = qVar;
                            }
                            z15 = z13;
                        }
                        composerS.A();
                        focusRequester = new FocusRequester();
                        composerS.G(-55013392);
                        if (z15) {
                            textInputService = null;
                        } else {
                            textInputService = null;
                        }
                        composerS.Q();
                        density = (Density) composerS.x(CompositionLocalsKt.e());
                        resolver = (FontFamily.Resolver) composerS.x(CompositionLocalsKt.g());
                        long jA17 = ((TextSelectionColors) composerS.x(TextSelectionColorsKt.b())).a();
                        FocusManager focusManager17 = (FocusManager) composerS.x(CompositionLocalsKt.f());
                        Modifier modifier110 = modifier2;
                        if (i35 == 1) {
                            orientation = Orientation.Vertical;
                        } else {
                            orientation = Orientation.Vertical;
                        }
                        int i3115 = i30;
                        i36 = i35;
                        orientation2 = orientation;
                        Object[] objArr17 = {orientation2};
                        Saver<TextFieldScrollerPosition, Object> saverA17 = TextFieldScrollerPosition.Companion.a();
                        z16 = z15;
                        composerS.G(1157296644);
                        zK = composerS.k(orientation2);
                        mutableInteractionSource3 = mutableInteractionSource2;
                        objH = composerS.H();
                        if (zK) {
                            objH = new CoreTextFieldKt$CoreTextField$scrollerPosition$1$1(orientation2);
                            composerS.z(objH);
                        } else {
                            objH = new CoreTextFieldKt$CoreTextField$scrollerPosition$1$1(orientation2);
                            composerS.z(objH);
                        }
                        composerS.Q();
                        TextFieldScrollerPosition textFieldScrollerPosition17 = (TextFieldScrollerPosition) RememberSaveableKt.b(objArr17, saverA17, null, (a) objH, composerS, 72, 4);
                        composerS.G(511388516);
                        zK2 = composerS.k(value) | composerS.k(visualTransformationC);
                        objH2 = composerS.H();
                        if (zK2) {
                            transformedTextA = visualTransformationC.a(value.e());
                            textRangeF = value.f();
                            if (textRangeF != null) {
                                objH2 = transformedTextA;
                            } else {
                                objH2 = transformedTextA;
                            }
                            composerS.z(objH2);
                        } else {
                            transformedTextA = visualTransformationC.a(value.e());
                            textRangeF = value.f();
                            if (textRangeF != null) {
                                objH2 = transformedTextA;
                            } else {
                                objH2 = transformedTextA;
                            }
                            composerS.z(objH2);
                        }
                        composerS.Q();
                        TransformedText transformedText17 = (TransformedText) objH2;
                        annotatedStringB = transformedText17.b();
                        offsetMappingA = transformedText17.a();
                        recomposeScopeB = ComposablesKt.b(composerS, 0);
                        composerS.G(-492369756);
                        objH3 = composerS.H();
                        companion = Composer.Companion;
                        if (objH3 == companion.a()) {
                            objH3 = new TextFieldState(new TextDelegate(annotatedStringB, textStyleA, 0, z12, 0, density, resolver, null, TarConstants.CHKSUM_OFFSET, null), recomposeScopeB);
                            composerS.z(objH3);
                        }
                        composerS.Q();
                        textFieldState = (TextFieldState) objH3;
                        textFieldState.A(annotatedStringB, textStyleA, z12, density, resolver, onValueChange, keyboardActionsA, focusManager17, jA17);
                        textFieldState.j().b(value, textFieldState.e());
                        composerS.G(-492369756);
                        objH4 = composerS.H();
                        if (objH4 == companion.a()) {
                            objH4 = new UndoManager(0, 1, null);
                            composerS.z(objH4);
                        }
                        composerS.Q();
                        undoManager = (UndoManager) objH4;
                        UndoManager.f(undoManager, value, 0L, 2, null);
                        composerS.G(-492369756);
                        objH5 = composerS.H();
                        if (objH5 == companion.a()) {
                            objH5 = new TextFieldSelectionManager(undoManager);
                            composerS.z(objH5);
                        }
                        composerS.Q();
                        textFieldSelectionManager = (TextFieldSelectionManager) objH5;
                        textFieldSelectionManager.U(offsetMappingA);
                        textFieldSelectionManager.Z(visualTransformationC);
                        textFieldSelectionManager.V(textFieldState.i());
                        textFieldSelectionManager.W(textFieldState);
                        textFieldSelectionManager.Y(value);
                        textFieldSelectionManager.N((ClipboardManager) composerS.x(CompositionLocalsKt.d()));
                        textFieldSelectionManager.X((TextToolbar) composerS.x(CompositionLocalsKt.m()));
                        textFieldSelectionManager.T((HapticFeedback) composerS.x(CompositionLocalsKt.h()));
                        textFieldSelectionManager.R(focusRequester);
                        textFieldSelectionManager.Q(!z14);
                        composerS.G(773894976);
                        composerS.G(-492369756);
                        objH6 = composerS.H();
                        if (objH6 == companion.a()) {
                            CompositionScopedCoroutineScopeCanceller compositionScopedCoroutineScopeCanceller17 = new CompositionScopedCoroutineScopeCanceller(EffectsKt.j(h.INSTANCE, composerS));
                            composerS.z(compositionScopedCoroutineScopeCanceller17);
                            objH6 = compositionScopedCoroutineScopeCanceller17;
                        }
                        composerS.Q();
                        o0 o0VarA17 = ((CompositionScopedCoroutineScopeCanceller) objH6).a();
                        composerS.Q();
                        composerS.G(-492369756);
                        objH7 = composerS.H();
                        if (objH7 == companion.a()) {
                            objH7 = BringIntoViewRequesterKt.a();
                            composerS.z(objH7);
                        }
                        composerS.Q();
                        BringIntoViewRequester bringIntoViewRequester17 = (BringIntoViewRequester) objH7;
                        companion2 = Modifier.Companion;
                        Modifier modifierC17 = TextFieldGestureModifiersKt.c(companion2, z16, focusRequester, mutableInteractionSource3, new CoreTextFieldKt$CoreTextField$focusModifier$1(textFieldState, textInputService, value, imeOptionsA, textFieldSelectionManager, o0VarA17, bringIntoViewRequester17, offsetMappingA));
                        EffectsKt.a(textFieldState, new CoreTextFieldKt$CoreTextField$2(textFieldState), composerS, 8);
                        if (TouchMode_androidKt.a()) {
                            modifierB = TextFieldPressGestureFilterKt.a(companion2, mutableInteractionSource3, z16, new CoreTextFieldKt$CoreTextField$pointerModifier$1(textFieldState, focusRequester, z14, textFieldSelectionManager, offsetMappingA)).B(TextFieldGestureModifiersKt.a(companion2, textFieldSelectionManager.G(), z16));
                            z17 = false;
                        } else {
                            z17 = false;
                            modifierB = PointerIconKt.b(TextFieldGestureModifiersKt.b(companion2, textFieldSelectionManager.B(), z16), TextPointerIcon_androidKt.a(), false, 2, null);
                        }
                        Modifier modifierA11119 = DrawModifierKt.a(companion2, new CoreTextFieldKt$CoreTextField$drawModifier$1(textFieldState, value, offsetMappingA));
                        Modifier modifierA111110 = OnGloballyPositionedModifierKt.a(companion2, new CoreTextFieldKt$CoreTextField$onPositionedModifier$1(textFieldState, z16, textFieldSelectionManager));
                        Modifier modifierB1115 = SemanticsModifierKt.b(companion2, true, new CoreTextFieldKt$CoreTextField$semanticsModifier$1(imeOptionsA, transformedText17, value, z16, visualTransformationC instanceof PasswordVisualTransformation, z14, textFieldState, offsetMappingA, textFieldSelectionManager, focusRequester));
                        if (z16) {
                            z18 = z17;
                        } else {
                            z18 = z17;
                        }
                        Modifier modifierB1116 = TextFieldCursorKt.b(companion2, textFieldState, value, offsetMappingA, solidColor, z18);
                        EffectsKt.a(textFieldSelectionManager, new CoreTextFieldKt$CoreTextField$3(textFieldSelectionManager), composerS, 8);
                        EffectsKt.a(imeOptionsA, new CoreTextFieldKt$CoreTextField$4(textInputService, textFieldState, value, imeOptionsA), composerS, i3115 & 14);
                        l<TextFieldValue, l0> lVarI17 = textFieldState.i();
                        boolean z2110 = !z14;
                        if (i36 == 1) {
                            z19 = true;
                        } else {
                            z19 = z17;
                        }
                        Modifier modifierA111111 = OnGloballyPositionedModifierKt.a(TextFieldScrollKt.d(m(modifier110.B(modifierC17), textFieldState, textFieldSelectionManager).B(TextFieldKeyInputKt.a(companion2, textFieldState, textFieldSelectionManager, value, lVarI17, z2110, z19, offsetMappingA, undoManager)), textFieldScrollerPosition17, mutableInteractionSource3, z16).B(modifierB).B(modifierB1115), new CoreTextFieldKt$CoreTextField$decorationBoxModifier$1(textFieldState));
                        if (!z16) {
                            z20 = z17;
                        } else {
                            z20 = z17;
                        }
                        if (z20) {
                            modifierB2 = TextFieldSelectionManager_androidKt.b(companion2, textFieldSelectionManager);
                        } else {
                            modifierB2 = companion2;
                        }
                        ImeOptions imeOptions19 = imeOptionsA;
                        composer2 = composerS;
                        b(modifierA111111, textFieldSelectionManager, ComposableLambdaKt.b(composer2, -1885146845, true, new CoreTextFieldKt$CoreTextField$5(qVarA, i3115, i36, textStyleA, textFieldScrollerPosition17, value, visualTransformationC, modifierB1116, modifierA11119, modifierA111110, modifierB2, bringIntoViewRequester17, textFieldState, textFieldSelectionManager, z20, z14, lVar2)), composer2, 448);
                        textStyle2 = textStyleA;
                        mutableInteractionSource4 = mutableInteractionSource3;
                        lVar3 = lVar2;
                        brush2 = solidColor;
                        z21 = z12;
                        keyboardActions2 = keyboardActionsA;
                        z22 = z14;
                        qVar2 = qVarA;
                        visualTransformation2 = visualTransformationC;
                        modifier3 = modifier110;
                        i37 = i36;
                        z23 = z16;
                        imeOptions2 = imeOptions19;
                    }
                    scopeUpdateScopeU = composer2.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new CoreTextFieldKt$CoreTextField$6(value, onValueChange, modifier3, textStyle2, visualTransformation2, lVar3, mutableInteractionSource4, brush2, z21, i37, imeOptions2, keyboardActions2, z23, z22, qVar2, i11, i12, i13));
                }
                i30 |= 3072;
                i34 = i13 & 16384;
                if (i34 != 0) {
                    i30 |= CpioConstants.C_ISBLK;
                } else if ((i12 & 57344) == 0) {
                    i30 |= composerS.k(qVar) ? 16384 : 8192;
                }
                if ((i14 & 1533916891) != 306783378) {
                    composerS.J();
                    if ((i11 & 1) != 0) {
                        if (i38 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i15 != 0) {
                            textStyleA = TextStyle.Companion.a();
                        } else {
                            textStyleA = textStyle;
                        }
                        if (i17 != 0) {
                            visualTransformationC = VisualTransformation.Companion.c();
                        } else {
                            visualTransformationC = visualTransformation;
                        }
                        if (i19 != 0) {
                            lVar2 = CoreTextFieldKt$CoreTextField$1.INSTANCE;
                        } else {
                            lVar2 = lVar;
                        }
                        if (i21 != 0) {
                            mutableInteractionSource2 = null;
                        } else {
                            mutableInteractionSource2 = mutableInteractionSource;
                        }
                        if ((i13 & 128) != 0) {
                            solidColor = new SolidColor(Color.Companion.f(), null);
                        } else {
                            solidColor = brush;
                        }
                        if (i23 != 0) {
                            z12 = true;
                        } else {
                            z12 = z6;
                        }
                        if (i25 != 0) {
                            i35 = Integer.MAX_VALUE;
                        } else {
                            i35 = i10;
                        }
                        if ((i13 & 1024) != 0) {
                            imeOptionsA = ImeOptions.Companion.a();
                            i30 &= -15;
                        } else {
                            imeOptionsA = imeOptions;
                        }
                        if (i28 != 0) {
                            keyboardActionsA = KeyboardActions.Companion.a();
                        } else {
                            keyboardActionsA = keyboardActions;
                        }
                        if (i31 != 0) {
                            z13 = true;
                        } else {
                            z13 = z10;
                        }
                        if (i33 != 0) {
                            z14 = false;
                        } else {
                            z14 = z11;
                        }
                        if (i34 != 0) {
                            qVarA = ComposableSingletons$CoreTextFieldKt.INSTANCE.a();
                        } else {
                            qVarA = qVar;
                        }
                        z15 = z13;
                    } else {
                        if (i38 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i15 != 0) {
                            textStyleA = TextStyle.Companion.a();
                        } else {
                            textStyleA = textStyle;
                        }
                        if (i17 != 0) {
                            visualTransformationC = VisualTransformation.Companion.c();
                        } else {
                            visualTransformationC = visualTransformation;
                        }
                        if (i19 != 0) {
                            lVar2 = CoreTextFieldKt$CoreTextField$1.INSTANCE;
                        } else {
                            lVar2 = lVar;
                        }
                        if (i21 != 0) {
                            mutableInteractionSource2 = null;
                        } else {
                            mutableInteractionSource2 = mutableInteractionSource;
                        }
                        if ((i13 & 128) != 0) {
                            solidColor = new SolidColor(Color.Companion.f(), null);
                        } else {
                            solidColor = brush;
                        }
                        if (i23 != 0) {
                            z12 = true;
                        } else {
                            z12 = z6;
                        }
                        if (i25 != 0) {
                            i35 = Integer.MAX_VALUE;
                        } else {
                            i35 = i10;
                        }
                        if ((i13 & 1024) != 0) {
                            imeOptionsA = ImeOptions.Companion.a();
                            i30 &= -15;
                        } else {
                            imeOptionsA = imeOptions;
                        }
                        if (i28 != 0) {
                            keyboardActionsA = KeyboardActions.Companion.a();
                        } else {
                            keyboardActionsA = keyboardActions;
                        }
                        if (i31 != 0) {
                            z13 = true;
                        } else {
                            z13 = z10;
                        }
                        if (i33 != 0) {
                            z14 = false;
                        } else {
                            z14 = z11;
                        }
                        if (i34 != 0) {
                            qVarA = ComposableSingletons$CoreTextFieldKt.INSTANCE.a();
                        } else {
                            qVarA = qVar;
                        }
                        z15 = z13;
                    }
                    composerS.A();
                    focusRequester = new FocusRequester();
                    composerS.G(-55013392);
                    if (z15) {
                        textInputService = null;
                    } else {
                        textInputService = null;
                    }
                    composerS.Q();
                    density = (Density) composerS.x(CompositionLocalsKt.e());
                    resolver = (FontFamily.Resolver) composerS.x(CompositionLocalsKt.g());
                    long jA18 = ((TextSelectionColors) composerS.x(TextSelectionColorsKt.b())).a();
                    FocusManager focusManager18 = (FocusManager) composerS.x(CompositionLocalsKt.f());
                    Modifier modifier111 = modifier2;
                    if (i35 == 1) {
                        orientation = Orientation.Vertical;
                    } else {
                        orientation = Orientation.Vertical;
                    }
                    int i3116 = i30;
                    i36 = i35;
                    orientation2 = orientation;
                    Object[] objArr18 = {orientation2};
                    Saver<TextFieldScrollerPosition, Object> saverA18 = TextFieldScrollerPosition.Companion.a();
                    z16 = z15;
                    composerS.G(1157296644);
                    zK = composerS.k(orientation2);
                    mutableInteractionSource3 = mutableInteractionSource2;
                    objH = composerS.H();
                    if (zK) {
                        objH = new CoreTextFieldKt$CoreTextField$scrollerPosition$1$1(orientation2);
                        composerS.z(objH);
                    } else {
                        objH = new CoreTextFieldKt$CoreTextField$scrollerPosition$1$1(orientation2);
                        composerS.z(objH);
                    }
                    composerS.Q();
                    TextFieldScrollerPosition textFieldScrollerPosition18 = (TextFieldScrollerPosition) RememberSaveableKt.b(objArr18, saverA18, null, (a) objH, composerS, 72, 4);
                    composerS.G(511388516);
                    zK2 = composerS.k(value) | composerS.k(visualTransformationC);
                    objH2 = composerS.H();
                    if (zK2) {
                        transformedTextA = visualTransformationC.a(value.e());
                        textRangeF = value.f();
                        if (textRangeF != null) {
                            objH2 = transformedTextA;
                        } else {
                            objH2 = transformedTextA;
                        }
                        composerS.z(objH2);
                    } else {
                        transformedTextA = visualTransformationC.a(value.e());
                        textRangeF = value.f();
                        if (textRangeF != null) {
                            objH2 = transformedTextA;
                        } else {
                            objH2 = transformedTextA;
                        }
                        composerS.z(objH2);
                    }
                    composerS.Q();
                    TransformedText transformedText18 = (TransformedText) objH2;
                    annotatedStringB = transformedText18.b();
                    offsetMappingA = transformedText18.a();
                    recomposeScopeB = ComposablesKt.b(composerS, 0);
                    composerS.G(-492369756);
                    objH3 = composerS.H();
                    companion = Composer.Companion;
                    if (objH3 == companion.a()) {
                        objH3 = new TextFieldState(new TextDelegate(annotatedStringB, textStyleA, 0, z12, 0, density, resolver, null, TarConstants.CHKSUM_OFFSET, null), recomposeScopeB);
                        composerS.z(objH3);
                    }
                    composerS.Q();
                    textFieldState = (TextFieldState) objH3;
                    textFieldState.A(annotatedStringB, textStyleA, z12, density, resolver, onValueChange, keyboardActionsA, focusManager18, jA18);
                    textFieldState.j().b(value, textFieldState.e());
                    composerS.G(-492369756);
                    objH4 = composerS.H();
                    if (objH4 == companion.a()) {
                        objH4 = new UndoManager(0, 1, null);
                        composerS.z(objH4);
                    }
                    composerS.Q();
                    undoManager = (UndoManager) objH4;
                    UndoManager.f(undoManager, value, 0L, 2, null);
                    composerS.G(-492369756);
                    objH5 = composerS.H();
                    if (objH5 == companion.a()) {
                        objH5 = new TextFieldSelectionManager(undoManager);
                        composerS.z(objH5);
                    }
                    composerS.Q();
                    textFieldSelectionManager = (TextFieldSelectionManager) objH5;
                    textFieldSelectionManager.U(offsetMappingA);
                    textFieldSelectionManager.Z(visualTransformationC);
                    textFieldSelectionManager.V(textFieldState.i());
                    textFieldSelectionManager.W(textFieldState);
                    textFieldSelectionManager.Y(value);
                    textFieldSelectionManager.N((ClipboardManager) composerS.x(CompositionLocalsKt.d()));
                    textFieldSelectionManager.X((TextToolbar) composerS.x(CompositionLocalsKt.m()));
                    textFieldSelectionManager.T((HapticFeedback) composerS.x(CompositionLocalsKt.h()));
                    textFieldSelectionManager.R(focusRequester);
                    textFieldSelectionManager.Q(!z14);
                    composerS.G(773894976);
                    composerS.G(-492369756);
                    objH6 = composerS.H();
                    if (objH6 == companion.a()) {
                        CompositionScopedCoroutineScopeCanceller compositionScopedCoroutineScopeCanceller18 = new CompositionScopedCoroutineScopeCanceller(EffectsKt.j(h.INSTANCE, composerS));
                        composerS.z(compositionScopedCoroutineScopeCanceller18);
                        objH6 = compositionScopedCoroutineScopeCanceller18;
                    }
                    composerS.Q();
                    o0 o0VarA18 = ((CompositionScopedCoroutineScopeCanceller) objH6).a();
                    composerS.Q();
                    composerS.G(-492369756);
                    objH7 = composerS.H();
                    if (objH7 == companion.a()) {
                        objH7 = BringIntoViewRequesterKt.a();
                        composerS.z(objH7);
                    }
                    composerS.Q();
                    BringIntoViewRequester bringIntoViewRequester18 = (BringIntoViewRequester) objH7;
                    companion2 = Modifier.Companion;
                    Modifier modifierC18 = TextFieldGestureModifiersKt.c(companion2, z16, focusRequester, mutableInteractionSource3, new CoreTextFieldKt$CoreTextField$focusModifier$1(textFieldState, textInputService, value, imeOptionsA, textFieldSelectionManager, o0VarA18, bringIntoViewRequester18, offsetMappingA));
                    EffectsKt.a(textFieldState, new CoreTextFieldKt$CoreTextField$2(textFieldState), composerS, 8);
                    if (TouchMode_androidKt.a()) {
                        modifierB = TextFieldPressGestureFilterKt.a(companion2, mutableInteractionSource3, z16, new CoreTextFieldKt$CoreTextField$pointerModifier$1(textFieldState, focusRequester, z14, textFieldSelectionManager, offsetMappingA)).B(TextFieldGestureModifiersKt.a(companion2, textFieldSelectionManager.G(), z16));
                        z17 = false;
                    } else {
                        z17 = false;
                        modifierB = PointerIconKt.b(TextFieldGestureModifiersKt.b(companion2, textFieldSelectionManager.B(), z16), TextPointerIcon_androidKt.a(), false, 2, null);
                    }
                    Modifier modifierA111112 = DrawModifierKt.a(companion2, new CoreTextFieldKt$CoreTextField$drawModifier$1(textFieldState, value, offsetMappingA));
                    Modifier modifierA111113 = OnGloballyPositionedModifierKt.a(companion2, new CoreTextFieldKt$CoreTextField$onPositionedModifier$1(textFieldState, z16, textFieldSelectionManager));
                    Modifier modifierB1117 = SemanticsModifierKt.b(companion2, true, new CoreTextFieldKt$CoreTextField$semanticsModifier$1(imeOptionsA, transformedText18, value, z16, visualTransformationC instanceof PasswordVisualTransformation, z14, textFieldState, offsetMappingA, textFieldSelectionManager, focusRequester));
                    if (z16) {
                        z18 = z17;
                    } else {
                        z18 = z17;
                    }
                    Modifier modifierB1118 = TextFieldCursorKt.b(companion2, textFieldState, value, offsetMappingA, solidColor, z18);
                    EffectsKt.a(textFieldSelectionManager, new CoreTextFieldKt$CoreTextField$3(textFieldSelectionManager), composerS, 8);
                    EffectsKt.a(imeOptionsA, new CoreTextFieldKt$CoreTextField$4(textInputService, textFieldState, value, imeOptionsA), composerS, i3116 & 14);
                    l<TextFieldValue, l0> lVarI18 = textFieldState.i();
                    boolean z2111 = !z14;
                    if (i36 == 1) {
                        z19 = true;
                    } else {
                        z19 = z17;
                    }
                    Modifier modifierA111114 = OnGloballyPositionedModifierKt.a(TextFieldScrollKt.d(m(modifier111.B(modifierC18), textFieldState, textFieldSelectionManager).B(TextFieldKeyInputKt.a(companion2, textFieldState, textFieldSelectionManager, value, lVarI18, z2111, z19, offsetMappingA, undoManager)), textFieldScrollerPosition18, mutableInteractionSource3, z16).B(modifierB).B(modifierB1117), new CoreTextFieldKt$CoreTextField$decorationBoxModifier$1(textFieldState));
                    if (!z16) {
                        z20 = z17;
                    } else {
                        z20 = z17;
                    }
                    if (z20) {
                        modifierB2 = TextFieldSelectionManager_androidKt.b(companion2, textFieldSelectionManager);
                    } else {
                        modifierB2 = companion2;
                    }
                    ImeOptions imeOptions110 = imeOptionsA;
                    composer2 = composerS;
                    b(modifierA111114, textFieldSelectionManager, ComposableLambdaKt.b(composer2, -1885146845, true, new CoreTextFieldKt$CoreTextField$5(qVarA, i3116, i36, textStyleA, textFieldScrollerPosition18, value, visualTransformationC, modifierB1118, modifierA111112, modifierA111113, modifierB2, bringIntoViewRequester18, textFieldState, textFieldSelectionManager, z20, z14, lVar2)), composer2, 448);
                    textStyle2 = textStyleA;
                    mutableInteractionSource4 = mutableInteractionSource3;
                    lVar3 = lVar2;
                    brush2 = solidColor;
                    z21 = z12;
                    keyboardActions2 = keyboardActionsA;
                    z22 = z14;
                    qVar2 = qVarA;
                    visualTransformation2 = visualTransformationC;
                    modifier3 = modifier111;
                    i37 = i36;
                    z23 = z16;
                    imeOptions2 = imeOptions110;
                } else {
                    composerS.J();
                    if ((i11 & 1) != 0) {
                        if (i38 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i15 != 0) {
                            textStyleA = TextStyle.Companion.a();
                        } else {
                            textStyleA = textStyle;
                        }
                        if (i17 != 0) {
                            visualTransformationC = VisualTransformation.Companion.c();
                        } else {
                            visualTransformationC = visualTransformation;
                        }
                        if (i19 != 0) {
                            lVar2 = CoreTextFieldKt$CoreTextField$1.INSTANCE;
                        } else {
                            lVar2 = lVar;
                        }
                        if (i21 != 0) {
                            mutableInteractionSource2 = null;
                        } else {
                            mutableInteractionSource2 = mutableInteractionSource;
                        }
                        if ((i13 & 128) != 0) {
                            solidColor = new SolidColor(Color.Companion.f(), null);
                        } else {
                            solidColor = brush;
                        }
                        if (i23 != 0) {
                            z12 = true;
                        } else {
                            z12 = z6;
                        }
                        if (i25 != 0) {
                            i35 = Integer.MAX_VALUE;
                        } else {
                            i35 = i10;
                        }
                        if ((i13 & 1024) != 0) {
                            imeOptionsA = ImeOptions.Companion.a();
                            i30 &= -15;
                        } else {
                            imeOptionsA = imeOptions;
                        }
                        if (i28 != 0) {
                            keyboardActionsA = KeyboardActions.Companion.a();
                        } else {
                            keyboardActionsA = keyboardActions;
                        }
                        if (i31 != 0) {
                            z13 = true;
                        } else {
                            z13 = z10;
                        }
                        if (i33 != 0) {
                            z14 = false;
                        } else {
                            z14 = z11;
                        }
                        if (i34 != 0) {
                            qVarA = ComposableSingletons$CoreTextFieldKt.INSTANCE.a();
                        } else {
                            qVarA = qVar;
                        }
                        z15 = z13;
                    } else {
                        if (i38 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i15 != 0) {
                            textStyleA = TextStyle.Companion.a();
                        } else {
                            textStyleA = textStyle;
                        }
                        if (i17 != 0) {
                            visualTransformationC = VisualTransformation.Companion.c();
                        } else {
                            visualTransformationC = visualTransformation;
                        }
                        if (i19 != 0) {
                            lVar2 = CoreTextFieldKt$CoreTextField$1.INSTANCE;
                        } else {
                            lVar2 = lVar;
                        }
                        if (i21 != 0) {
                            mutableInteractionSource2 = null;
                        } else {
                            mutableInteractionSource2 = mutableInteractionSource;
                        }
                        if ((i13 & 128) != 0) {
                            solidColor = new SolidColor(Color.Companion.f(), null);
                        } else {
                            solidColor = brush;
                        }
                        if (i23 != 0) {
                            z12 = true;
                        } else {
                            z12 = z6;
                        }
                        if (i25 != 0) {
                            i35 = Integer.MAX_VALUE;
                        } else {
                            i35 = i10;
                        }
                        if ((i13 & 1024) != 0) {
                            imeOptionsA = ImeOptions.Companion.a();
                            i30 &= -15;
                        } else {
                            imeOptionsA = imeOptions;
                        }
                        if (i28 != 0) {
                            keyboardActionsA = KeyboardActions.Companion.a();
                        } else {
                            keyboardActionsA = keyboardActions;
                        }
                        if (i31 != 0) {
                            z13 = true;
                        } else {
                            z13 = z10;
                        }
                        if (i33 != 0) {
                            z14 = false;
                        } else {
                            z14 = z11;
                        }
                        if (i34 != 0) {
                            qVarA = ComposableSingletons$CoreTextFieldKt.INSTANCE.a();
                        } else {
                            qVarA = qVar;
                        }
                        z15 = z13;
                    }
                    composerS.A();
                    focusRequester = new FocusRequester();
                    composerS.G(-55013392);
                    if (z15) {
                        textInputService = null;
                    } else {
                        textInputService = null;
                    }
                    composerS.Q();
                    density = (Density) composerS.x(CompositionLocalsKt.e());
                    resolver = (FontFamily.Resolver) composerS.x(CompositionLocalsKt.g());
                    long jA19 = ((TextSelectionColors) composerS.x(TextSelectionColorsKt.b())).a();
                    FocusManager focusManager19 = (FocusManager) composerS.x(CompositionLocalsKt.f());
                    Modifier modifier112 = modifier2;
                    if (i35 == 1) {
                        orientation = Orientation.Vertical;
                    } else {
                        orientation = Orientation.Vertical;
                    }
                    int i3117 = i30;
                    i36 = i35;
                    orientation2 = orientation;
                    Object[] objArr19 = {orientation2};
                    Saver<TextFieldScrollerPosition, Object> saverA19 = TextFieldScrollerPosition.Companion.a();
                    z16 = z15;
                    composerS.G(1157296644);
                    zK = composerS.k(orientation2);
                    mutableInteractionSource3 = mutableInteractionSource2;
                    objH = composerS.H();
                    if (zK) {
                        objH = new CoreTextFieldKt$CoreTextField$scrollerPosition$1$1(orientation2);
                        composerS.z(objH);
                    } else {
                        objH = new CoreTextFieldKt$CoreTextField$scrollerPosition$1$1(orientation2);
                        composerS.z(objH);
                    }
                    composerS.Q();
                    TextFieldScrollerPosition textFieldScrollerPosition19 = (TextFieldScrollerPosition) RememberSaveableKt.b(objArr19, saverA19, null, (a) objH, composerS, 72, 4);
                    composerS.G(511388516);
                    zK2 = composerS.k(value) | composerS.k(visualTransformationC);
                    objH2 = composerS.H();
                    if (zK2) {
                        transformedTextA = visualTransformationC.a(value.e());
                        textRangeF = value.f();
                        if (textRangeF != null) {
                            objH2 = transformedTextA;
                        } else {
                            objH2 = transformedTextA;
                        }
                        composerS.z(objH2);
                    } else {
                        transformedTextA = visualTransformationC.a(value.e());
                        textRangeF = value.f();
                        if (textRangeF != null) {
                            objH2 = transformedTextA;
                        } else {
                            objH2 = transformedTextA;
                        }
                        composerS.z(objH2);
                    }
                    composerS.Q();
                    TransformedText transformedText19 = (TransformedText) objH2;
                    annotatedStringB = transformedText19.b();
                    offsetMappingA = transformedText19.a();
                    recomposeScopeB = ComposablesKt.b(composerS, 0);
                    composerS.G(-492369756);
                    objH3 = composerS.H();
                    companion = Composer.Companion;
                    if (objH3 == companion.a()) {
                        objH3 = new TextFieldState(new TextDelegate(annotatedStringB, textStyleA, 0, z12, 0, density, resolver, null, TarConstants.CHKSUM_OFFSET, null), recomposeScopeB);
                        composerS.z(objH3);
                    }
                    composerS.Q();
                    textFieldState = (TextFieldState) objH3;
                    textFieldState.A(annotatedStringB, textStyleA, z12, density, resolver, onValueChange, keyboardActionsA, focusManager19, jA19);
                    textFieldState.j().b(value, textFieldState.e());
                    composerS.G(-492369756);
                    objH4 = composerS.H();
                    if (objH4 == companion.a()) {
                        objH4 = new UndoManager(0, 1, null);
                        composerS.z(objH4);
                    }
                    composerS.Q();
                    undoManager = (UndoManager) objH4;
                    UndoManager.f(undoManager, value, 0L, 2, null);
                    composerS.G(-492369756);
                    objH5 = composerS.H();
                    if (objH5 == companion.a()) {
                        objH5 = new TextFieldSelectionManager(undoManager);
                        composerS.z(objH5);
                    }
                    composerS.Q();
                    textFieldSelectionManager = (TextFieldSelectionManager) objH5;
                    textFieldSelectionManager.U(offsetMappingA);
                    textFieldSelectionManager.Z(visualTransformationC);
                    textFieldSelectionManager.V(textFieldState.i());
                    textFieldSelectionManager.W(textFieldState);
                    textFieldSelectionManager.Y(value);
                    textFieldSelectionManager.N((ClipboardManager) composerS.x(CompositionLocalsKt.d()));
                    textFieldSelectionManager.X((TextToolbar) composerS.x(CompositionLocalsKt.m()));
                    textFieldSelectionManager.T((HapticFeedback) composerS.x(CompositionLocalsKt.h()));
                    textFieldSelectionManager.R(focusRequester);
                    textFieldSelectionManager.Q(!z14);
                    composerS.G(773894976);
                    composerS.G(-492369756);
                    objH6 = composerS.H();
                    if (objH6 == companion.a()) {
                        CompositionScopedCoroutineScopeCanceller compositionScopedCoroutineScopeCanceller19 = new CompositionScopedCoroutineScopeCanceller(EffectsKt.j(h.INSTANCE, composerS));
                        composerS.z(compositionScopedCoroutineScopeCanceller19);
                        objH6 = compositionScopedCoroutineScopeCanceller19;
                    }
                    composerS.Q();
                    o0 o0VarA19 = ((CompositionScopedCoroutineScopeCanceller) objH6).a();
                    composerS.Q();
                    composerS.G(-492369756);
                    objH7 = composerS.H();
                    if (objH7 == companion.a()) {
                        objH7 = BringIntoViewRequesterKt.a();
                        composerS.z(objH7);
                    }
                    composerS.Q();
                    BringIntoViewRequester bringIntoViewRequester19 = (BringIntoViewRequester) objH7;
                    companion2 = Modifier.Companion;
                    Modifier modifierC19 = TextFieldGestureModifiersKt.c(companion2, z16, focusRequester, mutableInteractionSource3, new CoreTextFieldKt$CoreTextField$focusModifier$1(textFieldState, textInputService, value, imeOptionsA, textFieldSelectionManager, o0VarA19, bringIntoViewRequester19, offsetMappingA));
                    EffectsKt.a(textFieldState, new CoreTextFieldKt$CoreTextField$2(textFieldState), composerS, 8);
                    if (TouchMode_androidKt.a()) {
                        modifierB = TextFieldPressGestureFilterKt.a(companion2, mutableInteractionSource3, z16, new CoreTextFieldKt$CoreTextField$pointerModifier$1(textFieldState, focusRequester, z14, textFieldSelectionManager, offsetMappingA)).B(TextFieldGestureModifiersKt.a(companion2, textFieldSelectionManager.G(), z16));
                        z17 = false;
                    } else {
                        z17 = false;
                        modifierB = PointerIconKt.b(TextFieldGestureModifiersKt.b(companion2, textFieldSelectionManager.B(), z16), TextPointerIcon_androidKt.a(), false, 2, null);
                    }
                    Modifier modifierA111115 = DrawModifierKt.a(companion2, new CoreTextFieldKt$CoreTextField$drawModifier$1(textFieldState, value, offsetMappingA));
                    Modifier modifierA111116 = OnGloballyPositionedModifierKt.a(companion2, new CoreTextFieldKt$CoreTextField$onPositionedModifier$1(textFieldState, z16, textFieldSelectionManager));
                    Modifier modifierB1119 = SemanticsModifierKt.b(companion2, true, new CoreTextFieldKt$CoreTextField$semanticsModifier$1(imeOptionsA, transformedText19, value, z16, visualTransformationC instanceof PasswordVisualTransformation, z14, textFieldState, offsetMappingA, textFieldSelectionManager, focusRequester));
                    if (z16) {
                        z18 = z17;
                    } else {
                        z18 = z17;
                    }
                    Modifier modifierB11110 = TextFieldCursorKt.b(companion2, textFieldState, value, offsetMappingA, solidColor, z18);
                    EffectsKt.a(textFieldSelectionManager, new CoreTextFieldKt$CoreTextField$3(textFieldSelectionManager), composerS, 8);
                    EffectsKt.a(imeOptionsA, new CoreTextFieldKt$CoreTextField$4(textInputService, textFieldState, value, imeOptionsA), composerS, i3117 & 14);
                    l<TextFieldValue, l0> lVarI19 = textFieldState.i();
                    boolean z2112 = !z14;
                    if (i36 == 1) {
                        z19 = true;
                    } else {
                        z19 = z17;
                    }
                    Modifier modifierA111117 = OnGloballyPositionedModifierKt.a(TextFieldScrollKt.d(m(modifier112.B(modifierC19), textFieldState, textFieldSelectionManager).B(TextFieldKeyInputKt.a(companion2, textFieldState, textFieldSelectionManager, value, lVarI19, z2112, z19, offsetMappingA, undoManager)), textFieldScrollerPosition19, mutableInteractionSource3, z16).B(modifierB).B(modifierB1119), new CoreTextFieldKt$CoreTextField$decorationBoxModifier$1(textFieldState));
                    if (!z16) {
                        z20 = z17;
                    } else {
                        z20 = z17;
                    }
                    if (z20) {
                        modifierB2 = TextFieldSelectionManager_androidKt.b(companion2, textFieldSelectionManager);
                    } else {
                        modifierB2 = companion2;
                    }
                    ImeOptions imeOptions111 = imeOptionsA;
                    composer2 = composerS;
                    b(modifierA111117, textFieldSelectionManager, ComposableLambdaKt.b(composer2, -1885146845, true, new CoreTextFieldKt$CoreTextField$5(qVarA, i3117, i36, textStyleA, textFieldScrollerPosition19, value, visualTransformationC, modifierB11110, modifierA111115, modifierA111116, modifierB2, bringIntoViewRequester19, textFieldState, textFieldSelectionManager, z20, z14, lVar2)), composer2, 448);
                    textStyle2 = textStyleA;
                    mutableInteractionSource4 = mutableInteractionSource3;
                    lVar3 = lVar2;
                    brush2 = solidColor;
                    z21 = z12;
                    keyboardActions2 = keyboardActionsA;
                    z22 = z14;
                    qVar2 = qVarA;
                    visualTransformation2 = visualTransformationC;
                    modifier3 = modifier112;
                    i37 = i36;
                    z23 = z16;
                    imeOptions2 = imeOptions111;
                }
                scopeUpdateScopeU = composer2.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new CoreTextFieldKt$CoreTextField$6(value, onValueChange, modifier3, textStyle2, visualTransformation2, lVar3, mutableInteractionSource4, brush2, z21, i37, imeOptions2, keyboardActions2, z23, z22, qVar2, i11, i12, i13));
            }
            i30 |= 384;
            i33 = i13 & 8192;
            if (i33 != 0) {
                if ((i12 & 7168) == 0) {
                    i30 |= composerS.m(z11) ? 2048 : 1024;
                }
                i34 = i13 & 16384;
                if (i34 != 0) {
                    i30 |= CpioConstants.C_ISBLK;
                } else if ((i12 & 57344) == 0) {
                    i30 |= composerS.k(qVar) ? 16384 : 8192;
                }
                if ((i14 & 1533916891) != 306783378) {
                    composerS.J();
                    if ((i11 & 1) != 0) {
                        if (i38 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i15 != 0) {
                            textStyleA = TextStyle.Companion.a();
                        } else {
                            textStyleA = textStyle;
                        }
                        if (i17 != 0) {
                            visualTransformationC = VisualTransformation.Companion.c();
                        } else {
                            visualTransformationC = visualTransformation;
                        }
                        if (i19 != 0) {
                            lVar2 = CoreTextFieldKt$CoreTextField$1.INSTANCE;
                        } else {
                            lVar2 = lVar;
                        }
                        if (i21 != 0) {
                            mutableInteractionSource2 = null;
                        } else {
                            mutableInteractionSource2 = mutableInteractionSource;
                        }
                        if ((i13 & 128) != 0) {
                            solidColor = new SolidColor(Color.Companion.f(), null);
                        } else {
                            solidColor = brush;
                        }
                        if (i23 != 0) {
                            z12 = true;
                        } else {
                            z12 = z6;
                        }
                        if (i25 != 0) {
                            i35 = Integer.MAX_VALUE;
                        } else {
                            i35 = i10;
                        }
                        if ((i13 & 1024) != 0) {
                            imeOptionsA = ImeOptions.Companion.a();
                            i30 &= -15;
                        } else {
                            imeOptionsA = imeOptions;
                        }
                        if (i28 != 0) {
                            keyboardActionsA = KeyboardActions.Companion.a();
                        } else {
                            keyboardActionsA = keyboardActions;
                        }
                        if (i31 != 0) {
                            z13 = true;
                        } else {
                            z13 = z10;
                        }
                        if (i33 != 0) {
                            z14 = false;
                        } else {
                            z14 = z11;
                        }
                        if (i34 != 0) {
                            qVarA = ComposableSingletons$CoreTextFieldKt.INSTANCE.a();
                        } else {
                            qVarA = qVar;
                        }
                        z15 = z13;
                    } else {
                        if (i38 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i15 != 0) {
                            textStyleA = TextStyle.Companion.a();
                        } else {
                            textStyleA = textStyle;
                        }
                        if (i17 != 0) {
                            visualTransformationC = VisualTransformation.Companion.c();
                        } else {
                            visualTransformationC = visualTransformation;
                        }
                        if (i19 != 0) {
                            lVar2 = CoreTextFieldKt$CoreTextField$1.INSTANCE;
                        } else {
                            lVar2 = lVar;
                        }
                        if (i21 != 0) {
                            mutableInteractionSource2 = null;
                        } else {
                            mutableInteractionSource2 = mutableInteractionSource;
                        }
                        if ((i13 & 128) != 0) {
                            solidColor = new SolidColor(Color.Companion.f(), null);
                        } else {
                            solidColor = brush;
                        }
                        if (i23 != 0) {
                            z12 = true;
                        } else {
                            z12 = z6;
                        }
                        if (i25 != 0) {
                            i35 = Integer.MAX_VALUE;
                        } else {
                            i35 = i10;
                        }
                        if ((i13 & 1024) != 0) {
                            imeOptionsA = ImeOptions.Companion.a();
                            i30 &= -15;
                        } else {
                            imeOptionsA = imeOptions;
                        }
                        if (i28 != 0) {
                            keyboardActionsA = KeyboardActions.Companion.a();
                        } else {
                            keyboardActionsA = keyboardActions;
                        }
                        if (i31 != 0) {
                            z13 = true;
                        } else {
                            z13 = z10;
                        }
                        if (i33 != 0) {
                            z14 = false;
                        } else {
                            z14 = z11;
                        }
                        if (i34 != 0) {
                            qVarA = ComposableSingletons$CoreTextFieldKt.INSTANCE.a();
                        } else {
                            qVarA = qVar;
                        }
                        z15 = z13;
                    }
                    composerS.A();
                    focusRequester = new FocusRequester();
                    composerS.G(-55013392);
                    if (z15) {
                        textInputService = null;
                    } else {
                        textInputService = null;
                    }
                    composerS.Q();
                    density = (Density) composerS.x(CompositionLocalsKt.e());
                    resolver = (FontFamily.Resolver) composerS.x(CompositionLocalsKt.g());
                    long jA110 = ((TextSelectionColors) composerS.x(TextSelectionColorsKt.b())).a();
                    FocusManager focusManager110 = (FocusManager) composerS.x(CompositionLocalsKt.f());
                    Modifier modifier113 = modifier2;
                    if (i35 == 1) {
                        orientation = Orientation.Vertical;
                    } else {
                        orientation = Orientation.Vertical;
                    }
                    int i3118 = i30;
                    i36 = i35;
                    orientation2 = orientation;
                    Object[] objArr110 = {orientation2};
                    Saver<TextFieldScrollerPosition, Object> saverA110 = TextFieldScrollerPosition.Companion.a();
                    z16 = z15;
                    composerS.G(1157296644);
                    zK = composerS.k(orientation2);
                    mutableInteractionSource3 = mutableInteractionSource2;
                    objH = composerS.H();
                    if (zK) {
                        objH = new CoreTextFieldKt$CoreTextField$scrollerPosition$1$1(orientation2);
                        composerS.z(objH);
                    } else {
                        objH = new CoreTextFieldKt$CoreTextField$scrollerPosition$1$1(orientation2);
                        composerS.z(objH);
                    }
                    composerS.Q();
                    TextFieldScrollerPosition textFieldScrollerPosition110 = (TextFieldScrollerPosition) RememberSaveableKt.b(objArr110, saverA110, null, (a) objH, composerS, 72, 4);
                    composerS.G(511388516);
                    zK2 = composerS.k(value) | composerS.k(visualTransformationC);
                    objH2 = composerS.H();
                    if (zK2) {
                        transformedTextA = visualTransformationC.a(value.e());
                        textRangeF = value.f();
                        if (textRangeF != null) {
                            objH2 = transformedTextA;
                        } else {
                            objH2 = transformedTextA;
                        }
                        composerS.z(objH2);
                    } else {
                        transformedTextA = visualTransformationC.a(value.e());
                        textRangeF = value.f();
                        if (textRangeF != null) {
                            objH2 = transformedTextA;
                        } else {
                            objH2 = transformedTextA;
                        }
                        composerS.z(objH2);
                    }
                    composerS.Q();
                    TransformedText transformedText110 = (TransformedText) objH2;
                    annotatedStringB = transformedText110.b();
                    offsetMappingA = transformedText110.a();
                    recomposeScopeB = ComposablesKt.b(composerS, 0);
                    composerS.G(-492369756);
                    objH3 = composerS.H();
                    companion = Composer.Companion;
                    if (objH3 == companion.a()) {
                        objH3 = new TextFieldState(new TextDelegate(annotatedStringB, textStyleA, 0, z12, 0, density, resolver, null, TarConstants.CHKSUM_OFFSET, null), recomposeScopeB);
                        composerS.z(objH3);
                    }
                    composerS.Q();
                    textFieldState = (TextFieldState) objH3;
                    textFieldState.A(annotatedStringB, textStyleA, z12, density, resolver, onValueChange, keyboardActionsA, focusManager110, jA110);
                    textFieldState.j().b(value, textFieldState.e());
                    composerS.G(-492369756);
                    objH4 = composerS.H();
                    if (objH4 == companion.a()) {
                        objH4 = new UndoManager(0, 1, null);
                        composerS.z(objH4);
                    }
                    composerS.Q();
                    undoManager = (UndoManager) objH4;
                    UndoManager.f(undoManager, value, 0L, 2, null);
                    composerS.G(-492369756);
                    objH5 = composerS.H();
                    if (objH5 == companion.a()) {
                        objH5 = new TextFieldSelectionManager(undoManager);
                        composerS.z(objH5);
                    }
                    composerS.Q();
                    textFieldSelectionManager = (TextFieldSelectionManager) objH5;
                    textFieldSelectionManager.U(offsetMappingA);
                    textFieldSelectionManager.Z(visualTransformationC);
                    textFieldSelectionManager.V(textFieldState.i());
                    textFieldSelectionManager.W(textFieldState);
                    textFieldSelectionManager.Y(value);
                    textFieldSelectionManager.N((ClipboardManager) composerS.x(CompositionLocalsKt.d()));
                    textFieldSelectionManager.X((TextToolbar) composerS.x(CompositionLocalsKt.m()));
                    textFieldSelectionManager.T((HapticFeedback) composerS.x(CompositionLocalsKt.h()));
                    textFieldSelectionManager.R(focusRequester);
                    textFieldSelectionManager.Q(!z14);
                    composerS.G(773894976);
                    composerS.G(-492369756);
                    objH6 = composerS.H();
                    if (objH6 == companion.a()) {
                        CompositionScopedCoroutineScopeCanceller compositionScopedCoroutineScopeCanceller110 = new CompositionScopedCoroutineScopeCanceller(EffectsKt.j(h.INSTANCE, composerS));
                        composerS.z(compositionScopedCoroutineScopeCanceller110);
                        objH6 = compositionScopedCoroutineScopeCanceller110;
                    }
                    composerS.Q();
                    o0 o0VarA110 = ((CompositionScopedCoroutineScopeCanceller) objH6).a();
                    composerS.Q();
                    composerS.G(-492369756);
                    objH7 = composerS.H();
                    if (objH7 == companion.a()) {
                        objH7 = BringIntoViewRequesterKt.a();
                        composerS.z(objH7);
                    }
                    composerS.Q();
                    BringIntoViewRequester bringIntoViewRequester110 = (BringIntoViewRequester) objH7;
                    companion2 = Modifier.Companion;
                    Modifier modifierC110 = TextFieldGestureModifiersKt.c(companion2, z16, focusRequester, mutableInteractionSource3, new CoreTextFieldKt$CoreTextField$focusModifier$1(textFieldState, textInputService, value, imeOptionsA, textFieldSelectionManager, o0VarA110, bringIntoViewRequester110, offsetMappingA));
                    EffectsKt.a(textFieldState, new CoreTextFieldKt$CoreTextField$2(textFieldState), composerS, 8);
                    if (TouchMode_androidKt.a()) {
                        modifierB = TextFieldPressGestureFilterKt.a(companion2, mutableInteractionSource3, z16, new CoreTextFieldKt$CoreTextField$pointerModifier$1(textFieldState, focusRequester, z14, textFieldSelectionManager, offsetMappingA)).B(TextFieldGestureModifiersKt.a(companion2, textFieldSelectionManager.G(), z16));
                        z17 = false;
                    } else {
                        z17 = false;
                        modifierB = PointerIconKt.b(TextFieldGestureModifiersKt.b(companion2, textFieldSelectionManager.B(), z16), TextPointerIcon_androidKt.a(), false, 2, null);
                    }
                    Modifier modifierA111118 = DrawModifierKt.a(companion2, new CoreTextFieldKt$CoreTextField$drawModifier$1(textFieldState, value, offsetMappingA));
                    Modifier modifierA111119 = OnGloballyPositionedModifierKt.a(companion2, new CoreTextFieldKt$CoreTextField$onPositionedModifier$1(textFieldState, z16, textFieldSelectionManager));
                    Modifier modifierB11111 = SemanticsModifierKt.b(companion2, true, new CoreTextFieldKt$CoreTextField$semanticsModifier$1(imeOptionsA, transformedText110, value, z16, visualTransformationC instanceof PasswordVisualTransformation, z14, textFieldState, offsetMappingA, textFieldSelectionManager, focusRequester));
                    if (z16) {
                        z18 = z17;
                    } else {
                        z18 = z17;
                    }
                    Modifier modifierB11112 = TextFieldCursorKt.b(companion2, textFieldState, value, offsetMappingA, solidColor, z18);
                    EffectsKt.a(textFieldSelectionManager, new CoreTextFieldKt$CoreTextField$3(textFieldSelectionManager), composerS, 8);
                    EffectsKt.a(imeOptionsA, new CoreTextFieldKt$CoreTextField$4(textInputService, textFieldState, value, imeOptionsA), composerS, i3118 & 14);
                    l<TextFieldValue, l0> lVarI110 = textFieldState.i();
                    boolean z2113 = !z14;
                    if (i36 == 1) {
                        z19 = true;
                    } else {
                        z19 = z17;
                    }
                    Modifier modifierA1111110 = OnGloballyPositionedModifierKt.a(TextFieldScrollKt.d(m(modifier113.B(modifierC110), textFieldState, textFieldSelectionManager).B(TextFieldKeyInputKt.a(companion2, textFieldState, textFieldSelectionManager, value, lVarI110, z2113, z19, offsetMappingA, undoManager)), textFieldScrollerPosition110, mutableInteractionSource3, z16).B(modifierB).B(modifierB11111), new CoreTextFieldKt$CoreTextField$decorationBoxModifier$1(textFieldState));
                    if (!z16) {
                        z20 = z17;
                    } else {
                        z20 = z17;
                    }
                    if (z20) {
                        modifierB2 = TextFieldSelectionManager_androidKt.b(companion2, textFieldSelectionManager);
                    } else {
                        modifierB2 = companion2;
                    }
                    ImeOptions imeOptions112 = imeOptionsA;
                    composer2 = composerS;
                    b(modifierA1111110, textFieldSelectionManager, ComposableLambdaKt.b(composer2, -1885146845, true, new CoreTextFieldKt$CoreTextField$5(qVarA, i3118, i36, textStyleA, textFieldScrollerPosition110, value, visualTransformationC, modifierB11112, modifierA111118, modifierA111119, modifierB2, bringIntoViewRequester110, textFieldState, textFieldSelectionManager, z20, z14, lVar2)), composer2, 448);
                    textStyle2 = textStyleA;
                    mutableInteractionSource4 = mutableInteractionSource3;
                    lVar3 = lVar2;
                    brush2 = solidColor;
                    z21 = z12;
                    keyboardActions2 = keyboardActionsA;
                    z22 = z14;
                    qVar2 = qVarA;
                    visualTransformation2 = visualTransformationC;
                    modifier3 = modifier113;
                    i37 = i36;
                    z23 = z16;
                    imeOptions2 = imeOptions112;
                } else {
                    composerS.J();
                    if ((i11 & 1) != 0) {
                        if (i38 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i15 != 0) {
                            textStyleA = TextStyle.Companion.a();
                        } else {
                            textStyleA = textStyle;
                        }
                        if (i17 != 0) {
                            visualTransformationC = VisualTransformation.Companion.c();
                        } else {
                            visualTransformationC = visualTransformation;
                        }
                        if (i19 != 0) {
                            lVar2 = CoreTextFieldKt$CoreTextField$1.INSTANCE;
                        } else {
                            lVar2 = lVar;
                        }
                        if (i21 != 0) {
                            mutableInteractionSource2 = null;
                        } else {
                            mutableInteractionSource2 = mutableInteractionSource;
                        }
                        if ((i13 & 128) != 0) {
                            solidColor = new SolidColor(Color.Companion.f(), null);
                        } else {
                            solidColor = brush;
                        }
                        if (i23 != 0) {
                            z12 = true;
                        } else {
                            z12 = z6;
                        }
                        if (i25 != 0) {
                            i35 = Integer.MAX_VALUE;
                        } else {
                            i35 = i10;
                        }
                        if ((i13 & 1024) != 0) {
                            imeOptionsA = ImeOptions.Companion.a();
                            i30 &= -15;
                        } else {
                            imeOptionsA = imeOptions;
                        }
                        if (i28 != 0) {
                            keyboardActionsA = KeyboardActions.Companion.a();
                        } else {
                            keyboardActionsA = keyboardActions;
                        }
                        if (i31 != 0) {
                            z13 = true;
                        } else {
                            z13 = z10;
                        }
                        if (i33 != 0) {
                            z14 = false;
                        } else {
                            z14 = z11;
                        }
                        if (i34 != 0) {
                            qVarA = ComposableSingletons$CoreTextFieldKt.INSTANCE.a();
                        } else {
                            qVarA = qVar;
                        }
                        z15 = z13;
                    } else {
                        if (i38 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i15 != 0) {
                            textStyleA = TextStyle.Companion.a();
                        } else {
                            textStyleA = textStyle;
                        }
                        if (i17 != 0) {
                            visualTransformationC = VisualTransformation.Companion.c();
                        } else {
                            visualTransformationC = visualTransformation;
                        }
                        if (i19 != 0) {
                            lVar2 = CoreTextFieldKt$CoreTextField$1.INSTANCE;
                        } else {
                            lVar2 = lVar;
                        }
                        if (i21 != 0) {
                            mutableInteractionSource2 = null;
                        } else {
                            mutableInteractionSource2 = mutableInteractionSource;
                        }
                        if ((i13 & 128) != 0) {
                            solidColor = new SolidColor(Color.Companion.f(), null);
                        } else {
                            solidColor = brush;
                        }
                        if (i23 != 0) {
                            z12 = true;
                        } else {
                            z12 = z6;
                        }
                        if (i25 != 0) {
                            i35 = Integer.MAX_VALUE;
                        } else {
                            i35 = i10;
                        }
                        if ((i13 & 1024) != 0) {
                            imeOptionsA = ImeOptions.Companion.a();
                            i30 &= -15;
                        } else {
                            imeOptionsA = imeOptions;
                        }
                        if (i28 != 0) {
                            keyboardActionsA = KeyboardActions.Companion.a();
                        } else {
                            keyboardActionsA = keyboardActions;
                        }
                        if (i31 != 0) {
                            z13 = true;
                        } else {
                            z13 = z10;
                        }
                        if (i33 != 0) {
                            z14 = false;
                        } else {
                            z14 = z11;
                        }
                        if (i34 != 0) {
                            qVarA = ComposableSingletons$CoreTextFieldKt.INSTANCE.a();
                        } else {
                            qVarA = qVar;
                        }
                        z15 = z13;
                    }
                    composerS.A();
                    focusRequester = new FocusRequester();
                    composerS.G(-55013392);
                    if (z15) {
                        textInputService = null;
                    } else {
                        textInputService = null;
                    }
                    composerS.Q();
                    density = (Density) composerS.x(CompositionLocalsKt.e());
                    resolver = (FontFamily.Resolver) composerS.x(CompositionLocalsKt.g());
                    long jA111 = ((TextSelectionColors) composerS.x(TextSelectionColorsKt.b())).a();
                    FocusManager focusManager111 = (FocusManager) composerS.x(CompositionLocalsKt.f());
                    Modifier modifier114 = modifier2;
                    if (i35 == 1) {
                        orientation = Orientation.Vertical;
                    } else {
                        orientation = Orientation.Vertical;
                    }
                    int i3119 = i30;
                    i36 = i35;
                    orientation2 = orientation;
                    Object[] objArr111 = {orientation2};
                    Saver<TextFieldScrollerPosition, Object> saverA111 = TextFieldScrollerPosition.Companion.a();
                    z16 = z15;
                    composerS.G(1157296644);
                    zK = composerS.k(orientation2);
                    mutableInteractionSource3 = mutableInteractionSource2;
                    objH = composerS.H();
                    if (zK) {
                        objH = new CoreTextFieldKt$CoreTextField$scrollerPosition$1$1(orientation2);
                        composerS.z(objH);
                    } else {
                        objH = new CoreTextFieldKt$CoreTextField$scrollerPosition$1$1(orientation2);
                        composerS.z(objH);
                    }
                    composerS.Q();
                    TextFieldScrollerPosition textFieldScrollerPosition111 = (TextFieldScrollerPosition) RememberSaveableKt.b(objArr111, saverA111, null, (a) objH, composerS, 72, 4);
                    composerS.G(511388516);
                    zK2 = composerS.k(value) | composerS.k(visualTransformationC);
                    objH2 = composerS.H();
                    if (zK2) {
                        transformedTextA = visualTransformationC.a(value.e());
                        textRangeF = value.f();
                        if (textRangeF != null) {
                            objH2 = transformedTextA;
                        } else {
                            objH2 = transformedTextA;
                        }
                        composerS.z(objH2);
                    } else {
                        transformedTextA = visualTransformationC.a(value.e());
                        textRangeF = value.f();
                        if (textRangeF != null) {
                            objH2 = transformedTextA;
                        } else {
                            objH2 = transformedTextA;
                        }
                        composerS.z(objH2);
                    }
                    composerS.Q();
                    TransformedText transformedText111 = (TransformedText) objH2;
                    annotatedStringB = transformedText111.b();
                    offsetMappingA = transformedText111.a();
                    recomposeScopeB = ComposablesKt.b(composerS, 0);
                    composerS.G(-492369756);
                    objH3 = composerS.H();
                    companion = Composer.Companion;
                    if (objH3 == companion.a()) {
                        objH3 = new TextFieldState(new TextDelegate(annotatedStringB, textStyleA, 0, z12, 0, density, resolver, null, TarConstants.CHKSUM_OFFSET, null), recomposeScopeB);
                        composerS.z(objH3);
                    }
                    composerS.Q();
                    textFieldState = (TextFieldState) objH3;
                    textFieldState.A(annotatedStringB, textStyleA, z12, density, resolver, onValueChange, keyboardActionsA, focusManager111, jA111);
                    textFieldState.j().b(value, textFieldState.e());
                    composerS.G(-492369756);
                    objH4 = composerS.H();
                    if (objH4 == companion.a()) {
                        objH4 = new UndoManager(0, 1, null);
                        composerS.z(objH4);
                    }
                    composerS.Q();
                    undoManager = (UndoManager) objH4;
                    UndoManager.f(undoManager, value, 0L, 2, null);
                    composerS.G(-492369756);
                    objH5 = composerS.H();
                    if (objH5 == companion.a()) {
                        objH5 = new TextFieldSelectionManager(undoManager);
                        composerS.z(objH5);
                    }
                    composerS.Q();
                    textFieldSelectionManager = (TextFieldSelectionManager) objH5;
                    textFieldSelectionManager.U(offsetMappingA);
                    textFieldSelectionManager.Z(visualTransformationC);
                    textFieldSelectionManager.V(textFieldState.i());
                    textFieldSelectionManager.W(textFieldState);
                    textFieldSelectionManager.Y(value);
                    textFieldSelectionManager.N((ClipboardManager) composerS.x(CompositionLocalsKt.d()));
                    textFieldSelectionManager.X((TextToolbar) composerS.x(CompositionLocalsKt.m()));
                    textFieldSelectionManager.T((HapticFeedback) composerS.x(CompositionLocalsKt.h()));
                    textFieldSelectionManager.R(focusRequester);
                    textFieldSelectionManager.Q(!z14);
                    composerS.G(773894976);
                    composerS.G(-492369756);
                    objH6 = composerS.H();
                    if (objH6 == companion.a()) {
                        CompositionScopedCoroutineScopeCanceller compositionScopedCoroutineScopeCanceller111 = new CompositionScopedCoroutineScopeCanceller(EffectsKt.j(h.INSTANCE, composerS));
                        composerS.z(compositionScopedCoroutineScopeCanceller111);
                        objH6 = compositionScopedCoroutineScopeCanceller111;
                    }
                    composerS.Q();
                    o0 o0VarA111 = ((CompositionScopedCoroutineScopeCanceller) objH6).a();
                    composerS.Q();
                    composerS.G(-492369756);
                    objH7 = composerS.H();
                    if (objH7 == companion.a()) {
                        objH7 = BringIntoViewRequesterKt.a();
                        composerS.z(objH7);
                    }
                    composerS.Q();
                    BringIntoViewRequester bringIntoViewRequester111 = (BringIntoViewRequester) objH7;
                    companion2 = Modifier.Companion;
                    Modifier modifierC111 = TextFieldGestureModifiersKt.c(companion2, z16, focusRequester, mutableInteractionSource3, new CoreTextFieldKt$CoreTextField$focusModifier$1(textFieldState, textInputService, value, imeOptionsA, textFieldSelectionManager, o0VarA111, bringIntoViewRequester111, offsetMappingA));
                    EffectsKt.a(textFieldState, new CoreTextFieldKt$CoreTextField$2(textFieldState), composerS, 8);
                    if (TouchMode_androidKt.a()) {
                        modifierB = TextFieldPressGestureFilterKt.a(companion2, mutableInteractionSource3, z16, new CoreTextFieldKt$CoreTextField$pointerModifier$1(textFieldState, focusRequester, z14, textFieldSelectionManager, offsetMappingA)).B(TextFieldGestureModifiersKt.a(companion2, textFieldSelectionManager.G(), z16));
                        z17 = false;
                    } else {
                        z17 = false;
                        modifierB = PointerIconKt.b(TextFieldGestureModifiersKt.b(companion2, textFieldSelectionManager.B(), z16), TextPointerIcon_androidKt.a(), false, 2, null);
                    }
                    Modifier modifierA1111111 = DrawModifierKt.a(companion2, new CoreTextFieldKt$CoreTextField$drawModifier$1(textFieldState, value, offsetMappingA));
                    Modifier modifierA1111112 = OnGloballyPositionedModifierKt.a(companion2, new CoreTextFieldKt$CoreTextField$onPositionedModifier$1(textFieldState, z16, textFieldSelectionManager));
                    Modifier modifierB11113 = SemanticsModifierKt.b(companion2, true, new CoreTextFieldKt$CoreTextField$semanticsModifier$1(imeOptionsA, transformedText111, value, z16, visualTransformationC instanceof PasswordVisualTransformation, z14, textFieldState, offsetMappingA, textFieldSelectionManager, focusRequester));
                    if (z16) {
                        z18 = z17;
                    } else {
                        z18 = z17;
                    }
                    Modifier modifierB11114 = TextFieldCursorKt.b(companion2, textFieldState, value, offsetMappingA, solidColor, z18);
                    EffectsKt.a(textFieldSelectionManager, new CoreTextFieldKt$CoreTextField$3(textFieldSelectionManager), composerS, 8);
                    EffectsKt.a(imeOptionsA, new CoreTextFieldKt$CoreTextField$4(textInputService, textFieldState, value, imeOptionsA), composerS, i3119 & 14);
                    l<TextFieldValue, l0> lVarI111 = textFieldState.i();
                    boolean z2114 = !z14;
                    if (i36 == 1) {
                        z19 = true;
                    } else {
                        z19 = z17;
                    }
                    Modifier modifierA1111113 = OnGloballyPositionedModifierKt.a(TextFieldScrollKt.d(m(modifier114.B(modifierC111), textFieldState, textFieldSelectionManager).B(TextFieldKeyInputKt.a(companion2, textFieldState, textFieldSelectionManager, value, lVarI111, z2114, z19, offsetMappingA, undoManager)), textFieldScrollerPosition111, mutableInteractionSource3, z16).B(modifierB).B(modifierB11113), new CoreTextFieldKt$CoreTextField$decorationBoxModifier$1(textFieldState));
                    if (!z16) {
                        z20 = z17;
                    } else {
                        z20 = z17;
                    }
                    if (z20) {
                        modifierB2 = TextFieldSelectionManager_androidKt.b(companion2, textFieldSelectionManager);
                    } else {
                        modifierB2 = companion2;
                    }
                    ImeOptions imeOptions113 = imeOptionsA;
                    composer2 = composerS;
                    b(modifierA1111113, textFieldSelectionManager, ComposableLambdaKt.b(composer2, -1885146845, true, new CoreTextFieldKt$CoreTextField$5(qVarA, i3119, i36, textStyleA, textFieldScrollerPosition111, value, visualTransformationC, modifierB11114, modifierA1111111, modifierA1111112, modifierB2, bringIntoViewRequester111, textFieldState, textFieldSelectionManager, z20, z14, lVar2)), composer2, 448);
                    textStyle2 = textStyleA;
                    mutableInteractionSource4 = mutableInteractionSource3;
                    lVar3 = lVar2;
                    brush2 = solidColor;
                    z21 = z12;
                    keyboardActions2 = keyboardActionsA;
                    z22 = z14;
                    qVar2 = qVarA;
                    visualTransformation2 = visualTransformationC;
                    modifier3 = modifier114;
                    i37 = i36;
                    z23 = z16;
                    imeOptions2 = imeOptions113;
                }
                scopeUpdateScopeU = composer2.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new CoreTextFieldKt$CoreTextField$6(value, onValueChange, modifier3, textStyle2, visualTransformation2, lVar3, mutableInteractionSource4, brush2, z21, i37, imeOptions2, keyboardActions2, z23, z22, qVar2, i11, i12, i13));
            }
            i30 |= 3072;
            i34 = i13 & 16384;
            if (i34 != 0) {
                i30 |= CpioConstants.C_ISBLK;
            } else if ((i12 & 57344) == 0) {
                i30 |= composerS.k(qVar) ? 16384 : 8192;
            }
            if ((i14 & 1533916891) != 306783378) {
                composerS.J();
                if ((i11 & 1) != 0) {
                    if (i38 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i15 != 0) {
                        textStyleA = TextStyle.Companion.a();
                    } else {
                        textStyleA = textStyle;
                    }
                    if (i17 != 0) {
                        visualTransformationC = VisualTransformation.Companion.c();
                    } else {
                        visualTransformationC = visualTransformation;
                    }
                    if (i19 != 0) {
                        lVar2 = CoreTextFieldKt$CoreTextField$1.INSTANCE;
                    } else {
                        lVar2 = lVar;
                    }
                    if (i21 != 0) {
                        mutableInteractionSource2 = null;
                    } else {
                        mutableInteractionSource2 = mutableInteractionSource;
                    }
                    if ((i13 & 128) != 0) {
                        solidColor = new SolidColor(Color.Companion.f(), null);
                    } else {
                        solidColor = brush;
                    }
                    if (i23 != 0) {
                        z12 = true;
                    } else {
                        z12 = z6;
                    }
                    if (i25 != 0) {
                        i35 = Integer.MAX_VALUE;
                    } else {
                        i35 = i10;
                    }
                    if ((i13 & 1024) != 0) {
                        imeOptionsA = ImeOptions.Companion.a();
                        i30 &= -15;
                    } else {
                        imeOptionsA = imeOptions;
                    }
                    if (i28 != 0) {
                        keyboardActionsA = KeyboardActions.Companion.a();
                    } else {
                        keyboardActionsA = keyboardActions;
                    }
                    if (i31 != 0) {
                        z13 = true;
                    } else {
                        z13 = z10;
                    }
                    if (i33 != 0) {
                        z14 = false;
                    } else {
                        z14 = z11;
                    }
                    if (i34 != 0) {
                        qVarA = ComposableSingletons$CoreTextFieldKt.INSTANCE.a();
                    } else {
                        qVarA = qVar;
                    }
                    z15 = z13;
                } else {
                    if (i38 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i15 != 0) {
                        textStyleA = TextStyle.Companion.a();
                    } else {
                        textStyleA = textStyle;
                    }
                    if (i17 != 0) {
                        visualTransformationC = VisualTransformation.Companion.c();
                    } else {
                        visualTransformationC = visualTransformation;
                    }
                    if (i19 != 0) {
                        lVar2 = CoreTextFieldKt$CoreTextField$1.INSTANCE;
                    } else {
                        lVar2 = lVar;
                    }
                    if (i21 != 0) {
                        mutableInteractionSource2 = null;
                    } else {
                        mutableInteractionSource2 = mutableInteractionSource;
                    }
                    if ((i13 & 128) != 0) {
                        solidColor = new SolidColor(Color.Companion.f(), null);
                    } else {
                        solidColor = brush;
                    }
                    if (i23 != 0) {
                        z12 = true;
                    } else {
                        z12 = z6;
                    }
                    if (i25 != 0) {
                        i35 = Integer.MAX_VALUE;
                    } else {
                        i35 = i10;
                    }
                    if ((i13 & 1024) != 0) {
                        imeOptionsA = ImeOptions.Companion.a();
                        i30 &= -15;
                    } else {
                        imeOptionsA = imeOptions;
                    }
                    if (i28 != 0) {
                        keyboardActionsA = KeyboardActions.Companion.a();
                    } else {
                        keyboardActionsA = keyboardActions;
                    }
                    if (i31 != 0) {
                        z13 = true;
                    } else {
                        z13 = z10;
                    }
                    if (i33 != 0) {
                        z14 = false;
                    } else {
                        z14 = z11;
                    }
                    if (i34 != 0) {
                        qVarA = ComposableSingletons$CoreTextFieldKt.INSTANCE.a();
                    } else {
                        qVarA = qVar;
                    }
                    z15 = z13;
                }
                composerS.A();
                focusRequester = new FocusRequester();
                composerS.G(-55013392);
                if (z15) {
                    textInputService = null;
                } else {
                    textInputService = null;
                }
                composerS.Q();
                density = (Density) composerS.x(CompositionLocalsKt.e());
                resolver = (FontFamily.Resolver) composerS.x(CompositionLocalsKt.g());
                long jA112 = ((TextSelectionColors) composerS.x(TextSelectionColorsKt.b())).a();
                FocusManager focusManager112 = (FocusManager) composerS.x(CompositionLocalsKt.f());
                Modifier modifier115 = modifier2;
                if (i35 == 1) {
                    orientation = Orientation.Vertical;
                } else {
                    orientation = Orientation.Vertical;
                }
                int i31110 = i30;
                i36 = i35;
                orientation2 = orientation;
                Object[] objArr112 = {orientation2};
                Saver<TextFieldScrollerPosition, Object> saverA112 = TextFieldScrollerPosition.Companion.a();
                z16 = z15;
                composerS.G(1157296644);
                zK = composerS.k(orientation2);
                mutableInteractionSource3 = mutableInteractionSource2;
                objH = composerS.H();
                if (zK) {
                    objH = new CoreTextFieldKt$CoreTextField$scrollerPosition$1$1(orientation2);
                    composerS.z(objH);
                } else {
                    objH = new CoreTextFieldKt$CoreTextField$scrollerPosition$1$1(orientation2);
                    composerS.z(objH);
                }
                composerS.Q();
                TextFieldScrollerPosition textFieldScrollerPosition112 = (TextFieldScrollerPosition) RememberSaveableKt.b(objArr112, saverA112, null, (a) objH, composerS, 72, 4);
                composerS.G(511388516);
                zK2 = composerS.k(value) | composerS.k(visualTransformationC);
                objH2 = composerS.H();
                if (zK2) {
                    transformedTextA = visualTransformationC.a(value.e());
                    textRangeF = value.f();
                    if (textRangeF != null) {
                        objH2 = transformedTextA;
                    } else {
                        objH2 = transformedTextA;
                    }
                    composerS.z(objH2);
                } else {
                    transformedTextA = visualTransformationC.a(value.e());
                    textRangeF = value.f();
                    if (textRangeF != null) {
                        objH2 = transformedTextA;
                    } else {
                        objH2 = transformedTextA;
                    }
                    composerS.z(objH2);
                }
                composerS.Q();
                TransformedText transformedText112 = (TransformedText) objH2;
                annotatedStringB = transformedText112.b();
                offsetMappingA = transformedText112.a();
                recomposeScopeB = ComposablesKt.b(composerS, 0);
                composerS.G(-492369756);
                objH3 = composerS.H();
                companion = Composer.Companion;
                if (objH3 == companion.a()) {
                    objH3 = new TextFieldState(new TextDelegate(annotatedStringB, textStyleA, 0, z12, 0, density, resolver, null, TarConstants.CHKSUM_OFFSET, null), recomposeScopeB);
                    composerS.z(objH3);
                }
                composerS.Q();
                textFieldState = (TextFieldState) objH3;
                textFieldState.A(annotatedStringB, textStyleA, z12, density, resolver, onValueChange, keyboardActionsA, focusManager112, jA112);
                textFieldState.j().b(value, textFieldState.e());
                composerS.G(-492369756);
                objH4 = composerS.H();
                if (objH4 == companion.a()) {
                    objH4 = new UndoManager(0, 1, null);
                    composerS.z(objH4);
                }
                composerS.Q();
                undoManager = (UndoManager) objH4;
                UndoManager.f(undoManager, value, 0L, 2, null);
                composerS.G(-492369756);
                objH5 = composerS.H();
                if (objH5 == companion.a()) {
                    objH5 = new TextFieldSelectionManager(undoManager);
                    composerS.z(objH5);
                }
                composerS.Q();
                textFieldSelectionManager = (TextFieldSelectionManager) objH5;
                textFieldSelectionManager.U(offsetMappingA);
                textFieldSelectionManager.Z(visualTransformationC);
                textFieldSelectionManager.V(textFieldState.i());
                textFieldSelectionManager.W(textFieldState);
                textFieldSelectionManager.Y(value);
                textFieldSelectionManager.N((ClipboardManager) composerS.x(CompositionLocalsKt.d()));
                textFieldSelectionManager.X((TextToolbar) composerS.x(CompositionLocalsKt.m()));
                textFieldSelectionManager.T((HapticFeedback) composerS.x(CompositionLocalsKt.h()));
                textFieldSelectionManager.R(focusRequester);
                textFieldSelectionManager.Q(!z14);
                composerS.G(773894976);
                composerS.G(-492369756);
                objH6 = composerS.H();
                if (objH6 == companion.a()) {
                    CompositionScopedCoroutineScopeCanceller compositionScopedCoroutineScopeCanceller112 = new CompositionScopedCoroutineScopeCanceller(EffectsKt.j(h.INSTANCE, composerS));
                    composerS.z(compositionScopedCoroutineScopeCanceller112);
                    objH6 = compositionScopedCoroutineScopeCanceller112;
                }
                composerS.Q();
                o0 o0VarA112 = ((CompositionScopedCoroutineScopeCanceller) objH6).a();
                composerS.Q();
                composerS.G(-492369756);
                objH7 = composerS.H();
                if (objH7 == companion.a()) {
                    objH7 = BringIntoViewRequesterKt.a();
                    composerS.z(objH7);
                }
                composerS.Q();
                BringIntoViewRequester bringIntoViewRequester112 = (BringIntoViewRequester) objH7;
                companion2 = Modifier.Companion;
                Modifier modifierC112 = TextFieldGestureModifiersKt.c(companion2, z16, focusRequester, mutableInteractionSource3, new CoreTextFieldKt$CoreTextField$focusModifier$1(textFieldState, textInputService, value, imeOptionsA, textFieldSelectionManager, o0VarA112, bringIntoViewRequester112, offsetMappingA));
                EffectsKt.a(textFieldState, new CoreTextFieldKt$CoreTextField$2(textFieldState), composerS, 8);
                if (TouchMode_androidKt.a()) {
                    modifierB = TextFieldPressGestureFilterKt.a(companion2, mutableInteractionSource3, z16, new CoreTextFieldKt$CoreTextField$pointerModifier$1(textFieldState, focusRequester, z14, textFieldSelectionManager, offsetMappingA)).B(TextFieldGestureModifiersKt.a(companion2, textFieldSelectionManager.G(), z16));
                    z17 = false;
                } else {
                    z17 = false;
                    modifierB = PointerIconKt.b(TextFieldGestureModifiersKt.b(companion2, textFieldSelectionManager.B(), z16), TextPointerIcon_androidKt.a(), false, 2, null);
                }
                Modifier modifierA1111114 = DrawModifierKt.a(companion2, new CoreTextFieldKt$CoreTextField$drawModifier$1(textFieldState, value, offsetMappingA));
                Modifier modifierA1111115 = OnGloballyPositionedModifierKt.a(companion2, new CoreTextFieldKt$CoreTextField$onPositionedModifier$1(textFieldState, z16, textFieldSelectionManager));
                Modifier modifierB11115 = SemanticsModifierKt.b(companion2, true, new CoreTextFieldKt$CoreTextField$semanticsModifier$1(imeOptionsA, transformedText112, value, z16, visualTransformationC instanceof PasswordVisualTransformation, z14, textFieldState, offsetMappingA, textFieldSelectionManager, focusRequester));
                if (z16) {
                    z18 = z17;
                } else {
                    z18 = z17;
                }
                Modifier modifierB11116 = TextFieldCursorKt.b(companion2, textFieldState, value, offsetMappingA, solidColor, z18);
                EffectsKt.a(textFieldSelectionManager, new CoreTextFieldKt$CoreTextField$3(textFieldSelectionManager), composerS, 8);
                EffectsKt.a(imeOptionsA, new CoreTextFieldKt$CoreTextField$4(textInputService, textFieldState, value, imeOptionsA), composerS, i31110 & 14);
                l<TextFieldValue, l0> lVarI112 = textFieldState.i();
                boolean z2115 = !z14;
                if (i36 == 1) {
                    z19 = true;
                } else {
                    z19 = z17;
                }
                Modifier modifierA1111116 = OnGloballyPositionedModifierKt.a(TextFieldScrollKt.d(m(modifier115.B(modifierC112), textFieldState, textFieldSelectionManager).B(TextFieldKeyInputKt.a(companion2, textFieldState, textFieldSelectionManager, value, lVarI112, z2115, z19, offsetMappingA, undoManager)), textFieldScrollerPosition112, mutableInteractionSource3, z16).B(modifierB).B(modifierB11115), new CoreTextFieldKt$CoreTextField$decorationBoxModifier$1(textFieldState));
                if (!z16) {
                    z20 = z17;
                } else {
                    z20 = z17;
                }
                if (z20) {
                    modifierB2 = TextFieldSelectionManager_androidKt.b(companion2, textFieldSelectionManager);
                } else {
                    modifierB2 = companion2;
                }
                ImeOptions imeOptions114 = imeOptionsA;
                composer2 = composerS;
                b(modifierA1111116, textFieldSelectionManager, ComposableLambdaKt.b(composer2, -1885146845, true, new CoreTextFieldKt$CoreTextField$5(qVarA, i31110, i36, textStyleA, textFieldScrollerPosition112, value, visualTransformationC, modifierB11116, modifierA1111114, modifierA1111115, modifierB2, bringIntoViewRequester112, textFieldState, textFieldSelectionManager, z20, z14, lVar2)), composer2, 448);
                textStyle2 = textStyleA;
                mutableInteractionSource4 = mutableInteractionSource3;
                lVar3 = lVar2;
                brush2 = solidColor;
                z21 = z12;
                keyboardActions2 = keyboardActionsA;
                z22 = z14;
                qVar2 = qVarA;
                visualTransformation2 = visualTransformationC;
                modifier3 = modifier115;
                i37 = i36;
                z23 = z16;
                imeOptions2 = imeOptions114;
            } else {
                composerS.J();
                if ((i11 & 1) != 0) {
                    if (i38 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i15 != 0) {
                        textStyleA = TextStyle.Companion.a();
                    } else {
                        textStyleA = textStyle;
                    }
                    if (i17 != 0) {
                        visualTransformationC = VisualTransformation.Companion.c();
                    } else {
                        visualTransformationC = visualTransformation;
                    }
                    if (i19 != 0) {
                        lVar2 = CoreTextFieldKt$CoreTextField$1.INSTANCE;
                    } else {
                        lVar2 = lVar;
                    }
                    if (i21 != 0) {
                        mutableInteractionSource2 = null;
                    } else {
                        mutableInteractionSource2 = mutableInteractionSource;
                    }
                    if ((i13 & 128) != 0) {
                        solidColor = new SolidColor(Color.Companion.f(), null);
                    } else {
                        solidColor = brush;
                    }
                    if (i23 != 0) {
                        z12 = true;
                    } else {
                        z12 = z6;
                    }
                    if (i25 != 0) {
                        i35 = Integer.MAX_VALUE;
                    } else {
                        i35 = i10;
                    }
                    if ((i13 & 1024) != 0) {
                        imeOptionsA = ImeOptions.Companion.a();
                        i30 &= -15;
                    } else {
                        imeOptionsA = imeOptions;
                    }
                    if (i28 != 0) {
                        keyboardActionsA = KeyboardActions.Companion.a();
                    } else {
                        keyboardActionsA = keyboardActions;
                    }
                    if (i31 != 0) {
                        z13 = true;
                    } else {
                        z13 = z10;
                    }
                    if (i33 != 0) {
                        z14 = false;
                    } else {
                        z14 = z11;
                    }
                    if (i34 != 0) {
                        qVarA = ComposableSingletons$CoreTextFieldKt.INSTANCE.a();
                    } else {
                        qVarA = qVar;
                    }
                    z15 = z13;
                } else {
                    if (i38 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i15 != 0) {
                        textStyleA = TextStyle.Companion.a();
                    } else {
                        textStyleA = textStyle;
                    }
                    if (i17 != 0) {
                        visualTransformationC = VisualTransformation.Companion.c();
                    } else {
                        visualTransformationC = visualTransformation;
                    }
                    if (i19 != 0) {
                        lVar2 = CoreTextFieldKt$CoreTextField$1.INSTANCE;
                    } else {
                        lVar2 = lVar;
                    }
                    if (i21 != 0) {
                        mutableInteractionSource2 = null;
                    } else {
                        mutableInteractionSource2 = mutableInteractionSource;
                    }
                    if ((i13 & 128) != 0) {
                        solidColor = new SolidColor(Color.Companion.f(), null);
                    } else {
                        solidColor = brush;
                    }
                    if (i23 != 0) {
                        z12 = true;
                    } else {
                        z12 = z6;
                    }
                    if (i25 != 0) {
                        i35 = Integer.MAX_VALUE;
                    } else {
                        i35 = i10;
                    }
                    if ((i13 & 1024) != 0) {
                        imeOptionsA = ImeOptions.Companion.a();
                        i30 &= -15;
                    } else {
                        imeOptionsA = imeOptions;
                    }
                    if (i28 != 0) {
                        keyboardActionsA = KeyboardActions.Companion.a();
                    } else {
                        keyboardActionsA = keyboardActions;
                    }
                    if (i31 != 0) {
                        z13 = true;
                    } else {
                        z13 = z10;
                    }
                    if (i33 != 0) {
                        z14 = false;
                    } else {
                        z14 = z11;
                    }
                    if (i34 != 0) {
                        qVarA = ComposableSingletons$CoreTextFieldKt.INSTANCE.a();
                    } else {
                        qVarA = qVar;
                    }
                    z15 = z13;
                }
                composerS.A();
                focusRequester = new FocusRequester();
                composerS.G(-55013392);
                if (z15) {
                    textInputService = null;
                } else {
                    textInputService = null;
                }
                composerS.Q();
                density = (Density) composerS.x(CompositionLocalsKt.e());
                resolver = (FontFamily.Resolver) composerS.x(CompositionLocalsKt.g());
                long jA113 = ((TextSelectionColors) composerS.x(TextSelectionColorsKt.b())).a();
                FocusManager focusManager113 = (FocusManager) composerS.x(CompositionLocalsKt.f());
                Modifier modifier116 = modifier2;
                if (i35 == 1) {
                    orientation = Orientation.Vertical;
                } else {
                    orientation = Orientation.Vertical;
                }
                int i31111 = i30;
                i36 = i35;
                orientation2 = orientation;
                Object[] objArr113 = {orientation2};
                Saver<TextFieldScrollerPosition, Object> saverA113 = TextFieldScrollerPosition.Companion.a();
                z16 = z15;
                composerS.G(1157296644);
                zK = composerS.k(orientation2);
                mutableInteractionSource3 = mutableInteractionSource2;
                objH = composerS.H();
                if (zK) {
                    objH = new CoreTextFieldKt$CoreTextField$scrollerPosition$1$1(orientation2);
                    composerS.z(objH);
                } else {
                    objH = new CoreTextFieldKt$CoreTextField$scrollerPosition$1$1(orientation2);
                    composerS.z(objH);
                }
                composerS.Q();
                TextFieldScrollerPosition textFieldScrollerPosition113 = (TextFieldScrollerPosition) RememberSaveableKt.b(objArr113, saverA113, null, (a) objH, composerS, 72, 4);
                composerS.G(511388516);
                zK2 = composerS.k(value) | composerS.k(visualTransformationC);
                objH2 = composerS.H();
                if (zK2) {
                    transformedTextA = visualTransformationC.a(value.e());
                    textRangeF = value.f();
                    if (textRangeF != null) {
                        objH2 = transformedTextA;
                    } else {
                        objH2 = transformedTextA;
                    }
                    composerS.z(objH2);
                } else {
                    transformedTextA = visualTransformationC.a(value.e());
                    textRangeF = value.f();
                    if (textRangeF != null) {
                        objH2 = transformedTextA;
                    } else {
                        objH2 = transformedTextA;
                    }
                    composerS.z(objH2);
                }
                composerS.Q();
                TransformedText transformedText113 = (TransformedText) objH2;
                annotatedStringB = transformedText113.b();
                offsetMappingA = transformedText113.a();
                recomposeScopeB = ComposablesKt.b(composerS, 0);
                composerS.G(-492369756);
                objH3 = composerS.H();
                companion = Composer.Companion;
                if (objH3 == companion.a()) {
                    objH3 = new TextFieldState(new TextDelegate(annotatedStringB, textStyleA, 0, z12, 0, density, resolver, null, TarConstants.CHKSUM_OFFSET, null), recomposeScopeB);
                    composerS.z(objH3);
                }
                composerS.Q();
                textFieldState = (TextFieldState) objH3;
                textFieldState.A(annotatedStringB, textStyleA, z12, density, resolver, onValueChange, keyboardActionsA, focusManager113, jA113);
                textFieldState.j().b(value, textFieldState.e());
                composerS.G(-492369756);
                objH4 = composerS.H();
                if (objH4 == companion.a()) {
                    objH4 = new UndoManager(0, 1, null);
                    composerS.z(objH4);
                }
                composerS.Q();
                undoManager = (UndoManager) objH4;
                UndoManager.f(undoManager, value, 0L, 2, null);
                composerS.G(-492369756);
                objH5 = composerS.H();
                if (objH5 == companion.a()) {
                    objH5 = new TextFieldSelectionManager(undoManager);
                    composerS.z(objH5);
                }
                composerS.Q();
                textFieldSelectionManager = (TextFieldSelectionManager) objH5;
                textFieldSelectionManager.U(offsetMappingA);
                textFieldSelectionManager.Z(visualTransformationC);
                textFieldSelectionManager.V(textFieldState.i());
                textFieldSelectionManager.W(textFieldState);
                textFieldSelectionManager.Y(value);
                textFieldSelectionManager.N((ClipboardManager) composerS.x(CompositionLocalsKt.d()));
                textFieldSelectionManager.X((TextToolbar) composerS.x(CompositionLocalsKt.m()));
                textFieldSelectionManager.T((HapticFeedback) composerS.x(CompositionLocalsKt.h()));
                textFieldSelectionManager.R(focusRequester);
                textFieldSelectionManager.Q(!z14);
                composerS.G(773894976);
                composerS.G(-492369756);
                objH6 = composerS.H();
                if (objH6 == companion.a()) {
                    CompositionScopedCoroutineScopeCanceller compositionScopedCoroutineScopeCanceller113 = new CompositionScopedCoroutineScopeCanceller(EffectsKt.j(h.INSTANCE, composerS));
                    composerS.z(compositionScopedCoroutineScopeCanceller113);
                    objH6 = compositionScopedCoroutineScopeCanceller113;
                }
                composerS.Q();
                o0 o0VarA113 = ((CompositionScopedCoroutineScopeCanceller) objH6).a();
                composerS.Q();
                composerS.G(-492369756);
                objH7 = composerS.H();
                if (objH7 == companion.a()) {
                    objH7 = BringIntoViewRequesterKt.a();
                    composerS.z(objH7);
                }
                composerS.Q();
                BringIntoViewRequester bringIntoViewRequester113 = (BringIntoViewRequester) objH7;
                companion2 = Modifier.Companion;
                Modifier modifierC113 = TextFieldGestureModifiersKt.c(companion2, z16, focusRequester, mutableInteractionSource3, new CoreTextFieldKt$CoreTextField$focusModifier$1(textFieldState, textInputService, value, imeOptionsA, textFieldSelectionManager, o0VarA113, bringIntoViewRequester113, offsetMappingA));
                EffectsKt.a(textFieldState, new CoreTextFieldKt$CoreTextField$2(textFieldState), composerS, 8);
                if (TouchMode_androidKt.a()) {
                    modifierB = TextFieldPressGestureFilterKt.a(companion2, mutableInteractionSource3, z16, new CoreTextFieldKt$CoreTextField$pointerModifier$1(textFieldState, focusRequester, z14, textFieldSelectionManager, offsetMappingA)).B(TextFieldGestureModifiersKt.a(companion2, textFieldSelectionManager.G(), z16));
                    z17 = false;
                } else {
                    z17 = false;
                    modifierB = PointerIconKt.b(TextFieldGestureModifiersKt.b(companion2, textFieldSelectionManager.B(), z16), TextPointerIcon_androidKt.a(), false, 2, null);
                }
                Modifier modifierA1111117 = DrawModifierKt.a(companion2, new CoreTextFieldKt$CoreTextField$drawModifier$1(textFieldState, value, offsetMappingA));
                Modifier modifierA1111118 = OnGloballyPositionedModifierKt.a(companion2, new CoreTextFieldKt$CoreTextField$onPositionedModifier$1(textFieldState, z16, textFieldSelectionManager));
                Modifier modifierB11117 = SemanticsModifierKt.b(companion2, true, new CoreTextFieldKt$CoreTextField$semanticsModifier$1(imeOptionsA, transformedText113, value, z16, visualTransformationC instanceof PasswordVisualTransformation, z14, textFieldState, offsetMappingA, textFieldSelectionManager, focusRequester));
                if (z16) {
                    z18 = z17;
                } else {
                    z18 = z17;
                }
                Modifier modifierB11118 = TextFieldCursorKt.b(companion2, textFieldState, value, offsetMappingA, solidColor, z18);
                EffectsKt.a(textFieldSelectionManager, new CoreTextFieldKt$CoreTextField$3(textFieldSelectionManager), composerS, 8);
                EffectsKt.a(imeOptionsA, new CoreTextFieldKt$CoreTextField$4(textInputService, textFieldState, value, imeOptionsA), composerS, i31111 & 14);
                l<TextFieldValue, l0> lVarI113 = textFieldState.i();
                boolean z2116 = !z14;
                if (i36 == 1) {
                    z19 = true;
                } else {
                    z19 = z17;
                }
                Modifier modifierA1111119 = OnGloballyPositionedModifierKt.a(TextFieldScrollKt.d(m(modifier116.B(modifierC113), textFieldState, textFieldSelectionManager).B(TextFieldKeyInputKt.a(companion2, textFieldState, textFieldSelectionManager, value, lVarI113, z2116, z19, offsetMappingA, undoManager)), textFieldScrollerPosition113, mutableInteractionSource3, z16).B(modifierB).B(modifierB11117), new CoreTextFieldKt$CoreTextField$decorationBoxModifier$1(textFieldState));
                if (!z16) {
                    z20 = z17;
                } else {
                    z20 = z17;
                }
                if (z20) {
                    modifierB2 = TextFieldSelectionManager_androidKt.b(companion2, textFieldSelectionManager);
                } else {
                    modifierB2 = companion2;
                }
                ImeOptions imeOptions115 = imeOptionsA;
                composer2 = composerS;
                b(modifierA1111119, textFieldSelectionManager, ComposableLambdaKt.b(composer2, -1885146845, true, new CoreTextFieldKt$CoreTextField$5(qVarA, i31111, i36, textStyleA, textFieldScrollerPosition113, value, visualTransformationC, modifierB11118, modifierA1111117, modifierA1111118, modifierB2, bringIntoViewRequester113, textFieldState, textFieldSelectionManager, z20, z14, lVar2)), composer2, 448);
                textStyle2 = textStyleA;
                mutableInteractionSource4 = mutableInteractionSource3;
                lVar3 = lVar2;
                brush2 = solidColor;
                z21 = z12;
                keyboardActions2 = keyboardActionsA;
                z22 = z14;
                qVar2 = qVarA;
                visualTransformation2 = visualTransformationC;
                modifier3 = modifier116;
                i37 = i36;
                z23 = z16;
                imeOptions2 = imeOptions115;
            }
            scopeUpdateScopeU = composer2.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new CoreTextFieldKt$CoreTextField$6(value, onValueChange, modifier3, textStyle2, visualTransformation2, lVar3, mutableInteractionSource4, brush2, z21, i37, imeOptions2, keyboardActions2, z23, z22, qVar2, i11, i12, i13));
        }
        i14 |= 3072;
        i17 = i13 & 16;
        if (i17 != 0) {
            i14 |= CpioConstants.C_ISBLK;
        } else if ((i11 & 57344) == 0) {
            if (composerS.k(visualTransformation)) {
                i18 = 16384;
            } else {
                i18 = 8192;
            }
            i14 |= i18;
        }
        i19 = i13 & 32;
        if (i19 != 0) {
            i14 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
        } else if ((i11 & 458752) == 0) {
            if (composerS.k(lVar)) {
                i20 = 131072;
            } else {
                i20 = 65536;
            }
            i14 |= i20;
        }
        i21 = i13 & 64;
        if (i21 != 0) {
            i14 |= 1572864;
        } else if ((i11 & 3670016) == 0) {
            if (composerS.k(mutableInteractionSource)) {
                i22 = 1048576;
            } else {
                i22 = 524288;
            }
            i14 |= i22;
        }
        if ((i11 & 29360128) != 0) {
            i14 |= ((i13 & 128) == 0 || !composerS.k(brush)) ? 4194304 : 8388608;
        }
        i23 = i13 & 256;
        if (i23 != 0) {
            i14 |= 100663296;
        } else if ((i11 & 234881024) == 0) {
            if (composerS.m(z6)) {
                i24 = 67108864;
            } else {
                i24 = 33554432;
            }
            i14 |= i24;
        }
        i25 = i13 & 512;
        if (i25 != 0) {
            i14 |= 805306368;
        } else if ((i11 & 1879048192) == 0) {
            if (composerS.p(i10)) {
                i26 = 536870912;
            } else {
                i26 = 268435456;
            }
            i14 |= i26;
        }
        if ((i12 & 14) == 0) {
            i27 = i12 | (((i13 & 1024) == 0 || !composerS.k(imeOptions)) ? 2 : 4);
        } else {
            i27 = i12;
        }
        i28 = i13 & 2048;
        if (i28 != 0) {
            i27 |= 48;
        } else if ((i12 & 112) == 0) {
            if (composerS.k(keyboardActions)) {
                i29 = 32;
            } else {
                i29 = 16;
            }
            i27 |= i29;
        }
        i30 = i27;
        i31 = i13 & 4096;
        if (i31 != 0) {
            if ((i12 & 896) == 0) {
                if (composerS.m(z10)) {
                    i32 = 256;
                } else {
                    i32 = 128;
                }
                i30 |= i32;
            }
            i33 = i13 & 8192;
            if (i33 != 0) {
                if ((i12 & 7168) == 0) {
                    i30 |= composerS.m(z11) ? 2048 : 1024;
                }
                i34 = i13 & 16384;
                if (i34 != 0) {
                    i30 |= CpioConstants.C_ISBLK;
                } else if ((i12 & 57344) == 0) {
                    i30 |= composerS.k(qVar) ? 16384 : 8192;
                }
                if ((i14 & 1533916891) != 306783378) {
                    composerS.J();
                    if ((i11 & 1) != 0) {
                        if (i38 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i15 != 0) {
                            textStyleA = TextStyle.Companion.a();
                        } else {
                            textStyleA = textStyle;
                        }
                        if (i17 != 0) {
                            visualTransformationC = VisualTransformation.Companion.c();
                        } else {
                            visualTransformationC = visualTransformation;
                        }
                        if (i19 != 0) {
                            lVar2 = CoreTextFieldKt$CoreTextField$1.INSTANCE;
                        } else {
                            lVar2 = lVar;
                        }
                        if (i21 != 0) {
                            mutableInteractionSource2 = null;
                        } else {
                            mutableInteractionSource2 = mutableInteractionSource;
                        }
                        if ((i13 & 128) != 0) {
                            solidColor = new SolidColor(Color.Companion.f(), null);
                        } else {
                            solidColor = brush;
                        }
                        if (i23 != 0) {
                            z12 = true;
                        } else {
                            z12 = z6;
                        }
                        if (i25 != 0) {
                            i35 = Integer.MAX_VALUE;
                        } else {
                            i35 = i10;
                        }
                        if ((i13 & 1024) != 0) {
                            imeOptionsA = ImeOptions.Companion.a();
                            i30 &= -15;
                        } else {
                            imeOptionsA = imeOptions;
                        }
                        if (i28 != 0) {
                            keyboardActionsA = KeyboardActions.Companion.a();
                        } else {
                            keyboardActionsA = keyboardActions;
                        }
                        if (i31 != 0) {
                            z13 = true;
                        } else {
                            z13 = z10;
                        }
                        if (i33 != 0) {
                            z14 = false;
                        } else {
                            z14 = z11;
                        }
                        if (i34 != 0) {
                            qVarA = ComposableSingletons$CoreTextFieldKt.INSTANCE.a();
                        } else {
                            qVarA = qVar;
                        }
                        z15 = z13;
                    } else {
                        if (i38 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i15 != 0) {
                            textStyleA = TextStyle.Companion.a();
                        } else {
                            textStyleA = textStyle;
                        }
                        if (i17 != 0) {
                            visualTransformationC = VisualTransformation.Companion.c();
                        } else {
                            visualTransformationC = visualTransformation;
                        }
                        if (i19 != 0) {
                            lVar2 = CoreTextFieldKt$CoreTextField$1.INSTANCE;
                        } else {
                            lVar2 = lVar;
                        }
                        if (i21 != 0) {
                            mutableInteractionSource2 = null;
                        } else {
                            mutableInteractionSource2 = mutableInteractionSource;
                        }
                        if ((i13 & 128) != 0) {
                            solidColor = new SolidColor(Color.Companion.f(), null);
                        } else {
                            solidColor = brush;
                        }
                        if (i23 != 0) {
                            z12 = true;
                        } else {
                            z12 = z6;
                        }
                        if (i25 != 0) {
                            i35 = Integer.MAX_VALUE;
                        } else {
                            i35 = i10;
                        }
                        if ((i13 & 1024) != 0) {
                            imeOptionsA = ImeOptions.Companion.a();
                            i30 &= -15;
                        } else {
                            imeOptionsA = imeOptions;
                        }
                        if (i28 != 0) {
                            keyboardActionsA = KeyboardActions.Companion.a();
                        } else {
                            keyboardActionsA = keyboardActions;
                        }
                        if (i31 != 0) {
                            z13 = true;
                        } else {
                            z13 = z10;
                        }
                        if (i33 != 0) {
                            z14 = false;
                        } else {
                            z14 = z11;
                        }
                        if (i34 != 0) {
                            qVarA = ComposableSingletons$CoreTextFieldKt.INSTANCE.a();
                        } else {
                            qVarA = qVar;
                        }
                        z15 = z13;
                    }
                    composerS.A();
                    focusRequester = new FocusRequester();
                    composerS.G(-55013392);
                    if (z15) {
                        textInputService = null;
                    } else {
                        textInputService = null;
                    }
                    composerS.Q();
                    density = (Density) composerS.x(CompositionLocalsKt.e());
                    resolver = (FontFamily.Resolver) composerS.x(CompositionLocalsKt.g());
                    long jA114 = ((TextSelectionColors) composerS.x(TextSelectionColorsKt.b())).a();
                    FocusManager focusManager114 = (FocusManager) composerS.x(CompositionLocalsKt.f());
                    Modifier modifier117 = modifier2;
                    if (i35 == 1) {
                        orientation = Orientation.Vertical;
                    } else {
                        orientation = Orientation.Vertical;
                    }
                    int i31112 = i30;
                    i36 = i35;
                    orientation2 = orientation;
                    Object[] objArr114 = {orientation2};
                    Saver<TextFieldScrollerPosition, Object> saverA114 = TextFieldScrollerPosition.Companion.a();
                    z16 = z15;
                    composerS.G(1157296644);
                    zK = composerS.k(orientation2);
                    mutableInteractionSource3 = mutableInteractionSource2;
                    objH = composerS.H();
                    if (zK) {
                        objH = new CoreTextFieldKt$CoreTextField$scrollerPosition$1$1(orientation2);
                        composerS.z(objH);
                    } else {
                        objH = new CoreTextFieldKt$CoreTextField$scrollerPosition$1$1(orientation2);
                        composerS.z(objH);
                    }
                    composerS.Q();
                    TextFieldScrollerPosition textFieldScrollerPosition114 = (TextFieldScrollerPosition) RememberSaveableKt.b(objArr114, saverA114, null, (a) objH, composerS, 72, 4);
                    composerS.G(511388516);
                    zK2 = composerS.k(value) | composerS.k(visualTransformationC);
                    objH2 = composerS.H();
                    if (zK2) {
                        transformedTextA = visualTransformationC.a(value.e());
                        textRangeF = value.f();
                        if (textRangeF != null) {
                            objH2 = transformedTextA;
                        } else {
                            objH2 = transformedTextA;
                        }
                        composerS.z(objH2);
                    } else {
                        transformedTextA = visualTransformationC.a(value.e());
                        textRangeF = value.f();
                        if (textRangeF != null) {
                            objH2 = transformedTextA;
                        } else {
                            objH2 = transformedTextA;
                        }
                        composerS.z(objH2);
                    }
                    composerS.Q();
                    TransformedText transformedText114 = (TransformedText) objH2;
                    annotatedStringB = transformedText114.b();
                    offsetMappingA = transformedText114.a();
                    recomposeScopeB = ComposablesKt.b(composerS, 0);
                    composerS.G(-492369756);
                    objH3 = composerS.H();
                    companion = Composer.Companion;
                    if (objH3 == companion.a()) {
                        objH3 = new TextFieldState(new TextDelegate(annotatedStringB, textStyleA, 0, z12, 0, density, resolver, null, TarConstants.CHKSUM_OFFSET, null), recomposeScopeB);
                        composerS.z(objH3);
                    }
                    composerS.Q();
                    textFieldState = (TextFieldState) objH3;
                    textFieldState.A(annotatedStringB, textStyleA, z12, density, resolver, onValueChange, keyboardActionsA, focusManager114, jA114);
                    textFieldState.j().b(value, textFieldState.e());
                    composerS.G(-492369756);
                    objH4 = composerS.H();
                    if (objH4 == companion.a()) {
                        objH4 = new UndoManager(0, 1, null);
                        composerS.z(objH4);
                    }
                    composerS.Q();
                    undoManager = (UndoManager) objH4;
                    UndoManager.f(undoManager, value, 0L, 2, null);
                    composerS.G(-492369756);
                    objH5 = composerS.H();
                    if (objH5 == companion.a()) {
                        objH5 = new TextFieldSelectionManager(undoManager);
                        composerS.z(objH5);
                    }
                    composerS.Q();
                    textFieldSelectionManager = (TextFieldSelectionManager) objH5;
                    textFieldSelectionManager.U(offsetMappingA);
                    textFieldSelectionManager.Z(visualTransformationC);
                    textFieldSelectionManager.V(textFieldState.i());
                    textFieldSelectionManager.W(textFieldState);
                    textFieldSelectionManager.Y(value);
                    textFieldSelectionManager.N((ClipboardManager) composerS.x(CompositionLocalsKt.d()));
                    textFieldSelectionManager.X((TextToolbar) composerS.x(CompositionLocalsKt.m()));
                    textFieldSelectionManager.T((HapticFeedback) composerS.x(CompositionLocalsKt.h()));
                    textFieldSelectionManager.R(focusRequester);
                    textFieldSelectionManager.Q(!z14);
                    composerS.G(773894976);
                    composerS.G(-492369756);
                    objH6 = composerS.H();
                    if (objH6 == companion.a()) {
                        CompositionScopedCoroutineScopeCanceller compositionScopedCoroutineScopeCanceller114 = new CompositionScopedCoroutineScopeCanceller(EffectsKt.j(h.INSTANCE, composerS));
                        composerS.z(compositionScopedCoroutineScopeCanceller114);
                        objH6 = compositionScopedCoroutineScopeCanceller114;
                    }
                    composerS.Q();
                    o0 o0VarA114 = ((CompositionScopedCoroutineScopeCanceller) objH6).a();
                    composerS.Q();
                    composerS.G(-492369756);
                    objH7 = composerS.H();
                    if (objH7 == companion.a()) {
                        objH7 = BringIntoViewRequesterKt.a();
                        composerS.z(objH7);
                    }
                    composerS.Q();
                    BringIntoViewRequester bringIntoViewRequester114 = (BringIntoViewRequester) objH7;
                    companion2 = Modifier.Companion;
                    Modifier modifierC114 = TextFieldGestureModifiersKt.c(companion2, z16, focusRequester, mutableInteractionSource3, new CoreTextFieldKt$CoreTextField$focusModifier$1(textFieldState, textInputService, value, imeOptionsA, textFieldSelectionManager, o0VarA114, bringIntoViewRequester114, offsetMappingA));
                    EffectsKt.a(textFieldState, new CoreTextFieldKt$CoreTextField$2(textFieldState), composerS, 8);
                    if (TouchMode_androidKt.a()) {
                        modifierB = TextFieldPressGestureFilterKt.a(companion2, mutableInteractionSource3, z16, new CoreTextFieldKt$CoreTextField$pointerModifier$1(textFieldState, focusRequester, z14, textFieldSelectionManager, offsetMappingA)).B(TextFieldGestureModifiersKt.a(companion2, textFieldSelectionManager.G(), z16));
                        z17 = false;
                    } else {
                        z17 = false;
                        modifierB = PointerIconKt.b(TextFieldGestureModifiersKt.b(companion2, textFieldSelectionManager.B(), z16), TextPointerIcon_androidKt.a(), false, 2, null);
                    }
                    Modifier modifierA11111110 = DrawModifierKt.a(companion2, new CoreTextFieldKt$CoreTextField$drawModifier$1(textFieldState, value, offsetMappingA));
                    Modifier modifierA11111111 = OnGloballyPositionedModifierKt.a(companion2, new CoreTextFieldKt$CoreTextField$onPositionedModifier$1(textFieldState, z16, textFieldSelectionManager));
                    Modifier modifierB11119 = SemanticsModifierKt.b(companion2, true, new CoreTextFieldKt$CoreTextField$semanticsModifier$1(imeOptionsA, transformedText114, value, z16, visualTransformationC instanceof PasswordVisualTransformation, z14, textFieldState, offsetMappingA, textFieldSelectionManager, focusRequester));
                    if (z16) {
                        z18 = z17;
                    } else {
                        z18 = z17;
                    }
                    Modifier modifierB111110 = TextFieldCursorKt.b(companion2, textFieldState, value, offsetMappingA, solidColor, z18);
                    EffectsKt.a(textFieldSelectionManager, new CoreTextFieldKt$CoreTextField$3(textFieldSelectionManager), composerS, 8);
                    EffectsKt.a(imeOptionsA, new CoreTextFieldKt$CoreTextField$4(textInputService, textFieldState, value, imeOptionsA), composerS, i31112 & 14);
                    l<TextFieldValue, l0> lVarI114 = textFieldState.i();
                    boolean z2117 = !z14;
                    if (i36 == 1) {
                        z19 = true;
                    } else {
                        z19 = z17;
                    }
                    Modifier modifierA11111112 = OnGloballyPositionedModifierKt.a(TextFieldScrollKt.d(m(modifier117.B(modifierC114), textFieldState, textFieldSelectionManager).B(TextFieldKeyInputKt.a(companion2, textFieldState, textFieldSelectionManager, value, lVarI114, z2117, z19, offsetMappingA, undoManager)), textFieldScrollerPosition114, mutableInteractionSource3, z16).B(modifierB).B(modifierB11119), new CoreTextFieldKt$CoreTextField$decorationBoxModifier$1(textFieldState));
                    if (!z16) {
                        z20 = z17;
                    } else {
                        z20 = z17;
                    }
                    if (z20) {
                        modifierB2 = TextFieldSelectionManager_androidKt.b(companion2, textFieldSelectionManager);
                    } else {
                        modifierB2 = companion2;
                    }
                    ImeOptions imeOptions116 = imeOptionsA;
                    composer2 = composerS;
                    b(modifierA11111112, textFieldSelectionManager, ComposableLambdaKt.b(composer2, -1885146845, true, new CoreTextFieldKt$CoreTextField$5(qVarA, i31112, i36, textStyleA, textFieldScrollerPosition114, value, visualTransformationC, modifierB111110, modifierA11111110, modifierA11111111, modifierB2, bringIntoViewRequester114, textFieldState, textFieldSelectionManager, z20, z14, lVar2)), composer2, 448);
                    textStyle2 = textStyleA;
                    mutableInteractionSource4 = mutableInteractionSource3;
                    lVar3 = lVar2;
                    brush2 = solidColor;
                    z21 = z12;
                    keyboardActions2 = keyboardActionsA;
                    z22 = z14;
                    qVar2 = qVarA;
                    visualTransformation2 = visualTransformationC;
                    modifier3 = modifier117;
                    i37 = i36;
                    z23 = z16;
                    imeOptions2 = imeOptions116;
                } else {
                    composerS.J();
                    if ((i11 & 1) != 0) {
                        if (i38 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i15 != 0) {
                            textStyleA = TextStyle.Companion.a();
                        } else {
                            textStyleA = textStyle;
                        }
                        if (i17 != 0) {
                            visualTransformationC = VisualTransformation.Companion.c();
                        } else {
                            visualTransformationC = visualTransformation;
                        }
                        if (i19 != 0) {
                            lVar2 = CoreTextFieldKt$CoreTextField$1.INSTANCE;
                        } else {
                            lVar2 = lVar;
                        }
                        if (i21 != 0) {
                            mutableInteractionSource2 = null;
                        } else {
                            mutableInteractionSource2 = mutableInteractionSource;
                        }
                        if ((i13 & 128) != 0) {
                            solidColor = new SolidColor(Color.Companion.f(), null);
                        } else {
                            solidColor = brush;
                        }
                        if (i23 != 0) {
                            z12 = true;
                        } else {
                            z12 = z6;
                        }
                        if (i25 != 0) {
                            i35 = Integer.MAX_VALUE;
                        } else {
                            i35 = i10;
                        }
                        if ((i13 & 1024) != 0) {
                            imeOptionsA = ImeOptions.Companion.a();
                            i30 &= -15;
                        } else {
                            imeOptionsA = imeOptions;
                        }
                        if (i28 != 0) {
                            keyboardActionsA = KeyboardActions.Companion.a();
                        } else {
                            keyboardActionsA = keyboardActions;
                        }
                        if (i31 != 0) {
                            z13 = true;
                        } else {
                            z13 = z10;
                        }
                        if (i33 != 0) {
                            z14 = false;
                        } else {
                            z14 = z11;
                        }
                        if (i34 != 0) {
                            qVarA = ComposableSingletons$CoreTextFieldKt.INSTANCE.a();
                        } else {
                            qVarA = qVar;
                        }
                        z15 = z13;
                    } else {
                        if (i38 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i15 != 0) {
                            textStyleA = TextStyle.Companion.a();
                        } else {
                            textStyleA = textStyle;
                        }
                        if (i17 != 0) {
                            visualTransformationC = VisualTransformation.Companion.c();
                        } else {
                            visualTransformationC = visualTransformation;
                        }
                        if (i19 != 0) {
                            lVar2 = CoreTextFieldKt$CoreTextField$1.INSTANCE;
                        } else {
                            lVar2 = lVar;
                        }
                        if (i21 != 0) {
                            mutableInteractionSource2 = null;
                        } else {
                            mutableInteractionSource2 = mutableInteractionSource;
                        }
                        if ((i13 & 128) != 0) {
                            solidColor = new SolidColor(Color.Companion.f(), null);
                        } else {
                            solidColor = brush;
                        }
                        if (i23 != 0) {
                            z12 = true;
                        } else {
                            z12 = z6;
                        }
                        if (i25 != 0) {
                            i35 = Integer.MAX_VALUE;
                        } else {
                            i35 = i10;
                        }
                        if ((i13 & 1024) != 0) {
                            imeOptionsA = ImeOptions.Companion.a();
                            i30 &= -15;
                        } else {
                            imeOptionsA = imeOptions;
                        }
                        if (i28 != 0) {
                            keyboardActionsA = KeyboardActions.Companion.a();
                        } else {
                            keyboardActionsA = keyboardActions;
                        }
                        if (i31 != 0) {
                            z13 = true;
                        } else {
                            z13 = z10;
                        }
                        if (i33 != 0) {
                            z14 = false;
                        } else {
                            z14 = z11;
                        }
                        if (i34 != 0) {
                            qVarA = ComposableSingletons$CoreTextFieldKt.INSTANCE.a();
                        } else {
                            qVarA = qVar;
                        }
                        z15 = z13;
                    }
                    composerS.A();
                    focusRequester = new FocusRequester();
                    composerS.G(-55013392);
                    if (z15) {
                        textInputService = null;
                    } else {
                        textInputService = null;
                    }
                    composerS.Q();
                    density = (Density) composerS.x(CompositionLocalsKt.e());
                    resolver = (FontFamily.Resolver) composerS.x(CompositionLocalsKt.g());
                    long jA115 = ((TextSelectionColors) composerS.x(TextSelectionColorsKt.b())).a();
                    FocusManager focusManager115 = (FocusManager) composerS.x(CompositionLocalsKt.f());
                    Modifier modifier118 = modifier2;
                    if (i35 == 1) {
                        orientation = Orientation.Vertical;
                    } else {
                        orientation = Orientation.Vertical;
                    }
                    int i31113 = i30;
                    i36 = i35;
                    orientation2 = orientation;
                    Object[] objArr115 = {orientation2};
                    Saver<TextFieldScrollerPosition, Object> saverA115 = TextFieldScrollerPosition.Companion.a();
                    z16 = z15;
                    composerS.G(1157296644);
                    zK = composerS.k(orientation2);
                    mutableInteractionSource3 = mutableInteractionSource2;
                    objH = composerS.H();
                    if (zK) {
                        objH = new CoreTextFieldKt$CoreTextField$scrollerPosition$1$1(orientation2);
                        composerS.z(objH);
                    } else {
                        objH = new CoreTextFieldKt$CoreTextField$scrollerPosition$1$1(orientation2);
                        composerS.z(objH);
                    }
                    composerS.Q();
                    TextFieldScrollerPosition textFieldScrollerPosition115 = (TextFieldScrollerPosition) RememberSaveableKt.b(objArr115, saverA115, null, (a) objH, composerS, 72, 4);
                    composerS.G(511388516);
                    zK2 = composerS.k(value) | composerS.k(visualTransformationC);
                    objH2 = composerS.H();
                    if (zK2) {
                        transformedTextA = visualTransformationC.a(value.e());
                        textRangeF = value.f();
                        if (textRangeF != null) {
                            objH2 = transformedTextA;
                        } else {
                            objH2 = transformedTextA;
                        }
                        composerS.z(objH2);
                    } else {
                        transformedTextA = visualTransformationC.a(value.e());
                        textRangeF = value.f();
                        if (textRangeF != null) {
                            objH2 = transformedTextA;
                        } else {
                            objH2 = transformedTextA;
                        }
                        composerS.z(objH2);
                    }
                    composerS.Q();
                    TransformedText transformedText115 = (TransformedText) objH2;
                    annotatedStringB = transformedText115.b();
                    offsetMappingA = transformedText115.a();
                    recomposeScopeB = ComposablesKt.b(composerS, 0);
                    composerS.G(-492369756);
                    objH3 = composerS.H();
                    companion = Composer.Companion;
                    if (objH3 == companion.a()) {
                        objH3 = new TextFieldState(new TextDelegate(annotatedStringB, textStyleA, 0, z12, 0, density, resolver, null, TarConstants.CHKSUM_OFFSET, null), recomposeScopeB);
                        composerS.z(objH3);
                    }
                    composerS.Q();
                    textFieldState = (TextFieldState) objH3;
                    textFieldState.A(annotatedStringB, textStyleA, z12, density, resolver, onValueChange, keyboardActionsA, focusManager115, jA115);
                    textFieldState.j().b(value, textFieldState.e());
                    composerS.G(-492369756);
                    objH4 = composerS.H();
                    if (objH4 == companion.a()) {
                        objH4 = new UndoManager(0, 1, null);
                        composerS.z(objH4);
                    }
                    composerS.Q();
                    undoManager = (UndoManager) objH4;
                    UndoManager.f(undoManager, value, 0L, 2, null);
                    composerS.G(-492369756);
                    objH5 = composerS.H();
                    if (objH5 == companion.a()) {
                        objH5 = new TextFieldSelectionManager(undoManager);
                        composerS.z(objH5);
                    }
                    composerS.Q();
                    textFieldSelectionManager = (TextFieldSelectionManager) objH5;
                    textFieldSelectionManager.U(offsetMappingA);
                    textFieldSelectionManager.Z(visualTransformationC);
                    textFieldSelectionManager.V(textFieldState.i());
                    textFieldSelectionManager.W(textFieldState);
                    textFieldSelectionManager.Y(value);
                    textFieldSelectionManager.N((ClipboardManager) composerS.x(CompositionLocalsKt.d()));
                    textFieldSelectionManager.X((TextToolbar) composerS.x(CompositionLocalsKt.m()));
                    textFieldSelectionManager.T((HapticFeedback) composerS.x(CompositionLocalsKt.h()));
                    textFieldSelectionManager.R(focusRequester);
                    textFieldSelectionManager.Q(!z14);
                    composerS.G(773894976);
                    composerS.G(-492369756);
                    objH6 = composerS.H();
                    if (objH6 == companion.a()) {
                        CompositionScopedCoroutineScopeCanceller compositionScopedCoroutineScopeCanceller115 = new CompositionScopedCoroutineScopeCanceller(EffectsKt.j(h.INSTANCE, composerS));
                        composerS.z(compositionScopedCoroutineScopeCanceller115);
                        objH6 = compositionScopedCoroutineScopeCanceller115;
                    }
                    composerS.Q();
                    o0 o0VarA115 = ((CompositionScopedCoroutineScopeCanceller) objH6).a();
                    composerS.Q();
                    composerS.G(-492369756);
                    objH7 = composerS.H();
                    if (objH7 == companion.a()) {
                        objH7 = BringIntoViewRequesterKt.a();
                        composerS.z(objH7);
                    }
                    composerS.Q();
                    BringIntoViewRequester bringIntoViewRequester115 = (BringIntoViewRequester) objH7;
                    companion2 = Modifier.Companion;
                    Modifier modifierC115 = TextFieldGestureModifiersKt.c(companion2, z16, focusRequester, mutableInteractionSource3, new CoreTextFieldKt$CoreTextField$focusModifier$1(textFieldState, textInputService, value, imeOptionsA, textFieldSelectionManager, o0VarA115, bringIntoViewRequester115, offsetMappingA));
                    EffectsKt.a(textFieldState, new CoreTextFieldKt$CoreTextField$2(textFieldState), composerS, 8);
                    if (TouchMode_androidKt.a()) {
                        modifierB = TextFieldPressGestureFilterKt.a(companion2, mutableInteractionSource3, z16, new CoreTextFieldKt$CoreTextField$pointerModifier$1(textFieldState, focusRequester, z14, textFieldSelectionManager, offsetMappingA)).B(TextFieldGestureModifiersKt.a(companion2, textFieldSelectionManager.G(), z16));
                        z17 = false;
                    } else {
                        z17 = false;
                        modifierB = PointerIconKt.b(TextFieldGestureModifiersKt.b(companion2, textFieldSelectionManager.B(), z16), TextPointerIcon_androidKt.a(), false, 2, null);
                    }
                    Modifier modifierA11111113 = DrawModifierKt.a(companion2, new CoreTextFieldKt$CoreTextField$drawModifier$1(textFieldState, value, offsetMappingA));
                    Modifier modifierA11111114 = OnGloballyPositionedModifierKt.a(companion2, new CoreTextFieldKt$CoreTextField$onPositionedModifier$1(textFieldState, z16, textFieldSelectionManager));
                    Modifier modifierB111111 = SemanticsModifierKt.b(companion2, true, new CoreTextFieldKt$CoreTextField$semanticsModifier$1(imeOptionsA, transformedText115, value, z16, visualTransformationC instanceof PasswordVisualTransformation, z14, textFieldState, offsetMappingA, textFieldSelectionManager, focusRequester));
                    if (z16) {
                        z18 = z17;
                    } else {
                        z18 = z17;
                    }
                    Modifier modifierB111112 = TextFieldCursorKt.b(companion2, textFieldState, value, offsetMappingA, solidColor, z18);
                    EffectsKt.a(textFieldSelectionManager, new CoreTextFieldKt$CoreTextField$3(textFieldSelectionManager), composerS, 8);
                    EffectsKt.a(imeOptionsA, new CoreTextFieldKt$CoreTextField$4(textInputService, textFieldState, value, imeOptionsA), composerS, i31113 & 14);
                    l<TextFieldValue, l0> lVarI115 = textFieldState.i();
                    boolean z2118 = !z14;
                    if (i36 == 1) {
                        z19 = true;
                    } else {
                        z19 = z17;
                    }
                    Modifier modifierA11111115 = OnGloballyPositionedModifierKt.a(TextFieldScrollKt.d(m(modifier118.B(modifierC115), textFieldState, textFieldSelectionManager).B(TextFieldKeyInputKt.a(companion2, textFieldState, textFieldSelectionManager, value, lVarI115, z2118, z19, offsetMappingA, undoManager)), textFieldScrollerPosition115, mutableInteractionSource3, z16).B(modifierB).B(modifierB111111), new CoreTextFieldKt$CoreTextField$decorationBoxModifier$1(textFieldState));
                    if (!z16) {
                        z20 = z17;
                    } else {
                        z20 = z17;
                    }
                    if (z20) {
                        modifierB2 = TextFieldSelectionManager_androidKt.b(companion2, textFieldSelectionManager);
                    } else {
                        modifierB2 = companion2;
                    }
                    ImeOptions imeOptions117 = imeOptionsA;
                    composer2 = composerS;
                    b(modifierA11111115, textFieldSelectionManager, ComposableLambdaKt.b(composer2, -1885146845, true, new CoreTextFieldKt$CoreTextField$5(qVarA, i31113, i36, textStyleA, textFieldScrollerPosition115, value, visualTransformationC, modifierB111112, modifierA11111113, modifierA11111114, modifierB2, bringIntoViewRequester115, textFieldState, textFieldSelectionManager, z20, z14, lVar2)), composer2, 448);
                    textStyle2 = textStyleA;
                    mutableInteractionSource4 = mutableInteractionSource3;
                    lVar3 = lVar2;
                    brush2 = solidColor;
                    z21 = z12;
                    keyboardActions2 = keyboardActionsA;
                    z22 = z14;
                    qVar2 = qVarA;
                    visualTransformation2 = visualTransformationC;
                    modifier3 = modifier118;
                    i37 = i36;
                    z23 = z16;
                    imeOptions2 = imeOptions117;
                }
                scopeUpdateScopeU = composer2.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new CoreTextFieldKt$CoreTextField$6(value, onValueChange, modifier3, textStyle2, visualTransformation2, lVar3, mutableInteractionSource4, brush2, z21, i37, imeOptions2, keyboardActions2, z23, z22, qVar2, i11, i12, i13));
            }
            i30 |= 3072;
            i34 = i13 & 16384;
            if (i34 != 0) {
                i30 |= CpioConstants.C_ISBLK;
            } else if ((i12 & 57344) == 0) {
                i30 |= composerS.k(qVar) ? 16384 : 8192;
            }
            if ((i14 & 1533916891) != 306783378) {
                composerS.J();
                if ((i11 & 1) != 0) {
                    if (i38 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i15 != 0) {
                        textStyleA = TextStyle.Companion.a();
                    } else {
                        textStyleA = textStyle;
                    }
                    if (i17 != 0) {
                        visualTransformationC = VisualTransformation.Companion.c();
                    } else {
                        visualTransformationC = visualTransformation;
                    }
                    if (i19 != 0) {
                        lVar2 = CoreTextFieldKt$CoreTextField$1.INSTANCE;
                    } else {
                        lVar2 = lVar;
                    }
                    if (i21 != 0) {
                        mutableInteractionSource2 = null;
                    } else {
                        mutableInteractionSource2 = mutableInteractionSource;
                    }
                    if ((i13 & 128) != 0) {
                        solidColor = new SolidColor(Color.Companion.f(), null);
                    } else {
                        solidColor = brush;
                    }
                    if (i23 != 0) {
                        z12 = true;
                    } else {
                        z12 = z6;
                    }
                    if (i25 != 0) {
                        i35 = Integer.MAX_VALUE;
                    } else {
                        i35 = i10;
                    }
                    if ((i13 & 1024) != 0) {
                        imeOptionsA = ImeOptions.Companion.a();
                        i30 &= -15;
                    } else {
                        imeOptionsA = imeOptions;
                    }
                    if (i28 != 0) {
                        keyboardActionsA = KeyboardActions.Companion.a();
                    } else {
                        keyboardActionsA = keyboardActions;
                    }
                    if (i31 != 0) {
                        z13 = true;
                    } else {
                        z13 = z10;
                    }
                    if (i33 != 0) {
                        z14 = false;
                    } else {
                        z14 = z11;
                    }
                    if (i34 != 0) {
                        qVarA = ComposableSingletons$CoreTextFieldKt.INSTANCE.a();
                    } else {
                        qVarA = qVar;
                    }
                    z15 = z13;
                } else {
                    if (i38 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i15 != 0) {
                        textStyleA = TextStyle.Companion.a();
                    } else {
                        textStyleA = textStyle;
                    }
                    if (i17 != 0) {
                        visualTransformationC = VisualTransformation.Companion.c();
                    } else {
                        visualTransformationC = visualTransformation;
                    }
                    if (i19 != 0) {
                        lVar2 = CoreTextFieldKt$CoreTextField$1.INSTANCE;
                    } else {
                        lVar2 = lVar;
                    }
                    if (i21 != 0) {
                        mutableInteractionSource2 = null;
                    } else {
                        mutableInteractionSource2 = mutableInteractionSource;
                    }
                    if ((i13 & 128) != 0) {
                        solidColor = new SolidColor(Color.Companion.f(), null);
                    } else {
                        solidColor = brush;
                    }
                    if (i23 != 0) {
                        z12 = true;
                    } else {
                        z12 = z6;
                    }
                    if (i25 != 0) {
                        i35 = Integer.MAX_VALUE;
                    } else {
                        i35 = i10;
                    }
                    if ((i13 & 1024) != 0) {
                        imeOptionsA = ImeOptions.Companion.a();
                        i30 &= -15;
                    } else {
                        imeOptionsA = imeOptions;
                    }
                    if (i28 != 0) {
                        keyboardActionsA = KeyboardActions.Companion.a();
                    } else {
                        keyboardActionsA = keyboardActions;
                    }
                    if (i31 != 0) {
                        z13 = true;
                    } else {
                        z13 = z10;
                    }
                    if (i33 != 0) {
                        z14 = false;
                    } else {
                        z14 = z11;
                    }
                    if (i34 != 0) {
                        qVarA = ComposableSingletons$CoreTextFieldKt.INSTANCE.a();
                    } else {
                        qVarA = qVar;
                    }
                    z15 = z13;
                }
                composerS.A();
                focusRequester = new FocusRequester();
                composerS.G(-55013392);
                if (z15) {
                    textInputService = null;
                } else {
                    textInputService = null;
                }
                composerS.Q();
                density = (Density) composerS.x(CompositionLocalsKt.e());
                resolver = (FontFamily.Resolver) composerS.x(CompositionLocalsKt.g());
                long jA116 = ((TextSelectionColors) composerS.x(TextSelectionColorsKt.b())).a();
                FocusManager focusManager116 = (FocusManager) composerS.x(CompositionLocalsKt.f());
                Modifier modifier119 = modifier2;
                if (i35 == 1) {
                    orientation = Orientation.Vertical;
                } else {
                    orientation = Orientation.Vertical;
                }
                int i31114 = i30;
                i36 = i35;
                orientation2 = orientation;
                Object[] objArr116 = {orientation2};
                Saver<TextFieldScrollerPosition, Object> saverA116 = TextFieldScrollerPosition.Companion.a();
                z16 = z15;
                composerS.G(1157296644);
                zK = composerS.k(orientation2);
                mutableInteractionSource3 = mutableInteractionSource2;
                objH = composerS.H();
                if (zK) {
                    objH = new CoreTextFieldKt$CoreTextField$scrollerPosition$1$1(orientation2);
                    composerS.z(objH);
                } else {
                    objH = new CoreTextFieldKt$CoreTextField$scrollerPosition$1$1(orientation2);
                    composerS.z(objH);
                }
                composerS.Q();
                TextFieldScrollerPosition textFieldScrollerPosition116 = (TextFieldScrollerPosition) RememberSaveableKt.b(objArr116, saverA116, null, (a) objH, composerS, 72, 4);
                composerS.G(511388516);
                zK2 = composerS.k(value) | composerS.k(visualTransformationC);
                objH2 = composerS.H();
                if (zK2) {
                    transformedTextA = visualTransformationC.a(value.e());
                    textRangeF = value.f();
                    if (textRangeF != null) {
                        objH2 = transformedTextA;
                    } else {
                        objH2 = transformedTextA;
                    }
                    composerS.z(objH2);
                } else {
                    transformedTextA = visualTransformationC.a(value.e());
                    textRangeF = value.f();
                    if (textRangeF != null) {
                        objH2 = transformedTextA;
                    } else {
                        objH2 = transformedTextA;
                    }
                    composerS.z(objH2);
                }
                composerS.Q();
                TransformedText transformedText116 = (TransformedText) objH2;
                annotatedStringB = transformedText116.b();
                offsetMappingA = transformedText116.a();
                recomposeScopeB = ComposablesKt.b(composerS, 0);
                composerS.G(-492369756);
                objH3 = composerS.H();
                companion = Composer.Companion;
                if (objH3 == companion.a()) {
                    objH3 = new TextFieldState(new TextDelegate(annotatedStringB, textStyleA, 0, z12, 0, density, resolver, null, TarConstants.CHKSUM_OFFSET, null), recomposeScopeB);
                    composerS.z(objH3);
                }
                composerS.Q();
                textFieldState = (TextFieldState) objH3;
                textFieldState.A(annotatedStringB, textStyleA, z12, density, resolver, onValueChange, keyboardActionsA, focusManager116, jA116);
                textFieldState.j().b(value, textFieldState.e());
                composerS.G(-492369756);
                objH4 = composerS.H();
                if (objH4 == companion.a()) {
                    objH4 = new UndoManager(0, 1, null);
                    composerS.z(objH4);
                }
                composerS.Q();
                undoManager = (UndoManager) objH4;
                UndoManager.f(undoManager, value, 0L, 2, null);
                composerS.G(-492369756);
                objH5 = composerS.H();
                if (objH5 == companion.a()) {
                    objH5 = new TextFieldSelectionManager(undoManager);
                    composerS.z(objH5);
                }
                composerS.Q();
                textFieldSelectionManager = (TextFieldSelectionManager) objH5;
                textFieldSelectionManager.U(offsetMappingA);
                textFieldSelectionManager.Z(visualTransformationC);
                textFieldSelectionManager.V(textFieldState.i());
                textFieldSelectionManager.W(textFieldState);
                textFieldSelectionManager.Y(value);
                textFieldSelectionManager.N((ClipboardManager) composerS.x(CompositionLocalsKt.d()));
                textFieldSelectionManager.X((TextToolbar) composerS.x(CompositionLocalsKt.m()));
                textFieldSelectionManager.T((HapticFeedback) composerS.x(CompositionLocalsKt.h()));
                textFieldSelectionManager.R(focusRequester);
                textFieldSelectionManager.Q(!z14);
                composerS.G(773894976);
                composerS.G(-492369756);
                objH6 = composerS.H();
                if (objH6 == companion.a()) {
                    CompositionScopedCoroutineScopeCanceller compositionScopedCoroutineScopeCanceller116 = new CompositionScopedCoroutineScopeCanceller(EffectsKt.j(h.INSTANCE, composerS));
                    composerS.z(compositionScopedCoroutineScopeCanceller116);
                    objH6 = compositionScopedCoroutineScopeCanceller116;
                }
                composerS.Q();
                o0 o0VarA116 = ((CompositionScopedCoroutineScopeCanceller) objH6).a();
                composerS.Q();
                composerS.G(-492369756);
                objH7 = composerS.H();
                if (objH7 == companion.a()) {
                    objH7 = BringIntoViewRequesterKt.a();
                    composerS.z(objH7);
                }
                composerS.Q();
                BringIntoViewRequester bringIntoViewRequester116 = (BringIntoViewRequester) objH7;
                companion2 = Modifier.Companion;
                Modifier modifierC116 = TextFieldGestureModifiersKt.c(companion2, z16, focusRequester, mutableInteractionSource3, new CoreTextFieldKt$CoreTextField$focusModifier$1(textFieldState, textInputService, value, imeOptionsA, textFieldSelectionManager, o0VarA116, bringIntoViewRequester116, offsetMappingA));
                EffectsKt.a(textFieldState, new CoreTextFieldKt$CoreTextField$2(textFieldState), composerS, 8);
                if (TouchMode_androidKt.a()) {
                    modifierB = TextFieldPressGestureFilterKt.a(companion2, mutableInteractionSource3, z16, new CoreTextFieldKt$CoreTextField$pointerModifier$1(textFieldState, focusRequester, z14, textFieldSelectionManager, offsetMappingA)).B(TextFieldGestureModifiersKt.a(companion2, textFieldSelectionManager.G(), z16));
                    z17 = false;
                } else {
                    z17 = false;
                    modifierB = PointerIconKt.b(TextFieldGestureModifiersKt.b(companion2, textFieldSelectionManager.B(), z16), TextPointerIcon_androidKt.a(), false, 2, null);
                }
                Modifier modifierA11111116 = DrawModifierKt.a(companion2, new CoreTextFieldKt$CoreTextField$drawModifier$1(textFieldState, value, offsetMappingA));
                Modifier modifierA11111117 = OnGloballyPositionedModifierKt.a(companion2, new CoreTextFieldKt$CoreTextField$onPositionedModifier$1(textFieldState, z16, textFieldSelectionManager));
                Modifier modifierB111113 = SemanticsModifierKt.b(companion2, true, new CoreTextFieldKt$CoreTextField$semanticsModifier$1(imeOptionsA, transformedText116, value, z16, visualTransformationC instanceof PasswordVisualTransformation, z14, textFieldState, offsetMappingA, textFieldSelectionManager, focusRequester));
                if (z16) {
                    z18 = z17;
                } else {
                    z18 = z17;
                }
                Modifier modifierB111114 = TextFieldCursorKt.b(companion2, textFieldState, value, offsetMappingA, solidColor, z18);
                EffectsKt.a(textFieldSelectionManager, new CoreTextFieldKt$CoreTextField$3(textFieldSelectionManager), composerS, 8);
                EffectsKt.a(imeOptionsA, new CoreTextFieldKt$CoreTextField$4(textInputService, textFieldState, value, imeOptionsA), composerS, i31114 & 14);
                l<TextFieldValue, l0> lVarI116 = textFieldState.i();
                boolean z2119 = !z14;
                if (i36 == 1) {
                    z19 = true;
                } else {
                    z19 = z17;
                }
                Modifier modifierA11111118 = OnGloballyPositionedModifierKt.a(TextFieldScrollKt.d(m(modifier119.B(modifierC116), textFieldState, textFieldSelectionManager).B(TextFieldKeyInputKt.a(companion2, textFieldState, textFieldSelectionManager, value, lVarI116, z2119, z19, offsetMappingA, undoManager)), textFieldScrollerPosition116, mutableInteractionSource3, z16).B(modifierB).B(modifierB111113), new CoreTextFieldKt$CoreTextField$decorationBoxModifier$1(textFieldState));
                if (!z16) {
                    z20 = z17;
                } else {
                    z20 = z17;
                }
                if (z20) {
                    modifierB2 = TextFieldSelectionManager_androidKt.b(companion2, textFieldSelectionManager);
                } else {
                    modifierB2 = companion2;
                }
                ImeOptions imeOptions118 = imeOptionsA;
                composer2 = composerS;
                b(modifierA11111118, textFieldSelectionManager, ComposableLambdaKt.b(composer2, -1885146845, true, new CoreTextFieldKt$CoreTextField$5(qVarA, i31114, i36, textStyleA, textFieldScrollerPosition116, value, visualTransformationC, modifierB111114, modifierA11111116, modifierA11111117, modifierB2, bringIntoViewRequester116, textFieldState, textFieldSelectionManager, z20, z14, lVar2)), composer2, 448);
                textStyle2 = textStyleA;
                mutableInteractionSource4 = mutableInteractionSource3;
                lVar3 = lVar2;
                brush2 = solidColor;
                z21 = z12;
                keyboardActions2 = keyboardActionsA;
                z22 = z14;
                qVar2 = qVarA;
                visualTransformation2 = visualTransformationC;
                modifier3 = modifier119;
                i37 = i36;
                z23 = z16;
                imeOptions2 = imeOptions118;
            } else {
                composerS.J();
                if ((i11 & 1) != 0) {
                    if (i38 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i15 != 0) {
                        textStyleA = TextStyle.Companion.a();
                    } else {
                        textStyleA = textStyle;
                    }
                    if (i17 != 0) {
                        visualTransformationC = VisualTransformation.Companion.c();
                    } else {
                        visualTransformationC = visualTransformation;
                    }
                    if (i19 != 0) {
                        lVar2 = CoreTextFieldKt$CoreTextField$1.INSTANCE;
                    } else {
                        lVar2 = lVar;
                    }
                    if (i21 != 0) {
                        mutableInteractionSource2 = null;
                    } else {
                        mutableInteractionSource2 = mutableInteractionSource;
                    }
                    if ((i13 & 128) != 0) {
                        solidColor = new SolidColor(Color.Companion.f(), null);
                    } else {
                        solidColor = brush;
                    }
                    if (i23 != 0) {
                        z12 = true;
                    } else {
                        z12 = z6;
                    }
                    if (i25 != 0) {
                        i35 = Integer.MAX_VALUE;
                    } else {
                        i35 = i10;
                    }
                    if ((i13 & 1024) != 0) {
                        imeOptionsA = ImeOptions.Companion.a();
                        i30 &= -15;
                    } else {
                        imeOptionsA = imeOptions;
                    }
                    if (i28 != 0) {
                        keyboardActionsA = KeyboardActions.Companion.a();
                    } else {
                        keyboardActionsA = keyboardActions;
                    }
                    if (i31 != 0) {
                        z13 = true;
                    } else {
                        z13 = z10;
                    }
                    if (i33 != 0) {
                        z14 = false;
                    } else {
                        z14 = z11;
                    }
                    if (i34 != 0) {
                        qVarA = ComposableSingletons$CoreTextFieldKt.INSTANCE.a();
                    } else {
                        qVarA = qVar;
                    }
                    z15 = z13;
                } else {
                    if (i38 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i15 != 0) {
                        textStyleA = TextStyle.Companion.a();
                    } else {
                        textStyleA = textStyle;
                    }
                    if (i17 != 0) {
                        visualTransformationC = VisualTransformation.Companion.c();
                    } else {
                        visualTransformationC = visualTransformation;
                    }
                    if (i19 != 0) {
                        lVar2 = CoreTextFieldKt$CoreTextField$1.INSTANCE;
                    } else {
                        lVar2 = lVar;
                    }
                    if (i21 != 0) {
                        mutableInteractionSource2 = null;
                    } else {
                        mutableInteractionSource2 = mutableInteractionSource;
                    }
                    if ((i13 & 128) != 0) {
                        solidColor = new SolidColor(Color.Companion.f(), null);
                    } else {
                        solidColor = brush;
                    }
                    if (i23 != 0) {
                        z12 = true;
                    } else {
                        z12 = z6;
                    }
                    if (i25 != 0) {
                        i35 = Integer.MAX_VALUE;
                    } else {
                        i35 = i10;
                    }
                    if ((i13 & 1024) != 0) {
                        imeOptionsA = ImeOptions.Companion.a();
                        i30 &= -15;
                    } else {
                        imeOptionsA = imeOptions;
                    }
                    if (i28 != 0) {
                        keyboardActionsA = KeyboardActions.Companion.a();
                    } else {
                        keyboardActionsA = keyboardActions;
                    }
                    if (i31 != 0) {
                        z13 = true;
                    } else {
                        z13 = z10;
                    }
                    if (i33 != 0) {
                        z14 = false;
                    } else {
                        z14 = z11;
                    }
                    if (i34 != 0) {
                        qVarA = ComposableSingletons$CoreTextFieldKt.INSTANCE.a();
                    } else {
                        qVarA = qVar;
                    }
                    z15 = z13;
                }
                composerS.A();
                focusRequester = new FocusRequester();
                composerS.G(-55013392);
                if (z15) {
                    textInputService = null;
                } else {
                    textInputService = null;
                }
                composerS.Q();
                density = (Density) composerS.x(CompositionLocalsKt.e());
                resolver = (FontFamily.Resolver) composerS.x(CompositionLocalsKt.g());
                long jA117 = ((TextSelectionColors) composerS.x(TextSelectionColorsKt.b())).a();
                FocusManager focusManager117 = (FocusManager) composerS.x(CompositionLocalsKt.f());
                Modifier modifier1110 = modifier2;
                if (i35 == 1) {
                    orientation = Orientation.Vertical;
                } else {
                    orientation = Orientation.Vertical;
                }
                int i31115 = i30;
                i36 = i35;
                orientation2 = orientation;
                Object[] objArr117 = {orientation2};
                Saver<TextFieldScrollerPosition, Object> saverA117 = TextFieldScrollerPosition.Companion.a();
                z16 = z15;
                composerS.G(1157296644);
                zK = composerS.k(orientation2);
                mutableInteractionSource3 = mutableInteractionSource2;
                objH = composerS.H();
                if (zK) {
                    objH = new CoreTextFieldKt$CoreTextField$scrollerPosition$1$1(orientation2);
                    composerS.z(objH);
                } else {
                    objH = new CoreTextFieldKt$CoreTextField$scrollerPosition$1$1(orientation2);
                    composerS.z(objH);
                }
                composerS.Q();
                TextFieldScrollerPosition textFieldScrollerPosition117 = (TextFieldScrollerPosition) RememberSaveableKt.b(objArr117, saverA117, null, (a) objH, composerS, 72, 4);
                composerS.G(511388516);
                zK2 = composerS.k(value) | composerS.k(visualTransformationC);
                objH2 = composerS.H();
                if (zK2) {
                    transformedTextA = visualTransformationC.a(value.e());
                    textRangeF = value.f();
                    if (textRangeF != null) {
                        objH2 = transformedTextA;
                    } else {
                        objH2 = transformedTextA;
                    }
                    composerS.z(objH2);
                } else {
                    transformedTextA = visualTransformationC.a(value.e());
                    textRangeF = value.f();
                    if (textRangeF != null) {
                        objH2 = transformedTextA;
                    } else {
                        objH2 = transformedTextA;
                    }
                    composerS.z(objH2);
                }
                composerS.Q();
                TransformedText transformedText117 = (TransformedText) objH2;
                annotatedStringB = transformedText117.b();
                offsetMappingA = transformedText117.a();
                recomposeScopeB = ComposablesKt.b(composerS, 0);
                composerS.G(-492369756);
                objH3 = composerS.H();
                companion = Composer.Companion;
                if (objH3 == companion.a()) {
                    objH3 = new TextFieldState(new TextDelegate(annotatedStringB, textStyleA, 0, z12, 0, density, resolver, null, TarConstants.CHKSUM_OFFSET, null), recomposeScopeB);
                    composerS.z(objH3);
                }
                composerS.Q();
                textFieldState = (TextFieldState) objH3;
                textFieldState.A(annotatedStringB, textStyleA, z12, density, resolver, onValueChange, keyboardActionsA, focusManager117, jA117);
                textFieldState.j().b(value, textFieldState.e());
                composerS.G(-492369756);
                objH4 = composerS.H();
                if (objH4 == companion.a()) {
                    objH4 = new UndoManager(0, 1, null);
                    composerS.z(objH4);
                }
                composerS.Q();
                undoManager = (UndoManager) objH4;
                UndoManager.f(undoManager, value, 0L, 2, null);
                composerS.G(-492369756);
                objH5 = composerS.H();
                if (objH5 == companion.a()) {
                    objH5 = new TextFieldSelectionManager(undoManager);
                    composerS.z(objH5);
                }
                composerS.Q();
                textFieldSelectionManager = (TextFieldSelectionManager) objH5;
                textFieldSelectionManager.U(offsetMappingA);
                textFieldSelectionManager.Z(visualTransformationC);
                textFieldSelectionManager.V(textFieldState.i());
                textFieldSelectionManager.W(textFieldState);
                textFieldSelectionManager.Y(value);
                textFieldSelectionManager.N((ClipboardManager) composerS.x(CompositionLocalsKt.d()));
                textFieldSelectionManager.X((TextToolbar) composerS.x(CompositionLocalsKt.m()));
                textFieldSelectionManager.T((HapticFeedback) composerS.x(CompositionLocalsKt.h()));
                textFieldSelectionManager.R(focusRequester);
                textFieldSelectionManager.Q(!z14);
                composerS.G(773894976);
                composerS.G(-492369756);
                objH6 = composerS.H();
                if (objH6 == companion.a()) {
                    CompositionScopedCoroutineScopeCanceller compositionScopedCoroutineScopeCanceller117 = new CompositionScopedCoroutineScopeCanceller(EffectsKt.j(h.INSTANCE, composerS));
                    composerS.z(compositionScopedCoroutineScopeCanceller117);
                    objH6 = compositionScopedCoroutineScopeCanceller117;
                }
                composerS.Q();
                o0 o0VarA117 = ((CompositionScopedCoroutineScopeCanceller) objH6).a();
                composerS.Q();
                composerS.G(-492369756);
                objH7 = composerS.H();
                if (objH7 == companion.a()) {
                    objH7 = BringIntoViewRequesterKt.a();
                    composerS.z(objH7);
                }
                composerS.Q();
                BringIntoViewRequester bringIntoViewRequester117 = (BringIntoViewRequester) objH7;
                companion2 = Modifier.Companion;
                Modifier modifierC117 = TextFieldGestureModifiersKt.c(companion2, z16, focusRequester, mutableInteractionSource3, new CoreTextFieldKt$CoreTextField$focusModifier$1(textFieldState, textInputService, value, imeOptionsA, textFieldSelectionManager, o0VarA117, bringIntoViewRequester117, offsetMappingA));
                EffectsKt.a(textFieldState, new CoreTextFieldKt$CoreTextField$2(textFieldState), composerS, 8);
                if (TouchMode_androidKt.a()) {
                    modifierB = TextFieldPressGestureFilterKt.a(companion2, mutableInteractionSource3, z16, new CoreTextFieldKt$CoreTextField$pointerModifier$1(textFieldState, focusRequester, z14, textFieldSelectionManager, offsetMappingA)).B(TextFieldGestureModifiersKt.a(companion2, textFieldSelectionManager.G(), z16));
                    z17 = false;
                } else {
                    z17 = false;
                    modifierB = PointerIconKt.b(TextFieldGestureModifiersKt.b(companion2, textFieldSelectionManager.B(), z16), TextPointerIcon_androidKt.a(), false, 2, null);
                }
                Modifier modifierA11111119 = DrawModifierKt.a(companion2, new CoreTextFieldKt$CoreTextField$drawModifier$1(textFieldState, value, offsetMappingA));
                Modifier modifierA111111110 = OnGloballyPositionedModifierKt.a(companion2, new CoreTextFieldKt$CoreTextField$onPositionedModifier$1(textFieldState, z16, textFieldSelectionManager));
                Modifier modifierB111115 = SemanticsModifierKt.b(companion2, true, new CoreTextFieldKt$CoreTextField$semanticsModifier$1(imeOptionsA, transformedText117, value, z16, visualTransformationC instanceof PasswordVisualTransformation, z14, textFieldState, offsetMappingA, textFieldSelectionManager, focusRequester));
                if (z16) {
                    z18 = z17;
                } else {
                    z18 = z17;
                }
                Modifier modifierB111116 = TextFieldCursorKt.b(companion2, textFieldState, value, offsetMappingA, solidColor, z18);
                EffectsKt.a(textFieldSelectionManager, new CoreTextFieldKt$CoreTextField$3(textFieldSelectionManager), composerS, 8);
                EffectsKt.a(imeOptionsA, new CoreTextFieldKt$CoreTextField$4(textInputService, textFieldState, value, imeOptionsA), composerS, i31115 & 14);
                l<TextFieldValue, l0> lVarI117 = textFieldState.i();
                boolean z21110 = !z14;
                if (i36 == 1) {
                    z19 = true;
                } else {
                    z19 = z17;
                }
                Modifier modifierA111111111 = OnGloballyPositionedModifierKt.a(TextFieldScrollKt.d(m(modifier1110.B(modifierC117), textFieldState, textFieldSelectionManager).B(TextFieldKeyInputKt.a(companion2, textFieldState, textFieldSelectionManager, value, lVarI117, z21110, z19, offsetMappingA, undoManager)), textFieldScrollerPosition117, mutableInteractionSource3, z16).B(modifierB).B(modifierB111115), new CoreTextFieldKt$CoreTextField$decorationBoxModifier$1(textFieldState));
                if (!z16) {
                    z20 = z17;
                } else {
                    z20 = z17;
                }
                if (z20) {
                    modifierB2 = TextFieldSelectionManager_androidKt.b(companion2, textFieldSelectionManager);
                } else {
                    modifierB2 = companion2;
                }
                ImeOptions imeOptions119 = imeOptionsA;
                composer2 = composerS;
                b(modifierA111111111, textFieldSelectionManager, ComposableLambdaKt.b(composer2, -1885146845, true, new CoreTextFieldKt$CoreTextField$5(qVarA, i31115, i36, textStyleA, textFieldScrollerPosition117, value, visualTransformationC, modifierB111116, modifierA11111119, modifierA111111110, modifierB2, bringIntoViewRequester117, textFieldState, textFieldSelectionManager, z20, z14, lVar2)), composer2, 448);
                textStyle2 = textStyleA;
                mutableInteractionSource4 = mutableInteractionSource3;
                lVar3 = lVar2;
                brush2 = solidColor;
                z21 = z12;
                keyboardActions2 = keyboardActionsA;
                z22 = z14;
                qVar2 = qVarA;
                visualTransformation2 = visualTransformationC;
                modifier3 = modifier1110;
                i37 = i36;
                z23 = z16;
                imeOptions2 = imeOptions119;
            }
            scopeUpdateScopeU = composer2.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new CoreTextFieldKt$CoreTextField$6(value, onValueChange, modifier3, textStyle2, visualTransformation2, lVar3, mutableInteractionSource4, brush2, z21, i37, imeOptions2, keyboardActions2, z23, z22, qVar2, i11, i12, i13));
        }
        i30 |= 384;
        i33 = i13 & 8192;
        if (i33 != 0) {
            if ((i12 & 7168) == 0) {
                i30 |= composerS.m(z11) ? 2048 : 1024;
            }
            i34 = i13 & 16384;
            if (i34 != 0) {
                i30 |= CpioConstants.C_ISBLK;
            } else if ((i12 & 57344) == 0) {
                i30 |= composerS.k(qVar) ? 16384 : 8192;
            }
            if ((i14 & 1533916891) != 306783378) {
                composerS.J();
                if ((i11 & 1) != 0) {
                    if (i38 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i15 != 0) {
                        textStyleA = TextStyle.Companion.a();
                    } else {
                        textStyleA = textStyle;
                    }
                    if (i17 != 0) {
                        visualTransformationC = VisualTransformation.Companion.c();
                    } else {
                        visualTransformationC = visualTransformation;
                    }
                    if (i19 != 0) {
                        lVar2 = CoreTextFieldKt$CoreTextField$1.INSTANCE;
                    } else {
                        lVar2 = lVar;
                    }
                    if (i21 != 0) {
                        mutableInteractionSource2 = null;
                    } else {
                        mutableInteractionSource2 = mutableInteractionSource;
                    }
                    if ((i13 & 128) != 0) {
                        solidColor = new SolidColor(Color.Companion.f(), null);
                    } else {
                        solidColor = brush;
                    }
                    if (i23 != 0) {
                        z12 = true;
                    } else {
                        z12 = z6;
                    }
                    if (i25 != 0) {
                        i35 = Integer.MAX_VALUE;
                    } else {
                        i35 = i10;
                    }
                    if ((i13 & 1024) != 0) {
                        imeOptionsA = ImeOptions.Companion.a();
                        i30 &= -15;
                    } else {
                        imeOptionsA = imeOptions;
                    }
                    if (i28 != 0) {
                        keyboardActionsA = KeyboardActions.Companion.a();
                    } else {
                        keyboardActionsA = keyboardActions;
                    }
                    if (i31 != 0) {
                        z13 = true;
                    } else {
                        z13 = z10;
                    }
                    if (i33 != 0) {
                        z14 = false;
                    } else {
                        z14 = z11;
                    }
                    if (i34 != 0) {
                        qVarA = ComposableSingletons$CoreTextFieldKt.INSTANCE.a();
                    } else {
                        qVarA = qVar;
                    }
                    z15 = z13;
                } else {
                    if (i38 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i15 != 0) {
                        textStyleA = TextStyle.Companion.a();
                    } else {
                        textStyleA = textStyle;
                    }
                    if (i17 != 0) {
                        visualTransformationC = VisualTransformation.Companion.c();
                    } else {
                        visualTransformationC = visualTransformation;
                    }
                    if (i19 != 0) {
                        lVar2 = CoreTextFieldKt$CoreTextField$1.INSTANCE;
                    } else {
                        lVar2 = lVar;
                    }
                    if (i21 != 0) {
                        mutableInteractionSource2 = null;
                    } else {
                        mutableInteractionSource2 = mutableInteractionSource;
                    }
                    if ((i13 & 128) != 0) {
                        solidColor = new SolidColor(Color.Companion.f(), null);
                    } else {
                        solidColor = brush;
                    }
                    if (i23 != 0) {
                        z12 = true;
                    } else {
                        z12 = z6;
                    }
                    if (i25 != 0) {
                        i35 = Integer.MAX_VALUE;
                    } else {
                        i35 = i10;
                    }
                    if ((i13 & 1024) != 0) {
                        imeOptionsA = ImeOptions.Companion.a();
                        i30 &= -15;
                    } else {
                        imeOptionsA = imeOptions;
                    }
                    if (i28 != 0) {
                        keyboardActionsA = KeyboardActions.Companion.a();
                    } else {
                        keyboardActionsA = keyboardActions;
                    }
                    if (i31 != 0) {
                        z13 = true;
                    } else {
                        z13 = z10;
                    }
                    if (i33 != 0) {
                        z14 = false;
                    } else {
                        z14 = z11;
                    }
                    if (i34 != 0) {
                        qVarA = ComposableSingletons$CoreTextFieldKt.INSTANCE.a();
                    } else {
                        qVarA = qVar;
                    }
                    z15 = z13;
                }
                composerS.A();
                focusRequester = new FocusRequester();
                composerS.G(-55013392);
                if (z15) {
                    textInputService = null;
                } else {
                    textInputService = null;
                }
                composerS.Q();
                density = (Density) composerS.x(CompositionLocalsKt.e());
                resolver = (FontFamily.Resolver) composerS.x(CompositionLocalsKt.g());
                long jA118 = ((TextSelectionColors) composerS.x(TextSelectionColorsKt.b())).a();
                FocusManager focusManager118 = (FocusManager) composerS.x(CompositionLocalsKt.f());
                Modifier modifier1111 = modifier2;
                if (i35 == 1) {
                    orientation = Orientation.Vertical;
                } else {
                    orientation = Orientation.Vertical;
                }
                int i31116 = i30;
                i36 = i35;
                orientation2 = orientation;
                Object[] objArr118 = {orientation2};
                Saver<TextFieldScrollerPosition, Object> saverA118 = TextFieldScrollerPosition.Companion.a();
                z16 = z15;
                composerS.G(1157296644);
                zK = composerS.k(orientation2);
                mutableInteractionSource3 = mutableInteractionSource2;
                objH = composerS.H();
                if (zK) {
                    objH = new CoreTextFieldKt$CoreTextField$scrollerPosition$1$1(orientation2);
                    composerS.z(objH);
                } else {
                    objH = new CoreTextFieldKt$CoreTextField$scrollerPosition$1$1(orientation2);
                    composerS.z(objH);
                }
                composerS.Q();
                TextFieldScrollerPosition textFieldScrollerPosition118 = (TextFieldScrollerPosition) RememberSaveableKt.b(objArr118, saverA118, null, (a) objH, composerS, 72, 4);
                composerS.G(511388516);
                zK2 = composerS.k(value) | composerS.k(visualTransformationC);
                objH2 = composerS.H();
                if (zK2) {
                    transformedTextA = visualTransformationC.a(value.e());
                    textRangeF = value.f();
                    if (textRangeF != null) {
                        objH2 = transformedTextA;
                    } else {
                        objH2 = transformedTextA;
                    }
                    composerS.z(objH2);
                } else {
                    transformedTextA = visualTransformationC.a(value.e());
                    textRangeF = value.f();
                    if (textRangeF != null) {
                        objH2 = transformedTextA;
                    } else {
                        objH2 = transformedTextA;
                    }
                    composerS.z(objH2);
                }
                composerS.Q();
                TransformedText transformedText118 = (TransformedText) objH2;
                annotatedStringB = transformedText118.b();
                offsetMappingA = transformedText118.a();
                recomposeScopeB = ComposablesKt.b(composerS, 0);
                composerS.G(-492369756);
                objH3 = composerS.H();
                companion = Composer.Companion;
                if (objH3 == companion.a()) {
                    objH3 = new TextFieldState(new TextDelegate(annotatedStringB, textStyleA, 0, z12, 0, density, resolver, null, TarConstants.CHKSUM_OFFSET, null), recomposeScopeB);
                    composerS.z(objH3);
                }
                composerS.Q();
                textFieldState = (TextFieldState) objH3;
                textFieldState.A(annotatedStringB, textStyleA, z12, density, resolver, onValueChange, keyboardActionsA, focusManager118, jA118);
                textFieldState.j().b(value, textFieldState.e());
                composerS.G(-492369756);
                objH4 = composerS.H();
                if (objH4 == companion.a()) {
                    objH4 = new UndoManager(0, 1, null);
                    composerS.z(objH4);
                }
                composerS.Q();
                undoManager = (UndoManager) objH4;
                UndoManager.f(undoManager, value, 0L, 2, null);
                composerS.G(-492369756);
                objH5 = composerS.H();
                if (objH5 == companion.a()) {
                    objH5 = new TextFieldSelectionManager(undoManager);
                    composerS.z(objH5);
                }
                composerS.Q();
                textFieldSelectionManager = (TextFieldSelectionManager) objH5;
                textFieldSelectionManager.U(offsetMappingA);
                textFieldSelectionManager.Z(visualTransformationC);
                textFieldSelectionManager.V(textFieldState.i());
                textFieldSelectionManager.W(textFieldState);
                textFieldSelectionManager.Y(value);
                textFieldSelectionManager.N((ClipboardManager) composerS.x(CompositionLocalsKt.d()));
                textFieldSelectionManager.X((TextToolbar) composerS.x(CompositionLocalsKt.m()));
                textFieldSelectionManager.T((HapticFeedback) composerS.x(CompositionLocalsKt.h()));
                textFieldSelectionManager.R(focusRequester);
                textFieldSelectionManager.Q(!z14);
                composerS.G(773894976);
                composerS.G(-492369756);
                objH6 = composerS.H();
                if (objH6 == companion.a()) {
                    CompositionScopedCoroutineScopeCanceller compositionScopedCoroutineScopeCanceller118 = new CompositionScopedCoroutineScopeCanceller(EffectsKt.j(h.INSTANCE, composerS));
                    composerS.z(compositionScopedCoroutineScopeCanceller118);
                    objH6 = compositionScopedCoroutineScopeCanceller118;
                }
                composerS.Q();
                o0 o0VarA118 = ((CompositionScopedCoroutineScopeCanceller) objH6).a();
                composerS.Q();
                composerS.G(-492369756);
                objH7 = composerS.H();
                if (objH7 == companion.a()) {
                    objH7 = BringIntoViewRequesterKt.a();
                    composerS.z(objH7);
                }
                composerS.Q();
                BringIntoViewRequester bringIntoViewRequester118 = (BringIntoViewRequester) objH7;
                companion2 = Modifier.Companion;
                Modifier modifierC118 = TextFieldGestureModifiersKt.c(companion2, z16, focusRequester, mutableInteractionSource3, new CoreTextFieldKt$CoreTextField$focusModifier$1(textFieldState, textInputService, value, imeOptionsA, textFieldSelectionManager, o0VarA118, bringIntoViewRequester118, offsetMappingA));
                EffectsKt.a(textFieldState, new CoreTextFieldKt$CoreTextField$2(textFieldState), composerS, 8);
                if (TouchMode_androidKt.a()) {
                    modifierB = TextFieldPressGestureFilterKt.a(companion2, mutableInteractionSource3, z16, new CoreTextFieldKt$CoreTextField$pointerModifier$1(textFieldState, focusRequester, z14, textFieldSelectionManager, offsetMappingA)).B(TextFieldGestureModifiersKt.a(companion2, textFieldSelectionManager.G(), z16));
                    z17 = false;
                } else {
                    z17 = false;
                    modifierB = PointerIconKt.b(TextFieldGestureModifiersKt.b(companion2, textFieldSelectionManager.B(), z16), TextPointerIcon_androidKt.a(), false, 2, null);
                }
                Modifier modifierA111111112 = DrawModifierKt.a(companion2, new CoreTextFieldKt$CoreTextField$drawModifier$1(textFieldState, value, offsetMappingA));
                Modifier modifierA111111113 = OnGloballyPositionedModifierKt.a(companion2, new CoreTextFieldKt$CoreTextField$onPositionedModifier$1(textFieldState, z16, textFieldSelectionManager));
                Modifier modifierB111117 = SemanticsModifierKt.b(companion2, true, new CoreTextFieldKt$CoreTextField$semanticsModifier$1(imeOptionsA, transformedText118, value, z16, visualTransformationC instanceof PasswordVisualTransformation, z14, textFieldState, offsetMappingA, textFieldSelectionManager, focusRequester));
                if (z16) {
                    z18 = z17;
                } else {
                    z18 = z17;
                }
                Modifier modifierB111118 = TextFieldCursorKt.b(companion2, textFieldState, value, offsetMappingA, solidColor, z18);
                EffectsKt.a(textFieldSelectionManager, new CoreTextFieldKt$CoreTextField$3(textFieldSelectionManager), composerS, 8);
                EffectsKt.a(imeOptionsA, new CoreTextFieldKt$CoreTextField$4(textInputService, textFieldState, value, imeOptionsA), composerS, i31116 & 14);
                l<TextFieldValue, l0> lVarI118 = textFieldState.i();
                boolean z21111 = !z14;
                if (i36 == 1) {
                    z19 = true;
                } else {
                    z19 = z17;
                }
                Modifier modifierA111111114 = OnGloballyPositionedModifierKt.a(TextFieldScrollKt.d(m(modifier1111.B(modifierC118), textFieldState, textFieldSelectionManager).B(TextFieldKeyInputKt.a(companion2, textFieldState, textFieldSelectionManager, value, lVarI118, z21111, z19, offsetMappingA, undoManager)), textFieldScrollerPosition118, mutableInteractionSource3, z16).B(modifierB).B(modifierB111117), new CoreTextFieldKt$CoreTextField$decorationBoxModifier$1(textFieldState));
                if (!z16) {
                    z20 = z17;
                } else {
                    z20 = z17;
                }
                if (z20) {
                    modifierB2 = TextFieldSelectionManager_androidKt.b(companion2, textFieldSelectionManager);
                } else {
                    modifierB2 = companion2;
                }
                ImeOptions imeOptions1110 = imeOptionsA;
                composer2 = composerS;
                b(modifierA111111114, textFieldSelectionManager, ComposableLambdaKt.b(composer2, -1885146845, true, new CoreTextFieldKt$CoreTextField$5(qVarA, i31116, i36, textStyleA, textFieldScrollerPosition118, value, visualTransformationC, modifierB111118, modifierA111111112, modifierA111111113, modifierB2, bringIntoViewRequester118, textFieldState, textFieldSelectionManager, z20, z14, lVar2)), composer2, 448);
                textStyle2 = textStyleA;
                mutableInteractionSource4 = mutableInteractionSource3;
                lVar3 = lVar2;
                brush2 = solidColor;
                z21 = z12;
                keyboardActions2 = keyboardActionsA;
                z22 = z14;
                qVar2 = qVarA;
                visualTransformation2 = visualTransformationC;
                modifier3 = modifier1111;
                i37 = i36;
                z23 = z16;
                imeOptions2 = imeOptions1110;
            } else {
                composerS.J();
                if ((i11 & 1) != 0) {
                    if (i38 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i15 != 0) {
                        textStyleA = TextStyle.Companion.a();
                    } else {
                        textStyleA = textStyle;
                    }
                    if (i17 != 0) {
                        visualTransformationC = VisualTransformation.Companion.c();
                    } else {
                        visualTransformationC = visualTransformation;
                    }
                    if (i19 != 0) {
                        lVar2 = CoreTextFieldKt$CoreTextField$1.INSTANCE;
                    } else {
                        lVar2 = lVar;
                    }
                    if (i21 != 0) {
                        mutableInteractionSource2 = null;
                    } else {
                        mutableInteractionSource2 = mutableInteractionSource;
                    }
                    if ((i13 & 128) != 0) {
                        solidColor = new SolidColor(Color.Companion.f(), null);
                    } else {
                        solidColor = brush;
                    }
                    if (i23 != 0) {
                        z12 = true;
                    } else {
                        z12 = z6;
                    }
                    if (i25 != 0) {
                        i35 = Integer.MAX_VALUE;
                    } else {
                        i35 = i10;
                    }
                    if ((i13 & 1024) != 0) {
                        imeOptionsA = ImeOptions.Companion.a();
                        i30 &= -15;
                    } else {
                        imeOptionsA = imeOptions;
                    }
                    if (i28 != 0) {
                        keyboardActionsA = KeyboardActions.Companion.a();
                    } else {
                        keyboardActionsA = keyboardActions;
                    }
                    if (i31 != 0) {
                        z13 = true;
                    } else {
                        z13 = z10;
                    }
                    if (i33 != 0) {
                        z14 = false;
                    } else {
                        z14 = z11;
                    }
                    if (i34 != 0) {
                        qVarA = ComposableSingletons$CoreTextFieldKt.INSTANCE.a();
                    } else {
                        qVarA = qVar;
                    }
                    z15 = z13;
                } else {
                    if (i38 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i15 != 0) {
                        textStyleA = TextStyle.Companion.a();
                    } else {
                        textStyleA = textStyle;
                    }
                    if (i17 != 0) {
                        visualTransformationC = VisualTransformation.Companion.c();
                    } else {
                        visualTransformationC = visualTransformation;
                    }
                    if (i19 != 0) {
                        lVar2 = CoreTextFieldKt$CoreTextField$1.INSTANCE;
                    } else {
                        lVar2 = lVar;
                    }
                    if (i21 != 0) {
                        mutableInteractionSource2 = null;
                    } else {
                        mutableInteractionSource2 = mutableInteractionSource;
                    }
                    if ((i13 & 128) != 0) {
                        solidColor = new SolidColor(Color.Companion.f(), null);
                    } else {
                        solidColor = brush;
                    }
                    if (i23 != 0) {
                        z12 = true;
                    } else {
                        z12 = z6;
                    }
                    if (i25 != 0) {
                        i35 = Integer.MAX_VALUE;
                    } else {
                        i35 = i10;
                    }
                    if ((i13 & 1024) != 0) {
                        imeOptionsA = ImeOptions.Companion.a();
                        i30 &= -15;
                    } else {
                        imeOptionsA = imeOptions;
                    }
                    if (i28 != 0) {
                        keyboardActionsA = KeyboardActions.Companion.a();
                    } else {
                        keyboardActionsA = keyboardActions;
                    }
                    if (i31 != 0) {
                        z13 = true;
                    } else {
                        z13 = z10;
                    }
                    if (i33 != 0) {
                        z14 = false;
                    } else {
                        z14 = z11;
                    }
                    if (i34 != 0) {
                        qVarA = ComposableSingletons$CoreTextFieldKt.INSTANCE.a();
                    } else {
                        qVarA = qVar;
                    }
                    z15 = z13;
                }
                composerS.A();
                focusRequester = new FocusRequester();
                composerS.G(-55013392);
                if (z15) {
                    textInputService = null;
                } else {
                    textInputService = null;
                }
                composerS.Q();
                density = (Density) composerS.x(CompositionLocalsKt.e());
                resolver = (FontFamily.Resolver) composerS.x(CompositionLocalsKt.g());
                long jA119 = ((TextSelectionColors) composerS.x(TextSelectionColorsKt.b())).a();
                FocusManager focusManager119 = (FocusManager) composerS.x(CompositionLocalsKt.f());
                Modifier modifier1112 = modifier2;
                if (i35 == 1) {
                    orientation = Orientation.Vertical;
                } else {
                    orientation = Orientation.Vertical;
                }
                int i31117 = i30;
                i36 = i35;
                orientation2 = orientation;
                Object[] objArr119 = {orientation2};
                Saver<TextFieldScrollerPosition, Object> saverA119 = TextFieldScrollerPosition.Companion.a();
                z16 = z15;
                composerS.G(1157296644);
                zK = composerS.k(orientation2);
                mutableInteractionSource3 = mutableInteractionSource2;
                objH = composerS.H();
                if (zK) {
                    objH = new CoreTextFieldKt$CoreTextField$scrollerPosition$1$1(orientation2);
                    composerS.z(objH);
                } else {
                    objH = new CoreTextFieldKt$CoreTextField$scrollerPosition$1$1(orientation2);
                    composerS.z(objH);
                }
                composerS.Q();
                TextFieldScrollerPosition textFieldScrollerPosition119 = (TextFieldScrollerPosition) RememberSaveableKt.b(objArr119, saverA119, null, (a) objH, composerS, 72, 4);
                composerS.G(511388516);
                zK2 = composerS.k(value) | composerS.k(visualTransformationC);
                objH2 = composerS.H();
                if (zK2) {
                    transformedTextA = visualTransformationC.a(value.e());
                    textRangeF = value.f();
                    if (textRangeF != null) {
                        objH2 = transformedTextA;
                    } else {
                        objH2 = transformedTextA;
                    }
                    composerS.z(objH2);
                } else {
                    transformedTextA = visualTransformationC.a(value.e());
                    textRangeF = value.f();
                    if (textRangeF != null) {
                        objH2 = transformedTextA;
                    } else {
                        objH2 = transformedTextA;
                    }
                    composerS.z(objH2);
                }
                composerS.Q();
                TransformedText transformedText119 = (TransformedText) objH2;
                annotatedStringB = transformedText119.b();
                offsetMappingA = transformedText119.a();
                recomposeScopeB = ComposablesKt.b(composerS, 0);
                composerS.G(-492369756);
                objH3 = composerS.H();
                companion = Composer.Companion;
                if (objH3 == companion.a()) {
                    objH3 = new TextFieldState(new TextDelegate(annotatedStringB, textStyleA, 0, z12, 0, density, resolver, null, TarConstants.CHKSUM_OFFSET, null), recomposeScopeB);
                    composerS.z(objH3);
                }
                composerS.Q();
                textFieldState = (TextFieldState) objH3;
                textFieldState.A(annotatedStringB, textStyleA, z12, density, resolver, onValueChange, keyboardActionsA, focusManager119, jA119);
                textFieldState.j().b(value, textFieldState.e());
                composerS.G(-492369756);
                objH4 = composerS.H();
                if (objH4 == companion.a()) {
                    objH4 = new UndoManager(0, 1, null);
                    composerS.z(objH4);
                }
                composerS.Q();
                undoManager = (UndoManager) objH4;
                UndoManager.f(undoManager, value, 0L, 2, null);
                composerS.G(-492369756);
                objH5 = composerS.H();
                if (objH5 == companion.a()) {
                    objH5 = new TextFieldSelectionManager(undoManager);
                    composerS.z(objH5);
                }
                composerS.Q();
                textFieldSelectionManager = (TextFieldSelectionManager) objH5;
                textFieldSelectionManager.U(offsetMappingA);
                textFieldSelectionManager.Z(visualTransformationC);
                textFieldSelectionManager.V(textFieldState.i());
                textFieldSelectionManager.W(textFieldState);
                textFieldSelectionManager.Y(value);
                textFieldSelectionManager.N((ClipboardManager) composerS.x(CompositionLocalsKt.d()));
                textFieldSelectionManager.X((TextToolbar) composerS.x(CompositionLocalsKt.m()));
                textFieldSelectionManager.T((HapticFeedback) composerS.x(CompositionLocalsKt.h()));
                textFieldSelectionManager.R(focusRequester);
                textFieldSelectionManager.Q(!z14);
                composerS.G(773894976);
                composerS.G(-492369756);
                objH6 = composerS.H();
                if (objH6 == companion.a()) {
                    CompositionScopedCoroutineScopeCanceller compositionScopedCoroutineScopeCanceller119 = new CompositionScopedCoroutineScopeCanceller(EffectsKt.j(h.INSTANCE, composerS));
                    composerS.z(compositionScopedCoroutineScopeCanceller119);
                    objH6 = compositionScopedCoroutineScopeCanceller119;
                }
                composerS.Q();
                o0 o0VarA119 = ((CompositionScopedCoroutineScopeCanceller) objH6).a();
                composerS.Q();
                composerS.G(-492369756);
                objH7 = composerS.H();
                if (objH7 == companion.a()) {
                    objH7 = BringIntoViewRequesterKt.a();
                    composerS.z(objH7);
                }
                composerS.Q();
                BringIntoViewRequester bringIntoViewRequester119 = (BringIntoViewRequester) objH7;
                companion2 = Modifier.Companion;
                Modifier modifierC119 = TextFieldGestureModifiersKt.c(companion2, z16, focusRequester, mutableInteractionSource3, new CoreTextFieldKt$CoreTextField$focusModifier$1(textFieldState, textInputService, value, imeOptionsA, textFieldSelectionManager, o0VarA119, bringIntoViewRequester119, offsetMappingA));
                EffectsKt.a(textFieldState, new CoreTextFieldKt$CoreTextField$2(textFieldState), composerS, 8);
                if (TouchMode_androidKt.a()) {
                    modifierB = TextFieldPressGestureFilterKt.a(companion2, mutableInteractionSource3, z16, new CoreTextFieldKt$CoreTextField$pointerModifier$1(textFieldState, focusRequester, z14, textFieldSelectionManager, offsetMappingA)).B(TextFieldGestureModifiersKt.a(companion2, textFieldSelectionManager.G(), z16));
                    z17 = false;
                } else {
                    z17 = false;
                    modifierB = PointerIconKt.b(TextFieldGestureModifiersKt.b(companion2, textFieldSelectionManager.B(), z16), TextPointerIcon_androidKt.a(), false, 2, null);
                }
                Modifier modifierA111111115 = DrawModifierKt.a(companion2, new CoreTextFieldKt$CoreTextField$drawModifier$1(textFieldState, value, offsetMappingA));
                Modifier modifierA111111116 = OnGloballyPositionedModifierKt.a(companion2, new CoreTextFieldKt$CoreTextField$onPositionedModifier$1(textFieldState, z16, textFieldSelectionManager));
                Modifier modifierB111119 = SemanticsModifierKt.b(companion2, true, new CoreTextFieldKt$CoreTextField$semanticsModifier$1(imeOptionsA, transformedText119, value, z16, visualTransformationC instanceof PasswordVisualTransformation, z14, textFieldState, offsetMappingA, textFieldSelectionManager, focusRequester));
                if (z16) {
                    z18 = z17;
                } else {
                    z18 = z17;
                }
                Modifier modifierB1111110 = TextFieldCursorKt.b(companion2, textFieldState, value, offsetMappingA, solidColor, z18);
                EffectsKt.a(textFieldSelectionManager, new CoreTextFieldKt$CoreTextField$3(textFieldSelectionManager), composerS, 8);
                EffectsKt.a(imeOptionsA, new CoreTextFieldKt$CoreTextField$4(textInputService, textFieldState, value, imeOptionsA), composerS, i31117 & 14);
                l<TextFieldValue, l0> lVarI119 = textFieldState.i();
                boolean z21112 = !z14;
                if (i36 == 1) {
                    z19 = true;
                } else {
                    z19 = z17;
                }
                Modifier modifierA111111117 = OnGloballyPositionedModifierKt.a(TextFieldScrollKt.d(m(modifier1112.B(modifierC119), textFieldState, textFieldSelectionManager).B(TextFieldKeyInputKt.a(companion2, textFieldState, textFieldSelectionManager, value, lVarI119, z21112, z19, offsetMappingA, undoManager)), textFieldScrollerPosition119, mutableInteractionSource3, z16).B(modifierB).B(modifierB111119), new CoreTextFieldKt$CoreTextField$decorationBoxModifier$1(textFieldState));
                if (!z16) {
                    z20 = z17;
                } else {
                    z20 = z17;
                }
                if (z20) {
                    modifierB2 = TextFieldSelectionManager_androidKt.b(companion2, textFieldSelectionManager);
                } else {
                    modifierB2 = companion2;
                }
                ImeOptions imeOptions1111 = imeOptionsA;
                composer2 = composerS;
                b(modifierA111111117, textFieldSelectionManager, ComposableLambdaKt.b(composer2, -1885146845, true, new CoreTextFieldKt$CoreTextField$5(qVarA, i31117, i36, textStyleA, textFieldScrollerPosition119, value, visualTransformationC, modifierB1111110, modifierA111111115, modifierA111111116, modifierB2, bringIntoViewRequester119, textFieldState, textFieldSelectionManager, z20, z14, lVar2)), composer2, 448);
                textStyle2 = textStyleA;
                mutableInteractionSource4 = mutableInteractionSource3;
                lVar3 = lVar2;
                brush2 = solidColor;
                z21 = z12;
                keyboardActions2 = keyboardActionsA;
                z22 = z14;
                qVar2 = qVarA;
                visualTransformation2 = visualTransformationC;
                modifier3 = modifier1112;
                i37 = i36;
                z23 = z16;
                imeOptions2 = imeOptions1111;
            }
            scopeUpdateScopeU = composer2.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new CoreTextFieldKt$CoreTextField$6(value, onValueChange, modifier3, textStyle2, visualTransformation2, lVar3, mutableInteractionSource4, brush2, z21, i37, imeOptions2, keyboardActions2, z23, z22, qVar2, i11, i12, i13));
        }
        i30 |= 3072;
        i34 = i13 & 16384;
        if (i34 != 0) {
            i30 |= CpioConstants.C_ISBLK;
        } else if ((i12 & 57344) == 0) {
            i30 |= composerS.k(qVar) ? 16384 : 8192;
        }
        if ((i14 & 1533916891) != 306783378) {
            composerS.J();
            if ((i11 & 1) != 0) {
                if (i38 != 0) {
                    modifier2 = Modifier.Companion;
                } else {
                    modifier2 = modifier;
                }
                if (i15 != 0) {
                    textStyleA = TextStyle.Companion.a();
                } else {
                    textStyleA = textStyle;
                }
                if (i17 != 0) {
                    visualTransformationC = VisualTransformation.Companion.c();
                } else {
                    visualTransformationC = visualTransformation;
                }
                if (i19 != 0) {
                    lVar2 = CoreTextFieldKt$CoreTextField$1.INSTANCE;
                } else {
                    lVar2 = lVar;
                }
                if (i21 != 0) {
                    mutableInteractionSource2 = null;
                } else {
                    mutableInteractionSource2 = mutableInteractionSource;
                }
                if ((i13 & 128) != 0) {
                    solidColor = new SolidColor(Color.Companion.f(), null);
                } else {
                    solidColor = brush;
                }
                if (i23 != 0) {
                    z12 = true;
                } else {
                    z12 = z6;
                }
                if (i25 != 0) {
                    i35 = Integer.MAX_VALUE;
                } else {
                    i35 = i10;
                }
                if ((i13 & 1024) != 0) {
                    imeOptionsA = ImeOptions.Companion.a();
                    i30 &= -15;
                } else {
                    imeOptionsA = imeOptions;
                }
                if (i28 != 0) {
                    keyboardActionsA = KeyboardActions.Companion.a();
                } else {
                    keyboardActionsA = keyboardActions;
                }
                if (i31 != 0) {
                    z13 = true;
                } else {
                    z13 = z10;
                }
                if (i33 != 0) {
                    z14 = false;
                } else {
                    z14 = z11;
                }
                if (i34 != 0) {
                    qVarA = ComposableSingletons$CoreTextFieldKt.INSTANCE.a();
                } else {
                    qVarA = qVar;
                }
                z15 = z13;
            } else {
                if (i38 != 0) {
                    modifier2 = Modifier.Companion;
                } else {
                    modifier2 = modifier;
                }
                if (i15 != 0) {
                    textStyleA = TextStyle.Companion.a();
                } else {
                    textStyleA = textStyle;
                }
                if (i17 != 0) {
                    visualTransformationC = VisualTransformation.Companion.c();
                } else {
                    visualTransformationC = visualTransformation;
                }
                if (i19 != 0) {
                    lVar2 = CoreTextFieldKt$CoreTextField$1.INSTANCE;
                } else {
                    lVar2 = lVar;
                }
                if (i21 != 0) {
                    mutableInteractionSource2 = null;
                } else {
                    mutableInteractionSource2 = mutableInteractionSource;
                }
                if ((i13 & 128) != 0) {
                    solidColor = new SolidColor(Color.Companion.f(), null);
                } else {
                    solidColor = brush;
                }
                if (i23 != 0) {
                    z12 = true;
                } else {
                    z12 = z6;
                }
                if (i25 != 0) {
                    i35 = Integer.MAX_VALUE;
                } else {
                    i35 = i10;
                }
                if ((i13 & 1024) != 0) {
                    imeOptionsA = ImeOptions.Companion.a();
                    i30 &= -15;
                } else {
                    imeOptionsA = imeOptions;
                }
                if (i28 != 0) {
                    keyboardActionsA = KeyboardActions.Companion.a();
                } else {
                    keyboardActionsA = keyboardActions;
                }
                if (i31 != 0) {
                    z13 = true;
                } else {
                    z13 = z10;
                }
                if (i33 != 0) {
                    z14 = false;
                } else {
                    z14 = z11;
                }
                if (i34 != 0) {
                    qVarA = ComposableSingletons$CoreTextFieldKt.INSTANCE.a();
                } else {
                    qVarA = qVar;
                }
                z15 = z13;
            }
            composerS.A();
            focusRequester = new FocusRequester();
            composerS.G(-55013392);
            if (z15) {
                textInputService = null;
            } else {
                textInputService = null;
            }
            composerS.Q();
            density = (Density) composerS.x(CompositionLocalsKt.e());
            resolver = (FontFamily.Resolver) composerS.x(CompositionLocalsKt.g());
            long jA1110 = ((TextSelectionColors) composerS.x(TextSelectionColorsKt.b())).a();
            FocusManager focusManager1110 = (FocusManager) composerS.x(CompositionLocalsKt.f());
            Modifier modifier1113 = modifier2;
            if (i35 == 1) {
                orientation = Orientation.Vertical;
            } else {
                orientation = Orientation.Vertical;
            }
            int i31118 = i30;
            i36 = i35;
            orientation2 = orientation;
            Object[] objArr1110 = {orientation2};
            Saver<TextFieldScrollerPosition, Object> saverA1110 = TextFieldScrollerPosition.Companion.a();
            z16 = z15;
            composerS.G(1157296644);
            zK = composerS.k(orientation2);
            mutableInteractionSource3 = mutableInteractionSource2;
            objH = composerS.H();
            if (zK) {
                objH = new CoreTextFieldKt$CoreTextField$scrollerPosition$1$1(orientation2);
                composerS.z(objH);
            } else {
                objH = new CoreTextFieldKt$CoreTextField$scrollerPosition$1$1(orientation2);
                composerS.z(objH);
            }
            composerS.Q();
            TextFieldScrollerPosition textFieldScrollerPosition1110 = (TextFieldScrollerPosition) RememberSaveableKt.b(objArr1110, saverA1110, null, (a) objH, composerS, 72, 4);
            composerS.G(511388516);
            zK2 = composerS.k(value) | composerS.k(visualTransformationC);
            objH2 = composerS.H();
            if (zK2) {
                transformedTextA = visualTransformationC.a(value.e());
                textRangeF = value.f();
                if (textRangeF != null) {
                    objH2 = transformedTextA;
                } else {
                    objH2 = transformedTextA;
                }
                composerS.z(objH2);
            } else {
                transformedTextA = visualTransformationC.a(value.e());
                textRangeF = value.f();
                if (textRangeF != null) {
                    objH2 = transformedTextA;
                } else {
                    objH2 = transformedTextA;
                }
                composerS.z(objH2);
            }
            composerS.Q();
            TransformedText transformedText1110 = (TransformedText) objH2;
            annotatedStringB = transformedText1110.b();
            offsetMappingA = transformedText1110.a();
            recomposeScopeB = ComposablesKt.b(composerS, 0);
            composerS.G(-492369756);
            objH3 = composerS.H();
            companion = Composer.Companion;
            if (objH3 == companion.a()) {
                objH3 = new TextFieldState(new TextDelegate(annotatedStringB, textStyleA, 0, z12, 0, density, resolver, null, TarConstants.CHKSUM_OFFSET, null), recomposeScopeB);
                composerS.z(objH3);
            }
            composerS.Q();
            textFieldState = (TextFieldState) objH3;
            textFieldState.A(annotatedStringB, textStyleA, z12, density, resolver, onValueChange, keyboardActionsA, focusManager1110, jA1110);
            textFieldState.j().b(value, textFieldState.e());
            composerS.G(-492369756);
            objH4 = composerS.H();
            if (objH4 == companion.a()) {
                objH4 = new UndoManager(0, 1, null);
                composerS.z(objH4);
            }
            composerS.Q();
            undoManager = (UndoManager) objH4;
            UndoManager.f(undoManager, value, 0L, 2, null);
            composerS.G(-492369756);
            objH5 = composerS.H();
            if (objH5 == companion.a()) {
                objH5 = new TextFieldSelectionManager(undoManager);
                composerS.z(objH5);
            }
            composerS.Q();
            textFieldSelectionManager = (TextFieldSelectionManager) objH5;
            textFieldSelectionManager.U(offsetMappingA);
            textFieldSelectionManager.Z(visualTransformationC);
            textFieldSelectionManager.V(textFieldState.i());
            textFieldSelectionManager.W(textFieldState);
            textFieldSelectionManager.Y(value);
            textFieldSelectionManager.N((ClipboardManager) composerS.x(CompositionLocalsKt.d()));
            textFieldSelectionManager.X((TextToolbar) composerS.x(CompositionLocalsKt.m()));
            textFieldSelectionManager.T((HapticFeedback) composerS.x(CompositionLocalsKt.h()));
            textFieldSelectionManager.R(focusRequester);
            textFieldSelectionManager.Q(!z14);
            composerS.G(773894976);
            composerS.G(-492369756);
            objH6 = composerS.H();
            if (objH6 == companion.a()) {
                CompositionScopedCoroutineScopeCanceller compositionScopedCoroutineScopeCanceller1110 = new CompositionScopedCoroutineScopeCanceller(EffectsKt.j(h.INSTANCE, composerS));
                composerS.z(compositionScopedCoroutineScopeCanceller1110);
                objH6 = compositionScopedCoroutineScopeCanceller1110;
            }
            composerS.Q();
            o0 o0VarA1110 = ((CompositionScopedCoroutineScopeCanceller) objH6).a();
            composerS.Q();
            composerS.G(-492369756);
            objH7 = composerS.H();
            if (objH7 == companion.a()) {
                objH7 = BringIntoViewRequesterKt.a();
                composerS.z(objH7);
            }
            composerS.Q();
            BringIntoViewRequester bringIntoViewRequester1110 = (BringIntoViewRequester) objH7;
            companion2 = Modifier.Companion;
            Modifier modifierC1110 = TextFieldGestureModifiersKt.c(companion2, z16, focusRequester, mutableInteractionSource3, new CoreTextFieldKt$CoreTextField$focusModifier$1(textFieldState, textInputService, value, imeOptionsA, textFieldSelectionManager, o0VarA1110, bringIntoViewRequester1110, offsetMappingA));
            EffectsKt.a(textFieldState, new CoreTextFieldKt$CoreTextField$2(textFieldState), composerS, 8);
            if (TouchMode_androidKt.a()) {
                modifierB = TextFieldPressGestureFilterKt.a(companion2, mutableInteractionSource3, z16, new CoreTextFieldKt$CoreTextField$pointerModifier$1(textFieldState, focusRequester, z14, textFieldSelectionManager, offsetMappingA)).B(TextFieldGestureModifiersKt.a(companion2, textFieldSelectionManager.G(), z16));
                z17 = false;
            } else {
                z17 = false;
                modifierB = PointerIconKt.b(TextFieldGestureModifiersKt.b(companion2, textFieldSelectionManager.B(), z16), TextPointerIcon_androidKt.a(), false, 2, null);
            }
            Modifier modifierA111111118 = DrawModifierKt.a(companion2, new CoreTextFieldKt$CoreTextField$drawModifier$1(textFieldState, value, offsetMappingA));
            Modifier modifierA111111119 = OnGloballyPositionedModifierKt.a(companion2, new CoreTextFieldKt$CoreTextField$onPositionedModifier$1(textFieldState, z16, textFieldSelectionManager));
            Modifier modifierB1111111 = SemanticsModifierKt.b(companion2, true, new CoreTextFieldKt$CoreTextField$semanticsModifier$1(imeOptionsA, transformedText1110, value, z16, visualTransformationC instanceof PasswordVisualTransformation, z14, textFieldState, offsetMappingA, textFieldSelectionManager, focusRequester));
            if (z16) {
                z18 = z17;
            } else {
                z18 = z17;
            }
            Modifier modifierB1111112 = TextFieldCursorKt.b(companion2, textFieldState, value, offsetMappingA, solidColor, z18);
            EffectsKt.a(textFieldSelectionManager, new CoreTextFieldKt$CoreTextField$3(textFieldSelectionManager), composerS, 8);
            EffectsKt.a(imeOptionsA, new CoreTextFieldKt$CoreTextField$4(textInputService, textFieldState, value, imeOptionsA), composerS, i31118 & 14);
            l<TextFieldValue, l0> lVarI1110 = textFieldState.i();
            boolean z21113 = !z14;
            if (i36 == 1) {
                z19 = true;
            } else {
                z19 = z17;
            }
            Modifier modifierA1111111110 = OnGloballyPositionedModifierKt.a(TextFieldScrollKt.d(m(modifier1113.B(modifierC1110), textFieldState, textFieldSelectionManager).B(TextFieldKeyInputKt.a(companion2, textFieldState, textFieldSelectionManager, value, lVarI1110, z21113, z19, offsetMappingA, undoManager)), textFieldScrollerPosition1110, mutableInteractionSource3, z16).B(modifierB).B(modifierB1111111), new CoreTextFieldKt$CoreTextField$decorationBoxModifier$1(textFieldState));
            if (!z16) {
                z20 = z17;
            } else {
                z20 = z17;
            }
            if (z20) {
                modifierB2 = TextFieldSelectionManager_androidKt.b(companion2, textFieldSelectionManager);
            } else {
                modifierB2 = companion2;
            }
            ImeOptions imeOptions1112 = imeOptionsA;
            composer2 = composerS;
            b(modifierA1111111110, textFieldSelectionManager, ComposableLambdaKt.b(composer2, -1885146845, true, new CoreTextFieldKt$CoreTextField$5(qVarA, i31118, i36, textStyleA, textFieldScrollerPosition1110, value, visualTransformationC, modifierB1111112, modifierA111111118, modifierA111111119, modifierB2, bringIntoViewRequester1110, textFieldState, textFieldSelectionManager, z20, z14, lVar2)), composer2, 448);
            textStyle2 = textStyleA;
            mutableInteractionSource4 = mutableInteractionSource3;
            lVar3 = lVar2;
            brush2 = solidColor;
            z21 = z12;
            keyboardActions2 = keyboardActionsA;
            z22 = z14;
            qVar2 = qVarA;
            visualTransformation2 = visualTransformationC;
            modifier3 = modifier1113;
            i37 = i36;
            z23 = z16;
            imeOptions2 = imeOptions1112;
        } else {
            composerS.J();
            if ((i11 & 1) != 0) {
                if (i38 != 0) {
                    modifier2 = Modifier.Companion;
                } else {
                    modifier2 = modifier;
                }
                if (i15 != 0) {
                    textStyleA = TextStyle.Companion.a();
                } else {
                    textStyleA = textStyle;
                }
                if (i17 != 0) {
                    visualTransformationC = VisualTransformation.Companion.c();
                } else {
                    visualTransformationC = visualTransformation;
                }
                if (i19 != 0) {
                    lVar2 = CoreTextFieldKt$CoreTextField$1.INSTANCE;
                } else {
                    lVar2 = lVar;
                }
                if (i21 != 0) {
                    mutableInteractionSource2 = null;
                } else {
                    mutableInteractionSource2 = mutableInteractionSource;
                }
                if ((i13 & 128) != 0) {
                    solidColor = new SolidColor(Color.Companion.f(), null);
                } else {
                    solidColor = brush;
                }
                if (i23 != 0) {
                    z12 = true;
                } else {
                    z12 = z6;
                }
                if (i25 != 0) {
                    i35 = Integer.MAX_VALUE;
                } else {
                    i35 = i10;
                }
                if ((i13 & 1024) != 0) {
                    imeOptionsA = ImeOptions.Companion.a();
                    i30 &= -15;
                } else {
                    imeOptionsA = imeOptions;
                }
                if (i28 != 0) {
                    keyboardActionsA = KeyboardActions.Companion.a();
                } else {
                    keyboardActionsA = keyboardActions;
                }
                if (i31 != 0) {
                    z13 = true;
                } else {
                    z13 = z10;
                }
                if (i33 != 0) {
                    z14 = false;
                } else {
                    z14 = z11;
                }
                if (i34 != 0) {
                    qVarA = ComposableSingletons$CoreTextFieldKt.INSTANCE.a();
                } else {
                    qVarA = qVar;
                }
                z15 = z13;
            } else {
                if (i38 != 0) {
                    modifier2 = Modifier.Companion;
                } else {
                    modifier2 = modifier;
                }
                if (i15 != 0) {
                    textStyleA = TextStyle.Companion.a();
                } else {
                    textStyleA = textStyle;
                }
                if (i17 != 0) {
                    visualTransformationC = VisualTransformation.Companion.c();
                } else {
                    visualTransformationC = visualTransformation;
                }
                if (i19 != 0) {
                    lVar2 = CoreTextFieldKt$CoreTextField$1.INSTANCE;
                } else {
                    lVar2 = lVar;
                }
                if (i21 != 0) {
                    mutableInteractionSource2 = null;
                } else {
                    mutableInteractionSource2 = mutableInteractionSource;
                }
                if ((i13 & 128) != 0) {
                    solidColor = new SolidColor(Color.Companion.f(), null);
                } else {
                    solidColor = brush;
                }
                if (i23 != 0) {
                    z12 = true;
                } else {
                    z12 = z6;
                }
                if (i25 != 0) {
                    i35 = Integer.MAX_VALUE;
                } else {
                    i35 = i10;
                }
                if ((i13 & 1024) != 0) {
                    imeOptionsA = ImeOptions.Companion.a();
                    i30 &= -15;
                } else {
                    imeOptionsA = imeOptions;
                }
                if (i28 != 0) {
                    keyboardActionsA = KeyboardActions.Companion.a();
                } else {
                    keyboardActionsA = keyboardActions;
                }
                if (i31 != 0) {
                    z13 = true;
                } else {
                    z13 = z10;
                }
                if (i33 != 0) {
                    z14 = false;
                } else {
                    z14 = z11;
                }
                if (i34 != 0) {
                    qVarA = ComposableSingletons$CoreTextFieldKt.INSTANCE.a();
                } else {
                    qVarA = qVar;
                }
                z15 = z13;
            }
            composerS.A();
            focusRequester = new FocusRequester();
            composerS.G(-55013392);
            if (z15) {
                textInputService = null;
            } else {
                textInputService = null;
            }
            composerS.Q();
            density = (Density) composerS.x(CompositionLocalsKt.e());
            resolver = (FontFamily.Resolver) composerS.x(CompositionLocalsKt.g());
            long jA1111 = ((TextSelectionColors) composerS.x(TextSelectionColorsKt.b())).a();
            FocusManager focusManager1111 = (FocusManager) composerS.x(CompositionLocalsKt.f());
            Modifier modifier1114 = modifier2;
            if (i35 == 1) {
                orientation = Orientation.Vertical;
            } else {
                orientation = Orientation.Vertical;
            }
            int i31119 = i30;
            i36 = i35;
            orientation2 = orientation;
            Object[] objArr1111 = {orientation2};
            Saver<TextFieldScrollerPosition, Object> saverA1111 = TextFieldScrollerPosition.Companion.a();
            z16 = z15;
            composerS.G(1157296644);
            zK = composerS.k(orientation2);
            mutableInteractionSource3 = mutableInteractionSource2;
            objH = composerS.H();
            if (zK) {
                objH = new CoreTextFieldKt$CoreTextField$scrollerPosition$1$1(orientation2);
                composerS.z(objH);
            } else {
                objH = new CoreTextFieldKt$CoreTextField$scrollerPosition$1$1(orientation2);
                composerS.z(objH);
            }
            composerS.Q();
            TextFieldScrollerPosition textFieldScrollerPosition1111 = (TextFieldScrollerPosition) RememberSaveableKt.b(objArr1111, saverA1111, null, (a) objH, composerS, 72, 4);
            composerS.G(511388516);
            zK2 = composerS.k(value) | composerS.k(visualTransformationC);
            objH2 = composerS.H();
            if (zK2) {
                transformedTextA = visualTransformationC.a(value.e());
                textRangeF = value.f();
                if (textRangeF != null) {
                    objH2 = transformedTextA;
                } else {
                    objH2 = transformedTextA;
                }
                composerS.z(objH2);
            } else {
                transformedTextA = visualTransformationC.a(value.e());
                textRangeF = value.f();
                if (textRangeF != null) {
                    objH2 = transformedTextA;
                } else {
                    objH2 = transformedTextA;
                }
                composerS.z(objH2);
            }
            composerS.Q();
            TransformedText transformedText1111 = (TransformedText) objH2;
            annotatedStringB = transformedText1111.b();
            offsetMappingA = transformedText1111.a();
            recomposeScopeB = ComposablesKt.b(composerS, 0);
            composerS.G(-492369756);
            objH3 = composerS.H();
            companion = Composer.Companion;
            if (objH3 == companion.a()) {
                objH3 = new TextFieldState(new TextDelegate(annotatedStringB, textStyleA, 0, z12, 0, density, resolver, null, TarConstants.CHKSUM_OFFSET, null), recomposeScopeB);
                composerS.z(objH3);
            }
            composerS.Q();
            textFieldState = (TextFieldState) objH3;
            textFieldState.A(annotatedStringB, textStyleA, z12, density, resolver, onValueChange, keyboardActionsA, focusManager1111, jA1111);
            textFieldState.j().b(value, textFieldState.e());
            composerS.G(-492369756);
            objH4 = composerS.H();
            if (objH4 == companion.a()) {
                objH4 = new UndoManager(0, 1, null);
                composerS.z(objH4);
            }
            composerS.Q();
            undoManager = (UndoManager) objH4;
            UndoManager.f(undoManager, value, 0L, 2, null);
            composerS.G(-492369756);
            objH5 = composerS.H();
            if (objH5 == companion.a()) {
                objH5 = new TextFieldSelectionManager(undoManager);
                composerS.z(objH5);
            }
            composerS.Q();
            textFieldSelectionManager = (TextFieldSelectionManager) objH5;
            textFieldSelectionManager.U(offsetMappingA);
            textFieldSelectionManager.Z(visualTransformationC);
            textFieldSelectionManager.V(textFieldState.i());
            textFieldSelectionManager.W(textFieldState);
            textFieldSelectionManager.Y(value);
            textFieldSelectionManager.N((ClipboardManager) composerS.x(CompositionLocalsKt.d()));
            textFieldSelectionManager.X((TextToolbar) composerS.x(CompositionLocalsKt.m()));
            textFieldSelectionManager.T((HapticFeedback) composerS.x(CompositionLocalsKt.h()));
            textFieldSelectionManager.R(focusRequester);
            textFieldSelectionManager.Q(!z14);
            composerS.G(773894976);
            composerS.G(-492369756);
            objH6 = composerS.H();
            if (objH6 == companion.a()) {
                CompositionScopedCoroutineScopeCanceller compositionScopedCoroutineScopeCanceller1111 = new CompositionScopedCoroutineScopeCanceller(EffectsKt.j(h.INSTANCE, composerS));
                composerS.z(compositionScopedCoroutineScopeCanceller1111);
                objH6 = compositionScopedCoroutineScopeCanceller1111;
            }
            composerS.Q();
            o0 o0VarA1111 = ((CompositionScopedCoroutineScopeCanceller) objH6).a();
            composerS.Q();
            composerS.G(-492369756);
            objH7 = composerS.H();
            if (objH7 == companion.a()) {
                objH7 = BringIntoViewRequesterKt.a();
                composerS.z(objH7);
            }
            composerS.Q();
            BringIntoViewRequester bringIntoViewRequester1111 = (BringIntoViewRequester) objH7;
            companion2 = Modifier.Companion;
            Modifier modifierC1111 = TextFieldGestureModifiersKt.c(companion2, z16, focusRequester, mutableInteractionSource3, new CoreTextFieldKt$CoreTextField$focusModifier$1(textFieldState, textInputService, value, imeOptionsA, textFieldSelectionManager, o0VarA1111, bringIntoViewRequester1111, offsetMappingA));
            EffectsKt.a(textFieldState, new CoreTextFieldKt$CoreTextField$2(textFieldState), composerS, 8);
            if (TouchMode_androidKt.a()) {
                modifierB = TextFieldPressGestureFilterKt.a(companion2, mutableInteractionSource3, z16, new CoreTextFieldKt$CoreTextField$pointerModifier$1(textFieldState, focusRequester, z14, textFieldSelectionManager, offsetMappingA)).B(TextFieldGestureModifiersKt.a(companion2, textFieldSelectionManager.G(), z16));
                z17 = false;
            } else {
                z17 = false;
                modifierB = PointerIconKt.b(TextFieldGestureModifiersKt.b(companion2, textFieldSelectionManager.B(), z16), TextPointerIcon_androidKt.a(), false, 2, null);
            }
            Modifier modifierA1111111111 = DrawModifierKt.a(companion2, new CoreTextFieldKt$CoreTextField$drawModifier$1(textFieldState, value, offsetMappingA));
            Modifier modifierA1111111112 = OnGloballyPositionedModifierKt.a(companion2, new CoreTextFieldKt$CoreTextField$onPositionedModifier$1(textFieldState, z16, textFieldSelectionManager));
            Modifier modifierB1111113 = SemanticsModifierKt.b(companion2, true, new CoreTextFieldKt$CoreTextField$semanticsModifier$1(imeOptionsA, transformedText1111, value, z16, visualTransformationC instanceof PasswordVisualTransformation, z14, textFieldState, offsetMappingA, textFieldSelectionManager, focusRequester));
            if (z16) {
                z18 = z17;
            } else {
                z18 = z17;
            }
            Modifier modifierB1111114 = TextFieldCursorKt.b(companion2, textFieldState, value, offsetMappingA, solidColor, z18);
            EffectsKt.a(textFieldSelectionManager, new CoreTextFieldKt$CoreTextField$3(textFieldSelectionManager), composerS, 8);
            EffectsKt.a(imeOptionsA, new CoreTextFieldKt$CoreTextField$4(textInputService, textFieldState, value, imeOptionsA), composerS, i31119 & 14);
            l<TextFieldValue, l0> lVarI1111 = textFieldState.i();
            boolean z21114 = !z14;
            if (i36 == 1) {
                z19 = true;
            } else {
                z19 = z17;
            }
            Modifier modifierA1111111113 = OnGloballyPositionedModifierKt.a(TextFieldScrollKt.d(m(modifier1114.B(modifierC1111), textFieldState, textFieldSelectionManager).B(TextFieldKeyInputKt.a(companion2, textFieldState, textFieldSelectionManager, value, lVarI1111, z21114, z19, offsetMappingA, undoManager)), textFieldScrollerPosition1111, mutableInteractionSource3, z16).B(modifierB).B(modifierB1111113), new CoreTextFieldKt$CoreTextField$decorationBoxModifier$1(textFieldState));
            if (!z16) {
                z20 = z17;
            } else {
                z20 = z17;
            }
            if (z20) {
                modifierB2 = TextFieldSelectionManager_androidKt.b(companion2, textFieldSelectionManager);
            } else {
                modifierB2 = companion2;
            }
            ImeOptions imeOptions1113 = imeOptionsA;
            composer2 = composerS;
            b(modifierA1111111113, textFieldSelectionManager, ComposableLambdaKt.b(composer2, -1885146845, true, new CoreTextFieldKt$CoreTextField$5(qVarA, i31119, i36, textStyleA, textFieldScrollerPosition1111, value, visualTransformationC, modifierB1111114, modifierA1111111111, modifierA1111111112, modifierB2, bringIntoViewRequester1111, textFieldState, textFieldSelectionManager, z20, z14, lVar2)), composer2, 448);
            textStyle2 = textStyleA;
            mutableInteractionSource4 = mutableInteractionSource3;
            lVar3 = lVar2;
            brush2 = solidColor;
            z21 = z12;
            keyboardActions2 = keyboardActionsA;
            z22 = z14;
            qVar2 = qVarA;
            visualTransformation2 = visualTransformationC;
            modifier3 = modifier1114;
            i37 = i36;
            z23 = z16;
            imeOptions2 = imeOptions1113;
        }
        scopeUpdateScopeU = composer2.u();
        if (scopeUpdateScopeU == null) {
            return;
        }
        scopeUpdateScopeU.a(new CoreTextFieldKt$CoreTextField$6(value, onValueChange, modifier3, textStyle2, visualTransformation2, lVar3, mutableInteractionSource4, brush2, z21, i37, imeOptions2, keyboardActions2, z23, z22, qVar2, i11, i12, i13));
    }

    @ComposableTarget
    @Composable
    public static final void d(@NotNull TextFieldSelectionManager manager, @Nullable Composer composer, int i10) {
        t.j(manager, "manager");
        Composer composerS = composer.s(-1436003720);
        TextFieldState textFieldStateE = manager.E();
        if (textFieldStateE != null && textFieldStateE.m()) {
            composerS.G(1157296644);
            boolean zK = composerS.k(manager);
            Object objH = composerS.H();
            if (zK || objH == Composer.Companion.a()) {
                objH = manager.n();
                composerS.z(objH);
            }
            composerS.Q();
            TextDragObserver textDragObserver = (TextDragObserver) objH;
            long jV = manager.v((Density) composerS.x(CompositionLocalsKt.e()));
            Modifier modifierB = SuspendingPointerInputFilterKt.b(Modifier.Companion, textDragObserver, new CoreTextFieldKt$TextFieldCursorHandle$1(textDragObserver, null));
            Offset offsetD = Offset.d(jV);
            composerS.G(1157296644);
            boolean zK2 = composerS.k(offsetD);
            Object objH2 = composerS.H();
            if (zK2 || objH2 == Composer.Companion.a()) {
                objH2 = new CoreTextFieldKt$TextFieldCursorHandle$2$1(jV);
                composerS.z(objH2);
            }
            composerS.Q();
            AndroidCursorHandle_androidKt.a(jV, SemanticsModifierKt.c(modifierB, false, (l) objH2, 1, null), null, composerS, 384);
        }
        ScopeUpdateScope scopeUpdateScopeU = composerS.u();
        if (scopeUpdateScopeU == null) {
            return;
        }
        scopeUpdateScopeU.a(new CoreTextFieldKt$TextFieldCursorHandle$3(manager, i10));
    }

    private static final Modifier m(Modifier modifier, TextFieldState textFieldState, TextFieldSelectionManager textFieldSelectionManager) {
        return KeyInputModifierKt.c(modifier, new CoreTextFieldKt$previewKeyEventToDeselectOnBack$1(textFieldState, textFieldSelectionManager));
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Composable
    @ComposableInferredTarget
    public static final void b(Modifier modifier, TextFieldSelectionManager textFieldSelectionManager, p<? super Composer, ? super Integer, l0> pVar, Composer composer, int i10) {
        Composer composerS = composer.s(-20551815);
        int i11 = (i10 & 14) | 384;
        composerS.G(733328855);
        int i12 = i11 >> 3;
        MeasurePolicy measurePolicyH = BoxKt.h(Alignment.Companion.o(), true, composerS, (i12 & 112) | (i12 & 14));
        composerS.G(-1323940314);
        Density density = (Density) composerS.x(CompositionLocalsKt.e());
        LayoutDirection layoutDirection = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
        ViewConfiguration viewConfiguration = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
        ComposeUiNode.Companion companion = ComposeUiNode.Companion;
        a<ComposeUiNode> aVarA = companion.a();
        q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC = LayoutKt.c(modifier);
        int i13 = ((((i11 << 3) & 112) << 9) & 7168) | 6;
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
        Updater.e(composerA, measurePolicyH, companion.d());
        Updater.e(composerA, density, companion.b());
        Updater.e(composerA, layoutDirection, companion.c());
        Updater.e(composerA, viewConfiguration, companion.f());
        composerS.o();
        qVarC.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, Integer.valueOf((i13 >> 3) & 112));
        composerS.G(2058660585);
        composerS.G(-2137368960);
        if (((i13 >> 9) & 10) == 2 && composerS.b()) {
            composerS.g();
        } else {
            BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
            composerS.G(1524757375);
            if (((((i11 >> 6) & 112) | 6) & 81) == 16 && composerS.b()) {
                composerS.g();
            } else {
                ContextMenu_androidKt.b(textFieldSelectionManager, pVar, composerS, ((i10 >> 3) & 112) | 8);
            }
            composerS.Q();
        }
        composerS.Q();
        composerS.Q();
        composerS.d();
        composerS.Q();
        composerS.Q();
        ScopeUpdateScope scopeUpdateScopeU = composerS.u();
        if (scopeUpdateScopeU != null) {
            scopeUpdateScopeU.a(new CoreTextFieldKt$CoreTextFieldRootBox$2(modifier, textFieldSelectionManager, pVar, i10));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @ComposableTarget
    @Composable
    public static final void c(TextFieldSelectionManager textFieldSelectionManager, boolean z6, Composer composer, int i10) {
        TextLayoutResult textLayoutResultI;
        TextLayoutResultProxy textLayoutResultProxyG;
        Composer composerS = composer.s(626339208);
        if (z6) {
            TextFieldState textFieldStateE = textFieldSelectionManager.E();
            if (textFieldStateE != null && (textLayoutResultProxyG = textFieldStateE.g()) != null) {
                textLayoutResultI = textLayoutResultProxyG.i();
            } else {
                textLayoutResultI = null;
            }
            if (textLayoutResultI != null) {
                if (!TextRange.h(textFieldSelectionManager.H().g())) {
                    int iB = textFieldSelectionManager.C().b(TextRange.n(textFieldSelectionManager.H().g()));
                    int iB2 = textFieldSelectionManager.C().b(TextRange.i(textFieldSelectionManager.H().g()));
                    ResolvedTextDirection resolvedTextDirectionB = textLayoutResultI.b(iB);
                    ResolvedTextDirection resolvedTextDirectionB2 = textLayoutResultI.b(Math.max(iB2 - 1, 0));
                    composerS.G(-498396421);
                    TextFieldState textFieldStateE2 = textFieldSelectionManager.E();
                    if (textFieldStateE2 != null && textFieldStateE2.p()) {
                        TextFieldSelectionManagerKt.a(true, resolvedTextDirectionB, textFieldSelectionManager, composerS, 518);
                    }
                    composerS.Q();
                    TextFieldState textFieldStateE3 = textFieldSelectionManager.E();
                    if (textFieldStateE3 != null && textFieldStateE3.o()) {
                        TextFieldSelectionManagerKt.a(false, resolvedTextDirectionB2, textFieldSelectionManager, composerS, 518);
                    }
                }
                TextFieldState textFieldStateE4 = textFieldSelectionManager.E();
                if (textFieldStateE4 != null) {
                    if (textFieldSelectionManager.K()) {
                        textFieldStateE4.x(false);
                    }
                    if (textFieldStateE4.d()) {
                        if (textFieldStateE4.n()) {
                            textFieldSelectionManager.a0();
                        } else {
                            textFieldSelectionManager.J();
                        }
                    }
                }
            }
        } else {
            textFieldSelectionManager.J();
        }
        ScopeUpdateScope scopeUpdateScopeU = composerS.u();
        if (scopeUpdateScopeU != null) {
            scopeUpdateScopeU.a(new CoreTextFieldKt$SelectionToolbarAndHandles$2(textFieldSelectionManager, z6, i10));
        }
    }

    @Nullable
    public static final Object j(@NotNull BringIntoViewRequester bringIntoViewRequester, @NotNull TextFieldValue textFieldValue, @NotNull TextDelegate textDelegate, @NotNull TextLayoutResult textLayoutResult, @NotNull OffsetMapping offsetMapping, @NotNull d<? super l0> dVar) {
        Rect rect;
        int iB = offsetMapping.b(TextRange.k(textFieldValue.g()));
        if (iB < textLayoutResult.k().j().length()) {
            rect = textLayoutResult.c(iB);
        } else if (iB != 0) {
            rect = textLayoutResult.c(iB - 1);
        } else {
            rect = new Rect(0.0f, 0.0f, 1.0f, IntSize.f(TextFieldDelegateKt.b(textDelegate.j(), textDelegate.a(), textDelegate.b(), null, 0, 24, null)));
        }
        Object objA = bringIntoViewRequester.a(rect, dVar);
        if (objA == kotlin.coroutines.intrinsics.d.e()) {
            return objA;
        }
        return l0.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void k(TextInputService textInputService, TextFieldState textFieldState, TextFieldValue textFieldValue, ImeOptions imeOptions) {
        if (textFieldState.d()) {
            textFieldState.t(TextFieldDelegate.Companion.g(textInputService, textFieldValue, textFieldState.j(), imeOptions, textFieldState.i(), textFieldState.h()));
        } else {
            l(textFieldState);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void l(TextFieldState textFieldState) {
        TextInputSession textInputSessionE = textFieldState.e();
        if (textInputSessionE != null) {
            TextFieldDelegate.Companion.e(textInputSessionE, textFieldState.j(), textFieldState.i());
        }
        textFieldState.t(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void n(TextFieldState textFieldState, FocusRequester focusRequester, boolean z6) {
        TextInputSession textInputSessionE;
        if (!textFieldState.d()) {
            focusRequester.c();
        } else if (z6 && (textInputSessionE = textFieldState.e()) != null) {
            textInputSessionE.c();
        }
    }
}
