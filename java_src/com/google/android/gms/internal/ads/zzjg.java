package com.google.android.gms.internal.ads;

import com.google.android.exoplayer2.util.MimeTypes;
import com.narvii.account.ThirdPartyAccountBaseFragment;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.concurrent.TimeUnit;

/* loaded from: classes2.dex */
public final class zzjg implements zzid {
    private long zzack;
    private int zzamq;
    private zzif zzamt;
    private final zzjf zzanh;
    private final zzjd zzano;
    private final zzkm zzanp;
    private final zzkm zzanq;
    private final zzkm zzanr;
    private long zzans;
    private long zzant;
    private long zzanu;
    private zzjj zzanv;
    private zzjj zzanw;
    private zzjj zzanx;
    private boolean zzany;
    private int zzanz;
    private long zzaoa;
    private boolean zzaob;
    private long zzaoc;
    private long zzaod;
    private int zzaoe;
    private long zzaof;
    private zzkk zzaog;
    private zzkk zzaoh;
    private boolean zzaoi;
    private int zzaoj;
    private int zzaok;
    private int zzaol;
    private int zzaom;
    private long zzaon;
    private boolean zzaoo;
    private boolean zzaop;

    public zzjg() {
        this(new zzja());
    }

    private zzjg(zzjd zzjdVar) {
        this.zzans = -1L;
        this.zzant = -1L;
        this.zzanu = 1000000L;
        this.zzack = -1L;
        this.zzaoc = -1L;
        this.zzaod = -1L;
        this.zzaoe = 0;
        this.zzaof = -1L;
        this.zzano = zzjdVar;
        this.zzano.zza(new zzji(this));
        this.zzanh = new zzjf();
        this.zzanp = new zzkm(4);
        this.zzanq = new zzkm(ByteBuffer.allocate(4).putInt(-1).array());
        this.zzanr = new zzkm(4);
    }

    @Override // com.google.android.gms.internal.ads.zzid
    public final void zza(zzif zzifVar) {
        this.zzamt = zzifVar;
    }

    @Override // com.google.android.gms.internal.ads.zzid
    public final void zzfh() {
        this.zzaof = -1L;
        this.zzaok = 0;
        this.zzano.reset();
        this.zzanh.reset();
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x003c A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0005 A[SYNTHETIC] */
    @Override // com.google.android.gms.internal.ads.zzid
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int zza(com.google.android.gms.internal.ads.zzie r9, com.google.android.gms.internal.ads.zzij r10) throws java.lang.InterruptedException, java.io.IOException {
        /*
            r8 = this;
            r0 = 0
            r8.zzaoo = r0
            r1 = 1
            r2 = 1
        L5:
            if (r2 == 0) goto L3d
            boolean r3 = r8.zzaoo
            if (r3 != 0) goto L3d
            com.google.android.gms.internal.ads.zzjd r2 = r8.zzano
            boolean r2 = r2.zza(r9)
            if (r2 == 0) goto L5
            long r3 = r9.getPosition()
            boolean r5 = r8.zzaob
            if (r5 == 0) goto L27
            r8.zzaod = r3
            long r3 = r8.zzaoc
            r10.zzahv = r3
            r8.zzaoe = r1
            r8.zzaob = r0
        L25:
            r3 = 1
            goto L3a
        L27:
            int r3 = r8.zzaoe
            r4 = 2
            if (r3 != r4) goto L39
            long r3 = r8.zzaod
            r5 = -1
            int r7 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r7 == 0) goto L39
            r10.zzahv = r3
            r8.zzaod = r5
            goto L25
        L39:
            r3 = 0
        L3a:
            if (r3 == 0) goto L5
            return r1
        L3d:
            if (r2 == 0) goto L40
            return r0
        L40:
            r9 = -1
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzjg.zza(com.google.android.gms.internal.ads.zzie, com.google.android.gms.internal.ads.zzij):int");
    }

    final void zzb(int i, long j, long j2) throws zzhl {
        if (i == 160) {
            this.zzaop = false;
            return;
        }
        if (i == 174) {
            this.zzanv = new zzjj();
            return;
        }
        if (i == 187) {
            this.zzaoi = false;
            return;
        }
        if (i == 19899) {
            this.zzanz = -1;
            this.zzaoa = -1L;
            return;
        }
        if (i == 20533) {
            this.zzanv.zzaos = true;
            return;
        }
        if (i != 25152) {
            if (i == 408125543) {
                if (this.zzans != -1) {
                    throw new zzhl("Multiple Segment elements not supported");
                }
                this.zzans = j;
                this.zzant = j2;
                return;
            }
            if (i == 475249515) {
                this.zzaog = new zzkk();
                this.zzaoh = new zzkk();
            } else if (i == 524531317 && this.zzaoe == 0 && this.zzaoc != -1) {
                this.zzaob = true;
            }
        }
    }

    final void zzy(int i) throws zzhl {
        int i2;
        zzhj zzhjVarZza;
        zzhj zzhjVarZzb;
        if (i == 160) {
            if (this.zzaok != 2) {
                return;
            }
            if (!this.zzaop) {
                this.zzaom |= 1;
            }
            zzjj zzjjVar = this.zzanw;
            if (zzjjVar == null || this.zzaol != zzjjVar.number) {
                zzjjVar = this.zzanx;
            }
            zza(zzjjVar.zzamx);
            return;
        }
        if (i == 174) {
            zzjj zzjjVar2 = this.zzanv;
            if (zzjjVar2.number == -1 || (i2 = zzjjVar2.type) == -1) {
                throw new zzhl("Mandatory element TrackNumber or TrackType not found");
            }
            if ((i2 == 2 && this.zzanw != null) || (this.zzanv.type == 1 && this.zzanx != null)) {
                this.zzanv = null;
                return;
            }
            zzjj zzjjVar3 = this.zzanv;
            if (zzjjVar3.type == 2 && zzat(zzjjVar3.zzaor)) {
                this.zzanw = this.zzanv;
                zzjj zzjjVar4 = this.zzanw;
                zzjjVar4.zzamx = this.zzamt.zzs(zzjjVar4.number);
                zzjj zzjjVar5 = this.zzanw;
                zzip zzipVar = zzjjVar5.zzamx;
                if (zzjjVar5 != null && "A_VORBIS".equals(zzjjVar5.zzaor)) {
                    long j = this.zzack;
                    zzjj zzjjVar6 = this.zzanw;
                    zzhjVarZzb = zzhj.zzb(MimeTypes.AUDIO_VORBIS, 8192, j, zzjjVar6.zzafu, zzjjVar6.zzafv, zzfx());
                } else {
                    zzjj zzjjVar7 = this.zzanw;
                    if (zzjjVar7 != null && "A_OPUS".equals(zzjjVar7.zzaor)) {
                        ArrayList arrayList = new ArrayList(3);
                        arrayList.add(this.zzanw.zzaov);
                        arrayList.add(ByteBuffer.allocate(64).putLong(this.zzanw.zzaow).array());
                        arrayList.add(ByteBuffer.allocate(64).putLong(this.zzanw.zzaox).array());
                        long j2 = this.zzack;
                        zzjj zzjjVar8 = this.zzanw;
                        zzhjVarZzb = zzhj.zzb(MimeTypes.AUDIO_OPUS, 5760, j2, zzjjVar8.zzafu, zzjjVar8.zzafv, arrayList);
                    } else {
                        throw new zzhl("Unable to build format");
                    }
                }
                zzipVar.zza(zzhjVarZzb);
            } else {
                zzjj zzjjVar9 = this.zzanv;
                if (zzjjVar9.type == 1 && zzat(zzjjVar9.zzaor)) {
                    this.zzanx = this.zzanv;
                    zzjj zzjjVar10 = this.zzanx;
                    zzjjVar10.zzamx = this.zzamt.zzs(zzjjVar10.number);
                    zzjj zzjjVar11 = this.zzanx;
                    zzip zzipVar2 = zzjjVar11.zzamx;
                    if (zzjjVar11 != null && "V_VP8".equals(zzjjVar11.zzaor)) {
                        long j3 = this.zzack;
                        zzjj zzjjVar12 = this.zzanx;
                        zzhjVarZza = zzhj.zza(MimeTypes.VIDEO_VP8, -1, j3, zzjjVar12.zzaot, zzjjVar12.zzaou, null);
                    } else {
                        zzjj zzjjVar13 = this.zzanx;
                        if (zzjjVar13 != null && "V_VP9".equals(zzjjVar13.zzaor)) {
                            long j4 = this.zzack;
                            zzjj zzjjVar14 = this.zzanx;
                            zzhjVarZza = zzhj.zza(MimeTypes.VIDEO_VP9, -1, j4, zzjjVar14.zzaot, zzjjVar14.zzaou, null);
                        } else {
                            throw new zzhl("Unable to build format");
                        }
                    }
                    zzipVar2.zza(zzhjVarZza);
                }
            }
            this.zzanv = null;
            return;
        }
        if (i == 19899) {
            int i3 = this.zzanz;
            if (i3 != -1) {
                long j5 = this.zzaoa;
                if (j5 != -1) {
                    if (i3 == 475249515) {
                        this.zzaoc = j5;
                        return;
                    }
                    return;
                }
            }
            throw new zzhl("Mandatory element SeekID or SeekPosition not found");
        }
        if (i == 25152) {
            zzjj zzjjVar15 = this.zzanv;
            if (!zzjjVar15.zzaos) {
                throw new zzhl("Found an unsupported ContentEncoding");
            }
            byte[] bArr = zzjjVar15.zzajy;
            if (bArr == null) {
                throw new zzhl("Encrypted Track found but ContentEncKeyID was not found");
            }
            if (this.zzany) {
                return;
            }
            this.zzamt.zzb(new zzhy(MimeTypes.VIDEO_WEBM, bArr));
            this.zzany = true;
            return;
        }
        if (i != 374648427) {
            if (i != 475249515 || this.zzaoe == 2) {
                return;
            }
            zzif zzifVar = this.zzamt;
            if (this.zzans == -1) {
                throw new zzhl("Segment start/end offsets unknown");
            }
            if (this.zzack == -1) {
                throw new zzhl("Duration unknown");
            }
            zzkk zzkkVar = this.zzaog;
            if (zzkkVar == null || this.zzaoh == null || zzkkVar.size() == 0 || this.zzaog.size() != this.zzaoh.size()) {
                throw new zzhl("Invalid/missing cue points");
            }
            int size = this.zzaog.size();
            int[] iArr = new int[size];
            long[] jArr = new long[size];
            long[] jArr2 = new long[size];
            long[] jArr3 = new long[size];
            int i4 = 0;
            for (int i5 = 0; i5 < size; i5++) {
                jArr3[i5] = this.zzaog.get(i5);
                jArr[i5] = this.zzans + this.zzaoh.get(i5);
            }
            while (true) {
                int i6 = size - 1;
                if (i4 < i6) {
                    int i7 = i4 + 1;
                    iArr[i4] = (int) (jArr[i7] - jArr[i4]);
                    jArr2[i4] = jArr3[i7] - jArr3[i4];
                    i4 = i7;
                } else {
                    iArr[i6] = (int) ((this.zzans + this.zzant) - jArr[i6]);
                    jArr2[i6] = this.zzack - jArr3[i6];
                    this.zzaog = null;
                    this.zzaoh = null;
                    zzifVar.zza(new zzia(iArr, jArr, jArr2, jArr3));
                    this.zzaoe = 2;
                    return;
                }
            }
        } else {
            if (this.zzanx == null && this.zzanw == null) {
                throw new zzhl("No valid tracks were found");
            }
            this.zzamt.zzfi();
        }
    }

    final void zzc(int i, long j) throws zzhl {
        switch (i) {
            case 131:
                this.zzanv.type = (int) j;
                return;
            case 159:
                this.zzanv.zzafu = (int) j;
                return;
            case 176:
                this.zzanv.zzaot = (int) j;
                return;
            case 179:
                this.zzaog.add(zzdw(j));
                return;
            case 186:
                this.zzanv.zzaou = (int) j;
                return;
            case ThirdPartyAccountBaseFragment.API_ERR_EMAIL_TAKEN /* 215 */:
                this.zzanv.number = (int) j;
                return;
            case 231:
                this.zzaof = zzdw(j);
                return;
            case 241:
                if (this.zzaoi) {
                    return;
                }
                this.zzaoh.add(j);
                this.zzaoi = true;
                return;
            case ThirdPartyAccountBaseFragment.API_ERR_EMAIL_NO_PASSWORD /* 251 */:
                this.zzaop = true;
                return;
            case 17029:
                if (j < 1 || j > 2) {
                    StringBuilder sb = new StringBuilder(53);
                    sb.append("DocTypeReadVersion ");
                    sb.append(j);
                    sb.append(" not supported");
                    throw new zzhl(sb.toString());
                }
                return;
            case 17143:
                if (j == 1) {
                    return;
                }
                StringBuilder sb2 = new StringBuilder(50);
                sb2.append("EBMLReadVersion ");
                sb2.append(j);
                sb2.append(" not supported");
                throw new zzhl(sb2.toString());
            case 18401:
                if (j == 5) {
                    return;
                }
                StringBuilder sb3 = new StringBuilder(49);
                sb3.append("ContentEncAlgo ");
                sb3.append(j);
                sb3.append(" not supported");
                throw new zzhl(sb3.toString());
            case 18408:
                if (j == 1) {
                    return;
                }
                StringBuilder sb4 = new StringBuilder(56);
                sb4.append("AESSettingsCipherMode ");
                sb4.append(j);
                sb4.append(" not supported");
                throw new zzhl(sb4.toString());
            case 20529:
                if (j == 0) {
                    return;
                }
                StringBuilder sb5 = new StringBuilder(55);
                sb5.append("ContentEncodingOrder ");
                sb5.append(j);
                sb5.append(" not supported");
                throw new zzhl(sb5.toString());
            case 20530:
                if (j == 1) {
                    return;
                }
                StringBuilder sb6 = new StringBuilder(55);
                sb6.append("ContentEncodingScope ");
                sb6.append(j);
                sb6.append(" not supported");
                throw new zzhl(sb6.toString());
            case 20531:
                if (j == 1) {
                    return;
                }
                StringBuilder sb7 = new StringBuilder(54);
                sb7.append("ContentEncodingType ");
                sb7.append(j);
                sb7.append(" not supported");
                throw new zzhl(sb7.toString());
            case 21420:
                this.zzaoa = j + this.zzans;
                return;
            case 22186:
                this.zzanv.zzaow = j;
                return;
            case 22203:
                this.zzanv.zzaox = j;
                return;
            case 2807729:
                this.zzanu = j;
                return;
            default:
                return;
        }
    }

    final void zza(int i, double d) {
        if (i == 181) {
            this.zzanv.zzafv = (int) d;
        } else {
            if (i != 17545) {
                return;
            }
            this.zzack = zzdw((long) d);
        }
    }

    final void zza(int i, String str) throws zzhl {
        if (i != 134) {
            if (i == 17026 && !"webm".equals(str)) {
                StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 22);
                sb.append("DocType ");
                sb.append(str);
                sb.append(" not supported");
                throw new zzhl(sb.toString());
            }
            return;
        }
        this.zzanv.zzaor = str;
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x0097  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0124  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0130  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0133  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x0137  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0139  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x0145  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    final void zza(int r17, int r18, com.google.android.gms.internal.ads.zzie r19) throws java.lang.InterruptedException, java.io.IOException {
        /*
            Method dump skipped, instructions count: 420
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzjg.zza(int, int, com.google.android.gms.internal.ads.zzie):void");
    }

    private final void zza(zzip zzipVar) {
        zzipVar.zza(this.zzaon, this.zzaom, this.zzamq, 0, null);
        this.zzaok = 0;
        this.zzaoo = true;
    }

    private final ArrayList<byte[]> zzfx() throws zzhl {
        try {
            byte[] bArr = this.zzanw.zzaov;
            if (bArr[0] != 2) {
                throw new zzhl("Error parsing vorbis codec private");
            }
            int i = 1;
            int i2 = 0;
            while (bArr[i] == -1) {
                i2 += 255;
                i++;
            }
            int i3 = i + 1;
            int i4 = i2 + bArr[i];
            int i5 = 0;
            while (bArr[i3] == -1) {
                i5 += 255;
                i3++;
            }
            int i6 = i3 + 1;
            int i7 = i5 + bArr[i3];
            if (bArr[i6] != 1) {
                throw new zzhl("Error parsing vorbis codec private");
            }
            byte[] bArr2 = new byte[i4];
            System.arraycopy(bArr, i6, bArr2, 0, i4);
            int i8 = i6 + i4;
            if (bArr[i8] != 3) {
                throw new zzhl("Error parsing vorbis codec private");
            }
            int i9 = i8 + i7;
            if (bArr[i9] != 5) {
                throw new zzhl("Error parsing vorbis codec private");
            }
            byte[] bArr3 = new byte[bArr.length - i9];
            System.arraycopy(bArr, i9, bArr3, 0, bArr.length - i9);
            ArrayList<byte[]> arrayList = new ArrayList<>(2);
            arrayList.add(bArr2);
            arrayList.add(bArr3);
            return arrayList;
        } catch (ArrayIndexOutOfBoundsException unused) {
            throw new zzhl("Error parsing vorbis codec private");
        }
    }

    private final long zzdw(long j) {
        return TimeUnit.NANOSECONDS.toMicros(j * this.zzanu);
    }

    private static boolean zzat(String str) {
        return "V_VP8".equals(str) || "V_VP9".equals(str) || "A_OPUS".equals(str) || "A_VORBIS".equals(str);
    }
}
