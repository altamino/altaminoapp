package com.google.android.gms.internal.ads;

import com.narvii.util.ws.WsMessage;
import java.nio.ShortBuffer;
import java.util.Arrays;

/* loaded from: classes2.dex */
final class zzmw {
    private final int zzafv;
    private float zzauh;
    private float zzaui;
    private final int zzaxx;
    private final int zzaxy;
    private final int zzaxz;
    private final int zzaya;
    private final short[] zzayb;
    private int zzayc;
    private short[] zzayd;
    private int zzaye;
    private short[] zzayf;
    private int zzayg;
    private short[] zzayh;
    private int zzayi;
    private int zzayj;
    private int zzayk;
    private int zzayl;
    private int zzaym;
    private int zzayn;
    private int zzayo;
    private int zzayp;
    private int zzayq;
    private int zzayr;

    public zzmw(int i, int i2) {
        this.zzafv = i;
        this.zzaxx = i2;
        this.zzaxy = i / WsMessage.LIVE_LAYER_USER_JOINED_EVENT;
        this.zzaxz = i / 65;
        this.zzaya = this.zzaxz * 2;
        int i3 = this.zzaya;
        this.zzayb = new short[i3];
        this.zzayc = i3;
        this.zzayd = new short[i3 * i2];
        this.zzaye = i3;
        this.zzayf = new short[i3 * i2];
        this.zzayg = i3;
        this.zzayh = new short[i3 * i2];
        this.zzayi = 0;
        this.zzayj = 0;
        this.zzayo = 0;
        this.zzauh = 1.0f;
        this.zzaui = 1.0f;
    }

    public final void setSpeed(float f) {
        this.zzauh = f;
    }

    public final void zza(float f) {
        this.zzaui = f;
    }

    public final void zza(ShortBuffer shortBuffer) {
        int iRemaining = shortBuffer.remaining();
        int i = this.zzaxx;
        int i2 = iRemaining / i;
        zzak(i2);
        shortBuffer.get(this.zzayd, this.zzayk * this.zzaxx, ((i * i2) << 1) / 2);
        this.zzayk += i2;
        zzhy();
    }

    public final void zzb(ShortBuffer shortBuffer) {
        int iMin = Math.min(shortBuffer.remaining() / this.zzaxx, this.zzayl);
        shortBuffer.put(this.zzayf, 0, this.zzaxx * iMin);
        this.zzayl -= iMin;
        short[] sArr = this.zzayf;
        int i = this.zzaxx;
        System.arraycopy(sArr, iMin * i, sArr, 0, this.zzayl * i);
    }

    public final void zzhl() {
        int i;
        int i2 = this.zzayk;
        float f = this.zzauh;
        float f2 = this.zzaui;
        int i3 = this.zzayl + ((int) ((((i2 / (f / f2)) + this.zzaym) / f2) + 0.5f));
        zzak((this.zzaya * 2) + i2);
        int i4 = 0;
        while (true) {
            i = this.zzaya;
            int i5 = this.zzaxx;
            if (i4 >= i * 2 * i5) {
                break;
            }
            this.zzayd[(i5 * i2) + i4] = 0;
            i4++;
        }
        this.zzayk += i * 2;
        zzhy();
        if (this.zzayl > i3) {
            this.zzayl = i3;
        }
        this.zzayk = 0;
        this.zzayn = 0;
        this.zzaym = 0;
    }

    public final int zzhx() {
        return this.zzayl;
    }

    private final void zzaj(int i) {
        int i2 = this.zzayl + i;
        int i3 = this.zzaye;
        if (i2 > i3) {
            this.zzaye = i3 + (i3 / 2) + i;
            this.zzayf = Arrays.copyOf(this.zzayf, this.zzaye * this.zzaxx);
        }
    }

    private final void zzak(int i) {
        int i2 = this.zzayk + i;
        int i3 = this.zzayc;
        if (i2 > i3) {
            this.zzayc = i3 + (i3 / 2) + i;
            this.zzayd = Arrays.copyOf(this.zzayd, this.zzayc * this.zzaxx);
        }
    }

    private final void zza(short[] sArr, int i, int i2) {
        zzaj(i2);
        int i3 = this.zzaxx;
        System.arraycopy(sArr, i * i3, this.zzayf, this.zzayl * i3, i3 * i2);
        this.zzayl += i2;
    }

    private final void zzb(short[] sArr, int i, int i2) {
        int i3 = this.zzaya / i2;
        int i4 = this.zzaxx;
        int i5 = i2 * i4;
        int i6 = i * i4;
        for (int i7 = 0; i7 < i3; i7++) {
            int i8 = 0;
            for (int i9 = 0; i9 < i5; i9++) {
                i8 += sArr[(i7 * i5) + i6 + i9];
            }
            this.zzayb[i7] = (short) (i8 / i5);
        }
    }

    private final int zza(short[] sArr, int i, int i2, int i3) {
        int i4 = i * this.zzaxx;
        int i5 = 1;
        int i6 = 0;
        int i7 = 0;
        int i8 = 255;
        while (i2 <= i3) {
            int i9 = 0;
            for (int i10 = 0; i10 < i2; i10++) {
                short s = sArr[i4 + i10];
                short s2 = sArr[i4 + i2 + i10];
                i9 += s >= s2 ? s - s2 : s2 - s;
            }
            if (i9 * i6 < i5 * i2) {
                i6 = i2;
                i5 = i9;
            }
            if (i9 * i8 > i7 * i2) {
                i8 = i2;
                i7 = i9;
            }
            i2++;
        }
        this.zzayq = i5 / i6;
        this.zzayr = i7 / i8;
        return i6;
    }

    private final void zzhy() {
        int iZza;
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6 = this.zzayl;
        float f = this.zzauh / this.zzaui;
        double d = f;
        int i7 = 1;
        if (d > 1.00001d || d < 0.99999d) {
            int i8 = this.zzayk;
            if (i8 >= this.zzaya) {
                int i9 = 0;
                while (true) {
                    int i10 = this.zzayn;
                    if (i10 > 0) {
                        int iMin = Math.min(this.zzaya, i10);
                        zza(this.zzayd, i9, iMin);
                        this.zzayn -= iMin;
                        i9 += iMin;
                    } else {
                        short[] sArr = this.zzayd;
                        int i11 = this.zzafv;
                        int i12 = i11 > 4000 ? i11 / 4000 : 1;
                        if (this.zzaxx == i7 && i12 == i7) {
                            iZza = zza(sArr, i9, this.zzaxy, this.zzaxz);
                        } else {
                            zzb(sArr, i9, i12);
                            int iZza2 = zza(this.zzayb, 0, this.zzaxy / i12, this.zzaxz / i12);
                            if (i12 != i7) {
                                int i13 = iZza2 * i12;
                                int i14 = i12 << 2;
                                int i15 = i13 - i14;
                                int i16 = i13 + i14;
                                int i17 = this.zzaxy;
                                if (i15 >= i17) {
                                    i17 = i15;
                                }
                                int i18 = this.zzaxz;
                                if (i16 > i18) {
                                    i16 = i18;
                                }
                                if (this.zzaxx == i7) {
                                    iZza = zza(sArr, i9, i17, i16);
                                } else {
                                    zzb(sArr, i9, i7);
                                    iZza = zza(this.zzayb, 0, i17, i16);
                                }
                            } else {
                                iZza = iZza2;
                            }
                        }
                        int i19 = this.zzayq;
                        int i20 = i19 != 0 && this.zzayo != 0 && this.zzayr <= i19 * 3 && (i19 << 1) > this.zzayp * 3 ? this.zzayo : iZza;
                        this.zzayp = this.zzayq;
                        this.zzayo = iZza;
                        if (d > 1.0d) {
                            short[] sArr2 = this.zzayd;
                            if (f >= 2.0f) {
                                i2 = (int) (i20 / (f - 1.0f));
                            } else {
                                this.zzayn = (int) ((i20 * (2.0f - f)) / (f - 1.0f));
                                i2 = i20;
                            }
                            zzaj(i2);
                            int i21 = i2;
                            zza(i2, this.zzaxx, this.zzayf, this.zzayl, sArr2, i9, sArr2, i9 + i20);
                            this.zzayl += i21;
                            i9 += i20 + i21;
                        } else {
                            int i22 = i20;
                            short[] sArr3 = this.zzayd;
                            if (f < 0.5f) {
                                i = (int) ((i22 * f) / (1.0f - f));
                            } else {
                                this.zzayn = (int) ((i22 * ((2.0f * f) - 1.0f)) / (1.0f - f));
                                i = i22;
                            }
                            int i23 = i22 + i;
                            zzaj(i23);
                            int i24 = this.zzaxx;
                            System.arraycopy(sArr3, i9 * i24, this.zzayf, this.zzayl * i24, i24 * i22);
                            zza(i, this.zzaxx, this.zzayf, this.zzayl + i22, sArr3, i22 + i9, sArr3, i9);
                            this.zzayl += i23;
                            i9 += i;
                        }
                    }
                    if (this.zzaya + i9 > i8) {
                        break;
                    } else {
                        i7 = 1;
                    }
                }
                int i25 = this.zzayk - i9;
                short[] sArr4 = this.zzayd;
                int i26 = this.zzaxx;
                System.arraycopy(sArr4, i9 * i26, sArr4, 0, i26 * i25);
                this.zzayk = i25;
            }
        } else {
            zza(this.zzayd, 0, this.zzayk);
            this.zzayk = 0;
        }
        float f2 = this.zzaui;
        if (f2 == 1.0f || this.zzayl == i6) {
            return;
        }
        int i27 = this.zzafv;
        int i28 = (int) (i27 / f2);
        while (true) {
            if (i28 <= 16384 && i27 <= 16384) {
                break;
            }
            i28 /= 2;
            i27 /= 2;
        }
        int i29 = this.zzayl - i6;
        int i30 = this.zzaym + i29;
        int i31 = this.zzayg;
        if (i30 > i31) {
            this.zzayg = i31 + (i31 / 2) + i29;
            this.zzayh = Arrays.copyOf(this.zzayh, this.zzayg * this.zzaxx);
        }
        short[] sArr5 = this.zzayf;
        int i32 = this.zzaxx;
        System.arraycopy(sArr5, i6 * i32, this.zzayh, this.zzaym * i32, i32 * i29);
        this.zzayl = i6;
        this.zzaym += i29;
        int i33 = 0;
        while (true) {
            i3 = this.zzaym;
            if (i33 >= i3 - 1) {
                break;
            }
            while (true) {
                i4 = this.zzayi;
                int i34 = (i4 + 1) * i28;
                i5 = this.zzayj;
                if (i34 <= i5 * i27) {
                    break;
                }
                zzaj(1);
                int i35 = 0;
                while (true) {
                    int i36 = this.zzaxx;
                    if (i35 < i36) {
                        short[] sArr6 = this.zzayf;
                        int i37 = (this.zzayl * i36) + i35;
                        short[] sArr7 = this.zzayh;
                        int i38 = (i33 * i36) + i35;
                        short s = sArr7[i38];
                        short s2 = sArr7[i38 + i36];
                        int i39 = this.zzayj * i27;
                        int i40 = this.zzayi;
                        int i41 = i40 * i28;
                        int i42 = (i40 + 1) * i28;
                        int i43 = i42 - i39;
                        int i44 = i42 - i41;
                        sArr6[i37] = (short) (((s * i43) + ((i44 - i43) * s2)) / i44);
                        i35++;
                    }
                }
                this.zzayj++;
                this.zzayl++;
            }
            this.zzayi = i4 + 1;
            if (this.zzayi == i27) {
                this.zzayi = 0;
                zzsk.checkState(i5 == i28);
                this.zzayj = 0;
            }
            i33++;
        }
        int i45 = i3 - 1;
        if (i45 != 0) {
            short[] sArr8 = this.zzayh;
            int i46 = this.zzaxx;
            System.arraycopy(sArr8, i45 * i46, sArr8, 0, (i3 - i45) * i46);
            this.zzaym -= i45;
        }
    }

    private static void zza(int i, int i2, short[] sArr, int i3, short[] sArr2, int i4, short[] sArr3, int i5) {
        for (int i6 = 0; i6 < i2; i6++) {
            int i7 = (i4 * i2) + i6;
            int i8 = (i5 * i2) + i6;
            int i9 = (i3 * i2) + i6;
            for (int i10 = 0; i10 < i; i10++) {
                sArr[i9] = (short) (((sArr2[i7] * (i - i10)) + (sArr3[i8] * i10)) / i);
                i9 += i2;
                i7 += i2;
                i8 += i2;
            }
        }
    }
}
