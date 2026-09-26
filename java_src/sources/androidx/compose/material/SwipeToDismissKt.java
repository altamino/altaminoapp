package androidx.compose.material;

import androidx.compose.foundation.layout.BoxWithConstraintsKt;
import androidx.compose.foundation.layout.RowScope;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposableInferredTarget;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import androidx.profileinstaller.ProfileVerifier;
import e8.l;
import e8.q;
import java.util.Set;
import kotlin.collections.y0;
import kotlin.jvm.internal.t;
import org.apache.commons.compress.archivers.cpio.CpioConstants;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes4.dex */
public final class SwipeToDismissKt {
    /* JADX INFO: Access modifiers changed from: private */
    public static final DismissDirection c(DismissValue dismissValue, DismissValue dismissValue2) {
        if (dismissValue == dismissValue2 && dismissValue == DismissValue.Default) {
            return null;
        }
        if (dismissValue == dismissValue2 && dismissValue == DismissValue.DismissedToEnd) {
            return DismissDirection.StartToEnd;
        }
        if (dismissValue == dismissValue2 && dismissValue == DismissValue.DismissedToStart) {
            return DismissDirection.EndToStart;
        }
        DismissValue dismissValue3 = DismissValue.Default;
        if (dismissValue == dismissValue3 && dismissValue2 == DismissValue.DismissedToEnd) {
            return DismissDirection.StartToEnd;
        }
        if (dismissValue == dismissValue3 && dismissValue2 == DismissValue.DismissedToStart) {
            return DismissDirection.EndToStart;
        }
        if (dismissValue == DismissValue.DismissedToEnd && dismissValue2 == dismissValue3) {
            return DismissDirection.StartToEnd;
        }
        if (dismissValue == DismissValue.DismissedToStart && dismissValue2 == dismissValue3) {
            return DismissDirection.EndToStart;
        }
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:26:0x0058  */
    /* JADX WARN: Code duplicated, block: B:29:0x005e  */
    /* JADX WARN: Code duplicated, block: B:31:0x0063  */
    /* JADX WARN: Code duplicated, block: B:33:0x0067  */
    /* JADX WARN: Code duplicated, block: B:35:0x006f  */
    /* JADX WARN: Code duplicated, block: B:36:0x0072  */
    /* JADX WARN: Code duplicated, block: B:40:0x0079  */
    /* JADX WARN: Code duplicated, block: B:41:0x007c  */
    /* JADX WARN: Code duplicated, block: B:43:0x0082  */
    /* JADX WARN: Code duplicated, block: B:45:0x0088  */
    /* JADX WARN: Code duplicated, block: B:46:0x008b  */
    /* JADX WARN: Code duplicated, block: B:50:0x0092  */
    /* JADX WARN: Code duplicated, block: B:52:0x0096  */
    /* JADX WARN: Code duplicated, block: B:54:0x009b  */
    /* JADX WARN: Code duplicated, block: B:56:0x00a1  */
    /* JADX WARN: Code duplicated, block: B:57:0x00a4  */
    /* JADX WARN: Code duplicated, block: B:59:0x00a9  */
    /* JADX WARN: Code duplicated, block: B:65:0x00c3  */
    /* JADX WARN: Code duplicated, block: B:67:0x00cb  */
    /* JADX WARN: Code duplicated, block: B:75:0x00e1 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:76:0x00e3  */
    /* JADX WARN: Code duplicated, block: B:77:0x00e6  */
    /* JADX WARN: Code duplicated, block: B:79:0x00e9  */
    /* JADX WARN: Code duplicated, block: B:80:0x00fb  */
    /* JADX WARN: Code duplicated, block: B:82:0x00ff  */
    /* JADX WARN: Code duplicated, block: B:83:0x0109  */
    /* JADX WARN: Code duplicated, block: B:88:0x014b  */
    /* JADX WARN: Code duplicated, block: B:90:? A[RETURN, SYNTHETIC] */
    @Composable
    @ExperimentalMaterialApi
    @ComposableInferredTarget
    public static final void a(@NotNull DismissState state, @Nullable Modifier modifier, @Nullable Set<? extends DismissDirection> set, @Nullable l<? super DismissDirection, ? extends ThresholdConfig> lVar, @NotNull q<? super RowScope, ? super Composer, ? super Integer, l0> background, @NotNull q<? super RowScope, ? super Composer, ? super Integer, l0> dismissContent, @Nullable Composer composer, int i10, int i11) {
        int i12;
        Modifier modifier2;
        int i13;
        int i14;
        l<? super DismissDirection, ? extends ThresholdConfig> lVar2;
        int i15;
        int i16;
        int i17;
        Modifier modifier3;
        Set<? extends DismissDirection> setI;
        Set<? extends DismissDirection> set2;
        Modifier modifier4;
        int i18;
        l<? super DismissDirection, ? extends ThresholdConfig> lVar3;
        Modifier modifier5;
        Set<? extends DismissDirection> set3;
        l<? super DismissDirection, ? extends ThresholdConfig> lVar4;
        ScopeUpdateScope scopeUpdateScopeU;
        t.j(state, "state");
        t.j(background, "background");
        t.j(dismissContent, "dismissContent");
        Composer composerS = composer.s(634380143);
        if ((i11 & 1) != 0) {
            i12 = i10 | 6;
        } else if ((i10 & 14) == 0) {
            i12 = (composerS.k(state) ? 4 : 2) | i10;
        } else {
            i12 = i10;
        }
        int i19 = i11 & 2;
        if (i19 == 0) {
            if ((i10 & 112) == 0) {
                modifier2 = modifier;
                i12 |= composerS.k(modifier2) ? 32 : 16;
            }
            i13 = i11 & 4;
            if (i13 != 0) {
                i12 |= 128;
            }
            i14 = i11 & 8;
            if (i14 != 0) {
                if ((i10 & 7168) == 0) {
                    lVar2 = lVar;
                    if (composerS.k(lVar2)) {
                        i15 = 2048;
                    } else {
                        i15 = 1024;
                    }
                    i12 |= i15;
                }
                if ((i11 & 16) != 0) {
                    i12 |= CpioConstants.C_ISBLK;
                } else if ((57344 & i10) == 0) {
                    if (composerS.k(background)) {
                        i16 = 16384;
                    } else {
                        i16 = 8192;
                    }
                    i12 |= i16;
                }
                if ((i11 & 32) != 0) {
                    if ((458752 & i10) == 0) {
                        if (composerS.k(dismissContent)) {
                            i17 = 131072;
                        } else {
                            i17 = 65536;
                        }
                    }
                    if (i13 != 4 && (374491 & i12) == 74898 && composerS.b()) {
                        composerS.g();
                        set3 = set;
                        modifier5 = modifier2;
                        lVar4 = lVar2;
                    } else {
                        composerS.J();
                        if ((i10 & 1) != 0 || composerS.h()) {
                            if (i19 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier2;
                            }
                            if (i13 != 0) {
                                setI = y0.i(DismissDirection.EndToStart, DismissDirection.StartToEnd);
                                i12 &= -897;
                            } else {
                                setI = set;
                            }
                            if (i14 != 0) {
                                i18 = i12;
                                set2 = setI;
                                modifier4 = modifier3;
                                lVar3 = SwipeToDismissKt$SwipeToDismiss$1.INSTANCE;
                            } else {
                                set2 = setI;
                                modifier4 = modifier3;
                            }
                            composerS.A();
                            BoxWithConstraintsKt.a(modifier4, null, false, ComposableLambdaKt.b(composerS, 338007641, true, new SwipeToDismissKt$SwipeToDismiss$2(set2, lVar3, i18, state, background, dismissContent)), composerS, ((i18 >> 3) & 14) | 3072, 6);
                            modifier5 = modifier4;
                            set3 = set2;
                            lVar4 = lVar3;
                        } else {
                            composerS.g();
                            if (i13 != 0) {
                                i12 &= -897;
                            }
                            set2 = set;
                            modifier4 = modifier2;
                        }
                        lVar3 = lVar2;
                        i18 = i12;
                        composerS.A();
                        BoxWithConstraintsKt.a(modifier4, null, false, ComposableLambdaKt.b(composerS, 338007641, true, new SwipeToDismissKt$SwipeToDismiss$2(set2, lVar3, i18, state, background, dismissContent)), composerS, ((i18 >> 3) & 14) | 3072, 6);
                        modifier5 = modifier4;
                        set3 = set2;
                        lVar4 = lVar3;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new SwipeToDismissKt$SwipeToDismiss$3(state, modifier5, set3, lVar4, background, dismissContent, i10, i11));
                }
                i17 = ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                i12 |= i17;
                if (i13 != 4) {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i19 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            setI = y0.i(DismissDirection.EndToStart, DismissDirection.StartToEnd);
                            i12 &= -897;
                        } else {
                            setI = set;
                        }
                        if (i14 != 0) {
                            i18 = i12;
                            set2 = setI;
                            modifier4 = modifier3;
                            lVar3 = SwipeToDismissKt$SwipeToDismiss$1.INSTANCE;
                        } else {
                            set2 = setI;
                            modifier4 = modifier3;
                            lVar3 = lVar2;
                            i18 = i12;
                        }
                    } else {
                        if (i19 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            setI = y0.i(DismissDirection.EndToStart, DismissDirection.StartToEnd);
                            i12 &= -897;
                        } else {
                            setI = set;
                        }
                        if (i14 != 0) {
                            i18 = i12;
                            set2 = setI;
                            modifier4 = modifier3;
                            lVar3 = SwipeToDismissKt$SwipeToDismiss$1.INSTANCE;
                        } else {
                            set2 = setI;
                            modifier4 = modifier3;
                            lVar3 = lVar2;
                            i18 = i12;
                        }
                    }
                    composerS.A();
                    BoxWithConstraintsKt.a(modifier4, null, false, ComposableLambdaKt.b(composerS, 338007641, true, new SwipeToDismissKt$SwipeToDismiss$2(set2, lVar3, i18, state, background, dismissContent)), composerS, ((i18 >> 3) & 14) | 3072, 6);
                    modifier5 = modifier4;
                    set3 = set2;
                    lVar4 = lVar3;
                } else {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i19 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            setI = y0.i(DismissDirection.EndToStart, DismissDirection.StartToEnd);
                            i12 &= -897;
                        } else {
                            setI = set;
                        }
                        if (i14 != 0) {
                            i18 = i12;
                            set2 = setI;
                            modifier4 = modifier3;
                            lVar3 = SwipeToDismissKt$SwipeToDismiss$1.INSTANCE;
                        } else {
                            set2 = setI;
                            modifier4 = modifier3;
                            lVar3 = lVar2;
                            i18 = i12;
                        }
                    } else {
                        if (i19 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            setI = y0.i(DismissDirection.EndToStart, DismissDirection.StartToEnd);
                            i12 &= -897;
                        } else {
                            setI = set;
                        }
                        if (i14 != 0) {
                            i18 = i12;
                            set2 = setI;
                            modifier4 = modifier3;
                            lVar3 = SwipeToDismissKt$SwipeToDismiss$1.INSTANCE;
                        } else {
                            set2 = setI;
                            modifier4 = modifier3;
                            lVar3 = lVar2;
                            i18 = i12;
                        }
                    }
                    composerS.A();
                    BoxWithConstraintsKt.a(modifier4, null, false, ComposableLambdaKt.b(composerS, 338007641, true, new SwipeToDismissKt$SwipeToDismiss$2(set2, lVar3, i18, state, background, dismissContent)), composerS, ((i18 >> 3) & 14) | 3072, 6);
                    modifier5 = modifier4;
                    set3 = set2;
                    lVar4 = lVar3;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new SwipeToDismissKt$SwipeToDismiss$3(state, modifier5, set3, lVar4, background, dismissContent, i10, i11));
            }
            i12 |= 3072;
            lVar2 = lVar;
            if ((i11 & 16) != 0) {
                i12 |= CpioConstants.C_ISBLK;
            } else if ((57344 & i10) == 0) {
                if (composerS.k(background)) {
                    i16 = 16384;
                } else {
                    i16 = 8192;
                }
                i12 |= i16;
            }
            if ((i11 & 32) != 0) {
                if ((458752 & i10) == 0) {
                    if (composerS.k(dismissContent)) {
                        i17 = 131072;
                    } else {
                        i17 = 65536;
                    }
                }
                if (i13 != 4) {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i19 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            setI = y0.i(DismissDirection.EndToStart, DismissDirection.StartToEnd);
                            i12 &= -897;
                        } else {
                            setI = set;
                        }
                        if (i14 != 0) {
                            i18 = i12;
                            set2 = setI;
                            modifier4 = modifier3;
                            lVar3 = SwipeToDismissKt$SwipeToDismiss$1.INSTANCE;
                        } else {
                            set2 = setI;
                            modifier4 = modifier3;
                            lVar3 = lVar2;
                            i18 = i12;
                        }
                    } else {
                        if (i19 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            setI = y0.i(DismissDirection.EndToStart, DismissDirection.StartToEnd);
                            i12 &= -897;
                        } else {
                            setI = set;
                        }
                        if (i14 != 0) {
                            i18 = i12;
                            set2 = setI;
                            modifier4 = modifier3;
                            lVar3 = SwipeToDismissKt$SwipeToDismiss$1.INSTANCE;
                        } else {
                            set2 = setI;
                            modifier4 = modifier3;
                            lVar3 = lVar2;
                            i18 = i12;
                        }
                    }
                    composerS.A();
                    BoxWithConstraintsKt.a(modifier4, null, false, ComposableLambdaKt.b(composerS, 338007641, true, new SwipeToDismissKt$SwipeToDismiss$2(set2, lVar3, i18, state, background, dismissContent)), composerS, ((i18 >> 3) & 14) | 3072, 6);
                    modifier5 = modifier4;
                    set3 = set2;
                    lVar4 = lVar3;
                } else {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i19 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            setI = y0.i(DismissDirection.EndToStart, DismissDirection.StartToEnd);
                            i12 &= -897;
                        } else {
                            setI = set;
                        }
                        if (i14 != 0) {
                            i18 = i12;
                            set2 = setI;
                            modifier4 = modifier3;
                            lVar3 = SwipeToDismissKt$SwipeToDismiss$1.INSTANCE;
                        } else {
                            set2 = setI;
                            modifier4 = modifier3;
                            lVar3 = lVar2;
                            i18 = i12;
                        }
                    } else {
                        if (i19 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            setI = y0.i(DismissDirection.EndToStart, DismissDirection.StartToEnd);
                            i12 &= -897;
                        } else {
                            setI = set;
                        }
                        if (i14 != 0) {
                            i18 = i12;
                            set2 = setI;
                            modifier4 = modifier3;
                            lVar3 = SwipeToDismissKt$SwipeToDismiss$1.INSTANCE;
                        } else {
                            set2 = setI;
                            modifier4 = modifier3;
                            lVar3 = lVar2;
                            i18 = i12;
                        }
                    }
                    composerS.A();
                    BoxWithConstraintsKt.a(modifier4, null, false, ComposableLambdaKt.b(composerS, 338007641, true, new SwipeToDismissKt$SwipeToDismiss$2(set2, lVar3, i18, state, background, dismissContent)), composerS, ((i18 >> 3) & 14) | 3072, 6);
                    modifier5 = modifier4;
                    set3 = set2;
                    lVar4 = lVar3;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new SwipeToDismissKt$SwipeToDismiss$3(state, modifier5, set3, lVar4, background, dismissContent, i10, i11));
            }
            i17 = ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            i12 |= i17;
            if (i13 != 4) {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i19 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        setI = y0.i(DismissDirection.EndToStart, DismissDirection.StartToEnd);
                        i12 &= -897;
                    } else {
                        setI = set;
                    }
                    if (i14 != 0) {
                        i18 = i12;
                        set2 = setI;
                        modifier4 = modifier3;
                        lVar3 = SwipeToDismissKt$SwipeToDismiss$1.INSTANCE;
                    } else {
                        set2 = setI;
                        modifier4 = modifier3;
                        lVar3 = lVar2;
                        i18 = i12;
                    }
                } else {
                    if (i19 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        setI = y0.i(DismissDirection.EndToStart, DismissDirection.StartToEnd);
                        i12 &= -897;
                    } else {
                        setI = set;
                    }
                    if (i14 != 0) {
                        i18 = i12;
                        set2 = setI;
                        modifier4 = modifier3;
                        lVar3 = SwipeToDismissKt$SwipeToDismiss$1.INSTANCE;
                    } else {
                        set2 = setI;
                        modifier4 = modifier3;
                        lVar3 = lVar2;
                        i18 = i12;
                    }
                }
                composerS.A();
                BoxWithConstraintsKt.a(modifier4, null, false, ComposableLambdaKt.b(composerS, 338007641, true, new SwipeToDismissKt$SwipeToDismiss$2(set2, lVar3, i18, state, background, dismissContent)), composerS, ((i18 >> 3) & 14) | 3072, 6);
                modifier5 = modifier4;
                set3 = set2;
                lVar4 = lVar3;
            } else {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i19 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        setI = y0.i(DismissDirection.EndToStart, DismissDirection.StartToEnd);
                        i12 &= -897;
                    } else {
                        setI = set;
                    }
                    if (i14 != 0) {
                        i18 = i12;
                        set2 = setI;
                        modifier4 = modifier3;
                        lVar3 = SwipeToDismissKt$SwipeToDismiss$1.INSTANCE;
                    } else {
                        set2 = setI;
                        modifier4 = modifier3;
                        lVar3 = lVar2;
                        i18 = i12;
                    }
                } else {
                    if (i19 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        setI = y0.i(DismissDirection.EndToStart, DismissDirection.StartToEnd);
                        i12 &= -897;
                    } else {
                        setI = set;
                    }
                    if (i14 != 0) {
                        i18 = i12;
                        set2 = setI;
                        modifier4 = modifier3;
                        lVar3 = SwipeToDismissKt$SwipeToDismiss$1.INSTANCE;
                    } else {
                        set2 = setI;
                        modifier4 = modifier3;
                        lVar3 = lVar2;
                        i18 = i12;
                    }
                }
                composerS.A();
                BoxWithConstraintsKt.a(modifier4, null, false, ComposableLambdaKt.b(composerS, 338007641, true, new SwipeToDismissKt$SwipeToDismiss$2(set2, lVar3, i18, state, background, dismissContent)), composerS, ((i18 >> 3) & 14) | 3072, 6);
                modifier5 = modifier4;
                set3 = set2;
                lVar4 = lVar3;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new SwipeToDismissKt$SwipeToDismiss$3(state, modifier5, set3, lVar4, background, dismissContent, i10, i11));
        }
        i12 |= 48;
        modifier2 = modifier;
        i13 = i11 & 4;
        if (i13 != 0) {
            i12 |= 128;
        }
        i14 = i11 & 8;
        if (i14 != 0) {
            if ((i10 & 7168) == 0) {
                lVar2 = lVar;
                if (composerS.k(lVar2)) {
                    i15 = 2048;
                } else {
                    i15 = 1024;
                }
                i12 |= i15;
            }
            if ((i11 & 16) != 0) {
                i12 |= CpioConstants.C_ISBLK;
            } else if ((57344 & i10) == 0) {
                if (composerS.k(background)) {
                    i16 = 16384;
                } else {
                    i16 = 8192;
                }
                i12 |= i16;
            }
            if ((i11 & 32) != 0) {
                if ((458752 & i10) == 0) {
                    if (composerS.k(dismissContent)) {
                        i17 = 131072;
                    } else {
                        i17 = 65536;
                    }
                }
                if (i13 != 4) {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i19 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            setI = y0.i(DismissDirection.EndToStart, DismissDirection.StartToEnd);
                            i12 &= -897;
                        } else {
                            setI = set;
                        }
                        if (i14 != 0) {
                            i18 = i12;
                            set2 = setI;
                            modifier4 = modifier3;
                            lVar3 = SwipeToDismissKt$SwipeToDismiss$1.INSTANCE;
                        } else {
                            set2 = setI;
                            modifier4 = modifier3;
                            lVar3 = lVar2;
                            i18 = i12;
                        }
                    } else {
                        if (i19 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            setI = y0.i(DismissDirection.EndToStart, DismissDirection.StartToEnd);
                            i12 &= -897;
                        } else {
                            setI = set;
                        }
                        if (i14 != 0) {
                            i18 = i12;
                            set2 = setI;
                            modifier4 = modifier3;
                            lVar3 = SwipeToDismissKt$SwipeToDismiss$1.INSTANCE;
                        } else {
                            set2 = setI;
                            modifier4 = modifier3;
                            lVar3 = lVar2;
                            i18 = i12;
                        }
                    }
                    composerS.A();
                    BoxWithConstraintsKt.a(modifier4, null, false, ComposableLambdaKt.b(composerS, 338007641, true, new SwipeToDismissKt$SwipeToDismiss$2(set2, lVar3, i18, state, background, dismissContent)), composerS, ((i18 >> 3) & 14) | 3072, 6);
                    modifier5 = modifier4;
                    set3 = set2;
                    lVar4 = lVar3;
                } else {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i19 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            setI = y0.i(DismissDirection.EndToStart, DismissDirection.StartToEnd);
                            i12 &= -897;
                        } else {
                            setI = set;
                        }
                        if (i14 != 0) {
                            i18 = i12;
                            set2 = setI;
                            modifier4 = modifier3;
                            lVar3 = SwipeToDismissKt$SwipeToDismiss$1.INSTANCE;
                        } else {
                            set2 = setI;
                            modifier4 = modifier3;
                            lVar3 = lVar2;
                            i18 = i12;
                        }
                    } else {
                        if (i19 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            setI = y0.i(DismissDirection.EndToStart, DismissDirection.StartToEnd);
                            i12 &= -897;
                        } else {
                            setI = set;
                        }
                        if (i14 != 0) {
                            i18 = i12;
                            set2 = setI;
                            modifier4 = modifier3;
                            lVar3 = SwipeToDismissKt$SwipeToDismiss$1.INSTANCE;
                        } else {
                            set2 = setI;
                            modifier4 = modifier3;
                            lVar3 = lVar2;
                            i18 = i12;
                        }
                    }
                    composerS.A();
                    BoxWithConstraintsKt.a(modifier4, null, false, ComposableLambdaKt.b(composerS, 338007641, true, new SwipeToDismissKt$SwipeToDismiss$2(set2, lVar3, i18, state, background, dismissContent)), composerS, ((i18 >> 3) & 14) | 3072, 6);
                    modifier5 = modifier4;
                    set3 = set2;
                    lVar4 = lVar3;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new SwipeToDismissKt$SwipeToDismiss$3(state, modifier5, set3, lVar4, background, dismissContent, i10, i11));
            }
            i17 = ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            i12 |= i17;
            if (i13 != 4) {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i19 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        setI = y0.i(DismissDirection.EndToStart, DismissDirection.StartToEnd);
                        i12 &= -897;
                    } else {
                        setI = set;
                    }
                    if (i14 != 0) {
                        i18 = i12;
                        set2 = setI;
                        modifier4 = modifier3;
                        lVar3 = SwipeToDismissKt$SwipeToDismiss$1.INSTANCE;
                    } else {
                        set2 = setI;
                        modifier4 = modifier3;
                        lVar3 = lVar2;
                        i18 = i12;
                    }
                } else {
                    if (i19 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        setI = y0.i(DismissDirection.EndToStart, DismissDirection.StartToEnd);
                        i12 &= -897;
                    } else {
                        setI = set;
                    }
                    if (i14 != 0) {
                        i18 = i12;
                        set2 = setI;
                        modifier4 = modifier3;
                        lVar3 = SwipeToDismissKt$SwipeToDismiss$1.INSTANCE;
                    } else {
                        set2 = setI;
                        modifier4 = modifier3;
                        lVar3 = lVar2;
                        i18 = i12;
                    }
                }
                composerS.A();
                BoxWithConstraintsKt.a(modifier4, null, false, ComposableLambdaKt.b(composerS, 338007641, true, new SwipeToDismissKt$SwipeToDismiss$2(set2, lVar3, i18, state, background, dismissContent)), composerS, ((i18 >> 3) & 14) | 3072, 6);
                modifier5 = modifier4;
                set3 = set2;
                lVar4 = lVar3;
            } else {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i19 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        setI = y0.i(DismissDirection.EndToStart, DismissDirection.StartToEnd);
                        i12 &= -897;
                    } else {
                        setI = set;
                    }
                    if (i14 != 0) {
                        i18 = i12;
                        set2 = setI;
                        modifier4 = modifier3;
                        lVar3 = SwipeToDismissKt$SwipeToDismiss$1.INSTANCE;
                    } else {
                        set2 = setI;
                        modifier4 = modifier3;
                        lVar3 = lVar2;
                        i18 = i12;
                    }
                } else {
                    if (i19 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        setI = y0.i(DismissDirection.EndToStart, DismissDirection.StartToEnd);
                        i12 &= -897;
                    } else {
                        setI = set;
                    }
                    if (i14 != 0) {
                        i18 = i12;
                        set2 = setI;
                        modifier4 = modifier3;
                        lVar3 = SwipeToDismissKt$SwipeToDismiss$1.INSTANCE;
                    } else {
                        set2 = setI;
                        modifier4 = modifier3;
                        lVar3 = lVar2;
                        i18 = i12;
                    }
                }
                composerS.A();
                BoxWithConstraintsKt.a(modifier4, null, false, ComposableLambdaKt.b(composerS, 338007641, true, new SwipeToDismissKt$SwipeToDismiss$2(set2, lVar3, i18, state, background, dismissContent)), composerS, ((i18 >> 3) & 14) | 3072, 6);
                modifier5 = modifier4;
                set3 = set2;
                lVar4 = lVar3;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new SwipeToDismissKt$SwipeToDismiss$3(state, modifier5, set3, lVar4, background, dismissContent, i10, i11));
        }
        i12 |= 3072;
        lVar2 = lVar;
        if ((i11 & 16) != 0) {
            i12 |= CpioConstants.C_ISBLK;
        } else if ((57344 & i10) == 0) {
            if (composerS.k(background)) {
                i16 = 16384;
            } else {
                i16 = 8192;
            }
            i12 |= i16;
        }
        if ((i11 & 32) != 0) {
            if ((458752 & i10) == 0) {
                if (composerS.k(dismissContent)) {
                    i17 = 131072;
                } else {
                    i17 = 65536;
                }
            }
            if (i13 != 4) {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i19 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        setI = y0.i(DismissDirection.EndToStart, DismissDirection.StartToEnd);
                        i12 &= -897;
                    } else {
                        setI = set;
                    }
                    if (i14 != 0) {
                        i18 = i12;
                        set2 = setI;
                        modifier4 = modifier3;
                        lVar3 = SwipeToDismissKt$SwipeToDismiss$1.INSTANCE;
                    } else {
                        set2 = setI;
                        modifier4 = modifier3;
                        lVar3 = lVar2;
                        i18 = i12;
                    }
                } else {
                    if (i19 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        setI = y0.i(DismissDirection.EndToStart, DismissDirection.StartToEnd);
                        i12 &= -897;
                    } else {
                        setI = set;
                    }
                    if (i14 != 0) {
                        i18 = i12;
                        set2 = setI;
                        modifier4 = modifier3;
                        lVar3 = SwipeToDismissKt$SwipeToDismiss$1.INSTANCE;
                    } else {
                        set2 = setI;
                        modifier4 = modifier3;
                        lVar3 = lVar2;
                        i18 = i12;
                    }
                }
                composerS.A();
                BoxWithConstraintsKt.a(modifier4, null, false, ComposableLambdaKt.b(composerS, 338007641, true, new SwipeToDismissKt$SwipeToDismiss$2(set2, lVar3, i18, state, background, dismissContent)), composerS, ((i18 >> 3) & 14) | 3072, 6);
                modifier5 = modifier4;
                set3 = set2;
                lVar4 = lVar3;
            } else {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i19 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        setI = y0.i(DismissDirection.EndToStart, DismissDirection.StartToEnd);
                        i12 &= -897;
                    } else {
                        setI = set;
                    }
                    if (i14 != 0) {
                        i18 = i12;
                        set2 = setI;
                        modifier4 = modifier3;
                        lVar3 = SwipeToDismissKt$SwipeToDismiss$1.INSTANCE;
                    } else {
                        set2 = setI;
                        modifier4 = modifier3;
                        lVar3 = lVar2;
                        i18 = i12;
                    }
                } else {
                    if (i19 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        setI = y0.i(DismissDirection.EndToStart, DismissDirection.StartToEnd);
                        i12 &= -897;
                    } else {
                        setI = set;
                    }
                    if (i14 != 0) {
                        i18 = i12;
                        set2 = setI;
                        modifier4 = modifier3;
                        lVar3 = SwipeToDismissKt$SwipeToDismiss$1.INSTANCE;
                    } else {
                        set2 = setI;
                        modifier4 = modifier3;
                        lVar3 = lVar2;
                        i18 = i12;
                    }
                }
                composerS.A();
                BoxWithConstraintsKt.a(modifier4, null, false, ComposableLambdaKt.b(composerS, 338007641, true, new SwipeToDismissKt$SwipeToDismiss$2(set2, lVar3, i18, state, background, dismissContent)), composerS, ((i18 >> 3) & 14) | 3072, 6);
                modifier5 = modifier4;
                set3 = set2;
                lVar4 = lVar3;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new SwipeToDismissKt$SwipeToDismiss$3(state, modifier5, set3, lVar4, background, dismissContent, i10, i11));
        }
        i17 = ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
        i12 |= i17;
        if (i13 != 4) {
            composerS.J();
            if ((i10 & 1) != 0) {
                if (i19 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if (i13 != 0) {
                    setI = y0.i(DismissDirection.EndToStart, DismissDirection.StartToEnd);
                    i12 &= -897;
                } else {
                    setI = set;
                }
                if (i14 != 0) {
                    i18 = i12;
                    set2 = setI;
                    modifier4 = modifier3;
                    lVar3 = SwipeToDismissKt$SwipeToDismiss$1.INSTANCE;
                } else {
                    set2 = setI;
                    modifier4 = modifier3;
                    lVar3 = lVar2;
                    i18 = i12;
                }
            } else {
                if (i19 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if (i13 != 0) {
                    setI = y0.i(DismissDirection.EndToStart, DismissDirection.StartToEnd);
                    i12 &= -897;
                } else {
                    setI = set;
                }
                if (i14 != 0) {
                    i18 = i12;
                    set2 = setI;
                    modifier4 = modifier3;
                    lVar3 = SwipeToDismissKt$SwipeToDismiss$1.INSTANCE;
                } else {
                    set2 = setI;
                    modifier4 = modifier3;
                    lVar3 = lVar2;
                    i18 = i12;
                }
            }
            composerS.A();
            BoxWithConstraintsKt.a(modifier4, null, false, ComposableLambdaKt.b(composerS, 338007641, true, new SwipeToDismissKt$SwipeToDismiss$2(set2, lVar3, i18, state, background, dismissContent)), composerS, ((i18 >> 3) & 14) | 3072, 6);
            modifier5 = modifier4;
            set3 = set2;
            lVar4 = lVar3;
        } else {
            composerS.J();
            if ((i10 & 1) != 0) {
                if (i19 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if (i13 != 0) {
                    setI = y0.i(DismissDirection.EndToStart, DismissDirection.StartToEnd);
                    i12 &= -897;
                } else {
                    setI = set;
                }
                if (i14 != 0) {
                    i18 = i12;
                    set2 = setI;
                    modifier4 = modifier3;
                    lVar3 = SwipeToDismissKt$SwipeToDismiss$1.INSTANCE;
                } else {
                    set2 = setI;
                    modifier4 = modifier3;
                    lVar3 = lVar2;
                    i18 = i12;
                }
            } else {
                if (i19 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if (i13 != 0) {
                    setI = y0.i(DismissDirection.EndToStart, DismissDirection.StartToEnd);
                    i12 &= -897;
                } else {
                    setI = set;
                }
                if (i14 != 0) {
                    i18 = i12;
                    set2 = setI;
                    modifier4 = modifier3;
                    lVar3 = SwipeToDismissKt$SwipeToDismiss$1.INSTANCE;
                } else {
                    set2 = setI;
                    modifier4 = modifier3;
                    lVar3 = lVar2;
                    i18 = i12;
                }
            }
            composerS.A();
            BoxWithConstraintsKt.a(modifier4, null, false, ComposableLambdaKt.b(composerS, 338007641, true, new SwipeToDismissKt$SwipeToDismiss$2(set2, lVar3, i18, state, background, dismissContent)), composerS, ((i18 >> 3) & 14) | 3072, 6);
            modifier5 = modifier4;
            set3 = set2;
            lVar4 = lVar3;
        }
        scopeUpdateScopeU = composerS.u();
        if (scopeUpdateScopeU == null) {
            return;
        }
        scopeUpdateScopeU.a(new SwipeToDismissKt$SwipeToDismiss$3(state, modifier5, set3, lVar4, background, dismissContent, i10, i11));
    }
}
