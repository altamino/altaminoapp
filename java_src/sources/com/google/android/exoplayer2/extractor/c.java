package com.google.android.exoplayer2.extractor;

/* JADX INFO: loaded from: classes11.dex */
public final class c {
    private static final int COUNTRY_CODE = 181;
    private static final int PAYLOAD_TYPE_CC = 4;
    private static final int PROVIDER_CODE_ATSC = 49;
    private static final int PROVIDER_CODE_DIRECTV = 47;
    private static final String TAG = "CeaUtil";
    public static final int USER_DATA_IDENTIFIER_GA94 = 1195456820;
    public static final int USER_DATA_TYPE_CODE_MPEG_CC = 3;

    private static int c(com.google.android.exoplayer2.util.c0 c0Var) {
        int i10 = 0;
        while (c0Var.a() != 0) {
            int iD = c0Var.D();
            i10 += iD;
            if (iD != 255) {
                return i10;
            }
        }
        return -1;
    }

    public static void a(long j6, com.google.android.exoplayer2.util.c0 c0Var, e0[] e0VarArr) {
        int iN;
        boolean z6;
        while (true) {
            boolean z10 = true;
            if (c0Var.a() > 1) {
                int iC = c(c0Var);
                int iC2 = c(c0Var);
                int iE = c0Var.e() + iC2;
                if (iC2 != -1 && iC2 <= c0Var.a()) {
                    if (iC == 4 && iC2 >= 8) {
                        int iD = c0Var.D();
                        int iJ = c0Var.J();
                        if (iJ == 49) {
                            iN = c0Var.n();
                        } else {
                            iN = 0;
                        }
                        int iD2 = c0Var.D();
                        if (iJ == 47) {
                            c0Var.Q(1);
                        }
                        if (iD == COUNTRY_CODE && ((iJ == 49 || iJ == 47) && iD2 == 3)) {
                            z6 = true;
                        } else {
                            z6 = false;
                        }
                        if (iJ == 49) {
                            if (iN != 1195456820) {
                                z10 = false;
                            }
                            z6 &= z10;
                        }
                        if (z6) {
                            b(j6, c0Var, e0VarArr);
                        }
                    }
                } else {
                    com.google.android.exoplayer2.util.t.i(TAG, "Skipping remainder of malformed SEI NAL unit.");
                    iE = c0Var.f();
                }
                c0Var.P(iE);
            } else {
                return;
            }
        }
    }

    public static void b(long j6, com.google.android.exoplayer2.util.c0 c0Var, e0[] e0VarArr) {
        int iD = c0Var.D();
        if ((iD & 64) != 0) {
            c0Var.Q(1);
            int i10 = (iD & 31) * 3;
            int iE = c0Var.e();
            for (e0 e0Var : e0VarArr) {
                c0Var.P(iE);
                e0Var.c(c0Var, i10);
                if (j6 != -9223372036854775807L) {
                    e0Var.e(j6, 1, i10, 0, null);
                }
            }
        }
    }
}
