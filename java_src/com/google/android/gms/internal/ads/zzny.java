package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.Stack;

/* loaded from: classes2.dex */
final class zzny implements zzob {
    private int zzanj;
    private int zzank;
    private long zzanl;
    private zzoc zzazs;
    private final byte[] zzanf = new byte[8];
    private final Stack<zzoa> zzang = new Stack<>();
    private final zzoi zzazr = new zzoi();

    zzny() {
    }

    @Override // com.google.android.gms.internal.ads.zzob
    public final void zza(zzoc zzocVar) {
        this.zzazs = zzocVar;
    }

    @Override // com.google.android.gms.internal.ads.zzob
    public final void reset() {
        this.zzanj = 0;
        this.zzang.clear();
        this.zzazr.reset();
    }

    @Override // com.google.android.gms.internal.ads.zzob
    public final boolean zzb(zzno zznoVar) throws InterruptedException, IOException {
        String str;
        double dLongBitsToDouble;
        int iZzaw;
        int iZza;
        zzsk.checkState(this.zzazs != null);
        while (true) {
            if (!this.zzang.isEmpty() && zznoVar.getPosition() >= this.zzang.peek().zzanm) {
                this.zzazs.zzy(this.zzang.pop().zzank);
                return true;
            }
            if (this.zzanj == 0) {
                long jZza = this.zzazr.zza(zznoVar, true, false, 4);
                if (jZza == -2) {
                    zznoVar.zzig();
                    while (true) {
                        zznoVar.zzc(this.zzanf, 0, 4);
                        iZzaw = zzoi.zzaw(this.zzanf[0]);
                        if (iZzaw != -1 && iZzaw <= 4) {
                            iZza = (int) zzoi.zza(this.zzanf, iZzaw, false);
                            if (this.zzazs.zzav(iZza)) {
                                break;
                            }
                        }
                        zznoVar.zzr(1);
                    }
                    zznoVar.zzr(iZzaw);
                    jZza = iZza;
                }
                if (jZza == -1) {
                    return false;
                }
                this.zzank = (int) jZza;
                this.zzanj = 1;
            }
            if (this.zzanj == 1) {
                this.zzanl = this.zzazr.zza(zznoVar, false, true, 8);
                this.zzanj = 2;
            }
            int iZzx = this.zzazs.zzx(this.zzank);
            if (iZzx != 0) {
                if (iZzx == 1) {
                    long position = zznoVar.getPosition();
                    this.zzang.add(new zzoa(this.zzank, this.zzanl + position));
                    this.zzazs.zzb(this.zzank, position, this.zzanl);
                    this.zzanj = 0;
                    return true;
                }
                if (iZzx == 2) {
                    long j = this.zzanl;
                    if (j > 8) {
                        StringBuilder sb = new StringBuilder(42);
                        sb.append("Invalid integer size: ");
                        sb.append(j);
                        throw new zzlm(sb.toString());
                    }
                    this.zzazs.zzc(this.zzank, zza(zznoVar, (int) j));
                    this.zzanj = 0;
                    return true;
                }
                if (iZzx == 3) {
                    long j2 = this.zzanl;
                    if (j2 > 2147483647L) {
                        StringBuilder sb2 = new StringBuilder(41);
                        sb2.append("String element size: ");
                        sb2.append(j2);
                        throw new zzlm(sb2.toString());
                    }
                    zzoc zzocVar = this.zzazs;
                    int i = this.zzank;
                    int i2 = (int) j2;
                    if (i2 == 0) {
                        str = "";
                    } else {
                        byte[] bArr = new byte[i2];
                        zznoVar.readFully(bArr, 0, i2);
                        str = new String(bArr);
                    }
                    zzocVar.zza(i, str);
                    this.zzanj = 0;
                    return true;
                }
                if (iZzx == 4) {
                    this.zzazs.zza(this.zzank, (int) this.zzanl, zznoVar);
                    this.zzanj = 0;
                    return true;
                }
                if (iZzx == 5) {
                    long j3 = this.zzanl;
                    if (j3 != 4 && j3 != 8) {
                        StringBuilder sb3 = new StringBuilder(40);
                        sb3.append("Invalid float size: ");
                        sb3.append(j3);
                        throw new zzlm(sb3.toString());
                    }
                    zzoc zzocVar2 = this.zzazs;
                    int i3 = this.zzank;
                    int i4 = (int) this.zzanl;
                    long jZza2 = zza(zznoVar, i4);
                    if (i4 == 4) {
                        dLongBitsToDouble = Float.intBitsToFloat((int) jZza2);
                    } else {
                        dLongBitsToDouble = Double.longBitsToDouble(jZza2);
                    }
                    zzocVar2.zza(i3, dLongBitsToDouble);
                    this.zzanj = 0;
                    return true;
                }
                StringBuilder sb4 = new StringBuilder(32);
                sb4.append("Invalid element type ");
                sb4.append(iZzx);
                throw new zzlm(sb4.toString());
            }
            zznoVar.zzr((int) this.zzanl);
            this.zzanj = 0;
        }
    }

    private final long zza(zzno zznoVar, int i) throws InterruptedException, IOException {
        zznoVar.readFully(this.zzanf, 0, i);
        long j = 0;
        for (int i2 = 0; i2 < i; i2++) {
            j = (j << 8) | (this.zzanf[i2] & 255);
        }
        return j;
    }
}
