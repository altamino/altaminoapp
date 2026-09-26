package androidx.compose.material;

import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposableInferredTarget;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.internal.ComposableLambda;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.window.AndroidDialog_androidKt;
import androidx.compose.ui.window.DialogProperties;
import androidx.profileinstaller.ProfileVerifier;
import e8.a;
import e8.p;
import kotlin.jvm.internal.t;
import org.apache.commons.compress.archivers.cpio.CpioConstants;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes4.dex */
public final class AndroidAlertDialog_androidKt {
    /* JADX WARN: Code duplicated, block: B:100:0x0116  */
    /* JADX WARN: Code duplicated, block: B:102:0x011a  */
    /* JADX WARN: Code duplicated, block: B:105:0x0125 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:108:0x012c  */
    /* JADX WARN: Code duplicated, block: B:111:0x0138  */
    /* JADX WARN: Code duplicated, block: B:115:0x0156  */
    /* JADX WARN: Code duplicated, block: B:117:0x0163  */
    /* JADX WARN: Code duplicated, block: B:133:0x019a A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:134:0x019c  */
    /* JADX WARN: Code duplicated, block: B:135:0x019f  */
    /* JADX WARN: Code duplicated, block: B:138:0x01a4  */
    /* JADX WARN: Code duplicated, block: B:139:0x01a6  */
    /* JADX WARN: Code duplicated, block: B:141:0x01aa  */
    /* JADX WARN: Code duplicated, block: B:142:0x01ac  */
    /* JADX WARN: Code duplicated, block: B:145:0x01b1  */
    /* JADX WARN: Code duplicated, block: B:148:0x01b7  */
    /* JADX WARN: Code duplicated, block: B:149:0x01c4  */
    /* JADX WARN: Code duplicated, block: B:152:0x01c9  */
    /* JADX WARN: Code duplicated, block: B:153:0x01d5  */
    /* JADX WARN: Code duplicated, block: B:156:0x01db  */
    /* JADX WARN: Code duplicated, block: B:159:0x01eb  */
    /* JADX WARN: Code duplicated, block: B:161:0x021b  */
    /* JADX WARN: Code duplicated, block: B:166:0x0285  */
    /* JADX WARN: Code duplicated, block: B:168:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:36:0x0068  */
    /* JADX WARN: Code duplicated, block: B:38:0x006d  */
    /* JADX WARN: Code duplicated, block: B:40:0x0071  */
    /* JADX WARN: Code duplicated, block: B:42:0x0079  */
    /* JADX WARN: Code duplicated, block: B:43:0x007c  */
    /* JADX WARN: Code duplicated, block: B:47:0x0086  */
    /* JADX WARN: Code duplicated, block: B:49:0x008b  */
    /* JADX WARN: Code duplicated, block: B:51:0x008f  */
    /* JADX WARN: Code duplicated, block: B:53:0x0097  */
    /* JADX WARN: Code duplicated, block: B:54:0x009a  */
    /* JADX WARN: Code duplicated, block: B:58:0x00a3  */
    /* JADX WARN: Code duplicated, block: B:60:0x00a9  */
    /* JADX WARN: Code duplicated, block: B:62:0x00ad  */
    /* JADX WARN: Code duplicated, block: B:64:0x00b5  */
    /* JADX WARN: Code duplicated, block: B:65:0x00b8  */
    /* JADX WARN: Code duplicated, block: B:69:0x00c2  */
    /* JADX WARN: Code duplicated, block: B:71:0x00c8  */
    /* JADX WARN: Code duplicated, block: B:74:0x00d1  */
    /* JADX WARN: Code duplicated, block: B:76:0x00d6  */
    /* JADX WARN: Code duplicated, block: B:79:0x00de  */
    /* JADX WARN: Code duplicated, block: B:81:0x00e2  */
    /* JADX WARN: Code duplicated, block: B:84:0x00ed A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:87:0x00f4  */
    /* JADX WARN: Code duplicated, block: B:90:0x00fc  */
    /* JADX WARN: Code duplicated, block: B:92:0x0102  */
    /* JADX WARN: Code duplicated, block: B:95:0x010b  */
    /* JADX WARN: Code duplicated, block: B:97:0x010f  */
    @Composable
    @ComposableInferredTarget
    public static final void a(@NotNull a<l0> onDismissRequest, @NotNull p<? super Composer, ? super Integer, l0> confirmButton, @Nullable Modifier modifier, @Nullable p<? super Composer, ? super Integer, l0> pVar, @Nullable p<? super Composer, ? super Integer, l0> pVar2, @Nullable p<? super Composer, ? super Integer, l0> pVar3, @Nullable Shape shape, long j6, long j10, @Nullable DialogProperties dialogProperties, @Nullable Composer composer, int i10, int i11) {
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        p<? super Composer, ? super Integer, l0> pVar4;
        int i18;
        Shape shape2;
        long jB;
        Modifier modifier2;
        p<? super Composer, ? super Integer, l0> pVar5;
        p<? super Composer, ? super Integer, l0> pVar6;
        p<? super Composer, ? super Integer, l0> pVar7;
        Shape shapeB;
        long jN;
        DialogProperties dialogProperties2;
        p<? super Composer, ? super Integer, l0> pVar8;
        long j11;
        Shape shape3;
        long j12;
        p<? super Composer, ? super Integer, l0> pVar9;
        p<? super Composer, ? super Integer, l0> pVar10;
        Modifier modifier3;
        p<? super Composer, ? super Integer, l0> pVar11;
        p<? super Composer, ? super Integer, l0> pVar12;
        Shape shape4;
        long j13;
        long j14;
        DialogProperties dialogProperties3;
        ScopeUpdateScope scopeUpdateScopeU;
        int i19;
        int i20;
        t.j(onDismissRequest, "onDismissRequest");
        t.j(confirmButton, "confirmButton");
        Composer composerS = composer.s(-606536823);
        if ((i11 & 1) != 0) {
            i12 = i10 | 6;
        } else if ((i10 & 14) == 0) {
            i12 = (composerS.k(onDismissRequest) ? 4 : 2) | i10;
        } else {
            i12 = i10;
        }
        if ((i11 & 2) != 0) {
            i12 |= 48;
        } else if ((i10 & 112) == 0) {
            i12 |= composerS.k(confirmButton) ? 32 : 16;
        }
        int i21 = i11 & 4;
        if (i21 == 0) {
            if ((i10 & 896) == 0) {
                i12 |= composerS.k(modifier) ? 256 : 128;
            }
            i13 = i11 & 8;
            if (i13 != 0) {
                if ((i10 & 7168) == 0) {
                    if (composerS.k(pVar)) {
                        i14 = 2048;
                    } else {
                        i14 = 1024;
                    }
                    i12 |= i14;
                }
                i15 = i11 & 16;
                if (i15 != 0) {
                    if ((i10 & 57344) == 0) {
                        if (composerS.k(pVar2)) {
                            i16 = 16384;
                        } else {
                            i16 = 8192;
                        }
                        i12 |= i16;
                    }
                    i17 = i11 & 32;
                    if (i17 != 0) {
                        if ((i10 & 458752) == 0) {
                            pVar4 = pVar3;
                            if (composerS.k(pVar4)) {
                                i18 = 131072;
                            } else {
                                i18 = 65536;
                            }
                            i12 |= i18;
                        }
                        if ((i10 & 3670016) == 0) {
                            shape2 = shape;
                            if ((i11 & 64) == 0 || !composerS.k(shape2)) {
                                i20 = 524288;
                            } else {
                                i20 = 1048576;
                            }
                            i12 |= i20;
                        } else {
                            shape2 = shape;
                        }
                        if ((i10 & 29360128) != 0) {
                            i12 |= ((i11 & 128) == 0 || !composerS.q(j6)) ? 4194304 : 8388608;
                        }
                        if ((i10 & 234881024) == 0) {
                            jB = j10;
                            if ((i11 & 256) == 0 || !composerS.q(jB)) {
                                i19 = 33554432;
                            } else {
                                i19 = 67108864;
                            }
                            i12 |= i19;
                        } else {
                            jB = j10;
                        }
                        if ((1879048192 & i10) != 0) {
                            i12 |= ((i11 & 512) == 0 || !composerS.k(dialogProperties)) ? 268435456 : 536870912;
                        }
                        if ((i12 & 1533916891) == 306783378 || !composerS.b()) {
                            composerS.J();
                            if ((i10 & 1) != 0 || composerS.h()) {
                                if (i21 != 0) {
                                    modifier2 = Modifier.Companion;
                                } else {
                                    modifier2 = modifier;
                                }
                                if (i13 != 0) {
                                    pVar5 = null;
                                } else {
                                    pVar5 = pVar;
                                }
                                if (i15 != 0) {
                                    pVar6 = null;
                                } else {
                                    pVar6 = pVar2;
                                }
                                pVar7 = i17 == 0 ? pVar4 : null;
                                if ((i11 & 64) != 0) {
                                    shapeB = MaterialTheme.INSTANCE.b(composerS, 6).b();
                                    i12 &= -3670017;
                                } else {
                                    shapeB = shape2;
                                }
                                if ((i11 & 128) != 0) {
                                    jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                                    i12 &= -29360129;
                                } else {
                                    jN = j6;
                                }
                                if ((i11 & 256) != 0) {
                                    jB = ColorsKt.b(jN, composerS, (i12 >> 21) & 14);
                                    i12 &= -234881025;
                                }
                                if ((i11 & 512) != 0) {
                                    i12 &= -1879048193;
                                    dialogProperties2 = new DialogProperties(false, false, null, 7, null);
                                } else {
                                    dialogProperties2 = dialogProperties;
                                }
                                pVar8 = pVar6;
                                j11 = jB;
                                shape3 = shapeB;
                                j12 = jN;
                                pVar9 = pVar5;
                            } else {
                                composerS.g();
                                if ((i11 & 64) != 0) {
                                    i12 &= -3670017;
                                }
                                if ((i11 & 128) != 0) {
                                    i12 &= -29360129;
                                }
                                if ((i11 & 256) != 0) {
                                    i12 &= -234881025;
                                }
                                if ((i11 & 512) != 0) {
                                    i12 &= -1879048193;
                                }
                                modifier2 = modifier;
                                pVar8 = pVar2;
                                j12 = j6;
                                dialogProperties2 = dialogProperties;
                                j11 = jB;
                                shape3 = shape2;
                                pVar7 = pVar4;
                                pVar9 = pVar;
                            }
                            composerS.A();
                            ComposableLambda composableLambdaB = ComposableLambdaKt.b(composerS, -1849673151, true, new AndroidAlertDialog_androidKt$AlertDialog$1(pVar9, i12, confirmButton));
                            int i22 = (i12 & 14) | 48 | (i12 & 896);
                            int i23 = i12 >> 3;
                            b(onDismissRequest, composableLambdaB, modifier2, pVar8, pVar7, shape3, j12, j11, dialogProperties2, composerS, i22 | (i23 & 7168) | (57344 & i23) | (458752 & i23) | (i23 & 3670016) | (i23 & 29360128) | (i23 & 234881024), 0);
                            pVar10 = pVar9;
                            modifier3 = modifier2;
                            pVar11 = pVar8;
                            pVar12 = pVar7;
                            shape4 = shape3;
                            j13 = j12;
                            j14 = j11;
                            dialogProperties3 = dialogProperties2;
                        } else {
                            composerS.g();
                            modifier3 = modifier;
                            pVar10 = pVar;
                            pVar11 = pVar2;
                            dialogProperties3 = dialogProperties;
                            long j15 = jB;
                            shape4 = shape2;
                            j13 = j6;
                            pVar12 = pVar4;
                            j14 = j15;
                        }
                        scopeUpdateScopeU = composerS.u();
                        if (scopeUpdateScopeU == null) {
                            return;
                        }
                        scopeUpdateScopeU.a(new AndroidAlertDialog_androidKt$AlertDialog$2(onDismissRequest, confirmButton, modifier3, pVar10, pVar11, pVar12, shape4, j13, j14, dialogProperties3, i10, i11));
                    }
                    i12 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                    pVar4 = pVar3;
                    if ((i10 & 3670016) == 0) {
                        shape2 = shape;
                        if ((i11 & 64) == 0) {
                            i20 = 524288;
                        } else {
                            i20 = 524288;
                        }
                        i12 |= i20;
                    } else {
                        shape2 = shape;
                    }
                    if ((i10 & 29360128) != 0) {
                        i12 |= ((i11 & 128) == 0 || !composerS.q(j6)) ? 4194304 : 8388608;
                    }
                    if ((i10 & 234881024) == 0) {
                        jB = j10;
                        if ((i11 & 256) == 0) {
                            i19 = 33554432;
                        } else {
                            i19 = 33554432;
                        }
                        i12 |= i19;
                    } else {
                        jB = j10;
                    }
                    if ((1879048192 & i10) != 0) {
                        i12 |= ((i11 & 512) == 0 || !composerS.k(dialogProperties)) ? 268435456 : 536870912;
                    }
                    if ((i12 & 1533916891) == 306783378) {
                        composerS.J();
                        if ((i10 & 1) != 0) {
                            if (i21 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i13 != 0) {
                                pVar5 = null;
                            } else {
                                pVar5 = pVar;
                            }
                            if (i15 != 0) {
                                pVar6 = null;
                            } else {
                                pVar6 = pVar2;
                            }
                            if (i17 == 0) {
                            }
                            if ((i11 & 64) != 0) {
                                shapeB = MaterialTheme.INSTANCE.b(composerS, 6).b();
                                i12 &= -3670017;
                            } else {
                                shapeB = shape2;
                            }
                            if ((i11 & 128) != 0) {
                                jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                                i12 &= -29360129;
                            } else {
                                jN = j6;
                            }
                            if ((i11 & 256) != 0) {
                                jB = ColorsKt.b(jN, composerS, (i12 >> 21) & 14);
                                i12 &= -234881025;
                            }
                            if ((i11 & 512) != 0) {
                                i12 &= -1879048193;
                                dialogProperties2 = new DialogProperties(false, false, null, 7, null);
                            } else {
                                dialogProperties2 = dialogProperties;
                            }
                            pVar8 = pVar6;
                            j11 = jB;
                            shape3 = shapeB;
                            j12 = jN;
                            pVar9 = pVar5;
                        } else {
                            if (i21 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i13 != 0) {
                                pVar5 = null;
                            } else {
                                pVar5 = pVar;
                            }
                            if (i15 != 0) {
                                pVar6 = null;
                            } else {
                                pVar6 = pVar2;
                            }
                            if (i17 == 0) {
                            }
                            if ((i11 & 64) != 0) {
                                shapeB = MaterialTheme.INSTANCE.b(composerS, 6).b();
                                i12 &= -3670017;
                            } else {
                                shapeB = shape2;
                            }
                            if ((i11 & 128) != 0) {
                                jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                                i12 &= -29360129;
                            } else {
                                jN = j6;
                            }
                            if ((i11 & 256) != 0) {
                                jB = ColorsKt.b(jN, composerS, (i12 >> 21) & 14);
                                i12 &= -234881025;
                            }
                            if ((i11 & 512) != 0) {
                                i12 &= -1879048193;
                                dialogProperties2 = new DialogProperties(false, false, null, 7, null);
                            } else {
                                dialogProperties2 = dialogProperties;
                            }
                            pVar8 = pVar6;
                            j11 = jB;
                            shape3 = shapeB;
                            j12 = jN;
                            pVar9 = pVar5;
                        }
                        composerS.A();
                        ComposableLambda composableLambdaB2 = ComposableLambdaKt.b(composerS, -1849673151, true, new AndroidAlertDialog_androidKt$AlertDialog$1(pVar9, i12, confirmButton));
                        int i24 = (i12 & 14) | 48 | (i12 & 896);
                        int i25 = i12 >> 3;
                        b(onDismissRequest, composableLambdaB2, modifier2, pVar8, pVar7, shape3, j12, j11, dialogProperties2, composerS, i24 | (i25 & 7168) | (57344 & i25) | (458752 & i25) | (i25 & 3670016) | (i25 & 29360128) | (i25 & 234881024), 0);
                        pVar10 = pVar9;
                        modifier3 = modifier2;
                        pVar11 = pVar8;
                        pVar12 = pVar7;
                        shape4 = shape3;
                        j13 = j12;
                        j14 = j11;
                        dialogProperties3 = dialogProperties2;
                    } else {
                        composerS.J();
                        if ((i10 & 1) != 0) {
                            if (i21 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i13 != 0) {
                                pVar5 = null;
                            } else {
                                pVar5 = pVar;
                            }
                            if (i15 != 0) {
                                pVar6 = null;
                            } else {
                                pVar6 = pVar2;
                            }
                            if (i17 == 0) {
                            }
                            if ((i11 & 64) != 0) {
                                shapeB = MaterialTheme.INSTANCE.b(composerS, 6).b();
                                i12 &= -3670017;
                            } else {
                                shapeB = shape2;
                            }
                            if ((i11 & 128) != 0) {
                                jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                                i12 &= -29360129;
                            } else {
                                jN = j6;
                            }
                            if ((i11 & 256) != 0) {
                                jB = ColorsKt.b(jN, composerS, (i12 >> 21) & 14);
                                i12 &= -234881025;
                            }
                            if ((i11 & 512) != 0) {
                                i12 &= -1879048193;
                                dialogProperties2 = new DialogProperties(false, false, null, 7, null);
                            } else {
                                dialogProperties2 = dialogProperties;
                            }
                            pVar8 = pVar6;
                            j11 = jB;
                            shape3 = shapeB;
                            j12 = jN;
                            pVar9 = pVar5;
                        } else {
                            if (i21 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i13 != 0) {
                                pVar5 = null;
                            } else {
                                pVar5 = pVar;
                            }
                            if (i15 != 0) {
                                pVar6 = null;
                            } else {
                                pVar6 = pVar2;
                            }
                            if (i17 == 0) {
                            }
                            if ((i11 & 64) != 0) {
                                shapeB = MaterialTheme.INSTANCE.b(composerS, 6).b();
                                i12 &= -3670017;
                            } else {
                                shapeB = shape2;
                            }
                            if ((i11 & 128) != 0) {
                                jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                                i12 &= -29360129;
                            } else {
                                jN = j6;
                            }
                            if ((i11 & 256) != 0) {
                                jB = ColorsKt.b(jN, composerS, (i12 >> 21) & 14);
                                i12 &= -234881025;
                            }
                            if ((i11 & 512) != 0) {
                                i12 &= -1879048193;
                                dialogProperties2 = new DialogProperties(false, false, null, 7, null);
                            } else {
                                dialogProperties2 = dialogProperties;
                            }
                            pVar8 = pVar6;
                            j11 = jB;
                            shape3 = shapeB;
                            j12 = jN;
                            pVar9 = pVar5;
                        }
                        composerS.A();
                        ComposableLambda composableLambdaB3 = ComposableLambdaKt.b(composerS, -1849673151, true, new AndroidAlertDialog_androidKt$AlertDialog$1(pVar9, i12, confirmButton));
                        int i26 = (i12 & 14) | 48 | (i12 & 896);
                        int i27 = i12 >> 3;
                        b(onDismissRequest, composableLambdaB3, modifier2, pVar8, pVar7, shape3, j12, j11, dialogProperties2, composerS, i26 | (i27 & 7168) | (57344 & i27) | (458752 & i27) | (i27 & 3670016) | (i27 & 29360128) | (i27 & 234881024), 0);
                        pVar10 = pVar9;
                        modifier3 = modifier2;
                        pVar11 = pVar8;
                        pVar12 = pVar7;
                        shape4 = shape3;
                        j13 = j12;
                        j14 = j11;
                        dialogProperties3 = dialogProperties2;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new AndroidAlertDialog_androidKt$AlertDialog$2(onDismissRequest, confirmButton, modifier3, pVar10, pVar11, pVar12, shape4, j13, j14, dialogProperties3, i10, i11));
                }
                i12 |= CpioConstants.C_ISBLK;
                i17 = i11 & 32;
                if (i17 != 0) {
                    if ((i10 & 458752) == 0) {
                        pVar4 = pVar3;
                        if (composerS.k(pVar4)) {
                            i18 = 131072;
                        } else {
                            i18 = 65536;
                        }
                        i12 |= i18;
                    }
                    if ((i10 & 3670016) == 0) {
                        shape2 = shape;
                        if ((i11 & 64) == 0) {
                            i20 = 524288;
                        } else {
                            i20 = 524288;
                        }
                        i12 |= i20;
                    } else {
                        shape2 = shape;
                    }
                    if ((i10 & 29360128) != 0) {
                        i12 |= ((i11 & 128) == 0 || !composerS.q(j6)) ? 4194304 : 8388608;
                    }
                    if ((i10 & 234881024) == 0) {
                        jB = j10;
                        if ((i11 & 256) == 0) {
                            i19 = 33554432;
                        } else {
                            i19 = 33554432;
                        }
                        i12 |= i19;
                    } else {
                        jB = j10;
                    }
                    if ((1879048192 & i10) != 0) {
                        i12 |= ((i11 & 512) == 0 || !composerS.k(dialogProperties)) ? 268435456 : 536870912;
                    }
                    if ((i12 & 1533916891) == 306783378) {
                        composerS.J();
                        if ((i10 & 1) != 0) {
                            if (i21 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i13 != 0) {
                                pVar5 = null;
                            } else {
                                pVar5 = pVar;
                            }
                            if (i15 != 0) {
                                pVar6 = null;
                            } else {
                                pVar6 = pVar2;
                            }
                            if (i17 == 0) {
                            }
                            if ((i11 & 64) != 0) {
                                shapeB = MaterialTheme.INSTANCE.b(composerS, 6).b();
                                i12 &= -3670017;
                            } else {
                                shapeB = shape2;
                            }
                            if ((i11 & 128) != 0) {
                                jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                                i12 &= -29360129;
                            } else {
                                jN = j6;
                            }
                            if ((i11 & 256) != 0) {
                                jB = ColorsKt.b(jN, composerS, (i12 >> 21) & 14);
                                i12 &= -234881025;
                            }
                            if ((i11 & 512) != 0) {
                                i12 &= -1879048193;
                                dialogProperties2 = new DialogProperties(false, false, null, 7, null);
                            } else {
                                dialogProperties2 = dialogProperties;
                            }
                            pVar8 = pVar6;
                            j11 = jB;
                            shape3 = shapeB;
                            j12 = jN;
                            pVar9 = pVar5;
                        } else {
                            if (i21 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i13 != 0) {
                                pVar5 = null;
                            } else {
                                pVar5 = pVar;
                            }
                            if (i15 != 0) {
                                pVar6 = null;
                            } else {
                                pVar6 = pVar2;
                            }
                            if (i17 == 0) {
                            }
                            if ((i11 & 64) != 0) {
                                shapeB = MaterialTheme.INSTANCE.b(composerS, 6).b();
                                i12 &= -3670017;
                            } else {
                                shapeB = shape2;
                            }
                            if ((i11 & 128) != 0) {
                                jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                                i12 &= -29360129;
                            } else {
                                jN = j6;
                            }
                            if ((i11 & 256) != 0) {
                                jB = ColorsKt.b(jN, composerS, (i12 >> 21) & 14);
                                i12 &= -234881025;
                            }
                            if ((i11 & 512) != 0) {
                                i12 &= -1879048193;
                                dialogProperties2 = new DialogProperties(false, false, null, 7, null);
                            } else {
                                dialogProperties2 = dialogProperties;
                            }
                            pVar8 = pVar6;
                            j11 = jB;
                            shape3 = shapeB;
                            j12 = jN;
                            pVar9 = pVar5;
                        }
                        composerS.A();
                        ComposableLambda composableLambdaB4 = ComposableLambdaKt.b(composerS, -1849673151, true, new AndroidAlertDialog_androidKt$AlertDialog$1(pVar9, i12, confirmButton));
                        int i28 = (i12 & 14) | 48 | (i12 & 896);
                        int i29 = i12 >> 3;
                        b(onDismissRequest, composableLambdaB4, modifier2, pVar8, pVar7, shape3, j12, j11, dialogProperties2, composerS, i28 | (i29 & 7168) | (57344 & i29) | (458752 & i29) | (i29 & 3670016) | (i29 & 29360128) | (i29 & 234881024), 0);
                        pVar10 = pVar9;
                        modifier3 = modifier2;
                        pVar11 = pVar8;
                        pVar12 = pVar7;
                        shape4 = shape3;
                        j13 = j12;
                        j14 = j11;
                        dialogProperties3 = dialogProperties2;
                    } else {
                        composerS.J();
                        if ((i10 & 1) != 0) {
                            if (i21 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i13 != 0) {
                                pVar5 = null;
                            } else {
                                pVar5 = pVar;
                            }
                            if (i15 != 0) {
                                pVar6 = null;
                            } else {
                                pVar6 = pVar2;
                            }
                            if (i17 == 0) {
                            }
                            if ((i11 & 64) != 0) {
                                shapeB = MaterialTheme.INSTANCE.b(composerS, 6).b();
                                i12 &= -3670017;
                            } else {
                                shapeB = shape2;
                            }
                            if ((i11 & 128) != 0) {
                                jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                                i12 &= -29360129;
                            } else {
                                jN = j6;
                            }
                            if ((i11 & 256) != 0) {
                                jB = ColorsKt.b(jN, composerS, (i12 >> 21) & 14);
                                i12 &= -234881025;
                            }
                            if ((i11 & 512) != 0) {
                                i12 &= -1879048193;
                                dialogProperties2 = new DialogProperties(false, false, null, 7, null);
                            } else {
                                dialogProperties2 = dialogProperties;
                            }
                            pVar8 = pVar6;
                            j11 = jB;
                            shape3 = shapeB;
                            j12 = jN;
                            pVar9 = pVar5;
                        } else {
                            if (i21 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i13 != 0) {
                                pVar5 = null;
                            } else {
                                pVar5 = pVar;
                            }
                            if (i15 != 0) {
                                pVar6 = null;
                            } else {
                                pVar6 = pVar2;
                            }
                            if (i17 == 0) {
                            }
                            if ((i11 & 64) != 0) {
                                shapeB = MaterialTheme.INSTANCE.b(composerS, 6).b();
                                i12 &= -3670017;
                            } else {
                                shapeB = shape2;
                            }
                            if ((i11 & 128) != 0) {
                                jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                                i12 &= -29360129;
                            } else {
                                jN = j6;
                            }
                            if ((i11 & 256) != 0) {
                                jB = ColorsKt.b(jN, composerS, (i12 >> 21) & 14);
                                i12 &= -234881025;
                            }
                            if ((i11 & 512) != 0) {
                                i12 &= -1879048193;
                                dialogProperties2 = new DialogProperties(false, false, null, 7, null);
                            } else {
                                dialogProperties2 = dialogProperties;
                            }
                            pVar8 = pVar6;
                            j11 = jB;
                            shape3 = shapeB;
                            j12 = jN;
                            pVar9 = pVar5;
                        }
                        composerS.A();
                        ComposableLambda composableLambdaB5 = ComposableLambdaKt.b(composerS, -1849673151, true, new AndroidAlertDialog_androidKt$AlertDialog$1(pVar9, i12, confirmButton));
                        int i210 = (i12 & 14) | 48 | (i12 & 896);
                        int i211 = i12 >> 3;
                        b(onDismissRequest, composableLambdaB5, modifier2, pVar8, pVar7, shape3, j12, j11, dialogProperties2, composerS, i210 | (i211 & 7168) | (57344 & i211) | (458752 & i211) | (i211 & 3670016) | (i211 & 29360128) | (i211 & 234881024), 0);
                        pVar10 = pVar9;
                        modifier3 = modifier2;
                        pVar11 = pVar8;
                        pVar12 = pVar7;
                        shape4 = shape3;
                        j13 = j12;
                        j14 = j11;
                        dialogProperties3 = dialogProperties2;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new AndroidAlertDialog_androidKt$AlertDialog$2(onDismissRequest, confirmButton, modifier3, pVar10, pVar11, pVar12, shape4, j13, j14, dialogProperties3, i10, i11));
                }
                i12 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                pVar4 = pVar3;
                if ((i10 & 3670016) == 0) {
                    shape2 = shape;
                    if ((i11 & 64) == 0) {
                        i20 = 524288;
                    } else {
                        i20 = 524288;
                    }
                    i12 |= i20;
                } else {
                    shape2 = shape;
                }
                if ((i10 & 29360128) != 0) {
                    i12 |= ((i11 & 128) == 0 || !composerS.q(j6)) ? 4194304 : 8388608;
                }
                if ((i10 & 234881024) == 0) {
                    jB = j10;
                    if ((i11 & 256) == 0) {
                        i19 = 33554432;
                    } else {
                        i19 = 33554432;
                    }
                    i12 |= i19;
                } else {
                    jB = j10;
                }
                if ((1879048192 & i10) != 0) {
                    i12 |= ((i11 & 512) == 0 || !composerS.k(dialogProperties)) ? 268435456 : 536870912;
                }
                if ((i12 & 1533916891) == 306783378) {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i21 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i13 != 0) {
                            pVar5 = null;
                        } else {
                            pVar5 = pVar;
                        }
                        if (i15 != 0) {
                            pVar6 = null;
                        } else {
                            pVar6 = pVar2;
                        }
                        if (i17 == 0) {
                        }
                        if ((i11 & 64) != 0) {
                            shapeB = MaterialTheme.INSTANCE.b(composerS, 6).b();
                            i12 &= -3670017;
                        } else {
                            shapeB = shape2;
                        }
                        if ((i11 & 128) != 0) {
                            jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                            i12 &= -29360129;
                        } else {
                            jN = j6;
                        }
                        if ((i11 & 256) != 0) {
                            jB = ColorsKt.b(jN, composerS, (i12 >> 21) & 14);
                            i12 &= -234881025;
                        }
                        if ((i11 & 512) != 0) {
                            i12 &= -1879048193;
                            dialogProperties2 = new DialogProperties(false, false, null, 7, null);
                        } else {
                            dialogProperties2 = dialogProperties;
                        }
                        pVar8 = pVar6;
                        j11 = jB;
                        shape3 = shapeB;
                        j12 = jN;
                        pVar9 = pVar5;
                    } else {
                        if (i21 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i13 != 0) {
                            pVar5 = null;
                        } else {
                            pVar5 = pVar;
                        }
                        if (i15 != 0) {
                            pVar6 = null;
                        } else {
                            pVar6 = pVar2;
                        }
                        if (i17 == 0) {
                        }
                        if ((i11 & 64) != 0) {
                            shapeB = MaterialTheme.INSTANCE.b(composerS, 6).b();
                            i12 &= -3670017;
                        } else {
                            shapeB = shape2;
                        }
                        if ((i11 & 128) != 0) {
                            jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                            i12 &= -29360129;
                        } else {
                            jN = j6;
                        }
                        if ((i11 & 256) != 0) {
                            jB = ColorsKt.b(jN, composerS, (i12 >> 21) & 14);
                            i12 &= -234881025;
                        }
                        if ((i11 & 512) != 0) {
                            i12 &= -1879048193;
                            dialogProperties2 = new DialogProperties(false, false, null, 7, null);
                        } else {
                            dialogProperties2 = dialogProperties;
                        }
                        pVar8 = pVar6;
                        j11 = jB;
                        shape3 = shapeB;
                        j12 = jN;
                        pVar9 = pVar5;
                    }
                    composerS.A();
                    ComposableLambda composableLambdaB6 = ComposableLambdaKt.b(composerS, -1849673151, true, new AndroidAlertDialog_androidKt$AlertDialog$1(pVar9, i12, confirmButton));
                    int i212 = (i12 & 14) | 48 | (i12 & 896);
                    int i213 = i12 >> 3;
                    b(onDismissRequest, composableLambdaB6, modifier2, pVar8, pVar7, shape3, j12, j11, dialogProperties2, composerS, i212 | (i213 & 7168) | (57344 & i213) | (458752 & i213) | (i213 & 3670016) | (i213 & 29360128) | (i213 & 234881024), 0);
                    pVar10 = pVar9;
                    modifier3 = modifier2;
                    pVar11 = pVar8;
                    pVar12 = pVar7;
                    shape4 = shape3;
                    j13 = j12;
                    j14 = j11;
                    dialogProperties3 = dialogProperties2;
                } else {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i21 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i13 != 0) {
                            pVar5 = null;
                        } else {
                            pVar5 = pVar;
                        }
                        if (i15 != 0) {
                            pVar6 = null;
                        } else {
                            pVar6 = pVar2;
                        }
                        if (i17 == 0) {
                        }
                        if ((i11 & 64) != 0) {
                            shapeB = MaterialTheme.INSTANCE.b(composerS, 6).b();
                            i12 &= -3670017;
                        } else {
                            shapeB = shape2;
                        }
                        if ((i11 & 128) != 0) {
                            jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                            i12 &= -29360129;
                        } else {
                            jN = j6;
                        }
                        if ((i11 & 256) != 0) {
                            jB = ColorsKt.b(jN, composerS, (i12 >> 21) & 14);
                            i12 &= -234881025;
                        }
                        if ((i11 & 512) != 0) {
                            i12 &= -1879048193;
                            dialogProperties2 = new DialogProperties(false, false, null, 7, null);
                        } else {
                            dialogProperties2 = dialogProperties;
                        }
                        pVar8 = pVar6;
                        j11 = jB;
                        shape3 = shapeB;
                        j12 = jN;
                        pVar9 = pVar5;
                    } else {
                        if (i21 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i13 != 0) {
                            pVar5 = null;
                        } else {
                            pVar5 = pVar;
                        }
                        if (i15 != 0) {
                            pVar6 = null;
                        } else {
                            pVar6 = pVar2;
                        }
                        if (i17 == 0) {
                        }
                        if ((i11 & 64) != 0) {
                            shapeB = MaterialTheme.INSTANCE.b(composerS, 6).b();
                            i12 &= -3670017;
                        } else {
                            shapeB = shape2;
                        }
                        if ((i11 & 128) != 0) {
                            jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                            i12 &= -29360129;
                        } else {
                            jN = j6;
                        }
                        if ((i11 & 256) != 0) {
                            jB = ColorsKt.b(jN, composerS, (i12 >> 21) & 14);
                            i12 &= -234881025;
                        }
                        if ((i11 & 512) != 0) {
                            i12 &= -1879048193;
                            dialogProperties2 = new DialogProperties(false, false, null, 7, null);
                        } else {
                            dialogProperties2 = dialogProperties;
                        }
                        pVar8 = pVar6;
                        j11 = jB;
                        shape3 = shapeB;
                        j12 = jN;
                        pVar9 = pVar5;
                    }
                    composerS.A();
                    ComposableLambda composableLambdaB7 = ComposableLambdaKt.b(composerS, -1849673151, true, new AndroidAlertDialog_androidKt$AlertDialog$1(pVar9, i12, confirmButton));
                    int i214 = (i12 & 14) | 48 | (i12 & 896);
                    int i215 = i12 >> 3;
                    b(onDismissRequest, composableLambdaB7, modifier2, pVar8, pVar7, shape3, j12, j11, dialogProperties2, composerS, i214 | (i215 & 7168) | (57344 & i215) | (458752 & i215) | (i215 & 3670016) | (i215 & 29360128) | (i215 & 234881024), 0);
                    pVar10 = pVar9;
                    modifier3 = modifier2;
                    pVar11 = pVar8;
                    pVar12 = pVar7;
                    shape4 = shape3;
                    j13 = j12;
                    j14 = j11;
                    dialogProperties3 = dialogProperties2;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new AndroidAlertDialog_androidKt$AlertDialog$2(onDismissRequest, confirmButton, modifier3, pVar10, pVar11, pVar12, shape4, j13, j14, dialogProperties3, i10, i11));
            }
            i12 |= 3072;
            i15 = i11 & 16;
            if (i15 != 0) {
                if ((i10 & 57344) == 0) {
                    if (composerS.k(pVar2)) {
                        i16 = 16384;
                    } else {
                        i16 = 8192;
                    }
                    i12 |= i16;
                }
                i17 = i11 & 32;
                if (i17 != 0) {
                    if ((i10 & 458752) == 0) {
                        pVar4 = pVar3;
                        if (composerS.k(pVar4)) {
                            i18 = 131072;
                        } else {
                            i18 = 65536;
                        }
                        i12 |= i18;
                    }
                    if ((i10 & 3670016) == 0) {
                        shape2 = shape;
                        if ((i11 & 64) == 0) {
                            i20 = 524288;
                        } else {
                            i20 = 524288;
                        }
                        i12 |= i20;
                    } else {
                        shape2 = shape;
                    }
                    if ((i10 & 29360128) != 0) {
                        i12 |= ((i11 & 128) == 0 || !composerS.q(j6)) ? 4194304 : 8388608;
                    }
                    if ((i10 & 234881024) == 0) {
                        jB = j10;
                        if ((i11 & 256) == 0) {
                            i19 = 33554432;
                        } else {
                            i19 = 33554432;
                        }
                        i12 |= i19;
                    } else {
                        jB = j10;
                    }
                    if ((1879048192 & i10) != 0) {
                        i12 |= ((i11 & 512) == 0 || !composerS.k(dialogProperties)) ? 268435456 : 536870912;
                    }
                    if ((i12 & 1533916891) == 306783378) {
                        composerS.J();
                        if ((i10 & 1) != 0) {
                            if (i21 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i13 != 0) {
                                pVar5 = null;
                            } else {
                                pVar5 = pVar;
                            }
                            if (i15 != 0) {
                                pVar6 = null;
                            } else {
                                pVar6 = pVar2;
                            }
                            if (i17 == 0) {
                            }
                            if ((i11 & 64) != 0) {
                                shapeB = MaterialTheme.INSTANCE.b(composerS, 6).b();
                                i12 &= -3670017;
                            } else {
                                shapeB = shape2;
                            }
                            if ((i11 & 128) != 0) {
                                jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                                i12 &= -29360129;
                            } else {
                                jN = j6;
                            }
                            if ((i11 & 256) != 0) {
                                jB = ColorsKt.b(jN, composerS, (i12 >> 21) & 14);
                                i12 &= -234881025;
                            }
                            if ((i11 & 512) != 0) {
                                i12 &= -1879048193;
                                dialogProperties2 = new DialogProperties(false, false, null, 7, null);
                            } else {
                                dialogProperties2 = dialogProperties;
                            }
                            pVar8 = pVar6;
                            j11 = jB;
                            shape3 = shapeB;
                            j12 = jN;
                            pVar9 = pVar5;
                        } else {
                            if (i21 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i13 != 0) {
                                pVar5 = null;
                            } else {
                                pVar5 = pVar;
                            }
                            if (i15 != 0) {
                                pVar6 = null;
                            } else {
                                pVar6 = pVar2;
                            }
                            if (i17 == 0) {
                            }
                            if ((i11 & 64) != 0) {
                                shapeB = MaterialTheme.INSTANCE.b(composerS, 6).b();
                                i12 &= -3670017;
                            } else {
                                shapeB = shape2;
                            }
                            if ((i11 & 128) != 0) {
                                jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                                i12 &= -29360129;
                            } else {
                                jN = j6;
                            }
                            if ((i11 & 256) != 0) {
                                jB = ColorsKt.b(jN, composerS, (i12 >> 21) & 14);
                                i12 &= -234881025;
                            }
                            if ((i11 & 512) != 0) {
                                i12 &= -1879048193;
                                dialogProperties2 = new DialogProperties(false, false, null, 7, null);
                            } else {
                                dialogProperties2 = dialogProperties;
                            }
                            pVar8 = pVar6;
                            j11 = jB;
                            shape3 = shapeB;
                            j12 = jN;
                            pVar9 = pVar5;
                        }
                        composerS.A();
                        ComposableLambda composableLambdaB8 = ComposableLambdaKt.b(composerS, -1849673151, true, new AndroidAlertDialog_androidKt$AlertDialog$1(pVar9, i12, confirmButton));
                        int i216 = (i12 & 14) | 48 | (i12 & 896);
                        int i217 = i12 >> 3;
                        b(onDismissRequest, composableLambdaB8, modifier2, pVar8, pVar7, shape3, j12, j11, dialogProperties2, composerS, i216 | (i217 & 7168) | (57344 & i217) | (458752 & i217) | (i217 & 3670016) | (i217 & 29360128) | (i217 & 234881024), 0);
                        pVar10 = pVar9;
                        modifier3 = modifier2;
                        pVar11 = pVar8;
                        pVar12 = pVar7;
                        shape4 = shape3;
                        j13 = j12;
                        j14 = j11;
                        dialogProperties3 = dialogProperties2;
                    } else {
                        composerS.J();
                        if ((i10 & 1) != 0) {
                            if (i21 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i13 != 0) {
                                pVar5 = null;
                            } else {
                                pVar5 = pVar;
                            }
                            if (i15 != 0) {
                                pVar6 = null;
                            } else {
                                pVar6 = pVar2;
                            }
                            if (i17 == 0) {
                            }
                            if ((i11 & 64) != 0) {
                                shapeB = MaterialTheme.INSTANCE.b(composerS, 6).b();
                                i12 &= -3670017;
                            } else {
                                shapeB = shape2;
                            }
                            if ((i11 & 128) != 0) {
                                jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                                i12 &= -29360129;
                            } else {
                                jN = j6;
                            }
                            if ((i11 & 256) != 0) {
                                jB = ColorsKt.b(jN, composerS, (i12 >> 21) & 14);
                                i12 &= -234881025;
                            }
                            if ((i11 & 512) != 0) {
                                i12 &= -1879048193;
                                dialogProperties2 = new DialogProperties(false, false, null, 7, null);
                            } else {
                                dialogProperties2 = dialogProperties;
                            }
                            pVar8 = pVar6;
                            j11 = jB;
                            shape3 = shapeB;
                            j12 = jN;
                            pVar9 = pVar5;
                        } else {
                            if (i21 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i13 != 0) {
                                pVar5 = null;
                            } else {
                                pVar5 = pVar;
                            }
                            if (i15 != 0) {
                                pVar6 = null;
                            } else {
                                pVar6 = pVar2;
                            }
                            if (i17 == 0) {
                            }
                            if ((i11 & 64) != 0) {
                                shapeB = MaterialTheme.INSTANCE.b(composerS, 6).b();
                                i12 &= -3670017;
                            } else {
                                shapeB = shape2;
                            }
                            if ((i11 & 128) != 0) {
                                jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                                i12 &= -29360129;
                            } else {
                                jN = j6;
                            }
                            if ((i11 & 256) != 0) {
                                jB = ColorsKt.b(jN, composerS, (i12 >> 21) & 14);
                                i12 &= -234881025;
                            }
                            if ((i11 & 512) != 0) {
                                i12 &= -1879048193;
                                dialogProperties2 = new DialogProperties(false, false, null, 7, null);
                            } else {
                                dialogProperties2 = dialogProperties;
                            }
                            pVar8 = pVar6;
                            j11 = jB;
                            shape3 = shapeB;
                            j12 = jN;
                            pVar9 = pVar5;
                        }
                        composerS.A();
                        ComposableLambda composableLambdaB9 = ComposableLambdaKt.b(composerS, -1849673151, true, new AndroidAlertDialog_androidKt$AlertDialog$1(pVar9, i12, confirmButton));
                        int i218 = (i12 & 14) | 48 | (i12 & 896);
                        int i219 = i12 >> 3;
                        b(onDismissRequest, composableLambdaB9, modifier2, pVar8, pVar7, shape3, j12, j11, dialogProperties2, composerS, i218 | (i219 & 7168) | (57344 & i219) | (458752 & i219) | (i219 & 3670016) | (i219 & 29360128) | (i219 & 234881024), 0);
                        pVar10 = pVar9;
                        modifier3 = modifier2;
                        pVar11 = pVar8;
                        pVar12 = pVar7;
                        shape4 = shape3;
                        j13 = j12;
                        j14 = j11;
                        dialogProperties3 = dialogProperties2;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new AndroidAlertDialog_androidKt$AlertDialog$2(onDismissRequest, confirmButton, modifier3, pVar10, pVar11, pVar12, shape4, j13, j14, dialogProperties3, i10, i11));
                }
                i12 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                pVar4 = pVar3;
                if ((i10 & 3670016) == 0) {
                    shape2 = shape;
                    if ((i11 & 64) == 0) {
                        i20 = 524288;
                    } else {
                        i20 = 524288;
                    }
                    i12 |= i20;
                } else {
                    shape2 = shape;
                }
                if ((i10 & 29360128) != 0) {
                    i12 |= ((i11 & 128) == 0 || !composerS.q(j6)) ? 4194304 : 8388608;
                }
                if ((i10 & 234881024) == 0) {
                    jB = j10;
                    if ((i11 & 256) == 0) {
                        i19 = 33554432;
                    } else {
                        i19 = 33554432;
                    }
                    i12 |= i19;
                } else {
                    jB = j10;
                }
                if ((1879048192 & i10) != 0) {
                    i12 |= ((i11 & 512) == 0 || !composerS.k(dialogProperties)) ? 268435456 : 536870912;
                }
                if ((i12 & 1533916891) == 306783378) {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i21 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i13 != 0) {
                            pVar5 = null;
                        } else {
                            pVar5 = pVar;
                        }
                        if (i15 != 0) {
                            pVar6 = null;
                        } else {
                            pVar6 = pVar2;
                        }
                        if (i17 == 0) {
                        }
                        if ((i11 & 64) != 0) {
                            shapeB = MaterialTheme.INSTANCE.b(composerS, 6).b();
                            i12 &= -3670017;
                        } else {
                            shapeB = shape2;
                        }
                        if ((i11 & 128) != 0) {
                            jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                            i12 &= -29360129;
                        } else {
                            jN = j6;
                        }
                        if ((i11 & 256) != 0) {
                            jB = ColorsKt.b(jN, composerS, (i12 >> 21) & 14);
                            i12 &= -234881025;
                        }
                        if ((i11 & 512) != 0) {
                            i12 &= -1879048193;
                            dialogProperties2 = new DialogProperties(false, false, null, 7, null);
                        } else {
                            dialogProperties2 = dialogProperties;
                        }
                        pVar8 = pVar6;
                        j11 = jB;
                        shape3 = shapeB;
                        j12 = jN;
                        pVar9 = pVar5;
                    } else {
                        if (i21 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i13 != 0) {
                            pVar5 = null;
                        } else {
                            pVar5 = pVar;
                        }
                        if (i15 != 0) {
                            pVar6 = null;
                        } else {
                            pVar6 = pVar2;
                        }
                        if (i17 == 0) {
                        }
                        if ((i11 & 64) != 0) {
                            shapeB = MaterialTheme.INSTANCE.b(composerS, 6).b();
                            i12 &= -3670017;
                        } else {
                            shapeB = shape2;
                        }
                        if ((i11 & 128) != 0) {
                            jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                            i12 &= -29360129;
                        } else {
                            jN = j6;
                        }
                        if ((i11 & 256) != 0) {
                            jB = ColorsKt.b(jN, composerS, (i12 >> 21) & 14);
                            i12 &= -234881025;
                        }
                        if ((i11 & 512) != 0) {
                            i12 &= -1879048193;
                            dialogProperties2 = new DialogProperties(false, false, null, 7, null);
                        } else {
                            dialogProperties2 = dialogProperties;
                        }
                        pVar8 = pVar6;
                        j11 = jB;
                        shape3 = shapeB;
                        j12 = jN;
                        pVar9 = pVar5;
                    }
                    composerS.A();
                    ComposableLambda composableLambdaB10 = ComposableLambdaKt.b(composerS, -1849673151, true, new AndroidAlertDialog_androidKt$AlertDialog$1(pVar9, i12, confirmButton));
                    int i2110 = (i12 & 14) | 48 | (i12 & 896);
                    int i2111 = i12 >> 3;
                    b(onDismissRequest, composableLambdaB10, modifier2, pVar8, pVar7, shape3, j12, j11, dialogProperties2, composerS, i2110 | (i2111 & 7168) | (57344 & i2111) | (458752 & i2111) | (i2111 & 3670016) | (i2111 & 29360128) | (i2111 & 234881024), 0);
                    pVar10 = pVar9;
                    modifier3 = modifier2;
                    pVar11 = pVar8;
                    pVar12 = pVar7;
                    shape4 = shape3;
                    j13 = j12;
                    j14 = j11;
                    dialogProperties3 = dialogProperties2;
                } else {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i21 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i13 != 0) {
                            pVar5 = null;
                        } else {
                            pVar5 = pVar;
                        }
                        if (i15 != 0) {
                            pVar6 = null;
                        } else {
                            pVar6 = pVar2;
                        }
                        if (i17 == 0) {
                        }
                        if ((i11 & 64) != 0) {
                            shapeB = MaterialTheme.INSTANCE.b(composerS, 6).b();
                            i12 &= -3670017;
                        } else {
                            shapeB = shape2;
                        }
                        if ((i11 & 128) != 0) {
                            jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                            i12 &= -29360129;
                        } else {
                            jN = j6;
                        }
                        if ((i11 & 256) != 0) {
                            jB = ColorsKt.b(jN, composerS, (i12 >> 21) & 14);
                            i12 &= -234881025;
                        }
                        if ((i11 & 512) != 0) {
                            i12 &= -1879048193;
                            dialogProperties2 = new DialogProperties(false, false, null, 7, null);
                        } else {
                            dialogProperties2 = dialogProperties;
                        }
                        pVar8 = pVar6;
                        j11 = jB;
                        shape3 = shapeB;
                        j12 = jN;
                        pVar9 = pVar5;
                    } else {
                        if (i21 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i13 != 0) {
                            pVar5 = null;
                        } else {
                            pVar5 = pVar;
                        }
                        if (i15 != 0) {
                            pVar6 = null;
                        } else {
                            pVar6 = pVar2;
                        }
                        if (i17 == 0) {
                        }
                        if ((i11 & 64) != 0) {
                            shapeB = MaterialTheme.INSTANCE.b(composerS, 6).b();
                            i12 &= -3670017;
                        } else {
                            shapeB = shape2;
                        }
                        if ((i11 & 128) != 0) {
                            jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                            i12 &= -29360129;
                        } else {
                            jN = j6;
                        }
                        if ((i11 & 256) != 0) {
                            jB = ColorsKt.b(jN, composerS, (i12 >> 21) & 14);
                            i12 &= -234881025;
                        }
                        if ((i11 & 512) != 0) {
                            i12 &= -1879048193;
                            dialogProperties2 = new DialogProperties(false, false, null, 7, null);
                        } else {
                            dialogProperties2 = dialogProperties;
                        }
                        pVar8 = pVar6;
                        j11 = jB;
                        shape3 = shapeB;
                        j12 = jN;
                        pVar9 = pVar5;
                    }
                    composerS.A();
                    ComposableLambda composableLambdaB11 = ComposableLambdaKt.b(composerS, -1849673151, true, new AndroidAlertDialog_androidKt$AlertDialog$1(pVar9, i12, confirmButton));
                    int i2112 = (i12 & 14) | 48 | (i12 & 896);
                    int i2113 = i12 >> 3;
                    b(onDismissRequest, composableLambdaB11, modifier2, pVar8, pVar7, shape3, j12, j11, dialogProperties2, composerS, i2112 | (i2113 & 7168) | (57344 & i2113) | (458752 & i2113) | (i2113 & 3670016) | (i2113 & 29360128) | (i2113 & 234881024), 0);
                    pVar10 = pVar9;
                    modifier3 = modifier2;
                    pVar11 = pVar8;
                    pVar12 = pVar7;
                    shape4 = shape3;
                    j13 = j12;
                    j14 = j11;
                    dialogProperties3 = dialogProperties2;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new AndroidAlertDialog_androidKt$AlertDialog$2(onDismissRequest, confirmButton, modifier3, pVar10, pVar11, pVar12, shape4, j13, j14, dialogProperties3, i10, i11));
            }
            i12 |= CpioConstants.C_ISBLK;
            i17 = i11 & 32;
            if (i17 != 0) {
                if ((i10 & 458752) == 0) {
                    pVar4 = pVar3;
                    if (composerS.k(pVar4)) {
                        i18 = 131072;
                    } else {
                        i18 = 65536;
                    }
                    i12 |= i18;
                }
                if ((i10 & 3670016) == 0) {
                    shape2 = shape;
                    if ((i11 & 64) == 0) {
                        i20 = 524288;
                    } else {
                        i20 = 524288;
                    }
                    i12 |= i20;
                } else {
                    shape2 = shape;
                }
                if ((i10 & 29360128) != 0) {
                    i12 |= ((i11 & 128) == 0 || !composerS.q(j6)) ? 4194304 : 8388608;
                }
                if ((i10 & 234881024) == 0) {
                    jB = j10;
                    if ((i11 & 256) == 0) {
                        i19 = 33554432;
                    } else {
                        i19 = 33554432;
                    }
                    i12 |= i19;
                } else {
                    jB = j10;
                }
                if ((1879048192 & i10) != 0) {
                    i12 |= ((i11 & 512) == 0 || !composerS.k(dialogProperties)) ? 268435456 : 536870912;
                }
                if ((i12 & 1533916891) == 306783378) {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i21 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i13 != 0) {
                            pVar5 = null;
                        } else {
                            pVar5 = pVar;
                        }
                        if (i15 != 0) {
                            pVar6 = null;
                        } else {
                            pVar6 = pVar2;
                        }
                        if (i17 == 0) {
                        }
                        if ((i11 & 64) != 0) {
                            shapeB = MaterialTheme.INSTANCE.b(composerS, 6).b();
                            i12 &= -3670017;
                        } else {
                            shapeB = shape2;
                        }
                        if ((i11 & 128) != 0) {
                            jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                            i12 &= -29360129;
                        } else {
                            jN = j6;
                        }
                        if ((i11 & 256) != 0) {
                            jB = ColorsKt.b(jN, composerS, (i12 >> 21) & 14);
                            i12 &= -234881025;
                        }
                        if ((i11 & 512) != 0) {
                            i12 &= -1879048193;
                            dialogProperties2 = new DialogProperties(false, false, null, 7, null);
                        } else {
                            dialogProperties2 = dialogProperties;
                        }
                        pVar8 = pVar6;
                        j11 = jB;
                        shape3 = shapeB;
                        j12 = jN;
                        pVar9 = pVar5;
                    } else {
                        if (i21 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i13 != 0) {
                            pVar5 = null;
                        } else {
                            pVar5 = pVar;
                        }
                        if (i15 != 0) {
                            pVar6 = null;
                        } else {
                            pVar6 = pVar2;
                        }
                        if (i17 == 0) {
                        }
                        if ((i11 & 64) != 0) {
                            shapeB = MaterialTheme.INSTANCE.b(composerS, 6).b();
                            i12 &= -3670017;
                        } else {
                            shapeB = shape2;
                        }
                        if ((i11 & 128) != 0) {
                            jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                            i12 &= -29360129;
                        } else {
                            jN = j6;
                        }
                        if ((i11 & 256) != 0) {
                            jB = ColorsKt.b(jN, composerS, (i12 >> 21) & 14);
                            i12 &= -234881025;
                        }
                        if ((i11 & 512) != 0) {
                            i12 &= -1879048193;
                            dialogProperties2 = new DialogProperties(false, false, null, 7, null);
                        } else {
                            dialogProperties2 = dialogProperties;
                        }
                        pVar8 = pVar6;
                        j11 = jB;
                        shape3 = shapeB;
                        j12 = jN;
                        pVar9 = pVar5;
                    }
                    composerS.A();
                    ComposableLambda composableLambdaB12 = ComposableLambdaKt.b(composerS, -1849673151, true, new AndroidAlertDialog_androidKt$AlertDialog$1(pVar9, i12, confirmButton));
                    int i2114 = (i12 & 14) | 48 | (i12 & 896);
                    int i2115 = i12 >> 3;
                    b(onDismissRequest, composableLambdaB12, modifier2, pVar8, pVar7, shape3, j12, j11, dialogProperties2, composerS, i2114 | (i2115 & 7168) | (57344 & i2115) | (458752 & i2115) | (i2115 & 3670016) | (i2115 & 29360128) | (i2115 & 234881024), 0);
                    pVar10 = pVar9;
                    modifier3 = modifier2;
                    pVar11 = pVar8;
                    pVar12 = pVar7;
                    shape4 = shape3;
                    j13 = j12;
                    j14 = j11;
                    dialogProperties3 = dialogProperties2;
                } else {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i21 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i13 != 0) {
                            pVar5 = null;
                        } else {
                            pVar5 = pVar;
                        }
                        if (i15 != 0) {
                            pVar6 = null;
                        } else {
                            pVar6 = pVar2;
                        }
                        if (i17 == 0) {
                        }
                        if ((i11 & 64) != 0) {
                            shapeB = MaterialTheme.INSTANCE.b(composerS, 6).b();
                            i12 &= -3670017;
                        } else {
                            shapeB = shape2;
                        }
                        if ((i11 & 128) != 0) {
                            jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                            i12 &= -29360129;
                        } else {
                            jN = j6;
                        }
                        if ((i11 & 256) != 0) {
                            jB = ColorsKt.b(jN, composerS, (i12 >> 21) & 14);
                            i12 &= -234881025;
                        }
                        if ((i11 & 512) != 0) {
                            i12 &= -1879048193;
                            dialogProperties2 = new DialogProperties(false, false, null, 7, null);
                        } else {
                            dialogProperties2 = dialogProperties;
                        }
                        pVar8 = pVar6;
                        j11 = jB;
                        shape3 = shapeB;
                        j12 = jN;
                        pVar9 = pVar5;
                    } else {
                        if (i21 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i13 != 0) {
                            pVar5 = null;
                        } else {
                            pVar5 = pVar;
                        }
                        if (i15 != 0) {
                            pVar6 = null;
                        } else {
                            pVar6 = pVar2;
                        }
                        if (i17 == 0) {
                        }
                        if ((i11 & 64) != 0) {
                            shapeB = MaterialTheme.INSTANCE.b(composerS, 6).b();
                            i12 &= -3670017;
                        } else {
                            shapeB = shape2;
                        }
                        if ((i11 & 128) != 0) {
                            jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                            i12 &= -29360129;
                        } else {
                            jN = j6;
                        }
                        if ((i11 & 256) != 0) {
                            jB = ColorsKt.b(jN, composerS, (i12 >> 21) & 14);
                            i12 &= -234881025;
                        }
                        if ((i11 & 512) != 0) {
                            i12 &= -1879048193;
                            dialogProperties2 = new DialogProperties(false, false, null, 7, null);
                        } else {
                            dialogProperties2 = dialogProperties;
                        }
                        pVar8 = pVar6;
                        j11 = jB;
                        shape3 = shapeB;
                        j12 = jN;
                        pVar9 = pVar5;
                    }
                    composerS.A();
                    ComposableLambda composableLambdaB13 = ComposableLambdaKt.b(composerS, -1849673151, true, new AndroidAlertDialog_androidKt$AlertDialog$1(pVar9, i12, confirmButton));
                    int i2116 = (i12 & 14) | 48 | (i12 & 896);
                    int i2117 = i12 >> 3;
                    b(onDismissRequest, composableLambdaB13, modifier2, pVar8, pVar7, shape3, j12, j11, dialogProperties2, composerS, i2116 | (i2117 & 7168) | (57344 & i2117) | (458752 & i2117) | (i2117 & 3670016) | (i2117 & 29360128) | (i2117 & 234881024), 0);
                    pVar10 = pVar9;
                    modifier3 = modifier2;
                    pVar11 = pVar8;
                    pVar12 = pVar7;
                    shape4 = shape3;
                    j13 = j12;
                    j14 = j11;
                    dialogProperties3 = dialogProperties2;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new AndroidAlertDialog_androidKt$AlertDialog$2(onDismissRequest, confirmButton, modifier3, pVar10, pVar11, pVar12, shape4, j13, j14, dialogProperties3, i10, i11));
            }
            i12 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            pVar4 = pVar3;
            if ((i10 & 3670016) == 0) {
                shape2 = shape;
                if ((i11 & 64) == 0) {
                    i20 = 524288;
                } else {
                    i20 = 524288;
                }
                i12 |= i20;
            } else {
                shape2 = shape;
            }
            if ((i10 & 29360128) != 0) {
                i12 |= ((i11 & 128) == 0 || !composerS.q(j6)) ? 4194304 : 8388608;
            }
            if ((i10 & 234881024) == 0) {
                jB = j10;
                if ((i11 & 256) == 0) {
                    i19 = 33554432;
                } else {
                    i19 = 33554432;
                }
                i12 |= i19;
            } else {
                jB = j10;
            }
            if ((1879048192 & i10) != 0) {
                i12 |= ((i11 & 512) == 0 || !composerS.k(dialogProperties)) ? 268435456 : 536870912;
            }
            if ((i12 & 1533916891) == 306783378) {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i21 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i13 != 0) {
                        pVar5 = null;
                    } else {
                        pVar5 = pVar;
                    }
                    if (i15 != 0) {
                        pVar6 = null;
                    } else {
                        pVar6 = pVar2;
                    }
                    if (i17 == 0) {
                    }
                    if ((i11 & 64) != 0) {
                        shapeB = MaterialTheme.INSTANCE.b(composerS, 6).b();
                        i12 &= -3670017;
                    } else {
                        shapeB = shape2;
                    }
                    if ((i11 & 128) != 0) {
                        jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                        i12 &= -29360129;
                    } else {
                        jN = j6;
                    }
                    if ((i11 & 256) != 0) {
                        jB = ColorsKt.b(jN, composerS, (i12 >> 21) & 14);
                        i12 &= -234881025;
                    }
                    if ((i11 & 512) != 0) {
                        i12 &= -1879048193;
                        dialogProperties2 = new DialogProperties(false, false, null, 7, null);
                    } else {
                        dialogProperties2 = dialogProperties;
                    }
                    pVar8 = pVar6;
                    j11 = jB;
                    shape3 = shapeB;
                    j12 = jN;
                    pVar9 = pVar5;
                } else {
                    if (i21 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i13 != 0) {
                        pVar5 = null;
                    } else {
                        pVar5 = pVar;
                    }
                    if (i15 != 0) {
                        pVar6 = null;
                    } else {
                        pVar6 = pVar2;
                    }
                    if (i17 == 0) {
                    }
                    if ((i11 & 64) != 0) {
                        shapeB = MaterialTheme.INSTANCE.b(composerS, 6).b();
                        i12 &= -3670017;
                    } else {
                        shapeB = shape2;
                    }
                    if ((i11 & 128) != 0) {
                        jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                        i12 &= -29360129;
                    } else {
                        jN = j6;
                    }
                    if ((i11 & 256) != 0) {
                        jB = ColorsKt.b(jN, composerS, (i12 >> 21) & 14);
                        i12 &= -234881025;
                    }
                    if ((i11 & 512) != 0) {
                        i12 &= -1879048193;
                        dialogProperties2 = new DialogProperties(false, false, null, 7, null);
                    } else {
                        dialogProperties2 = dialogProperties;
                    }
                    pVar8 = pVar6;
                    j11 = jB;
                    shape3 = shapeB;
                    j12 = jN;
                    pVar9 = pVar5;
                }
                composerS.A();
                ComposableLambda composableLambdaB14 = ComposableLambdaKt.b(composerS, -1849673151, true, new AndroidAlertDialog_androidKt$AlertDialog$1(pVar9, i12, confirmButton));
                int i2118 = (i12 & 14) | 48 | (i12 & 896);
                int i2119 = i12 >> 3;
                b(onDismissRequest, composableLambdaB14, modifier2, pVar8, pVar7, shape3, j12, j11, dialogProperties2, composerS, i2118 | (i2119 & 7168) | (57344 & i2119) | (458752 & i2119) | (i2119 & 3670016) | (i2119 & 29360128) | (i2119 & 234881024), 0);
                pVar10 = pVar9;
                modifier3 = modifier2;
                pVar11 = pVar8;
                pVar12 = pVar7;
                shape4 = shape3;
                j13 = j12;
                j14 = j11;
                dialogProperties3 = dialogProperties2;
            } else {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i21 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i13 != 0) {
                        pVar5 = null;
                    } else {
                        pVar5 = pVar;
                    }
                    if (i15 != 0) {
                        pVar6 = null;
                    } else {
                        pVar6 = pVar2;
                    }
                    if (i17 == 0) {
                    }
                    if ((i11 & 64) != 0) {
                        shapeB = MaterialTheme.INSTANCE.b(composerS, 6).b();
                        i12 &= -3670017;
                    } else {
                        shapeB = shape2;
                    }
                    if ((i11 & 128) != 0) {
                        jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                        i12 &= -29360129;
                    } else {
                        jN = j6;
                    }
                    if ((i11 & 256) != 0) {
                        jB = ColorsKt.b(jN, composerS, (i12 >> 21) & 14);
                        i12 &= -234881025;
                    }
                    if ((i11 & 512) != 0) {
                        i12 &= -1879048193;
                        dialogProperties2 = new DialogProperties(false, false, null, 7, null);
                    } else {
                        dialogProperties2 = dialogProperties;
                    }
                    pVar8 = pVar6;
                    j11 = jB;
                    shape3 = shapeB;
                    j12 = jN;
                    pVar9 = pVar5;
                } else {
                    if (i21 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i13 != 0) {
                        pVar5 = null;
                    } else {
                        pVar5 = pVar;
                    }
                    if (i15 != 0) {
                        pVar6 = null;
                    } else {
                        pVar6 = pVar2;
                    }
                    if (i17 == 0) {
                    }
                    if ((i11 & 64) != 0) {
                        shapeB = MaterialTheme.INSTANCE.b(composerS, 6).b();
                        i12 &= -3670017;
                    } else {
                        shapeB = shape2;
                    }
                    if ((i11 & 128) != 0) {
                        jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                        i12 &= -29360129;
                    } else {
                        jN = j6;
                    }
                    if ((i11 & 256) != 0) {
                        jB = ColorsKt.b(jN, composerS, (i12 >> 21) & 14);
                        i12 &= -234881025;
                    }
                    if ((i11 & 512) != 0) {
                        i12 &= -1879048193;
                        dialogProperties2 = new DialogProperties(false, false, null, 7, null);
                    } else {
                        dialogProperties2 = dialogProperties;
                    }
                    pVar8 = pVar6;
                    j11 = jB;
                    shape3 = shapeB;
                    j12 = jN;
                    pVar9 = pVar5;
                }
                composerS.A();
                ComposableLambda composableLambdaB15 = ComposableLambdaKt.b(composerS, -1849673151, true, new AndroidAlertDialog_androidKt$AlertDialog$1(pVar9, i12, confirmButton));
                int i21110 = (i12 & 14) | 48 | (i12 & 896);
                int i21111 = i12 >> 3;
                b(onDismissRequest, composableLambdaB15, modifier2, pVar8, pVar7, shape3, j12, j11, dialogProperties2, composerS, i21110 | (i21111 & 7168) | (57344 & i21111) | (458752 & i21111) | (i21111 & 3670016) | (i21111 & 29360128) | (i21111 & 234881024), 0);
                pVar10 = pVar9;
                modifier3 = modifier2;
                pVar11 = pVar8;
                pVar12 = pVar7;
                shape4 = shape3;
                j13 = j12;
                j14 = j11;
                dialogProperties3 = dialogProperties2;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new AndroidAlertDialog_androidKt$AlertDialog$2(onDismissRequest, confirmButton, modifier3, pVar10, pVar11, pVar12, shape4, j13, j14, dialogProperties3, i10, i11));
        }
        i12 |= 384;
        i13 = i11 & 8;
        if (i13 != 0) {
            if ((i10 & 7168) == 0) {
                if (composerS.k(pVar)) {
                    i14 = 2048;
                } else {
                    i14 = 1024;
                }
                i12 |= i14;
            }
            i15 = i11 & 16;
            if (i15 != 0) {
                if ((i10 & 57344) == 0) {
                    if (composerS.k(pVar2)) {
                        i16 = 16384;
                    } else {
                        i16 = 8192;
                    }
                    i12 |= i16;
                }
                i17 = i11 & 32;
                if (i17 != 0) {
                    if ((i10 & 458752) == 0) {
                        pVar4 = pVar3;
                        if (composerS.k(pVar4)) {
                            i18 = 131072;
                        } else {
                            i18 = 65536;
                        }
                        i12 |= i18;
                    }
                    if ((i10 & 3670016) == 0) {
                        shape2 = shape;
                        if ((i11 & 64) == 0) {
                            i20 = 524288;
                        } else {
                            i20 = 524288;
                        }
                        i12 |= i20;
                    } else {
                        shape2 = shape;
                    }
                    if ((i10 & 29360128) != 0) {
                        i12 |= ((i11 & 128) == 0 || !composerS.q(j6)) ? 4194304 : 8388608;
                    }
                    if ((i10 & 234881024) == 0) {
                        jB = j10;
                        if ((i11 & 256) == 0) {
                            i19 = 33554432;
                        } else {
                            i19 = 33554432;
                        }
                        i12 |= i19;
                    } else {
                        jB = j10;
                    }
                    if ((1879048192 & i10) != 0) {
                        i12 |= ((i11 & 512) == 0 || !composerS.k(dialogProperties)) ? 268435456 : 536870912;
                    }
                    if ((i12 & 1533916891) == 306783378) {
                        composerS.J();
                        if ((i10 & 1) != 0) {
                            if (i21 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i13 != 0) {
                                pVar5 = null;
                            } else {
                                pVar5 = pVar;
                            }
                            if (i15 != 0) {
                                pVar6 = null;
                            } else {
                                pVar6 = pVar2;
                            }
                            if (i17 == 0) {
                            }
                            if ((i11 & 64) != 0) {
                                shapeB = MaterialTheme.INSTANCE.b(composerS, 6).b();
                                i12 &= -3670017;
                            } else {
                                shapeB = shape2;
                            }
                            if ((i11 & 128) != 0) {
                                jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                                i12 &= -29360129;
                            } else {
                                jN = j6;
                            }
                            if ((i11 & 256) != 0) {
                                jB = ColorsKt.b(jN, composerS, (i12 >> 21) & 14);
                                i12 &= -234881025;
                            }
                            if ((i11 & 512) != 0) {
                                i12 &= -1879048193;
                                dialogProperties2 = new DialogProperties(false, false, null, 7, null);
                            } else {
                                dialogProperties2 = dialogProperties;
                            }
                            pVar8 = pVar6;
                            j11 = jB;
                            shape3 = shapeB;
                            j12 = jN;
                            pVar9 = pVar5;
                        } else {
                            if (i21 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i13 != 0) {
                                pVar5 = null;
                            } else {
                                pVar5 = pVar;
                            }
                            if (i15 != 0) {
                                pVar6 = null;
                            } else {
                                pVar6 = pVar2;
                            }
                            if (i17 == 0) {
                            }
                            if ((i11 & 64) != 0) {
                                shapeB = MaterialTheme.INSTANCE.b(composerS, 6).b();
                                i12 &= -3670017;
                            } else {
                                shapeB = shape2;
                            }
                            if ((i11 & 128) != 0) {
                                jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                                i12 &= -29360129;
                            } else {
                                jN = j6;
                            }
                            if ((i11 & 256) != 0) {
                                jB = ColorsKt.b(jN, composerS, (i12 >> 21) & 14);
                                i12 &= -234881025;
                            }
                            if ((i11 & 512) != 0) {
                                i12 &= -1879048193;
                                dialogProperties2 = new DialogProperties(false, false, null, 7, null);
                            } else {
                                dialogProperties2 = dialogProperties;
                            }
                            pVar8 = pVar6;
                            j11 = jB;
                            shape3 = shapeB;
                            j12 = jN;
                            pVar9 = pVar5;
                        }
                        composerS.A();
                        ComposableLambda composableLambdaB16 = ComposableLambdaKt.b(composerS, -1849673151, true, new AndroidAlertDialog_androidKt$AlertDialog$1(pVar9, i12, confirmButton));
                        int i21112 = (i12 & 14) | 48 | (i12 & 896);
                        int i21113 = i12 >> 3;
                        b(onDismissRequest, composableLambdaB16, modifier2, pVar8, pVar7, shape3, j12, j11, dialogProperties2, composerS, i21112 | (i21113 & 7168) | (57344 & i21113) | (458752 & i21113) | (i21113 & 3670016) | (i21113 & 29360128) | (i21113 & 234881024), 0);
                        pVar10 = pVar9;
                        modifier3 = modifier2;
                        pVar11 = pVar8;
                        pVar12 = pVar7;
                        shape4 = shape3;
                        j13 = j12;
                        j14 = j11;
                        dialogProperties3 = dialogProperties2;
                    } else {
                        composerS.J();
                        if ((i10 & 1) != 0) {
                            if (i21 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i13 != 0) {
                                pVar5 = null;
                            } else {
                                pVar5 = pVar;
                            }
                            if (i15 != 0) {
                                pVar6 = null;
                            } else {
                                pVar6 = pVar2;
                            }
                            if (i17 == 0) {
                            }
                            if ((i11 & 64) != 0) {
                                shapeB = MaterialTheme.INSTANCE.b(composerS, 6).b();
                                i12 &= -3670017;
                            } else {
                                shapeB = shape2;
                            }
                            if ((i11 & 128) != 0) {
                                jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                                i12 &= -29360129;
                            } else {
                                jN = j6;
                            }
                            if ((i11 & 256) != 0) {
                                jB = ColorsKt.b(jN, composerS, (i12 >> 21) & 14);
                                i12 &= -234881025;
                            }
                            if ((i11 & 512) != 0) {
                                i12 &= -1879048193;
                                dialogProperties2 = new DialogProperties(false, false, null, 7, null);
                            } else {
                                dialogProperties2 = dialogProperties;
                            }
                            pVar8 = pVar6;
                            j11 = jB;
                            shape3 = shapeB;
                            j12 = jN;
                            pVar9 = pVar5;
                        } else {
                            if (i21 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i13 != 0) {
                                pVar5 = null;
                            } else {
                                pVar5 = pVar;
                            }
                            if (i15 != 0) {
                                pVar6 = null;
                            } else {
                                pVar6 = pVar2;
                            }
                            if (i17 == 0) {
                            }
                            if ((i11 & 64) != 0) {
                                shapeB = MaterialTheme.INSTANCE.b(composerS, 6).b();
                                i12 &= -3670017;
                            } else {
                                shapeB = shape2;
                            }
                            if ((i11 & 128) != 0) {
                                jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                                i12 &= -29360129;
                            } else {
                                jN = j6;
                            }
                            if ((i11 & 256) != 0) {
                                jB = ColorsKt.b(jN, composerS, (i12 >> 21) & 14);
                                i12 &= -234881025;
                            }
                            if ((i11 & 512) != 0) {
                                i12 &= -1879048193;
                                dialogProperties2 = new DialogProperties(false, false, null, 7, null);
                            } else {
                                dialogProperties2 = dialogProperties;
                            }
                            pVar8 = pVar6;
                            j11 = jB;
                            shape3 = shapeB;
                            j12 = jN;
                            pVar9 = pVar5;
                        }
                        composerS.A();
                        ComposableLambda composableLambdaB17 = ComposableLambdaKt.b(composerS, -1849673151, true, new AndroidAlertDialog_androidKt$AlertDialog$1(pVar9, i12, confirmButton));
                        int i21114 = (i12 & 14) | 48 | (i12 & 896);
                        int i21115 = i12 >> 3;
                        b(onDismissRequest, composableLambdaB17, modifier2, pVar8, pVar7, shape3, j12, j11, dialogProperties2, composerS, i21114 | (i21115 & 7168) | (57344 & i21115) | (458752 & i21115) | (i21115 & 3670016) | (i21115 & 29360128) | (i21115 & 234881024), 0);
                        pVar10 = pVar9;
                        modifier3 = modifier2;
                        pVar11 = pVar8;
                        pVar12 = pVar7;
                        shape4 = shape3;
                        j13 = j12;
                        j14 = j11;
                        dialogProperties3 = dialogProperties2;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new AndroidAlertDialog_androidKt$AlertDialog$2(onDismissRequest, confirmButton, modifier3, pVar10, pVar11, pVar12, shape4, j13, j14, dialogProperties3, i10, i11));
                }
                i12 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                pVar4 = pVar3;
                if ((i10 & 3670016) == 0) {
                    shape2 = shape;
                    if ((i11 & 64) == 0) {
                        i20 = 524288;
                    } else {
                        i20 = 524288;
                    }
                    i12 |= i20;
                } else {
                    shape2 = shape;
                }
                if ((i10 & 29360128) != 0) {
                    i12 |= ((i11 & 128) == 0 || !composerS.q(j6)) ? 4194304 : 8388608;
                }
                if ((i10 & 234881024) == 0) {
                    jB = j10;
                    if ((i11 & 256) == 0) {
                        i19 = 33554432;
                    } else {
                        i19 = 33554432;
                    }
                    i12 |= i19;
                } else {
                    jB = j10;
                }
                if ((1879048192 & i10) != 0) {
                    i12 |= ((i11 & 512) == 0 || !composerS.k(dialogProperties)) ? 268435456 : 536870912;
                }
                if ((i12 & 1533916891) == 306783378) {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i21 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i13 != 0) {
                            pVar5 = null;
                        } else {
                            pVar5 = pVar;
                        }
                        if (i15 != 0) {
                            pVar6 = null;
                        } else {
                            pVar6 = pVar2;
                        }
                        if (i17 == 0) {
                        }
                        if ((i11 & 64) != 0) {
                            shapeB = MaterialTheme.INSTANCE.b(composerS, 6).b();
                            i12 &= -3670017;
                        } else {
                            shapeB = shape2;
                        }
                        if ((i11 & 128) != 0) {
                            jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                            i12 &= -29360129;
                        } else {
                            jN = j6;
                        }
                        if ((i11 & 256) != 0) {
                            jB = ColorsKt.b(jN, composerS, (i12 >> 21) & 14);
                            i12 &= -234881025;
                        }
                        if ((i11 & 512) != 0) {
                            i12 &= -1879048193;
                            dialogProperties2 = new DialogProperties(false, false, null, 7, null);
                        } else {
                            dialogProperties2 = dialogProperties;
                        }
                        pVar8 = pVar6;
                        j11 = jB;
                        shape3 = shapeB;
                        j12 = jN;
                        pVar9 = pVar5;
                    } else {
                        if (i21 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i13 != 0) {
                            pVar5 = null;
                        } else {
                            pVar5 = pVar;
                        }
                        if (i15 != 0) {
                            pVar6 = null;
                        } else {
                            pVar6 = pVar2;
                        }
                        if (i17 == 0) {
                        }
                        if ((i11 & 64) != 0) {
                            shapeB = MaterialTheme.INSTANCE.b(composerS, 6).b();
                            i12 &= -3670017;
                        } else {
                            shapeB = shape2;
                        }
                        if ((i11 & 128) != 0) {
                            jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                            i12 &= -29360129;
                        } else {
                            jN = j6;
                        }
                        if ((i11 & 256) != 0) {
                            jB = ColorsKt.b(jN, composerS, (i12 >> 21) & 14);
                            i12 &= -234881025;
                        }
                        if ((i11 & 512) != 0) {
                            i12 &= -1879048193;
                            dialogProperties2 = new DialogProperties(false, false, null, 7, null);
                        } else {
                            dialogProperties2 = dialogProperties;
                        }
                        pVar8 = pVar6;
                        j11 = jB;
                        shape3 = shapeB;
                        j12 = jN;
                        pVar9 = pVar5;
                    }
                    composerS.A();
                    ComposableLambda composableLambdaB18 = ComposableLambdaKt.b(composerS, -1849673151, true, new AndroidAlertDialog_androidKt$AlertDialog$1(pVar9, i12, confirmButton));
                    int i21116 = (i12 & 14) | 48 | (i12 & 896);
                    int i21117 = i12 >> 3;
                    b(onDismissRequest, composableLambdaB18, modifier2, pVar8, pVar7, shape3, j12, j11, dialogProperties2, composerS, i21116 | (i21117 & 7168) | (57344 & i21117) | (458752 & i21117) | (i21117 & 3670016) | (i21117 & 29360128) | (i21117 & 234881024), 0);
                    pVar10 = pVar9;
                    modifier3 = modifier2;
                    pVar11 = pVar8;
                    pVar12 = pVar7;
                    shape4 = shape3;
                    j13 = j12;
                    j14 = j11;
                    dialogProperties3 = dialogProperties2;
                } else {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i21 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i13 != 0) {
                            pVar5 = null;
                        } else {
                            pVar5 = pVar;
                        }
                        if (i15 != 0) {
                            pVar6 = null;
                        } else {
                            pVar6 = pVar2;
                        }
                        if (i17 == 0) {
                        }
                        if ((i11 & 64) != 0) {
                            shapeB = MaterialTheme.INSTANCE.b(composerS, 6).b();
                            i12 &= -3670017;
                        } else {
                            shapeB = shape2;
                        }
                        if ((i11 & 128) != 0) {
                            jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                            i12 &= -29360129;
                        } else {
                            jN = j6;
                        }
                        if ((i11 & 256) != 0) {
                            jB = ColorsKt.b(jN, composerS, (i12 >> 21) & 14);
                            i12 &= -234881025;
                        }
                        if ((i11 & 512) != 0) {
                            i12 &= -1879048193;
                            dialogProperties2 = new DialogProperties(false, false, null, 7, null);
                        } else {
                            dialogProperties2 = dialogProperties;
                        }
                        pVar8 = pVar6;
                        j11 = jB;
                        shape3 = shapeB;
                        j12 = jN;
                        pVar9 = pVar5;
                    } else {
                        if (i21 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i13 != 0) {
                            pVar5 = null;
                        } else {
                            pVar5 = pVar;
                        }
                        if (i15 != 0) {
                            pVar6 = null;
                        } else {
                            pVar6 = pVar2;
                        }
                        if (i17 == 0) {
                        }
                        if ((i11 & 64) != 0) {
                            shapeB = MaterialTheme.INSTANCE.b(composerS, 6).b();
                            i12 &= -3670017;
                        } else {
                            shapeB = shape2;
                        }
                        if ((i11 & 128) != 0) {
                            jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                            i12 &= -29360129;
                        } else {
                            jN = j6;
                        }
                        if ((i11 & 256) != 0) {
                            jB = ColorsKt.b(jN, composerS, (i12 >> 21) & 14);
                            i12 &= -234881025;
                        }
                        if ((i11 & 512) != 0) {
                            i12 &= -1879048193;
                            dialogProperties2 = new DialogProperties(false, false, null, 7, null);
                        } else {
                            dialogProperties2 = dialogProperties;
                        }
                        pVar8 = pVar6;
                        j11 = jB;
                        shape3 = shapeB;
                        j12 = jN;
                        pVar9 = pVar5;
                    }
                    composerS.A();
                    ComposableLambda composableLambdaB19 = ComposableLambdaKt.b(composerS, -1849673151, true, new AndroidAlertDialog_androidKt$AlertDialog$1(pVar9, i12, confirmButton));
                    int i21118 = (i12 & 14) | 48 | (i12 & 896);
                    int i21119 = i12 >> 3;
                    b(onDismissRequest, composableLambdaB19, modifier2, pVar8, pVar7, shape3, j12, j11, dialogProperties2, composerS, i21118 | (i21119 & 7168) | (57344 & i21119) | (458752 & i21119) | (i21119 & 3670016) | (i21119 & 29360128) | (i21119 & 234881024), 0);
                    pVar10 = pVar9;
                    modifier3 = modifier2;
                    pVar11 = pVar8;
                    pVar12 = pVar7;
                    shape4 = shape3;
                    j13 = j12;
                    j14 = j11;
                    dialogProperties3 = dialogProperties2;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new AndroidAlertDialog_androidKt$AlertDialog$2(onDismissRequest, confirmButton, modifier3, pVar10, pVar11, pVar12, shape4, j13, j14, dialogProperties3, i10, i11));
            }
            i12 |= CpioConstants.C_ISBLK;
            i17 = i11 & 32;
            if (i17 != 0) {
                if ((i10 & 458752) == 0) {
                    pVar4 = pVar3;
                    if (composerS.k(pVar4)) {
                        i18 = 131072;
                    } else {
                        i18 = 65536;
                    }
                    i12 |= i18;
                }
                if ((i10 & 3670016) == 0) {
                    shape2 = shape;
                    if ((i11 & 64) == 0) {
                        i20 = 524288;
                    } else {
                        i20 = 524288;
                    }
                    i12 |= i20;
                } else {
                    shape2 = shape;
                }
                if ((i10 & 29360128) != 0) {
                    i12 |= ((i11 & 128) == 0 || !composerS.q(j6)) ? 4194304 : 8388608;
                }
                if ((i10 & 234881024) == 0) {
                    jB = j10;
                    if ((i11 & 256) == 0) {
                        i19 = 33554432;
                    } else {
                        i19 = 33554432;
                    }
                    i12 |= i19;
                } else {
                    jB = j10;
                }
                if ((1879048192 & i10) != 0) {
                    i12 |= ((i11 & 512) == 0 || !composerS.k(dialogProperties)) ? 268435456 : 536870912;
                }
                if ((i12 & 1533916891) == 306783378) {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i21 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i13 != 0) {
                            pVar5 = null;
                        } else {
                            pVar5 = pVar;
                        }
                        if (i15 != 0) {
                            pVar6 = null;
                        } else {
                            pVar6 = pVar2;
                        }
                        if (i17 == 0) {
                        }
                        if ((i11 & 64) != 0) {
                            shapeB = MaterialTheme.INSTANCE.b(composerS, 6).b();
                            i12 &= -3670017;
                        } else {
                            shapeB = shape2;
                        }
                        if ((i11 & 128) != 0) {
                            jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                            i12 &= -29360129;
                        } else {
                            jN = j6;
                        }
                        if ((i11 & 256) != 0) {
                            jB = ColorsKt.b(jN, composerS, (i12 >> 21) & 14);
                            i12 &= -234881025;
                        }
                        if ((i11 & 512) != 0) {
                            i12 &= -1879048193;
                            dialogProperties2 = new DialogProperties(false, false, null, 7, null);
                        } else {
                            dialogProperties2 = dialogProperties;
                        }
                        pVar8 = pVar6;
                        j11 = jB;
                        shape3 = shapeB;
                        j12 = jN;
                        pVar9 = pVar5;
                    } else {
                        if (i21 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i13 != 0) {
                            pVar5 = null;
                        } else {
                            pVar5 = pVar;
                        }
                        if (i15 != 0) {
                            pVar6 = null;
                        } else {
                            pVar6 = pVar2;
                        }
                        if (i17 == 0) {
                        }
                        if ((i11 & 64) != 0) {
                            shapeB = MaterialTheme.INSTANCE.b(composerS, 6).b();
                            i12 &= -3670017;
                        } else {
                            shapeB = shape2;
                        }
                        if ((i11 & 128) != 0) {
                            jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                            i12 &= -29360129;
                        } else {
                            jN = j6;
                        }
                        if ((i11 & 256) != 0) {
                            jB = ColorsKt.b(jN, composerS, (i12 >> 21) & 14);
                            i12 &= -234881025;
                        }
                        if ((i11 & 512) != 0) {
                            i12 &= -1879048193;
                            dialogProperties2 = new DialogProperties(false, false, null, 7, null);
                        } else {
                            dialogProperties2 = dialogProperties;
                        }
                        pVar8 = pVar6;
                        j11 = jB;
                        shape3 = shapeB;
                        j12 = jN;
                        pVar9 = pVar5;
                    }
                    composerS.A();
                    ComposableLambda composableLambdaB110 = ComposableLambdaKt.b(composerS, -1849673151, true, new AndroidAlertDialog_androidKt$AlertDialog$1(pVar9, i12, confirmButton));
                    int i211110 = (i12 & 14) | 48 | (i12 & 896);
                    int i211111 = i12 >> 3;
                    b(onDismissRequest, composableLambdaB110, modifier2, pVar8, pVar7, shape3, j12, j11, dialogProperties2, composerS, i211110 | (i211111 & 7168) | (57344 & i211111) | (458752 & i211111) | (i211111 & 3670016) | (i211111 & 29360128) | (i211111 & 234881024), 0);
                    pVar10 = pVar9;
                    modifier3 = modifier2;
                    pVar11 = pVar8;
                    pVar12 = pVar7;
                    shape4 = shape3;
                    j13 = j12;
                    j14 = j11;
                    dialogProperties3 = dialogProperties2;
                } else {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i21 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i13 != 0) {
                            pVar5 = null;
                        } else {
                            pVar5 = pVar;
                        }
                        if (i15 != 0) {
                            pVar6 = null;
                        } else {
                            pVar6 = pVar2;
                        }
                        if (i17 == 0) {
                        }
                        if ((i11 & 64) != 0) {
                            shapeB = MaterialTheme.INSTANCE.b(composerS, 6).b();
                            i12 &= -3670017;
                        } else {
                            shapeB = shape2;
                        }
                        if ((i11 & 128) != 0) {
                            jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                            i12 &= -29360129;
                        } else {
                            jN = j6;
                        }
                        if ((i11 & 256) != 0) {
                            jB = ColorsKt.b(jN, composerS, (i12 >> 21) & 14);
                            i12 &= -234881025;
                        }
                        if ((i11 & 512) != 0) {
                            i12 &= -1879048193;
                            dialogProperties2 = new DialogProperties(false, false, null, 7, null);
                        } else {
                            dialogProperties2 = dialogProperties;
                        }
                        pVar8 = pVar6;
                        j11 = jB;
                        shape3 = shapeB;
                        j12 = jN;
                        pVar9 = pVar5;
                    } else {
                        if (i21 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i13 != 0) {
                            pVar5 = null;
                        } else {
                            pVar5 = pVar;
                        }
                        if (i15 != 0) {
                            pVar6 = null;
                        } else {
                            pVar6 = pVar2;
                        }
                        if (i17 == 0) {
                        }
                        if ((i11 & 64) != 0) {
                            shapeB = MaterialTheme.INSTANCE.b(composerS, 6).b();
                            i12 &= -3670017;
                        } else {
                            shapeB = shape2;
                        }
                        if ((i11 & 128) != 0) {
                            jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                            i12 &= -29360129;
                        } else {
                            jN = j6;
                        }
                        if ((i11 & 256) != 0) {
                            jB = ColorsKt.b(jN, composerS, (i12 >> 21) & 14);
                            i12 &= -234881025;
                        }
                        if ((i11 & 512) != 0) {
                            i12 &= -1879048193;
                            dialogProperties2 = new DialogProperties(false, false, null, 7, null);
                        } else {
                            dialogProperties2 = dialogProperties;
                        }
                        pVar8 = pVar6;
                        j11 = jB;
                        shape3 = shapeB;
                        j12 = jN;
                        pVar9 = pVar5;
                    }
                    composerS.A();
                    ComposableLambda composableLambdaB111 = ComposableLambdaKt.b(composerS, -1849673151, true, new AndroidAlertDialog_androidKt$AlertDialog$1(pVar9, i12, confirmButton));
                    int i211112 = (i12 & 14) | 48 | (i12 & 896);
                    int i211113 = i12 >> 3;
                    b(onDismissRequest, composableLambdaB111, modifier2, pVar8, pVar7, shape3, j12, j11, dialogProperties2, composerS, i211112 | (i211113 & 7168) | (57344 & i211113) | (458752 & i211113) | (i211113 & 3670016) | (i211113 & 29360128) | (i211113 & 234881024), 0);
                    pVar10 = pVar9;
                    modifier3 = modifier2;
                    pVar11 = pVar8;
                    pVar12 = pVar7;
                    shape4 = shape3;
                    j13 = j12;
                    j14 = j11;
                    dialogProperties3 = dialogProperties2;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new AndroidAlertDialog_androidKt$AlertDialog$2(onDismissRequest, confirmButton, modifier3, pVar10, pVar11, pVar12, shape4, j13, j14, dialogProperties3, i10, i11));
            }
            i12 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            pVar4 = pVar3;
            if ((i10 & 3670016) == 0) {
                shape2 = shape;
                if ((i11 & 64) == 0) {
                    i20 = 524288;
                } else {
                    i20 = 524288;
                }
                i12 |= i20;
            } else {
                shape2 = shape;
            }
            if ((i10 & 29360128) != 0) {
                i12 |= ((i11 & 128) == 0 || !composerS.q(j6)) ? 4194304 : 8388608;
            }
            if ((i10 & 234881024) == 0) {
                jB = j10;
                if ((i11 & 256) == 0) {
                    i19 = 33554432;
                } else {
                    i19 = 33554432;
                }
                i12 |= i19;
            } else {
                jB = j10;
            }
            if ((1879048192 & i10) != 0) {
                i12 |= ((i11 & 512) == 0 || !composerS.k(dialogProperties)) ? 268435456 : 536870912;
            }
            if ((i12 & 1533916891) == 306783378) {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i21 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i13 != 0) {
                        pVar5 = null;
                    } else {
                        pVar5 = pVar;
                    }
                    if (i15 != 0) {
                        pVar6 = null;
                    } else {
                        pVar6 = pVar2;
                    }
                    if (i17 == 0) {
                    }
                    if ((i11 & 64) != 0) {
                        shapeB = MaterialTheme.INSTANCE.b(composerS, 6).b();
                        i12 &= -3670017;
                    } else {
                        shapeB = shape2;
                    }
                    if ((i11 & 128) != 0) {
                        jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                        i12 &= -29360129;
                    } else {
                        jN = j6;
                    }
                    if ((i11 & 256) != 0) {
                        jB = ColorsKt.b(jN, composerS, (i12 >> 21) & 14);
                        i12 &= -234881025;
                    }
                    if ((i11 & 512) != 0) {
                        i12 &= -1879048193;
                        dialogProperties2 = new DialogProperties(false, false, null, 7, null);
                    } else {
                        dialogProperties2 = dialogProperties;
                    }
                    pVar8 = pVar6;
                    j11 = jB;
                    shape3 = shapeB;
                    j12 = jN;
                    pVar9 = pVar5;
                } else {
                    if (i21 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i13 != 0) {
                        pVar5 = null;
                    } else {
                        pVar5 = pVar;
                    }
                    if (i15 != 0) {
                        pVar6 = null;
                    } else {
                        pVar6 = pVar2;
                    }
                    if (i17 == 0) {
                    }
                    if ((i11 & 64) != 0) {
                        shapeB = MaterialTheme.INSTANCE.b(composerS, 6).b();
                        i12 &= -3670017;
                    } else {
                        shapeB = shape2;
                    }
                    if ((i11 & 128) != 0) {
                        jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                        i12 &= -29360129;
                    } else {
                        jN = j6;
                    }
                    if ((i11 & 256) != 0) {
                        jB = ColorsKt.b(jN, composerS, (i12 >> 21) & 14);
                        i12 &= -234881025;
                    }
                    if ((i11 & 512) != 0) {
                        i12 &= -1879048193;
                        dialogProperties2 = new DialogProperties(false, false, null, 7, null);
                    } else {
                        dialogProperties2 = dialogProperties;
                    }
                    pVar8 = pVar6;
                    j11 = jB;
                    shape3 = shapeB;
                    j12 = jN;
                    pVar9 = pVar5;
                }
                composerS.A();
                ComposableLambda composableLambdaB112 = ComposableLambdaKt.b(composerS, -1849673151, true, new AndroidAlertDialog_androidKt$AlertDialog$1(pVar9, i12, confirmButton));
                int i211114 = (i12 & 14) | 48 | (i12 & 896);
                int i211115 = i12 >> 3;
                b(onDismissRequest, composableLambdaB112, modifier2, pVar8, pVar7, shape3, j12, j11, dialogProperties2, composerS, i211114 | (i211115 & 7168) | (57344 & i211115) | (458752 & i211115) | (i211115 & 3670016) | (i211115 & 29360128) | (i211115 & 234881024), 0);
                pVar10 = pVar9;
                modifier3 = modifier2;
                pVar11 = pVar8;
                pVar12 = pVar7;
                shape4 = shape3;
                j13 = j12;
                j14 = j11;
                dialogProperties3 = dialogProperties2;
            } else {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i21 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i13 != 0) {
                        pVar5 = null;
                    } else {
                        pVar5 = pVar;
                    }
                    if (i15 != 0) {
                        pVar6 = null;
                    } else {
                        pVar6 = pVar2;
                    }
                    if (i17 == 0) {
                    }
                    if ((i11 & 64) != 0) {
                        shapeB = MaterialTheme.INSTANCE.b(composerS, 6).b();
                        i12 &= -3670017;
                    } else {
                        shapeB = shape2;
                    }
                    if ((i11 & 128) != 0) {
                        jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                        i12 &= -29360129;
                    } else {
                        jN = j6;
                    }
                    if ((i11 & 256) != 0) {
                        jB = ColorsKt.b(jN, composerS, (i12 >> 21) & 14);
                        i12 &= -234881025;
                    }
                    if ((i11 & 512) != 0) {
                        i12 &= -1879048193;
                        dialogProperties2 = new DialogProperties(false, false, null, 7, null);
                    } else {
                        dialogProperties2 = dialogProperties;
                    }
                    pVar8 = pVar6;
                    j11 = jB;
                    shape3 = shapeB;
                    j12 = jN;
                    pVar9 = pVar5;
                } else {
                    if (i21 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i13 != 0) {
                        pVar5 = null;
                    } else {
                        pVar5 = pVar;
                    }
                    if (i15 != 0) {
                        pVar6 = null;
                    } else {
                        pVar6 = pVar2;
                    }
                    if (i17 == 0) {
                    }
                    if ((i11 & 64) != 0) {
                        shapeB = MaterialTheme.INSTANCE.b(composerS, 6).b();
                        i12 &= -3670017;
                    } else {
                        shapeB = shape2;
                    }
                    if ((i11 & 128) != 0) {
                        jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                        i12 &= -29360129;
                    } else {
                        jN = j6;
                    }
                    if ((i11 & 256) != 0) {
                        jB = ColorsKt.b(jN, composerS, (i12 >> 21) & 14);
                        i12 &= -234881025;
                    }
                    if ((i11 & 512) != 0) {
                        i12 &= -1879048193;
                        dialogProperties2 = new DialogProperties(false, false, null, 7, null);
                    } else {
                        dialogProperties2 = dialogProperties;
                    }
                    pVar8 = pVar6;
                    j11 = jB;
                    shape3 = shapeB;
                    j12 = jN;
                    pVar9 = pVar5;
                }
                composerS.A();
                ComposableLambda composableLambdaB113 = ComposableLambdaKt.b(composerS, -1849673151, true, new AndroidAlertDialog_androidKt$AlertDialog$1(pVar9, i12, confirmButton));
                int i211116 = (i12 & 14) | 48 | (i12 & 896);
                int i211117 = i12 >> 3;
                b(onDismissRequest, composableLambdaB113, modifier2, pVar8, pVar7, shape3, j12, j11, dialogProperties2, composerS, i211116 | (i211117 & 7168) | (57344 & i211117) | (458752 & i211117) | (i211117 & 3670016) | (i211117 & 29360128) | (i211117 & 234881024), 0);
                pVar10 = pVar9;
                modifier3 = modifier2;
                pVar11 = pVar8;
                pVar12 = pVar7;
                shape4 = shape3;
                j13 = j12;
                j14 = j11;
                dialogProperties3 = dialogProperties2;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new AndroidAlertDialog_androidKt$AlertDialog$2(onDismissRequest, confirmButton, modifier3, pVar10, pVar11, pVar12, shape4, j13, j14, dialogProperties3, i10, i11));
        }
        i12 |= 3072;
        i15 = i11 & 16;
        if (i15 != 0) {
            if ((i10 & 57344) == 0) {
                if (composerS.k(pVar2)) {
                    i16 = 16384;
                } else {
                    i16 = 8192;
                }
                i12 |= i16;
            }
            i17 = i11 & 32;
            if (i17 != 0) {
                if ((i10 & 458752) == 0) {
                    pVar4 = pVar3;
                    if (composerS.k(pVar4)) {
                        i18 = 131072;
                    } else {
                        i18 = 65536;
                    }
                    i12 |= i18;
                }
                if ((i10 & 3670016) == 0) {
                    shape2 = shape;
                    if ((i11 & 64) == 0) {
                        i20 = 524288;
                    } else {
                        i20 = 524288;
                    }
                    i12 |= i20;
                } else {
                    shape2 = shape;
                }
                if ((i10 & 29360128) != 0) {
                    i12 |= ((i11 & 128) == 0 || !composerS.q(j6)) ? 4194304 : 8388608;
                }
                if ((i10 & 234881024) == 0) {
                    jB = j10;
                    if ((i11 & 256) == 0) {
                        i19 = 33554432;
                    } else {
                        i19 = 33554432;
                    }
                    i12 |= i19;
                } else {
                    jB = j10;
                }
                if ((1879048192 & i10) != 0) {
                    i12 |= ((i11 & 512) == 0 || !composerS.k(dialogProperties)) ? 268435456 : 536870912;
                }
                if ((i12 & 1533916891) == 306783378) {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i21 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i13 != 0) {
                            pVar5 = null;
                        } else {
                            pVar5 = pVar;
                        }
                        if (i15 != 0) {
                            pVar6 = null;
                        } else {
                            pVar6 = pVar2;
                        }
                        if (i17 == 0) {
                        }
                        if ((i11 & 64) != 0) {
                            shapeB = MaterialTheme.INSTANCE.b(composerS, 6).b();
                            i12 &= -3670017;
                        } else {
                            shapeB = shape2;
                        }
                        if ((i11 & 128) != 0) {
                            jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                            i12 &= -29360129;
                        } else {
                            jN = j6;
                        }
                        if ((i11 & 256) != 0) {
                            jB = ColorsKt.b(jN, composerS, (i12 >> 21) & 14);
                            i12 &= -234881025;
                        }
                        if ((i11 & 512) != 0) {
                            i12 &= -1879048193;
                            dialogProperties2 = new DialogProperties(false, false, null, 7, null);
                        } else {
                            dialogProperties2 = dialogProperties;
                        }
                        pVar8 = pVar6;
                        j11 = jB;
                        shape3 = shapeB;
                        j12 = jN;
                        pVar9 = pVar5;
                    } else {
                        if (i21 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i13 != 0) {
                            pVar5 = null;
                        } else {
                            pVar5 = pVar;
                        }
                        if (i15 != 0) {
                            pVar6 = null;
                        } else {
                            pVar6 = pVar2;
                        }
                        if (i17 == 0) {
                        }
                        if ((i11 & 64) != 0) {
                            shapeB = MaterialTheme.INSTANCE.b(composerS, 6).b();
                            i12 &= -3670017;
                        } else {
                            shapeB = shape2;
                        }
                        if ((i11 & 128) != 0) {
                            jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                            i12 &= -29360129;
                        } else {
                            jN = j6;
                        }
                        if ((i11 & 256) != 0) {
                            jB = ColorsKt.b(jN, composerS, (i12 >> 21) & 14);
                            i12 &= -234881025;
                        }
                        if ((i11 & 512) != 0) {
                            i12 &= -1879048193;
                            dialogProperties2 = new DialogProperties(false, false, null, 7, null);
                        } else {
                            dialogProperties2 = dialogProperties;
                        }
                        pVar8 = pVar6;
                        j11 = jB;
                        shape3 = shapeB;
                        j12 = jN;
                        pVar9 = pVar5;
                    }
                    composerS.A();
                    ComposableLambda composableLambdaB114 = ComposableLambdaKt.b(composerS, -1849673151, true, new AndroidAlertDialog_androidKt$AlertDialog$1(pVar9, i12, confirmButton));
                    int i211118 = (i12 & 14) | 48 | (i12 & 896);
                    int i211119 = i12 >> 3;
                    b(onDismissRequest, composableLambdaB114, modifier2, pVar8, pVar7, shape3, j12, j11, dialogProperties2, composerS, i211118 | (i211119 & 7168) | (57344 & i211119) | (458752 & i211119) | (i211119 & 3670016) | (i211119 & 29360128) | (i211119 & 234881024), 0);
                    pVar10 = pVar9;
                    modifier3 = modifier2;
                    pVar11 = pVar8;
                    pVar12 = pVar7;
                    shape4 = shape3;
                    j13 = j12;
                    j14 = j11;
                    dialogProperties3 = dialogProperties2;
                } else {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i21 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i13 != 0) {
                            pVar5 = null;
                        } else {
                            pVar5 = pVar;
                        }
                        if (i15 != 0) {
                            pVar6 = null;
                        } else {
                            pVar6 = pVar2;
                        }
                        if (i17 == 0) {
                        }
                        if ((i11 & 64) != 0) {
                            shapeB = MaterialTheme.INSTANCE.b(composerS, 6).b();
                            i12 &= -3670017;
                        } else {
                            shapeB = shape2;
                        }
                        if ((i11 & 128) != 0) {
                            jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                            i12 &= -29360129;
                        } else {
                            jN = j6;
                        }
                        if ((i11 & 256) != 0) {
                            jB = ColorsKt.b(jN, composerS, (i12 >> 21) & 14);
                            i12 &= -234881025;
                        }
                        if ((i11 & 512) != 0) {
                            i12 &= -1879048193;
                            dialogProperties2 = new DialogProperties(false, false, null, 7, null);
                        } else {
                            dialogProperties2 = dialogProperties;
                        }
                        pVar8 = pVar6;
                        j11 = jB;
                        shape3 = shapeB;
                        j12 = jN;
                        pVar9 = pVar5;
                    } else {
                        if (i21 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i13 != 0) {
                            pVar5 = null;
                        } else {
                            pVar5 = pVar;
                        }
                        if (i15 != 0) {
                            pVar6 = null;
                        } else {
                            pVar6 = pVar2;
                        }
                        if (i17 == 0) {
                        }
                        if ((i11 & 64) != 0) {
                            shapeB = MaterialTheme.INSTANCE.b(composerS, 6).b();
                            i12 &= -3670017;
                        } else {
                            shapeB = shape2;
                        }
                        if ((i11 & 128) != 0) {
                            jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                            i12 &= -29360129;
                        } else {
                            jN = j6;
                        }
                        if ((i11 & 256) != 0) {
                            jB = ColorsKt.b(jN, composerS, (i12 >> 21) & 14);
                            i12 &= -234881025;
                        }
                        if ((i11 & 512) != 0) {
                            i12 &= -1879048193;
                            dialogProperties2 = new DialogProperties(false, false, null, 7, null);
                        } else {
                            dialogProperties2 = dialogProperties;
                        }
                        pVar8 = pVar6;
                        j11 = jB;
                        shape3 = shapeB;
                        j12 = jN;
                        pVar9 = pVar5;
                    }
                    composerS.A();
                    ComposableLambda composableLambdaB115 = ComposableLambdaKt.b(composerS, -1849673151, true, new AndroidAlertDialog_androidKt$AlertDialog$1(pVar9, i12, confirmButton));
                    int i2111110 = (i12 & 14) | 48 | (i12 & 896);
                    int i2111111 = i12 >> 3;
                    b(onDismissRequest, composableLambdaB115, modifier2, pVar8, pVar7, shape3, j12, j11, dialogProperties2, composerS, i2111110 | (i2111111 & 7168) | (57344 & i2111111) | (458752 & i2111111) | (i2111111 & 3670016) | (i2111111 & 29360128) | (i2111111 & 234881024), 0);
                    pVar10 = pVar9;
                    modifier3 = modifier2;
                    pVar11 = pVar8;
                    pVar12 = pVar7;
                    shape4 = shape3;
                    j13 = j12;
                    j14 = j11;
                    dialogProperties3 = dialogProperties2;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new AndroidAlertDialog_androidKt$AlertDialog$2(onDismissRequest, confirmButton, modifier3, pVar10, pVar11, pVar12, shape4, j13, j14, dialogProperties3, i10, i11));
            }
            i12 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            pVar4 = pVar3;
            if ((i10 & 3670016) == 0) {
                shape2 = shape;
                if ((i11 & 64) == 0) {
                    i20 = 524288;
                } else {
                    i20 = 524288;
                }
                i12 |= i20;
            } else {
                shape2 = shape;
            }
            if ((i10 & 29360128) != 0) {
                i12 |= ((i11 & 128) == 0 || !composerS.q(j6)) ? 4194304 : 8388608;
            }
            if ((i10 & 234881024) == 0) {
                jB = j10;
                if ((i11 & 256) == 0) {
                    i19 = 33554432;
                } else {
                    i19 = 33554432;
                }
                i12 |= i19;
            } else {
                jB = j10;
            }
            if ((1879048192 & i10) != 0) {
                i12 |= ((i11 & 512) == 0 || !composerS.k(dialogProperties)) ? 268435456 : 536870912;
            }
            if ((i12 & 1533916891) == 306783378) {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i21 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i13 != 0) {
                        pVar5 = null;
                    } else {
                        pVar5 = pVar;
                    }
                    if (i15 != 0) {
                        pVar6 = null;
                    } else {
                        pVar6 = pVar2;
                    }
                    if (i17 == 0) {
                    }
                    if ((i11 & 64) != 0) {
                        shapeB = MaterialTheme.INSTANCE.b(composerS, 6).b();
                        i12 &= -3670017;
                    } else {
                        shapeB = shape2;
                    }
                    if ((i11 & 128) != 0) {
                        jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                        i12 &= -29360129;
                    } else {
                        jN = j6;
                    }
                    if ((i11 & 256) != 0) {
                        jB = ColorsKt.b(jN, composerS, (i12 >> 21) & 14);
                        i12 &= -234881025;
                    }
                    if ((i11 & 512) != 0) {
                        i12 &= -1879048193;
                        dialogProperties2 = new DialogProperties(false, false, null, 7, null);
                    } else {
                        dialogProperties2 = dialogProperties;
                    }
                    pVar8 = pVar6;
                    j11 = jB;
                    shape3 = shapeB;
                    j12 = jN;
                    pVar9 = pVar5;
                } else {
                    if (i21 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i13 != 0) {
                        pVar5 = null;
                    } else {
                        pVar5 = pVar;
                    }
                    if (i15 != 0) {
                        pVar6 = null;
                    } else {
                        pVar6 = pVar2;
                    }
                    if (i17 == 0) {
                    }
                    if ((i11 & 64) != 0) {
                        shapeB = MaterialTheme.INSTANCE.b(composerS, 6).b();
                        i12 &= -3670017;
                    } else {
                        shapeB = shape2;
                    }
                    if ((i11 & 128) != 0) {
                        jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                        i12 &= -29360129;
                    } else {
                        jN = j6;
                    }
                    if ((i11 & 256) != 0) {
                        jB = ColorsKt.b(jN, composerS, (i12 >> 21) & 14);
                        i12 &= -234881025;
                    }
                    if ((i11 & 512) != 0) {
                        i12 &= -1879048193;
                        dialogProperties2 = new DialogProperties(false, false, null, 7, null);
                    } else {
                        dialogProperties2 = dialogProperties;
                    }
                    pVar8 = pVar6;
                    j11 = jB;
                    shape3 = shapeB;
                    j12 = jN;
                    pVar9 = pVar5;
                }
                composerS.A();
                ComposableLambda composableLambdaB116 = ComposableLambdaKt.b(composerS, -1849673151, true, new AndroidAlertDialog_androidKt$AlertDialog$1(pVar9, i12, confirmButton));
                int i2111112 = (i12 & 14) | 48 | (i12 & 896);
                int i2111113 = i12 >> 3;
                b(onDismissRequest, composableLambdaB116, modifier2, pVar8, pVar7, shape3, j12, j11, dialogProperties2, composerS, i2111112 | (i2111113 & 7168) | (57344 & i2111113) | (458752 & i2111113) | (i2111113 & 3670016) | (i2111113 & 29360128) | (i2111113 & 234881024), 0);
                pVar10 = pVar9;
                modifier3 = modifier2;
                pVar11 = pVar8;
                pVar12 = pVar7;
                shape4 = shape3;
                j13 = j12;
                j14 = j11;
                dialogProperties3 = dialogProperties2;
            } else {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i21 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i13 != 0) {
                        pVar5 = null;
                    } else {
                        pVar5 = pVar;
                    }
                    if (i15 != 0) {
                        pVar6 = null;
                    } else {
                        pVar6 = pVar2;
                    }
                    if (i17 == 0) {
                    }
                    if ((i11 & 64) != 0) {
                        shapeB = MaterialTheme.INSTANCE.b(composerS, 6).b();
                        i12 &= -3670017;
                    } else {
                        shapeB = shape2;
                    }
                    if ((i11 & 128) != 0) {
                        jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                        i12 &= -29360129;
                    } else {
                        jN = j6;
                    }
                    if ((i11 & 256) != 0) {
                        jB = ColorsKt.b(jN, composerS, (i12 >> 21) & 14);
                        i12 &= -234881025;
                    }
                    if ((i11 & 512) != 0) {
                        i12 &= -1879048193;
                        dialogProperties2 = new DialogProperties(false, false, null, 7, null);
                    } else {
                        dialogProperties2 = dialogProperties;
                    }
                    pVar8 = pVar6;
                    j11 = jB;
                    shape3 = shapeB;
                    j12 = jN;
                    pVar9 = pVar5;
                } else {
                    if (i21 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i13 != 0) {
                        pVar5 = null;
                    } else {
                        pVar5 = pVar;
                    }
                    if (i15 != 0) {
                        pVar6 = null;
                    } else {
                        pVar6 = pVar2;
                    }
                    if (i17 == 0) {
                    }
                    if ((i11 & 64) != 0) {
                        shapeB = MaterialTheme.INSTANCE.b(composerS, 6).b();
                        i12 &= -3670017;
                    } else {
                        shapeB = shape2;
                    }
                    if ((i11 & 128) != 0) {
                        jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                        i12 &= -29360129;
                    } else {
                        jN = j6;
                    }
                    if ((i11 & 256) != 0) {
                        jB = ColorsKt.b(jN, composerS, (i12 >> 21) & 14);
                        i12 &= -234881025;
                    }
                    if ((i11 & 512) != 0) {
                        i12 &= -1879048193;
                        dialogProperties2 = new DialogProperties(false, false, null, 7, null);
                    } else {
                        dialogProperties2 = dialogProperties;
                    }
                    pVar8 = pVar6;
                    j11 = jB;
                    shape3 = shapeB;
                    j12 = jN;
                    pVar9 = pVar5;
                }
                composerS.A();
                ComposableLambda composableLambdaB117 = ComposableLambdaKt.b(composerS, -1849673151, true, new AndroidAlertDialog_androidKt$AlertDialog$1(pVar9, i12, confirmButton));
                int i2111114 = (i12 & 14) | 48 | (i12 & 896);
                int i2111115 = i12 >> 3;
                b(onDismissRequest, composableLambdaB117, modifier2, pVar8, pVar7, shape3, j12, j11, dialogProperties2, composerS, i2111114 | (i2111115 & 7168) | (57344 & i2111115) | (458752 & i2111115) | (i2111115 & 3670016) | (i2111115 & 29360128) | (i2111115 & 234881024), 0);
                pVar10 = pVar9;
                modifier3 = modifier2;
                pVar11 = pVar8;
                pVar12 = pVar7;
                shape4 = shape3;
                j13 = j12;
                j14 = j11;
                dialogProperties3 = dialogProperties2;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new AndroidAlertDialog_androidKt$AlertDialog$2(onDismissRequest, confirmButton, modifier3, pVar10, pVar11, pVar12, shape4, j13, j14, dialogProperties3, i10, i11));
        }
        i12 |= CpioConstants.C_ISBLK;
        i17 = i11 & 32;
        if (i17 != 0) {
            if ((i10 & 458752) == 0) {
                pVar4 = pVar3;
                if (composerS.k(pVar4)) {
                    i18 = 131072;
                } else {
                    i18 = 65536;
                }
                i12 |= i18;
            }
            if ((i10 & 3670016) == 0) {
                shape2 = shape;
                if ((i11 & 64) == 0) {
                    i20 = 524288;
                } else {
                    i20 = 524288;
                }
                i12 |= i20;
            } else {
                shape2 = shape;
            }
            if ((i10 & 29360128) != 0) {
                i12 |= ((i11 & 128) == 0 || !composerS.q(j6)) ? 4194304 : 8388608;
            }
            if ((i10 & 234881024) == 0) {
                jB = j10;
                if ((i11 & 256) == 0) {
                    i19 = 33554432;
                } else {
                    i19 = 33554432;
                }
                i12 |= i19;
            } else {
                jB = j10;
            }
            if ((1879048192 & i10) != 0) {
                i12 |= ((i11 & 512) == 0 || !composerS.k(dialogProperties)) ? 268435456 : 536870912;
            }
            if ((i12 & 1533916891) == 306783378) {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i21 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i13 != 0) {
                        pVar5 = null;
                    } else {
                        pVar5 = pVar;
                    }
                    if (i15 != 0) {
                        pVar6 = null;
                    } else {
                        pVar6 = pVar2;
                    }
                    if (i17 == 0) {
                    }
                    if ((i11 & 64) != 0) {
                        shapeB = MaterialTheme.INSTANCE.b(composerS, 6).b();
                        i12 &= -3670017;
                    } else {
                        shapeB = shape2;
                    }
                    if ((i11 & 128) != 0) {
                        jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                        i12 &= -29360129;
                    } else {
                        jN = j6;
                    }
                    if ((i11 & 256) != 0) {
                        jB = ColorsKt.b(jN, composerS, (i12 >> 21) & 14);
                        i12 &= -234881025;
                    }
                    if ((i11 & 512) != 0) {
                        i12 &= -1879048193;
                        dialogProperties2 = new DialogProperties(false, false, null, 7, null);
                    } else {
                        dialogProperties2 = dialogProperties;
                    }
                    pVar8 = pVar6;
                    j11 = jB;
                    shape3 = shapeB;
                    j12 = jN;
                    pVar9 = pVar5;
                } else {
                    if (i21 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i13 != 0) {
                        pVar5 = null;
                    } else {
                        pVar5 = pVar;
                    }
                    if (i15 != 0) {
                        pVar6 = null;
                    } else {
                        pVar6 = pVar2;
                    }
                    if (i17 == 0) {
                    }
                    if ((i11 & 64) != 0) {
                        shapeB = MaterialTheme.INSTANCE.b(composerS, 6).b();
                        i12 &= -3670017;
                    } else {
                        shapeB = shape2;
                    }
                    if ((i11 & 128) != 0) {
                        jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                        i12 &= -29360129;
                    } else {
                        jN = j6;
                    }
                    if ((i11 & 256) != 0) {
                        jB = ColorsKt.b(jN, composerS, (i12 >> 21) & 14);
                        i12 &= -234881025;
                    }
                    if ((i11 & 512) != 0) {
                        i12 &= -1879048193;
                        dialogProperties2 = new DialogProperties(false, false, null, 7, null);
                    } else {
                        dialogProperties2 = dialogProperties;
                    }
                    pVar8 = pVar6;
                    j11 = jB;
                    shape3 = shapeB;
                    j12 = jN;
                    pVar9 = pVar5;
                }
                composerS.A();
                ComposableLambda composableLambdaB118 = ComposableLambdaKt.b(composerS, -1849673151, true, new AndroidAlertDialog_androidKt$AlertDialog$1(pVar9, i12, confirmButton));
                int i2111116 = (i12 & 14) | 48 | (i12 & 896);
                int i2111117 = i12 >> 3;
                b(onDismissRequest, composableLambdaB118, modifier2, pVar8, pVar7, shape3, j12, j11, dialogProperties2, composerS, i2111116 | (i2111117 & 7168) | (57344 & i2111117) | (458752 & i2111117) | (i2111117 & 3670016) | (i2111117 & 29360128) | (i2111117 & 234881024), 0);
                pVar10 = pVar9;
                modifier3 = modifier2;
                pVar11 = pVar8;
                pVar12 = pVar7;
                shape4 = shape3;
                j13 = j12;
                j14 = j11;
                dialogProperties3 = dialogProperties2;
            } else {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i21 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i13 != 0) {
                        pVar5 = null;
                    } else {
                        pVar5 = pVar;
                    }
                    if (i15 != 0) {
                        pVar6 = null;
                    } else {
                        pVar6 = pVar2;
                    }
                    if (i17 == 0) {
                    }
                    if ((i11 & 64) != 0) {
                        shapeB = MaterialTheme.INSTANCE.b(composerS, 6).b();
                        i12 &= -3670017;
                    } else {
                        shapeB = shape2;
                    }
                    if ((i11 & 128) != 0) {
                        jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                        i12 &= -29360129;
                    } else {
                        jN = j6;
                    }
                    if ((i11 & 256) != 0) {
                        jB = ColorsKt.b(jN, composerS, (i12 >> 21) & 14);
                        i12 &= -234881025;
                    }
                    if ((i11 & 512) != 0) {
                        i12 &= -1879048193;
                        dialogProperties2 = new DialogProperties(false, false, null, 7, null);
                    } else {
                        dialogProperties2 = dialogProperties;
                    }
                    pVar8 = pVar6;
                    j11 = jB;
                    shape3 = shapeB;
                    j12 = jN;
                    pVar9 = pVar5;
                } else {
                    if (i21 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i13 != 0) {
                        pVar5 = null;
                    } else {
                        pVar5 = pVar;
                    }
                    if (i15 != 0) {
                        pVar6 = null;
                    } else {
                        pVar6 = pVar2;
                    }
                    if (i17 == 0) {
                    }
                    if ((i11 & 64) != 0) {
                        shapeB = MaterialTheme.INSTANCE.b(composerS, 6).b();
                        i12 &= -3670017;
                    } else {
                        shapeB = shape2;
                    }
                    if ((i11 & 128) != 0) {
                        jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                        i12 &= -29360129;
                    } else {
                        jN = j6;
                    }
                    if ((i11 & 256) != 0) {
                        jB = ColorsKt.b(jN, composerS, (i12 >> 21) & 14);
                        i12 &= -234881025;
                    }
                    if ((i11 & 512) != 0) {
                        i12 &= -1879048193;
                        dialogProperties2 = new DialogProperties(false, false, null, 7, null);
                    } else {
                        dialogProperties2 = dialogProperties;
                    }
                    pVar8 = pVar6;
                    j11 = jB;
                    shape3 = shapeB;
                    j12 = jN;
                    pVar9 = pVar5;
                }
                composerS.A();
                ComposableLambda composableLambdaB119 = ComposableLambdaKt.b(composerS, -1849673151, true, new AndroidAlertDialog_androidKt$AlertDialog$1(pVar9, i12, confirmButton));
                int i2111118 = (i12 & 14) | 48 | (i12 & 896);
                int i2111119 = i12 >> 3;
                b(onDismissRequest, composableLambdaB119, modifier2, pVar8, pVar7, shape3, j12, j11, dialogProperties2, composerS, i2111118 | (i2111119 & 7168) | (57344 & i2111119) | (458752 & i2111119) | (i2111119 & 3670016) | (i2111119 & 29360128) | (i2111119 & 234881024), 0);
                pVar10 = pVar9;
                modifier3 = modifier2;
                pVar11 = pVar8;
                pVar12 = pVar7;
                shape4 = shape3;
                j13 = j12;
                j14 = j11;
                dialogProperties3 = dialogProperties2;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new AndroidAlertDialog_androidKt$AlertDialog$2(onDismissRequest, confirmButton, modifier3, pVar10, pVar11, pVar12, shape4, j13, j14, dialogProperties3, i10, i11));
        }
        i12 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
        pVar4 = pVar3;
        if ((i10 & 3670016) == 0) {
            shape2 = shape;
            if ((i11 & 64) == 0) {
                i20 = 524288;
            } else {
                i20 = 524288;
            }
            i12 |= i20;
        } else {
            shape2 = shape;
        }
        if ((i10 & 29360128) != 0) {
            i12 |= ((i11 & 128) == 0 || !composerS.q(j6)) ? 4194304 : 8388608;
        }
        if ((i10 & 234881024) == 0) {
            jB = j10;
            if ((i11 & 256) == 0) {
                i19 = 33554432;
            } else {
                i19 = 33554432;
            }
            i12 |= i19;
        } else {
            jB = j10;
        }
        if ((1879048192 & i10) != 0) {
            i12 |= ((i11 & 512) == 0 || !composerS.k(dialogProperties)) ? 268435456 : 536870912;
        }
        if ((i12 & 1533916891) == 306783378) {
            composerS.J();
            if ((i10 & 1) != 0) {
                if (i21 != 0) {
                    modifier2 = Modifier.Companion;
                } else {
                    modifier2 = modifier;
                }
                if (i13 != 0) {
                    pVar5 = null;
                } else {
                    pVar5 = pVar;
                }
                if (i15 != 0) {
                    pVar6 = null;
                } else {
                    pVar6 = pVar2;
                }
                if (i17 == 0) {
                }
                if ((i11 & 64) != 0) {
                    shapeB = MaterialTheme.INSTANCE.b(composerS, 6).b();
                    i12 &= -3670017;
                } else {
                    shapeB = shape2;
                }
                if ((i11 & 128) != 0) {
                    jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                    i12 &= -29360129;
                } else {
                    jN = j6;
                }
                if ((i11 & 256) != 0) {
                    jB = ColorsKt.b(jN, composerS, (i12 >> 21) & 14);
                    i12 &= -234881025;
                }
                if ((i11 & 512) != 0) {
                    i12 &= -1879048193;
                    dialogProperties2 = new DialogProperties(false, false, null, 7, null);
                } else {
                    dialogProperties2 = dialogProperties;
                }
                pVar8 = pVar6;
                j11 = jB;
                shape3 = shapeB;
                j12 = jN;
                pVar9 = pVar5;
            } else {
                if (i21 != 0) {
                    modifier2 = Modifier.Companion;
                } else {
                    modifier2 = modifier;
                }
                if (i13 != 0) {
                    pVar5 = null;
                } else {
                    pVar5 = pVar;
                }
                if (i15 != 0) {
                    pVar6 = null;
                } else {
                    pVar6 = pVar2;
                }
                if (i17 == 0) {
                }
                if ((i11 & 64) != 0) {
                    shapeB = MaterialTheme.INSTANCE.b(composerS, 6).b();
                    i12 &= -3670017;
                } else {
                    shapeB = shape2;
                }
                if ((i11 & 128) != 0) {
                    jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                    i12 &= -29360129;
                } else {
                    jN = j6;
                }
                if ((i11 & 256) != 0) {
                    jB = ColorsKt.b(jN, composerS, (i12 >> 21) & 14);
                    i12 &= -234881025;
                }
                if ((i11 & 512) != 0) {
                    i12 &= -1879048193;
                    dialogProperties2 = new DialogProperties(false, false, null, 7, null);
                } else {
                    dialogProperties2 = dialogProperties;
                }
                pVar8 = pVar6;
                j11 = jB;
                shape3 = shapeB;
                j12 = jN;
                pVar9 = pVar5;
            }
            composerS.A();
            ComposableLambda composableLambdaB1110 = ComposableLambdaKt.b(composerS, -1849673151, true, new AndroidAlertDialog_androidKt$AlertDialog$1(pVar9, i12, confirmButton));
            int i21111110 = (i12 & 14) | 48 | (i12 & 896);
            int i21111111 = i12 >> 3;
            b(onDismissRequest, composableLambdaB1110, modifier2, pVar8, pVar7, shape3, j12, j11, dialogProperties2, composerS, i21111110 | (i21111111 & 7168) | (57344 & i21111111) | (458752 & i21111111) | (i21111111 & 3670016) | (i21111111 & 29360128) | (i21111111 & 234881024), 0);
            pVar10 = pVar9;
            modifier3 = modifier2;
            pVar11 = pVar8;
            pVar12 = pVar7;
            shape4 = shape3;
            j13 = j12;
            j14 = j11;
            dialogProperties3 = dialogProperties2;
        } else {
            composerS.J();
            if ((i10 & 1) != 0) {
                if (i21 != 0) {
                    modifier2 = Modifier.Companion;
                } else {
                    modifier2 = modifier;
                }
                if (i13 != 0) {
                    pVar5 = null;
                } else {
                    pVar5 = pVar;
                }
                if (i15 != 0) {
                    pVar6 = null;
                } else {
                    pVar6 = pVar2;
                }
                if (i17 == 0) {
                }
                if ((i11 & 64) != 0) {
                    shapeB = MaterialTheme.INSTANCE.b(composerS, 6).b();
                    i12 &= -3670017;
                } else {
                    shapeB = shape2;
                }
                if ((i11 & 128) != 0) {
                    jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                    i12 &= -29360129;
                } else {
                    jN = j6;
                }
                if ((i11 & 256) != 0) {
                    jB = ColorsKt.b(jN, composerS, (i12 >> 21) & 14);
                    i12 &= -234881025;
                }
                if ((i11 & 512) != 0) {
                    i12 &= -1879048193;
                    dialogProperties2 = new DialogProperties(false, false, null, 7, null);
                } else {
                    dialogProperties2 = dialogProperties;
                }
                pVar8 = pVar6;
                j11 = jB;
                shape3 = shapeB;
                j12 = jN;
                pVar9 = pVar5;
            } else {
                if (i21 != 0) {
                    modifier2 = Modifier.Companion;
                } else {
                    modifier2 = modifier;
                }
                if (i13 != 0) {
                    pVar5 = null;
                } else {
                    pVar5 = pVar;
                }
                if (i15 != 0) {
                    pVar6 = null;
                } else {
                    pVar6 = pVar2;
                }
                if (i17 == 0) {
                }
                if ((i11 & 64) != 0) {
                    shapeB = MaterialTheme.INSTANCE.b(composerS, 6).b();
                    i12 &= -3670017;
                } else {
                    shapeB = shape2;
                }
                if ((i11 & 128) != 0) {
                    jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                    i12 &= -29360129;
                } else {
                    jN = j6;
                }
                if ((i11 & 256) != 0) {
                    jB = ColorsKt.b(jN, composerS, (i12 >> 21) & 14);
                    i12 &= -234881025;
                }
                if ((i11 & 512) != 0) {
                    i12 &= -1879048193;
                    dialogProperties2 = new DialogProperties(false, false, null, 7, null);
                } else {
                    dialogProperties2 = dialogProperties;
                }
                pVar8 = pVar6;
                j11 = jB;
                shape3 = shapeB;
                j12 = jN;
                pVar9 = pVar5;
            }
            composerS.A();
            ComposableLambda composableLambdaB1111 = ComposableLambdaKt.b(composerS, -1849673151, true, new AndroidAlertDialog_androidKt$AlertDialog$1(pVar9, i12, confirmButton));
            int i21111112 = (i12 & 14) | 48 | (i12 & 896);
            int i21111113 = i12 >> 3;
            b(onDismissRequest, composableLambdaB1111, modifier2, pVar8, pVar7, shape3, j12, j11, dialogProperties2, composerS, i21111112 | (i21111113 & 7168) | (57344 & i21111113) | (458752 & i21111113) | (i21111113 & 3670016) | (i21111113 & 29360128) | (i21111113 & 234881024), 0);
            pVar10 = pVar9;
            modifier3 = modifier2;
            pVar11 = pVar8;
            pVar12 = pVar7;
            shape4 = shape3;
            j13 = j12;
            j14 = j11;
            dialogProperties3 = dialogProperties2;
        }
        scopeUpdateScopeU = composerS.u();
        if (scopeUpdateScopeU == null) {
            return;
        }
        scopeUpdateScopeU.a(new AndroidAlertDialog_androidKt$AlertDialog$2(onDismissRequest, confirmButton, modifier3, pVar10, pVar11, pVar12, shape4, j13, j14, dialogProperties3, i10, i11));
    }

    /* JADX WARN: Code duplicated, block: B:101:0x0115  */
    /* JADX WARN: Code duplicated, block: B:105:0x012e  */
    /* JADX WARN: Code duplicated, block: B:107:0x0141  */
    /* JADX WARN: Code duplicated, block: B:124:0x0174 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:125:0x0176  */
    /* JADX WARN: Code duplicated, block: B:126:0x0179  */
    /* JADX WARN: Code duplicated, block: B:129:0x017e  */
    /* JADX WARN: Code duplicated, block: B:132:0x0182  */
    /* JADX WARN: Code duplicated, block: B:135:0x0189  */
    /* JADX WARN: Code duplicated, block: B:136:0x0196  */
    /* JADX WARN: Code duplicated, block: B:139:0x019c  */
    /* JADX WARN: Code duplicated, block: B:142:0x01ac  */
    /* JADX WARN: Code duplicated, block: B:143:0x01b7  */
    /* JADX WARN: Code duplicated, block: B:146:0x01bc  */
    /* JADX WARN: Code duplicated, block: B:147:0x01e6  */
    /* JADX WARN: Code duplicated, block: B:152:0x0243  */
    /* JADX WARN: Code duplicated, block: B:154:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:36:0x0068  */
    /* JADX WARN: Code duplicated, block: B:38:0x006d  */
    /* JADX WARN: Code duplicated, block: B:40:0x0071  */
    /* JADX WARN: Code duplicated, block: B:42:0x0079  */
    /* JADX WARN: Code duplicated, block: B:43:0x007c  */
    /* JADX WARN: Code duplicated, block: B:47:0x0083  */
    /* JADX WARN: Code duplicated, block: B:49:0x0088  */
    /* JADX WARN: Code duplicated, block: B:51:0x008e  */
    /* JADX WARN: Code duplicated, block: B:53:0x0096  */
    /* JADX WARN: Code duplicated, block: B:54:0x0099  */
    /* JADX WARN: Code duplicated, block: B:58:0x00a1  */
    /* JADX WARN: Code duplicated, block: B:60:0x00a5  */
    /* JADX WARN: Code duplicated, block: B:63:0x00b0 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:66:0x00b6  */
    /* JADX WARN: Code duplicated, block: B:69:0x00bd  */
    /* JADX WARN: Code duplicated, block: B:71:0x00c1  */
    /* JADX WARN: Code duplicated, block: B:73:0x00c9  */
    /* JADX WARN: Code duplicated, block: B:74:0x00cc  */
    /* JADX WARN: Code duplicated, block: B:77:0x00d2  */
    /* JADX WARN: Code duplicated, block: B:80:0x00d9  */
    /* JADX WARN: Code duplicated, block: B:82:0x00df  */
    /* JADX WARN: Code duplicated, block: B:85:0x00e8  */
    /* JADX WARN: Code duplicated, block: B:87:0x00ec  */
    /* JADX WARN: Code duplicated, block: B:90:0x00f3  */
    /* JADX WARN: Code duplicated, block: B:92:0x00f7  */
    /* JADX WARN: Code duplicated, block: B:94:0x00ff  */
    /* JADX WARN: Code duplicated, block: B:95:0x0102  */
    /* JADX WARN: Code duplicated, block: B:98:0x0109  */
    @Composable
    @ComposableInferredTarget
    public static final void b(@NotNull a<l0> onDismissRequest, @NotNull p<? super Composer, ? super Integer, l0> buttons, @Nullable Modifier modifier, @Nullable p<? super Composer, ? super Integer, l0> pVar, @Nullable p<? super Composer, ? super Integer, l0> pVar2, @Nullable Shape shape, long j6, long j10, @Nullable DialogProperties dialogProperties, @Nullable Composer composer, int i10, int i11) {
        int i12;
        int i13;
        p<? super Composer, ? super Integer, l0> pVar3;
        int i14;
        int i15;
        int i16;
        long jN;
        long j11;
        DialogProperties dialogProperties2;
        Modifier modifier2;
        p<? super Composer, ? super Integer, l0> pVar4;
        Shape shapeB;
        long jB;
        int i17;
        p<? super Composer, ? super Integer, l0> pVar5;
        Shape shape2;
        p<? super Composer, ? super Integer, l0> pVar6;
        long j12;
        DialogProperties dialogProperties3;
        long j13;
        Modifier modifier3;
        p<? super Composer, ? super Integer, l0> pVar7;
        p<? super Composer, ? super Integer, l0> pVar8;
        Shape shape3;
        long j14;
        long j15;
        DialogProperties dialogProperties4;
        ScopeUpdateScope scopeUpdateScopeU;
        int i18;
        t.j(onDismissRequest, "onDismissRequest");
        t.j(buttons, "buttons");
        Composer composerS = composer.s(1035523925);
        if ((i11 & 1) != 0) {
            i12 = i10 | 6;
        } else if ((i10 & 14) == 0) {
            i12 = (composerS.k(onDismissRequest) ? 4 : 2) | i10;
        } else {
            i12 = i10;
        }
        if ((i11 & 2) != 0) {
            i12 |= 48;
        } else if ((i10 & 112) == 0) {
            i12 |= composerS.k(buttons) ? 32 : 16;
        }
        int i19 = i11 & 4;
        if (i19 == 0) {
            if ((i10 & 896) == 0) {
                i12 |= composerS.k(modifier) ? 256 : 128;
            }
            i13 = i11 & 8;
            if (i13 != 0) {
                if ((i10 & 7168) == 0) {
                    pVar3 = pVar;
                    if (composerS.k(pVar3)) {
                        i14 = 2048;
                    } else {
                        i14 = 1024;
                    }
                    i12 |= i14;
                }
                i15 = i11 & 16;
                if (i15 != 0) {
                    if ((57344 & i10) == 0) {
                        if (composerS.k(pVar2)) {
                            i16 = 16384;
                        } else {
                            i16 = 8192;
                        }
                        i12 |= i16;
                    }
                    if ((458752 & i10) != 0) {
                        i12 |= ((i11 & 32) == 0 || !composerS.k(shape)) ? 65536 : 131072;
                    }
                    if ((3670016 & i10) == 0) {
                        if ((i11 & 64) == 0) {
                            jN = j6;
                            int i20 = composerS.q(jN) ? 1048576 : 524288;
                            i12 |= i20;
                        } else {
                            jN = j6;
                        }
                        i12 |= i20;
                    } else {
                        jN = j6;
                    }
                    if ((29360128 & i10) == 0) {
                        j11 = j10;
                        if ((i11 & 128) == 0 || !composerS.q(j11)) {
                            i18 = 4194304;
                        } else {
                            i18 = 8388608;
                        }
                        i12 |= i18;
                    } else {
                        j11 = j10;
                    }
                    if ((234881024 & i10) == 0) {
                        if ((i11 & 256) == 0) {
                            dialogProperties2 = dialogProperties;
                            int i21 = composerS.k(dialogProperties2) ? 67108864 : 33554432;
                            i12 |= i21;
                        } else {
                            dialogProperties2 = dialogProperties;
                        }
                        i12 |= i21;
                    } else {
                        dialogProperties2 = dialogProperties;
                    }
                    if ((i12 & 191739611) == 38347922 || !composerS.b()) {
                        composerS.J();
                        if ((i10 & 1) != 0 || composerS.h()) {
                            if (i19 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i13 != 0) {
                                pVar3 = null;
                            }
                            pVar4 = i15 == 0 ? pVar2 : null;
                            if ((i11 & 32) != 0) {
                                shapeB = MaterialTheme.INSTANCE.b(composerS, 6).b();
                                i12 &= -458753;
                            } else {
                                shapeB = shape;
                            }
                            if ((i11 & 64) != 0) {
                                jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                                i12 &= -3670017;
                            }
                            if ((i11 & 128) != 0) {
                                jB = ColorsKt.b(jN, composerS, (i12 >> 18) & 14);
                                i12 &= -29360129;
                            } else {
                                jB = j11;
                            }
                            if ((i11 & 256) != 0) {
                                i17 = i12 & (-234881025);
                                pVar5 = pVar4;
                                shape2 = shapeB;
                                pVar6 = pVar3;
                                j12 = jB;
                                dialogProperties3 = new DialogProperties(false, false, null, 7, null);
                                j13 = jN;
                            } else {
                                i17 = i12;
                                pVar5 = pVar4;
                                shape2 = shapeB;
                                pVar6 = pVar3;
                                j12 = jB;
                            }
                            composerS.A();
                            AndroidDialog_androidKt.a(onDismissRequest, dialogProperties3, ComposableLambdaKt.b(composerS, -1787418772, true, new AndroidAlertDialog_androidKt$AlertDialog$3(buttons, modifier2, pVar6, pVar5, shape2, j13, j12, i17)), composerS, (i17 & 14) | 384 | ((i17 >> 21) & 112), 0);
                            modifier3 = modifier2;
                            pVar7 = pVar6;
                            pVar8 = pVar5;
                            shape3 = shape2;
                            j14 = j13;
                            j15 = j12;
                            dialogProperties4 = dialogProperties3;
                        } else {
                            composerS.g();
                            if ((i11 & 32) != 0) {
                                i12 &= -458753;
                            }
                            if ((i11 & 64) != 0) {
                                i12 &= -3670017;
                            }
                            if ((i11 & 128) != 0) {
                                i12 &= -29360129;
                            }
                            if ((i11 & 256) != 0) {
                                i12 &= -234881025;
                            }
                            modifier2 = modifier;
                            pVar5 = pVar2;
                            shape2 = shape;
                            i17 = i12;
                            pVar6 = pVar3;
                            j12 = j11;
                        }
                        j13 = jN;
                        dialogProperties3 = dialogProperties2;
                        composerS.A();
                        AndroidDialog_androidKt.a(onDismissRequest, dialogProperties3, ComposableLambdaKt.b(composerS, -1787418772, true, new AndroidAlertDialog_androidKt$AlertDialog$3(buttons, modifier2, pVar6, pVar5, shape2, j13, j12, i17)), composerS, (i17 & 14) | 384 | ((i17 >> 21) & 112), 0);
                        modifier3 = modifier2;
                        pVar7 = pVar6;
                        pVar8 = pVar5;
                        shape3 = shape2;
                        j14 = j13;
                        j15 = j12;
                        dialogProperties4 = dialogProperties3;
                    } else {
                        composerS.g();
                        modifier3 = modifier;
                        pVar8 = pVar2;
                        pVar7 = pVar3;
                        shape3 = shape;
                        dialogProperties4 = dialogProperties2;
                        j15 = j11;
                        j14 = jN;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new AndroidAlertDialog_androidKt$AlertDialog$4(onDismissRequest, buttons, modifier3, pVar7, pVar8, shape3, j14, j15, dialogProperties4, i10, i11));
                }
                i12 |= CpioConstants.C_ISBLK;
                if ((458752 & i10) != 0) {
                    i12 |= ((i11 & 32) == 0 || !composerS.k(shape)) ? 65536 : 131072;
                }
                if ((3670016 & i10) == 0) {
                    if ((i11 & 64) == 0) {
                        jN = j6;
                        if (composerS.q(jN)) {
                        }
                        i12 |= i20;
                    } else {
                        jN = j6;
                    }
                    i12 |= i20;
                } else {
                    jN = j6;
                }
                if ((29360128 & i10) == 0) {
                    j11 = j10;
                    if ((i11 & 128) == 0) {
                        i18 = 4194304;
                    } else {
                        i18 = 4194304;
                    }
                    i12 |= i18;
                } else {
                    j11 = j10;
                }
                if ((234881024 & i10) == 0) {
                    if ((i11 & 256) == 0) {
                        dialogProperties2 = dialogProperties;
                        if (composerS.k(dialogProperties2)) {
                        }
                        i12 |= i21;
                    } else {
                        dialogProperties2 = dialogProperties;
                    }
                    i12 |= i21;
                } else {
                    dialogProperties2 = dialogProperties;
                }
                if ((i12 & 191739611) == 38347922) {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i19 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i13 != 0) {
                            pVar3 = null;
                        }
                        if (i15 == 0) {
                        }
                        if ((i11 & 32) != 0) {
                            shapeB = MaterialTheme.INSTANCE.b(composerS, 6).b();
                            i12 &= -458753;
                        } else {
                            shapeB = shape;
                        }
                        if ((i11 & 64) != 0) {
                            jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                            i12 &= -3670017;
                        }
                        if ((i11 & 128) != 0) {
                            jB = ColorsKt.b(jN, composerS, (i12 >> 18) & 14);
                            i12 &= -29360129;
                        } else {
                            jB = j11;
                        }
                        if ((i11 & 256) != 0) {
                            i17 = i12 & (-234881025);
                            pVar5 = pVar4;
                            shape2 = shapeB;
                            pVar6 = pVar3;
                            j12 = jB;
                            dialogProperties3 = new DialogProperties(false, false, null, 7, null);
                            j13 = jN;
                        } else {
                            i17 = i12;
                            pVar5 = pVar4;
                            shape2 = shapeB;
                            pVar6 = pVar3;
                            j12 = jB;
                            j13 = jN;
                            dialogProperties3 = dialogProperties2;
                        }
                    } else {
                        if (i19 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i13 != 0) {
                            pVar3 = null;
                        }
                        if (i15 == 0) {
                        }
                        if ((i11 & 32) != 0) {
                            shapeB = MaterialTheme.INSTANCE.b(composerS, 6).b();
                            i12 &= -458753;
                        } else {
                            shapeB = shape;
                        }
                        if ((i11 & 64) != 0) {
                            jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                            i12 &= -3670017;
                        }
                        if ((i11 & 128) != 0) {
                            jB = ColorsKt.b(jN, composerS, (i12 >> 18) & 14);
                            i12 &= -29360129;
                        } else {
                            jB = j11;
                        }
                        if ((i11 & 256) != 0) {
                            i17 = i12 & (-234881025);
                            pVar5 = pVar4;
                            shape2 = shapeB;
                            pVar6 = pVar3;
                            j12 = jB;
                            dialogProperties3 = new DialogProperties(false, false, null, 7, null);
                            j13 = jN;
                        } else {
                            i17 = i12;
                            pVar5 = pVar4;
                            shape2 = shapeB;
                            pVar6 = pVar3;
                            j12 = jB;
                            j13 = jN;
                            dialogProperties3 = dialogProperties2;
                        }
                    }
                    composerS.A();
                    AndroidDialog_androidKt.a(onDismissRequest, dialogProperties3, ComposableLambdaKt.b(composerS, -1787418772, true, new AndroidAlertDialog_androidKt$AlertDialog$3(buttons, modifier2, pVar6, pVar5, shape2, j13, j12, i17)), composerS, (i17 & 14) | 384 | ((i17 >> 21) & 112), 0);
                    modifier3 = modifier2;
                    pVar7 = pVar6;
                    pVar8 = pVar5;
                    shape3 = shape2;
                    j14 = j13;
                    j15 = j12;
                    dialogProperties4 = dialogProperties3;
                } else {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i19 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i13 != 0) {
                            pVar3 = null;
                        }
                        if (i15 == 0) {
                        }
                        if ((i11 & 32) != 0) {
                            shapeB = MaterialTheme.INSTANCE.b(composerS, 6).b();
                            i12 &= -458753;
                        } else {
                            shapeB = shape;
                        }
                        if ((i11 & 64) != 0) {
                            jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                            i12 &= -3670017;
                        }
                        if ((i11 & 128) != 0) {
                            jB = ColorsKt.b(jN, composerS, (i12 >> 18) & 14);
                            i12 &= -29360129;
                        } else {
                            jB = j11;
                        }
                        if ((i11 & 256) != 0) {
                            i17 = i12 & (-234881025);
                            pVar5 = pVar4;
                            shape2 = shapeB;
                            pVar6 = pVar3;
                            j12 = jB;
                            dialogProperties3 = new DialogProperties(false, false, null, 7, null);
                            j13 = jN;
                        } else {
                            i17 = i12;
                            pVar5 = pVar4;
                            shape2 = shapeB;
                            pVar6 = pVar3;
                            j12 = jB;
                            j13 = jN;
                            dialogProperties3 = dialogProperties2;
                        }
                    } else {
                        if (i19 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i13 != 0) {
                            pVar3 = null;
                        }
                        if (i15 == 0) {
                        }
                        if ((i11 & 32) != 0) {
                            shapeB = MaterialTheme.INSTANCE.b(composerS, 6).b();
                            i12 &= -458753;
                        } else {
                            shapeB = shape;
                        }
                        if ((i11 & 64) != 0) {
                            jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                            i12 &= -3670017;
                        }
                        if ((i11 & 128) != 0) {
                            jB = ColorsKt.b(jN, composerS, (i12 >> 18) & 14);
                            i12 &= -29360129;
                        } else {
                            jB = j11;
                        }
                        if ((i11 & 256) != 0) {
                            i17 = i12 & (-234881025);
                            pVar5 = pVar4;
                            shape2 = shapeB;
                            pVar6 = pVar3;
                            j12 = jB;
                            dialogProperties3 = new DialogProperties(false, false, null, 7, null);
                            j13 = jN;
                        } else {
                            i17 = i12;
                            pVar5 = pVar4;
                            shape2 = shapeB;
                            pVar6 = pVar3;
                            j12 = jB;
                            j13 = jN;
                            dialogProperties3 = dialogProperties2;
                        }
                    }
                    composerS.A();
                    AndroidDialog_androidKt.a(onDismissRequest, dialogProperties3, ComposableLambdaKt.b(composerS, -1787418772, true, new AndroidAlertDialog_androidKt$AlertDialog$3(buttons, modifier2, pVar6, pVar5, shape2, j13, j12, i17)), composerS, (i17 & 14) | 384 | ((i17 >> 21) & 112), 0);
                    modifier3 = modifier2;
                    pVar7 = pVar6;
                    pVar8 = pVar5;
                    shape3 = shape2;
                    j14 = j13;
                    j15 = j12;
                    dialogProperties4 = dialogProperties3;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new AndroidAlertDialog_androidKt$AlertDialog$4(onDismissRequest, buttons, modifier3, pVar7, pVar8, shape3, j14, j15, dialogProperties4, i10, i11));
            }
            i12 |= 3072;
            pVar3 = pVar;
            i15 = i11 & 16;
            if (i15 != 0) {
                if ((57344 & i10) == 0) {
                    if (composerS.k(pVar2)) {
                        i16 = 16384;
                    } else {
                        i16 = 8192;
                    }
                    i12 |= i16;
                }
                if ((458752 & i10) != 0) {
                    i12 |= ((i11 & 32) == 0 || !composerS.k(shape)) ? 65536 : 131072;
                }
                if ((3670016 & i10) == 0) {
                    if ((i11 & 64) == 0) {
                        jN = j6;
                        if (composerS.q(jN)) {
                        }
                        i12 |= i20;
                    } else {
                        jN = j6;
                    }
                    i12 |= i20;
                } else {
                    jN = j6;
                }
                if ((29360128 & i10) == 0) {
                    j11 = j10;
                    if ((i11 & 128) == 0) {
                        i18 = 4194304;
                    } else {
                        i18 = 4194304;
                    }
                    i12 |= i18;
                } else {
                    j11 = j10;
                }
                if ((234881024 & i10) == 0) {
                    if ((i11 & 256) == 0) {
                        dialogProperties2 = dialogProperties;
                        if (composerS.k(dialogProperties2)) {
                        }
                        i12 |= i21;
                    } else {
                        dialogProperties2 = dialogProperties;
                    }
                    i12 |= i21;
                } else {
                    dialogProperties2 = dialogProperties;
                }
                if ((i12 & 191739611) == 38347922) {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i19 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i13 != 0) {
                            pVar3 = null;
                        }
                        if (i15 == 0) {
                        }
                        if ((i11 & 32) != 0) {
                            shapeB = MaterialTheme.INSTANCE.b(composerS, 6).b();
                            i12 &= -458753;
                        } else {
                            shapeB = shape;
                        }
                        if ((i11 & 64) != 0) {
                            jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                            i12 &= -3670017;
                        }
                        if ((i11 & 128) != 0) {
                            jB = ColorsKt.b(jN, composerS, (i12 >> 18) & 14);
                            i12 &= -29360129;
                        } else {
                            jB = j11;
                        }
                        if ((i11 & 256) != 0) {
                            i17 = i12 & (-234881025);
                            pVar5 = pVar4;
                            shape2 = shapeB;
                            pVar6 = pVar3;
                            j12 = jB;
                            dialogProperties3 = new DialogProperties(false, false, null, 7, null);
                            j13 = jN;
                        } else {
                            i17 = i12;
                            pVar5 = pVar4;
                            shape2 = shapeB;
                            pVar6 = pVar3;
                            j12 = jB;
                            j13 = jN;
                            dialogProperties3 = dialogProperties2;
                        }
                    } else {
                        if (i19 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i13 != 0) {
                            pVar3 = null;
                        }
                        if (i15 == 0) {
                        }
                        if ((i11 & 32) != 0) {
                            shapeB = MaterialTheme.INSTANCE.b(composerS, 6).b();
                            i12 &= -458753;
                        } else {
                            shapeB = shape;
                        }
                        if ((i11 & 64) != 0) {
                            jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                            i12 &= -3670017;
                        }
                        if ((i11 & 128) != 0) {
                            jB = ColorsKt.b(jN, composerS, (i12 >> 18) & 14);
                            i12 &= -29360129;
                        } else {
                            jB = j11;
                        }
                        if ((i11 & 256) != 0) {
                            i17 = i12 & (-234881025);
                            pVar5 = pVar4;
                            shape2 = shapeB;
                            pVar6 = pVar3;
                            j12 = jB;
                            dialogProperties3 = new DialogProperties(false, false, null, 7, null);
                            j13 = jN;
                        } else {
                            i17 = i12;
                            pVar5 = pVar4;
                            shape2 = shapeB;
                            pVar6 = pVar3;
                            j12 = jB;
                            j13 = jN;
                            dialogProperties3 = dialogProperties2;
                        }
                    }
                    composerS.A();
                    AndroidDialog_androidKt.a(onDismissRequest, dialogProperties3, ComposableLambdaKt.b(composerS, -1787418772, true, new AndroidAlertDialog_androidKt$AlertDialog$3(buttons, modifier2, pVar6, pVar5, shape2, j13, j12, i17)), composerS, (i17 & 14) | 384 | ((i17 >> 21) & 112), 0);
                    modifier3 = modifier2;
                    pVar7 = pVar6;
                    pVar8 = pVar5;
                    shape3 = shape2;
                    j14 = j13;
                    j15 = j12;
                    dialogProperties4 = dialogProperties3;
                } else {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i19 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i13 != 0) {
                            pVar3 = null;
                        }
                        if (i15 == 0) {
                        }
                        if ((i11 & 32) != 0) {
                            shapeB = MaterialTheme.INSTANCE.b(composerS, 6).b();
                            i12 &= -458753;
                        } else {
                            shapeB = shape;
                        }
                        if ((i11 & 64) != 0) {
                            jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                            i12 &= -3670017;
                        }
                        if ((i11 & 128) != 0) {
                            jB = ColorsKt.b(jN, composerS, (i12 >> 18) & 14);
                            i12 &= -29360129;
                        } else {
                            jB = j11;
                        }
                        if ((i11 & 256) != 0) {
                            i17 = i12 & (-234881025);
                            pVar5 = pVar4;
                            shape2 = shapeB;
                            pVar6 = pVar3;
                            j12 = jB;
                            dialogProperties3 = new DialogProperties(false, false, null, 7, null);
                            j13 = jN;
                        } else {
                            i17 = i12;
                            pVar5 = pVar4;
                            shape2 = shapeB;
                            pVar6 = pVar3;
                            j12 = jB;
                            j13 = jN;
                            dialogProperties3 = dialogProperties2;
                        }
                    } else {
                        if (i19 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i13 != 0) {
                            pVar3 = null;
                        }
                        if (i15 == 0) {
                        }
                        if ((i11 & 32) != 0) {
                            shapeB = MaterialTheme.INSTANCE.b(composerS, 6).b();
                            i12 &= -458753;
                        } else {
                            shapeB = shape;
                        }
                        if ((i11 & 64) != 0) {
                            jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                            i12 &= -3670017;
                        }
                        if ((i11 & 128) != 0) {
                            jB = ColorsKt.b(jN, composerS, (i12 >> 18) & 14);
                            i12 &= -29360129;
                        } else {
                            jB = j11;
                        }
                        if ((i11 & 256) != 0) {
                            i17 = i12 & (-234881025);
                            pVar5 = pVar4;
                            shape2 = shapeB;
                            pVar6 = pVar3;
                            j12 = jB;
                            dialogProperties3 = new DialogProperties(false, false, null, 7, null);
                            j13 = jN;
                        } else {
                            i17 = i12;
                            pVar5 = pVar4;
                            shape2 = shapeB;
                            pVar6 = pVar3;
                            j12 = jB;
                            j13 = jN;
                            dialogProperties3 = dialogProperties2;
                        }
                    }
                    composerS.A();
                    AndroidDialog_androidKt.a(onDismissRequest, dialogProperties3, ComposableLambdaKt.b(composerS, -1787418772, true, new AndroidAlertDialog_androidKt$AlertDialog$3(buttons, modifier2, pVar6, pVar5, shape2, j13, j12, i17)), composerS, (i17 & 14) | 384 | ((i17 >> 21) & 112), 0);
                    modifier3 = modifier2;
                    pVar7 = pVar6;
                    pVar8 = pVar5;
                    shape3 = shape2;
                    j14 = j13;
                    j15 = j12;
                    dialogProperties4 = dialogProperties3;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new AndroidAlertDialog_androidKt$AlertDialog$4(onDismissRequest, buttons, modifier3, pVar7, pVar8, shape3, j14, j15, dialogProperties4, i10, i11));
            }
            i12 |= CpioConstants.C_ISBLK;
            if ((458752 & i10) != 0) {
                i12 |= ((i11 & 32) == 0 || !composerS.k(shape)) ? 65536 : 131072;
            }
            if ((3670016 & i10) == 0) {
                if ((i11 & 64) == 0) {
                    jN = j6;
                    if (composerS.q(jN)) {
                    }
                    i12 |= i20;
                } else {
                    jN = j6;
                }
                i12 |= i20;
            } else {
                jN = j6;
            }
            if ((29360128 & i10) == 0) {
                j11 = j10;
                if ((i11 & 128) == 0) {
                    i18 = 4194304;
                } else {
                    i18 = 4194304;
                }
                i12 |= i18;
            } else {
                j11 = j10;
            }
            if ((234881024 & i10) == 0) {
                if ((i11 & 256) == 0) {
                    dialogProperties2 = dialogProperties;
                    if (composerS.k(dialogProperties2)) {
                    }
                    i12 |= i21;
                } else {
                    dialogProperties2 = dialogProperties;
                }
                i12 |= i21;
            } else {
                dialogProperties2 = dialogProperties;
            }
            if ((i12 & 191739611) == 38347922) {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i19 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i13 != 0) {
                        pVar3 = null;
                    }
                    if (i15 == 0) {
                    }
                    if ((i11 & 32) != 0) {
                        shapeB = MaterialTheme.INSTANCE.b(composerS, 6).b();
                        i12 &= -458753;
                    } else {
                        shapeB = shape;
                    }
                    if ((i11 & 64) != 0) {
                        jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                        i12 &= -3670017;
                    }
                    if ((i11 & 128) != 0) {
                        jB = ColorsKt.b(jN, composerS, (i12 >> 18) & 14);
                        i12 &= -29360129;
                    } else {
                        jB = j11;
                    }
                    if ((i11 & 256) != 0) {
                        i17 = i12 & (-234881025);
                        pVar5 = pVar4;
                        shape2 = shapeB;
                        pVar6 = pVar3;
                        j12 = jB;
                        dialogProperties3 = new DialogProperties(false, false, null, 7, null);
                        j13 = jN;
                    } else {
                        i17 = i12;
                        pVar5 = pVar4;
                        shape2 = shapeB;
                        pVar6 = pVar3;
                        j12 = jB;
                        j13 = jN;
                        dialogProperties3 = dialogProperties2;
                    }
                } else {
                    if (i19 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i13 != 0) {
                        pVar3 = null;
                    }
                    if (i15 == 0) {
                    }
                    if ((i11 & 32) != 0) {
                        shapeB = MaterialTheme.INSTANCE.b(composerS, 6).b();
                        i12 &= -458753;
                    } else {
                        shapeB = shape;
                    }
                    if ((i11 & 64) != 0) {
                        jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                        i12 &= -3670017;
                    }
                    if ((i11 & 128) != 0) {
                        jB = ColorsKt.b(jN, composerS, (i12 >> 18) & 14);
                        i12 &= -29360129;
                    } else {
                        jB = j11;
                    }
                    if ((i11 & 256) != 0) {
                        i17 = i12 & (-234881025);
                        pVar5 = pVar4;
                        shape2 = shapeB;
                        pVar6 = pVar3;
                        j12 = jB;
                        dialogProperties3 = new DialogProperties(false, false, null, 7, null);
                        j13 = jN;
                    } else {
                        i17 = i12;
                        pVar5 = pVar4;
                        shape2 = shapeB;
                        pVar6 = pVar3;
                        j12 = jB;
                        j13 = jN;
                        dialogProperties3 = dialogProperties2;
                    }
                }
                composerS.A();
                AndroidDialog_androidKt.a(onDismissRequest, dialogProperties3, ComposableLambdaKt.b(composerS, -1787418772, true, new AndroidAlertDialog_androidKt$AlertDialog$3(buttons, modifier2, pVar6, pVar5, shape2, j13, j12, i17)), composerS, (i17 & 14) | 384 | ((i17 >> 21) & 112), 0);
                modifier3 = modifier2;
                pVar7 = pVar6;
                pVar8 = pVar5;
                shape3 = shape2;
                j14 = j13;
                j15 = j12;
                dialogProperties4 = dialogProperties3;
            } else {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i19 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i13 != 0) {
                        pVar3 = null;
                    }
                    if (i15 == 0) {
                    }
                    if ((i11 & 32) != 0) {
                        shapeB = MaterialTheme.INSTANCE.b(composerS, 6).b();
                        i12 &= -458753;
                    } else {
                        shapeB = shape;
                    }
                    if ((i11 & 64) != 0) {
                        jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                        i12 &= -3670017;
                    }
                    if ((i11 & 128) != 0) {
                        jB = ColorsKt.b(jN, composerS, (i12 >> 18) & 14);
                        i12 &= -29360129;
                    } else {
                        jB = j11;
                    }
                    if ((i11 & 256) != 0) {
                        i17 = i12 & (-234881025);
                        pVar5 = pVar4;
                        shape2 = shapeB;
                        pVar6 = pVar3;
                        j12 = jB;
                        dialogProperties3 = new DialogProperties(false, false, null, 7, null);
                        j13 = jN;
                    } else {
                        i17 = i12;
                        pVar5 = pVar4;
                        shape2 = shapeB;
                        pVar6 = pVar3;
                        j12 = jB;
                        j13 = jN;
                        dialogProperties3 = dialogProperties2;
                    }
                } else {
                    if (i19 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i13 != 0) {
                        pVar3 = null;
                    }
                    if (i15 == 0) {
                    }
                    if ((i11 & 32) != 0) {
                        shapeB = MaterialTheme.INSTANCE.b(composerS, 6).b();
                        i12 &= -458753;
                    } else {
                        shapeB = shape;
                    }
                    if ((i11 & 64) != 0) {
                        jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                        i12 &= -3670017;
                    }
                    if ((i11 & 128) != 0) {
                        jB = ColorsKt.b(jN, composerS, (i12 >> 18) & 14);
                        i12 &= -29360129;
                    } else {
                        jB = j11;
                    }
                    if ((i11 & 256) != 0) {
                        i17 = i12 & (-234881025);
                        pVar5 = pVar4;
                        shape2 = shapeB;
                        pVar6 = pVar3;
                        j12 = jB;
                        dialogProperties3 = new DialogProperties(false, false, null, 7, null);
                        j13 = jN;
                    } else {
                        i17 = i12;
                        pVar5 = pVar4;
                        shape2 = shapeB;
                        pVar6 = pVar3;
                        j12 = jB;
                        j13 = jN;
                        dialogProperties3 = dialogProperties2;
                    }
                }
                composerS.A();
                AndroidDialog_androidKt.a(onDismissRequest, dialogProperties3, ComposableLambdaKt.b(composerS, -1787418772, true, new AndroidAlertDialog_androidKt$AlertDialog$3(buttons, modifier2, pVar6, pVar5, shape2, j13, j12, i17)), composerS, (i17 & 14) | 384 | ((i17 >> 21) & 112), 0);
                modifier3 = modifier2;
                pVar7 = pVar6;
                pVar8 = pVar5;
                shape3 = shape2;
                j14 = j13;
                j15 = j12;
                dialogProperties4 = dialogProperties3;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new AndroidAlertDialog_androidKt$AlertDialog$4(onDismissRequest, buttons, modifier3, pVar7, pVar8, shape3, j14, j15, dialogProperties4, i10, i11));
        }
        i12 |= 384;
        i13 = i11 & 8;
        if (i13 != 0) {
            if ((i10 & 7168) == 0) {
                pVar3 = pVar;
                if (composerS.k(pVar3)) {
                    i14 = 2048;
                } else {
                    i14 = 1024;
                }
                i12 |= i14;
            }
            i15 = i11 & 16;
            if (i15 != 0) {
                if ((57344 & i10) == 0) {
                    if (composerS.k(pVar2)) {
                        i16 = 16384;
                    } else {
                        i16 = 8192;
                    }
                    i12 |= i16;
                }
                if ((458752 & i10) != 0) {
                    i12 |= ((i11 & 32) == 0 || !composerS.k(shape)) ? 65536 : 131072;
                }
                if ((3670016 & i10) == 0) {
                    if ((i11 & 64) == 0) {
                        jN = j6;
                        if (composerS.q(jN)) {
                        }
                        i12 |= i20;
                    } else {
                        jN = j6;
                    }
                    i12 |= i20;
                } else {
                    jN = j6;
                }
                if ((29360128 & i10) == 0) {
                    j11 = j10;
                    if ((i11 & 128) == 0) {
                        i18 = 4194304;
                    } else {
                        i18 = 4194304;
                    }
                    i12 |= i18;
                } else {
                    j11 = j10;
                }
                if ((234881024 & i10) == 0) {
                    if ((i11 & 256) == 0) {
                        dialogProperties2 = dialogProperties;
                        if (composerS.k(dialogProperties2)) {
                        }
                        i12 |= i21;
                    } else {
                        dialogProperties2 = dialogProperties;
                    }
                    i12 |= i21;
                } else {
                    dialogProperties2 = dialogProperties;
                }
                if ((i12 & 191739611) == 38347922) {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i19 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i13 != 0) {
                            pVar3 = null;
                        }
                        if (i15 == 0) {
                        }
                        if ((i11 & 32) != 0) {
                            shapeB = MaterialTheme.INSTANCE.b(composerS, 6).b();
                            i12 &= -458753;
                        } else {
                            shapeB = shape;
                        }
                        if ((i11 & 64) != 0) {
                            jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                            i12 &= -3670017;
                        }
                        if ((i11 & 128) != 0) {
                            jB = ColorsKt.b(jN, composerS, (i12 >> 18) & 14);
                            i12 &= -29360129;
                        } else {
                            jB = j11;
                        }
                        if ((i11 & 256) != 0) {
                            i17 = i12 & (-234881025);
                            pVar5 = pVar4;
                            shape2 = shapeB;
                            pVar6 = pVar3;
                            j12 = jB;
                            dialogProperties3 = new DialogProperties(false, false, null, 7, null);
                            j13 = jN;
                        } else {
                            i17 = i12;
                            pVar5 = pVar4;
                            shape2 = shapeB;
                            pVar6 = pVar3;
                            j12 = jB;
                            j13 = jN;
                            dialogProperties3 = dialogProperties2;
                        }
                    } else {
                        if (i19 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i13 != 0) {
                            pVar3 = null;
                        }
                        if (i15 == 0) {
                        }
                        if ((i11 & 32) != 0) {
                            shapeB = MaterialTheme.INSTANCE.b(composerS, 6).b();
                            i12 &= -458753;
                        } else {
                            shapeB = shape;
                        }
                        if ((i11 & 64) != 0) {
                            jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                            i12 &= -3670017;
                        }
                        if ((i11 & 128) != 0) {
                            jB = ColorsKt.b(jN, composerS, (i12 >> 18) & 14);
                            i12 &= -29360129;
                        } else {
                            jB = j11;
                        }
                        if ((i11 & 256) != 0) {
                            i17 = i12 & (-234881025);
                            pVar5 = pVar4;
                            shape2 = shapeB;
                            pVar6 = pVar3;
                            j12 = jB;
                            dialogProperties3 = new DialogProperties(false, false, null, 7, null);
                            j13 = jN;
                        } else {
                            i17 = i12;
                            pVar5 = pVar4;
                            shape2 = shapeB;
                            pVar6 = pVar3;
                            j12 = jB;
                            j13 = jN;
                            dialogProperties3 = dialogProperties2;
                        }
                    }
                    composerS.A();
                    AndroidDialog_androidKt.a(onDismissRequest, dialogProperties3, ComposableLambdaKt.b(composerS, -1787418772, true, new AndroidAlertDialog_androidKt$AlertDialog$3(buttons, modifier2, pVar6, pVar5, shape2, j13, j12, i17)), composerS, (i17 & 14) | 384 | ((i17 >> 21) & 112), 0);
                    modifier3 = modifier2;
                    pVar7 = pVar6;
                    pVar8 = pVar5;
                    shape3 = shape2;
                    j14 = j13;
                    j15 = j12;
                    dialogProperties4 = dialogProperties3;
                } else {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i19 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i13 != 0) {
                            pVar3 = null;
                        }
                        if (i15 == 0) {
                        }
                        if ((i11 & 32) != 0) {
                            shapeB = MaterialTheme.INSTANCE.b(composerS, 6).b();
                            i12 &= -458753;
                        } else {
                            shapeB = shape;
                        }
                        if ((i11 & 64) != 0) {
                            jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                            i12 &= -3670017;
                        }
                        if ((i11 & 128) != 0) {
                            jB = ColorsKt.b(jN, composerS, (i12 >> 18) & 14);
                            i12 &= -29360129;
                        } else {
                            jB = j11;
                        }
                        if ((i11 & 256) != 0) {
                            i17 = i12 & (-234881025);
                            pVar5 = pVar4;
                            shape2 = shapeB;
                            pVar6 = pVar3;
                            j12 = jB;
                            dialogProperties3 = new DialogProperties(false, false, null, 7, null);
                            j13 = jN;
                        } else {
                            i17 = i12;
                            pVar5 = pVar4;
                            shape2 = shapeB;
                            pVar6 = pVar3;
                            j12 = jB;
                            j13 = jN;
                            dialogProperties3 = dialogProperties2;
                        }
                    } else {
                        if (i19 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i13 != 0) {
                            pVar3 = null;
                        }
                        if (i15 == 0) {
                        }
                        if ((i11 & 32) != 0) {
                            shapeB = MaterialTheme.INSTANCE.b(composerS, 6).b();
                            i12 &= -458753;
                        } else {
                            shapeB = shape;
                        }
                        if ((i11 & 64) != 0) {
                            jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                            i12 &= -3670017;
                        }
                        if ((i11 & 128) != 0) {
                            jB = ColorsKt.b(jN, composerS, (i12 >> 18) & 14);
                            i12 &= -29360129;
                        } else {
                            jB = j11;
                        }
                        if ((i11 & 256) != 0) {
                            i17 = i12 & (-234881025);
                            pVar5 = pVar4;
                            shape2 = shapeB;
                            pVar6 = pVar3;
                            j12 = jB;
                            dialogProperties3 = new DialogProperties(false, false, null, 7, null);
                            j13 = jN;
                        } else {
                            i17 = i12;
                            pVar5 = pVar4;
                            shape2 = shapeB;
                            pVar6 = pVar3;
                            j12 = jB;
                            j13 = jN;
                            dialogProperties3 = dialogProperties2;
                        }
                    }
                    composerS.A();
                    AndroidDialog_androidKt.a(onDismissRequest, dialogProperties3, ComposableLambdaKt.b(composerS, -1787418772, true, new AndroidAlertDialog_androidKt$AlertDialog$3(buttons, modifier2, pVar6, pVar5, shape2, j13, j12, i17)), composerS, (i17 & 14) | 384 | ((i17 >> 21) & 112), 0);
                    modifier3 = modifier2;
                    pVar7 = pVar6;
                    pVar8 = pVar5;
                    shape3 = shape2;
                    j14 = j13;
                    j15 = j12;
                    dialogProperties4 = dialogProperties3;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new AndroidAlertDialog_androidKt$AlertDialog$4(onDismissRequest, buttons, modifier3, pVar7, pVar8, shape3, j14, j15, dialogProperties4, i10, i11));
            }
            i12 |= CpioConstants.C_ISBLK;
            if ((458752 & i10) != 0) {
                i12 |= ((i11 & 32) == 0 || !composerS.k(shape)) ? 65536 : 131072;
            }
            if ((3670016 & i10) == 0) {
                if ((i11 & 64) == 0) {
                    jN = j6;
                    if (composerS.q(jN)) {
                    }
                    i12 |= i20;
                } else {
                    jN = j6;
                }
                i12 |= i20;
            } else {
                jN = j6;
            }
            if ((29360128 & i10) == 0) {
                j11 = j10;
                if ((i11 & 128) == 0) {
                    i18 = 4194304;
                } else {
                    i18 = 4194304;
                }
                i12 |= i18;
            } else {
                j11 = j10;
            }
            if ((234881024 & i10) == 0) {
                if ((i11 & 256) == 0) {
                    dialogProperties2 = dialogProperties;
                    if (composerS.k(dialogProperties2)) {
                    }
                    i12 |= i21;
                } else {
                    dialogProperties2 = dialogProperties;
                }
                i12 |= i21;
            } else {
                dialogProperties2 = dialogProperties;
            }
            if ((i12 & 191739611) == 38347922) {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i19 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i13 != 0) {
                        pVar3 = null;
                    }
                    if (i15 == 0) {
                    }
                    if ((i11 & 32) != 0) {
                        shapeB = MaterialTheme.INSTANCE.b(composerS, 6).b();
                        i12 &= -458753;
                    } else {
                        shapeB = shape;
                    }
                    if ((i11 & 64) != 0) {
                        jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                        i12 &= -3670017;
                    }
                    if ((i11 & 128) != 0) {
                        jB = ColorsKt.b(jN, composerS, (i12 >> 18) & 14);
                        i12 &= -29360129;
                    } else {
                        jB = j11;
                    }
                    if ((i11 & 256) != 0) {
                        i17 = i12 & (-234881025);
                        pVar5 = pVar4;
                        shape2 = shapeB;
                        pVar6 = pVar3;
                        j12 = jB;
                        dialogProperties3 = new DialogProperties(false, false, null, 7, null);
                        j13 = jN;
                    } else {
                        i17 = i12;
                        pVar5 = pVar4;
                        shape2 = shapeB;
                        pVar6 = pVar3;
                        j12 = jB;
                        j13 = jN;
                        dialogProperties3 = dialogProperties2;
                    }
                } else {
                    if (i19 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i13 != 0) {
                        pVar3 = null;
                    }
                    if (i15 == 0) {
                    }
                    if ((i11 & 32) != 0) {
                        shapeB = MaterialTheme.INSTANCE.b(composerS, 6).b();
                        i12 &= -458753;
                    } else {
                        shapeB = shape;
                    }
                    if ((i11 & 64) != 0) {
                        jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                        i12 &= -3670017;
                    }
                    if ((i11 & 128) != 0) {
                        jB = ColorsKt.b(jN, composerS, (i12 >> 18) & 14);
                        i12 &= -29360129;
                    } else {
                        jB = j11;
                    }
                    if ((i11 & 256) != 0) {
                        i17 = i12 & (-234881025);
                        pVar5 = pVar4;
                        shape2 = shapeB;
                        pVar6 = pVar3;
                        j12 = jB;
                        dialogProperties3 = new DialogProperties(false, false, null, 7, null);
                        j13 = jN;
                    } else {
                        i17 = i12;
                        pVar5 = pVar4;
                        shape2 = shapeB;
                        pVar6 = pVar3;
                        j12 = jB;
                        j13 = jN;
                        dialogProperties3 = dialogProperties2;
                    }
                }
                composerS.A();
                AndroidDialog_androidKt.a(onDismissRequest, dialogProperties3, ComposableLambdaKt.b(composerS, -1787418772, true, new AndroidAlertDialog_androidKt$AlertDialog$3(buttons, modifier2, pVar6, pVar5, shape2, j13, j12, i17)), composerS, (i17 & 14) | 384 | ((i17 >> 21) & 112), 0);
                modifier3 = modifier2;
                pVar7 = pVar6;
                pVar8 = pVar5;
                shape3 = shape2;
                j14 = j13;
                j15 = j12;
                dialogProperties4 = dialogProperties3;
            } else {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i19 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i13 != 0) {
                        pVar3 = null;
                    }
                    if (i15 == 0) {
                    }
                    if ((i11 & 32) != 0) {
                        shapeB = MaterialTheme.INSTANCE.b(composerS, 6).b();
                        i12 &= -458753;
                    } else {
                        shapeB = shape;
                    }
                    if ((i11 & 64) != 0) {
                        jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                        i12 &= -3670017;
                    }
                    if ((i11 & 128) != 0) {
                        jB = ColorsKt.b(jN, composerS, (i12 >> 18) & 14);
                        i12 &= -29360129;
                    } else {
                        jB = j11;
                    }
                    if ((i11 & 256) != 0) {
                        i17 = i12 & (-234881025);
                        pVar5 = pVar4;
                        shape2 = shapeB;
                        pVar6 = pVar3;
                        j12 = jB;
                        dialogProperties3 = new DialogProperties(false, false, null, 7, null);
                        j13 = jN;
                    } else {
                        i17 = i12;
                        pVar5 = pVar4;
                        shape2 = shapeB;
                        pVar6 = pVar3;
                        j12 = jB;
                        j13 = jN;
                        dialogProperties3 = dialogProperties2;
                    }
                } else {
                    if (i19 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i13 != 0) {
                        pVar3 = null;
                    }
                    if (i15 == 0) {
                    }
                    if ((i11 & 32) != 0) {
                        shapeB = MaterialTheme.INSTANCE.b(composerS, 6).b();
                        i12 &= -458753;
                    } else {
                        shapeB = shape;
                    }
                    if ((i11 & 64) != 0) {
                        jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                        i12 &= -3670017;
                    }
                    if ((i11 & 128) != 0) {
                        jB = ColorsKt.b(jN, composerS, (i12 >> 18) & 14);
                        i12 &= -29360129;
                    } else {
                        jB = j11;
                    }
                    if ((i11 & 256) != 0) {
                        i17 = i12 & (-234881025);
                        pVar5 = pVar4;
                        shape2 = shapeB;
                        pVar6 = pVar3;
                        j12 = jB;
                        dialogProperties3 = new DialogProperties(false, false, null, 7, null);
                        j13 = jN;
                    } else {
                        i17 = i12;
                        pVar5 = pVar4;
                        shape2 = shapeB;
                        pVar6 = pVar3;
                        j12 = jB;
                        j13 = jN;
                        dialogProperties3 = dialogProperties2;
                    }
                }
                composerS.A();
                AndroidDialog_androidKt.a(onDismissRequest, dialogProperties3, ComposableLambdaKt.b(composerS, -1787418772, true, new AndroidAlertDialog_androidKt$AlertDialog$3(buttons, modifier2, pVar6, pVar5, shape2, j13, j12, i17)), composerS, (i17 & 14) | 384 | ((i17 >> 21) & 112), 0);
                modifier3 = modifier2;
                pVar7 = pVar6;
                pVar8 = pVar5;
                shape3 = shape2;
                j14 = j13;
                j15 = j12;
                dialogProperties4 = dialogProperties3;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new AndroidAlertDialog_androidKt$AlertDialog$4(onDismissRequest, buttons, modifier3, pVar7, pVar8, shape3, j14, j15, dialogProperties4, i10, i11));
        }
        i12 |= 3072;
        pVar3 = pVar;
        i15 = i11 & 16;
        if (i15 != 0) {
            if ((57344 & i10) == 0) {
                if (composerS.k(pVar2)) {
                    i16 = 16384;
                } else {
                    i16 = 8192;
                }
                i12 |= i16;
            }
            if ((458752 & i10) != 0) {
                i12 |= ((i11 & 32) == 0 || !composerS.k(shape)) ? 65536 : 131072;
            }
            if ((3670016 & i10) == 0) {
                if ((i11 & 64) == 0) {
                    jN = j6;
                    if (composerS.q(jN)) {
                    }
                    i12 |= i20;
                } else {
                    jN = j6;
                }
                i12 |= i20;
            } else {
                jN = j6;
            }
            if ((29360128 & i10) == 0) {
                j11 = j10;
                if ((i11 & 128) == 0) {
                    i18 = 4194304;
                } else {
                    i18 = 4194304;
                }
                i12 |= i18;
            } else {
                j11 = j10;
            }
            if ((234881024 & i10) == 0) {
                if ((i11 & 256) == 0) {
                    dialogProperties2 = dialogProperties;
                    if (composerS.k(dialogProperties2)) {
                    }
                    i12 |= i21;
                } else {
                    dialogProperties2 = dialogProperties;
                }
                i12 |= i21;
            } else {
                dialogProperties2 = dialogProperties;
            }
            if ((i12 & 191739611) == 38347922) {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i19 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i13 != 0) {
                        pVar3 = null;
                    }
                    if (i15 == 0) {
                    }
                    if ((i11 & 32) != 0) {
                        shapeB = MaterialTheme.INSTANCE.b(composerS, 6).b();
                        i12 &= -458753;
                    } else {
                        shapeB = shape;
                    }
                    if ((i11 & 64) != 0) {
                        jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                        i12 &= -3670017;
                    }
                    if ((i11 & 128) != 0) {
                        jB = ColorsKt.b(jN, composerS, (i12 >> 18) & 14);
                        i12 &= -29360129;
                    } else {
                        jB = j11;
                    }
                    if ((i11 & 256) != 0) {
                        i17 = i12 & (-234881025);
                        pVar5 = pVar4;
                        shape2 = shapeB;
                        pVar6 = pVar3;
                        j12 = jB;
                        dialogProperties3 = new DialogProperties(false, false, null, 7, null);
                        j13 = jN;
                    } else {
                        i17 = i12;
                        pVar5 = pVar4;
                        shape2 = shapeB;
                        pVar6 = pVar3;
                        j12 = jB;
                        j13 = jN;
                        dialogProperties3 = dialogProperties2;
                    }
                } else {
                    if (i19 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i13 != 0) {
                        pVar3 = null;
                    }
                    if (i15 == 0) {
                    }
                    if ((i11 & 32) != 0) {
                        shapeB = MaterialTheme.INSTANCE.b(composerS, 6).b();
                        i12 &= -458753;
                    } else {
                        shapeB = shape;
                    }
                    if ((i11 & 64) != 0) {
                        jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                        i12 &= -3670017;
                    }
                    if ((i11 & 128) != 0) {
                        jB = ColorsKt.b(jN, composerS, (i12 >> 18) & 14);
                        i12 &= -29360129;
                    } else {
                        jB = j11;
                    }
                    if ((i11 & 256) != 0) {
                        i17 = i12 & (-234881025);
                        pVar5 = pVar4;
                        shape2 = shapeB;
                        pVar6 = pVar3;
                        j12 = jB;
                        dialogProperties3 = new DialogProperties(false, false, null, 7, null);
                        j13 = jN;
                    } else {
                        i17 = i12;
                        pVar5 = pVar4;
                        shape2 = shapeB;
                        pVar6 = pVar3;
                        j12 = jB;
                        j13 = jN;
                        dialogProperties3 = dialogProperties2;
                    }
                }
                composerS.A();
                AndroidDialog_androidKt.a(onDismissRequest, dialogProperties3, ComposableLambdaKt.b(composerS, -1787418772, true, new AndroidAlertDialog_androidKt$AlertDialog$3(buttons, modifier2, pVar6, pVar5, shape2, j13, j12, i17)), composerS, (i17 & 14) | 384 | ((i17 >> 21) & 112), 0);
                modifier3 = modifier2;
                pVar7 = pVar6;
                pVar8 = pVar5;
                shape3 = shape2;
                j14 = j13;
                j15 = j12;
                dialogProperties4 = dialogProperties3;
            } else {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i19 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i13 != 0) {
                        pVar3 = null;
                    }
                    if (i15 == 0) {
                    }
                    if ((i11 & 32) != 0) {
                        shapeB = MaterialTheme.INSTANCE.b(composerS, 6).b();
                        i12 &= -458753;
                    } else {
                        shapeB = shape;
                    }
                    if ((i11 & 64) != 0) {
                        jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                        i12 &= -3670017;
                    }
                    if ((i11 & 128) != 0) {
                        jB = ColorsKt.b(jN, composerS, (i12 >> 18) & 14);
                        i12 &= -29360129;
                    } else {
                        jB = j11;
                    }
                    if ((i11 & 256) != 0) {
                        i17 = i12 & (-234881025);
                        pVar5 = pVar4;
                        shape2 = shapeB;
                        pVar6 = pVar3;
                        j12 = jB;
                        dialogProperties3 = new DialogProperties(false, false, null, 7, null);
                        j13 = jN;
                    } else {
                        i17 = i12;
                        pVar5 = pVar4;
                        shape2 = shapeB;
                        pVar6 = pVar3;
                        j12 = jB;
                        j13 = jN;
                        dialogProperties3 = dialogProperties2;
                    }
                } else {
                    if (i19 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i13 != 0) {
                        pVar3 = null;
                    }
                    if (i15 == 0) {
                    }
                    if ((i11 & 32) != 0) {
                        shapeB = MaterialTheme.INSTANCE.b(composerS, 6).b();
                        i12 &= -458753;
                    } else {
                        shapeB = shape;
                    }
                    if ((i11 & 64) != 0) {
                        jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                        i12 &= -3670017;
                    }
                    if ((i11 & 128) != 0) {
                        jB = ColorsKt.b(jN, composerS, (i12 >> 18) & 14);
                        i12 &= -29360129;
                    } else {
                        jB = j11;
                    }
                    if ((i11 & 256) != 0) {
                        i17 = i12 & (-234881025);
                        pVar5 = pVar4;
                        shape2 = shapeB;
                        pVar6 = pVar3;
                        j12 = jB;
                        dialogProperties3 = new DialogProperties(false, false, null, 7, null);
                        j13 = jN;
                    } else {
                        i17 = i12;
                        pVar5 = pVar4;
                        shape2 = shapeB;
                        pVar6 = pVar3;
                        j12 = jB;
                        j13 = jN;
                        dialogProperties3 = dialogProperties2;
                    }
                }
                composerS.A();
                AndroidDialog_androidKt.a(onDismissRequest, dialogProperties3, ComposableLambdaKt.b(composerS, -1787418772, true, new AndroidAlertDialog_androidKt$AlertDialog$3(buttons, modifier2, pVar6, pVar5, shape2, j13, j12, i17)), composerS, (i17 & 14) | 384 | ((i17 >> 21) & 112), 0);
                modifier3 = modifier2;
                pVar7 = pVar6;
                pVar8 = pVar5;
                shape3 = shape2;
                j14 = j13;
                j15 = j12;
                dialogProperties4 = dialogProperties3;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new AndroidAlertDialog_androidKt$AlertDialog$4(onDismissRequest, buttons, modifier3, pVar7, pVar8, shape3, j14, j15, dialogProperties4, i10, i11));
        }
        i12 |= CpioConstants.C_ISBLK;
        if ((458752 & i10) != 0) {
            i12 |= ((i11 & 32) == 0 || !composerS.k(shape)) ? 65536 : 131072;
        }
        if ((3670016 & i10) == 0) {
            if ((i11 & 64) == 0) {
                jN = j6;
                if (composerS.q(jN)) {
                }
                i12 |= i20;
            } else {
                jN = j6;
            }
            i12 |= i20;
        } else {
            jN = j6;
        }
        if ((29360128 & i10) == 0) {
            j11 = j10;
            if ((i11 & 128) == 0) {
                i18 = 4194304;
            } else {
                i18 = 4194304;
            }
            i12 |= i18;
        } else {
            j11 = j10;
        }
        if ((234881024 & i10) == 0) {
            if ((i11 & 256) == 0) {
                dialogProperties2 = dialogProperties;
                if (composerS.k(dialogProperties2)) {
                }
                i12 |= i21;
            } else {
                dialogProperties2 = dialogProperties;
            }
            i12 |= i21;
        } else {
            dialogProperties2 = dialogProperties;
        }
        if ((i12 & 191739611) == 38347922) {
            composerS.J();
            if ((i10 & 1) != 0) {
                if (i19 != 0) {
                    modifier2 = Modifier.Companion;
                } else {
                    modifier2 = modifier;
                }
                if (i13 != 0) {
                    pVar3 = null;
                }
                if (i15 == 0) {
                }
                if ((i11 & 32) != 0) {
                    shapeB = MaterialTheme.INSTANCE.b(composerS, 6).b();
                    i12 &= -458753;
                } else {
                    shapeB = shape;
                }
                if ((i11 & 64) != 0) {
                    jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                    i12 &= -3670017;
                }
                if ((i11 & 128) != 0) {
                    jB = ColorsKt.b(jN, composerS, (i12 >> 18) & 14);
                    i12 &= -29360129;
                } else {
                    jB = j11;
                }
                if ((i11 & 256) != 0) {
                    i17 = i12 & (-234881025);
                    pVar5 = pVar4;
                    shape2 = shapeB;
                    pVar6 = pVar3;
                    j12 = jB;
                    dialogProperties3 = new DialogProperties(false, false, null, 7, null);
                    j13 = jN;
                } else {
                    i17 = i12;
                    pVar5 = pVar4;
                    shape2 = shapeB;
                    pVar6 = pVar3;
                    j12 = jB;
                    j13 = jN;
                    dialogProperties3 = dialogProperties2;
                }
            } else {
                if (i19 != 0) {
                    modifier2 = Modifier.Companion;
                } else {
                    modifier2 = modifier;
                }
                if (i13 != 0) {
                    pVar3 = null;
                }
                if (i15 == 0) {
                }
                if ((i11 & 32) != 0) {
                    shapeB = MaterialTheme.INSTANCE.b(composerS, 6).b();
                    i12 &= -458753;
                } else {
                    shapeB = shape;
                }
                if ((i11 & 64) != 0) {
                    jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                    i12 &= -3670017;
                }
                if ((i11 & 128) != 0) {
                    jB = ColorsKt.b(jN, composerS, (i12 >> 18) & 14);
                    i12 &= -29360129;
                } else {
                    jB = j11;
                }
                if ((i11 & 256) != 0) {
                    i17 = i12 & (-234881025);
                    pVar5 = pVar4;
                    shape2 = shapeB;
                    pVar6 = pVar3;
                    j12 = jB;
                    dialogProperties3 = new DialogProperties(false, false, null, 7, null);
                    j13 = jN;
                } else {
                    i17 = i12;
                    pVar5 = pVar4;
                    shape2 = shapeB;
                    pVar6 = pVar3;
                    j12 = jB;
                    j13 = jN;
                    dialogProperties3 = dialogProperties2;
                }
            }
            composerS.A();
            AndroidDialog_androidKt.a(onDismissRequest, dialogProperties3, ComposableLambdaKt.b(composerS, -1787418772, true, new AndroidAlertDialog_androidKt$AlertDialog$3(buttons, modifier2, pVar6, pVar5, shape2, j13, j12, i17)), composerS, (i17 & 14) | 384 | ((i17 >> 21) & 112), 0);
            modifier3 = modifier2;
            pVar7 = pVar6;
            pVar8 = pVar5;
            shape3 = shape2;
            j14 = j13;
            j15 = j12;
            dialogProperties4 = dialogProperties3;
        } else {
            composerS.J();
            if ((i10 & 1) != 0) {
                if (i19 != 0) {
                    modifier2 = Modifier.Companion;
                } else {
                    modifier2 = modifier;
                }
                if (i13 != 0) {
                    pVar3 = null;
                }
                if (i15 == 0) {
                }
                if ((i11 & 32) != 0) {
                    shapeB = MaterialTheme.INSTANCE.b(composerS, 6).b();
                    i12 &= -458753;
                } else {
                    shapeB = shape;
                }
                if ((i11 & 64) != 0) {
                    jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                    i12 &= -3670017;
                }
                if ((i11 & 128) != 0) {
                    jB = ColorsKt.b(jN, composerS, (i12 >> 18) & 14);
                    i12 &= -29360129;
                } else {
                    jB = j11;
                }
                if ((i11 & 256) != 0) {
                    i17 = i12 & (-234881025);
                    pVar5 = pVar4;
                    shape2 = shapeB;
                    pVar6 = pVar3;
                    j12 = jB;
                    dialogProperties3 = new DialogProperties(false, false, null, 7, null);
                    j13 = jN;
                } else {
                    i17 = i12;
                    pVar5 = pVar4;
                    shape2 = shapeB;
                    pVar6 = pVar3;
                    j12 = jB;
                    j13 = jN;
                    dialogProperties3 = dialogProperties2;
                }
            } else {
                if (i19 != 0) {
                    modifier2 = Modifier.Companion;
                } else {
                    modifier2 = modifier;
                }
                if (i13 != 0) {
                    pVar3 = null;
                }
                if (i15 == 0) {
                }
                if ((i11 & 32) != 0) {
                    shapeB = MaterialTheme.INSTANCE.b(composerS, 6).b();
                    i12 &= -458753;
                } else {
                    shapeB = shape;
                }
                if ((i11 & 64) != 0) {
                    jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                    i12 &= -3670017;
                }
                if ((i11 & 128) != 0) {
                    jB = ColorsKt.b(jN, composerS, (i12 >> 18) & 14);
                    i12 &= -29360129;
                } else {
                    jB = j11;
                }
                if ((i11 & 256) != 0) {
                    i17 = i12 & (-234881025);
                    pVar5 = pVar4;
                    shape2 = shapeB;
                    pVar6 = pVar3;
                    j12 = jB;
                    dialogProperties3 = new DialogProperties(false, false, null, 7, null);
                    j13 = jN;
                } else {
                    i17 = i12;
                    pVar5 = pVar4;
                    shape2 = shapeB;
                    pVar6 = pVar3;
                    j12 = jB;
                    j13 = jN;
                    dialogProperties3 = dialogProperties2;
                }
            }
            composerS.A();
            AndroidDialog_androidKt.a(onDismissRequest, dialogProperties3, ComposableLambdaKt.b(composerS, -1787418772, true, new AndroidAlertDialog_androidKt$AlertDialog$3(buttons, modifier2, pVar6, pVar5, shape2, j13, j12, i17)), composerS, (i17 & 14) | 384 | ((i17 >> 21) & 112), 0);
            modifier3 = modifier2;
            pVar7 = pVar6;
            pVar8 = pVar5;
            shape3 = shape2;
            j14 = j13;
            j15 = j12;
            dialogProperties4 = dialogProperties3;
        }
        scopeUpdateScopeU = composerS.u();
        if (scopeUpdateScopeU == null) {
            return;
        }
        scopeUpdateScopeU.a(new AndroidAlertDialog_androidKt$AlertDialog$4(onDismissRequest, buttons, modifier3, pVar7, pVar8, shape3, j14, j15, dialogProperties4, i10, i11));
    }
}
