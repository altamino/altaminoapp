package com.google.android.gms.internal.ads;

import android.util.SparseArray;
import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.util.MimeTypes;
import com.google.android.gms.internal.ads.zzne;
import com.narvii.account.ThirdPartyAccountBaseFragment;
import com.narvii.util.ws.WsMessage;
import io.agora.rtc.Constants;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.Locale;
import java.util.UUID;

/* loaded from: classes2.dex */
public final class zzod implements zznn {
    private static final zznq zzazt = new zzoe();
    private static final byte[] zzazu = {49, 10, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 48, 48, 32, 45, 45, 62, 32, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 48, 48, 10};
    private static final byte[] zzazv = {32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32};
    private static final UUID zzazw = new UUID(72057594037932032L, -9223371306706625679L);
    private long zzack;
    private int zzamr;
    private int zzams;
    private long zzans;
    private long zzant;
    private long zzanu;
    private int zzanz;
    private long zzaoa;
    private boolean zzaob;
    private long zzaoc;
    private long zzaod;
    private long zzaof;
    private boolean zzaoi;
    private boolean zzaoo;
    private boolean zzaop;
    private final zzoi zzazr;
    private final zzob zzazx;
    private final SparseArray<zzog> zzazy;
    private final boolean zzazz;
    private final zzst zzbaa;
    private final zzst zzbab;
    private final zzst zzbac;
    private final zzst zzbad;
    private final zzst zzbae;
    private final zzst zzbaf;
    private final zzst zzbag;
    private final zzst zzbah;
    private final zzst zzbai;
    private ByteBuffer zzbaj;
    private long zzbak;
    private zzog zzbal;
    private boolean zzbam;
    private zzsn zzban;
    private zzsn zzbao;
    private int zzbap;
    private long zzbaq;
    private long zzbar;
    private int zzbas;
    private int zzbat;
    private int[] zzbau;
    private int zzbav;
    private int zzbaw;
    private int zzbax;
    private int zzbay;
    private boolean zzbaz;
    private boolean zzbba;
    private boolean zzbbb;
    private boolean zzbbc;
    private byte zzbbd;
    private int zzbbe;
    private zznp zzbbf;

    public zzod() {
        this(0);
    }

    static boolean zzav(int i) {
        return i == 357149030 || i == 524531317 || i == 475249515 || i == 374648427;
    }

    static int zzx(int i) {
        switch (i) {
            case 131:
            case WsMessage.THREAD_WAIT_LIST_JOIN_CANCEL_REQUEST /* 136 */:
            case Constants.ERR_PUBLISH_STREAM_NOT_FOUND /* 155 */:
            case 159:
            case 176:
            case 179:
            case 186:
            case ThirdPartyAccountBaseFragment.API_ERR_EMAIL_TAKEN /* 215 */:
            case 231:
            case 241:
            case ThirdPartyAccountBaseFragment.API_ERR_EMAIL_NO_PASSWORD /* 251 */:
            case 16980:
            case 17029:
            case 17143:
            case 18401:
            case 18408:
            case 20529:
            case 20530:
            case 21420:
            case 21432:
            case 21680:
            case 21682:
            case 21690:
            case 21930:
            case 21945:
            case 21946:
            case 21947:
            case 21948:
            case 21949:
            case 22186:
            case 22203:
            case 25188:
            case 2352003:
            case 2807729:
                return 2;
            case 134:
            case 17026:
            case 2274716:
                return 3;
            case 160:
            case 174:
            case 183:
            case 187:
            case 224:
            case 225:
            case 18407:
            case 19899:
            case 20532:
            case 20533:
            case 21936:
            case 21968:
            case 25152:
            case 28032:
            case 30320:
            case 290298740:
            case 357149030:
            case 374648427:
            case 408125543:
            case 440786851:
            case 475249515:
            case 524531317:
                return 1;
            case 161:
            case 163:
            case 16981:
            case 18402:
            case 21419:
            case 25506:
            case 30322:
                return 4;
            case 181:
            case 17545:
            case 21969:
            case 21970:
            case 21971:
            case 21972:
            case 21973:
            case 21974:
            case 21975:
            case 21976:
            case 21977:
            case 21978:
                return 5;
            default:
                return 0;
        }
    }

    @Override // com.google.android.gms.internal.ads.zznn
    public final void release() {
    }

    private zzod(int i) {
        this(new zzny(), 0);
    }

    private zzod(zzob zzobVar, int i) {
        this.zzans = -1L;
        this.zzanu = C.TIME_UNSET;
        this.zzbak = C.TIME_UNSET;
        this.zzack = C.TIME_UNSET;
        this.zzaoc = -1L;
        this.zzaod = -1L;
        this.zzaof = C.TIME_UNSET;
        this.zzazx = zzobVar;
        this.zzazx.zza(new zzof(this, null));
        this.zzazz = true;
        this.zzazr = new zzoi();
        this.zzazy = new SparseArray<>();
        this.zzbac = new zzst(4);
        this.zzbad = new zzst(ByteBuffer.allocate(4).putInt(-1).array());
        this.zzbae = new zzst(4);
        this.zzbaa = new zzst(zzsq.zzaqt);
        this.zzbab = new zzst(4);
        this.zzbaf = new zzst();
        this.zzbag = new zzst();
        this.zzbah = new zzst(8);
        this.zzbai = new zzst();
    }

    @Override // com.google.android.gms.internal.ads.zznn
    public final boolean zza(zzno zznoVar) throws InterruptedException, IOException {
        return new zzoh().zza(zznoVar);
    }

    @Override // com.google.android.gms.internal.ads.zznn
    public final void zza(zznp zznpVar) {
        this.zzbbf = zznpVar;
    }

    @Override // com.google.android.gms.internal.ads.zznn
    public final void zzd(long j, long j2) {
        this.zzaof = C.TIME_UNSET;
        this.zzbap = 0;
        this.zzazx.reset();
        this.zzazr.reset();
        zzij();
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x0039 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0005 A[SYNTHETIC] */
    @Override // com.google.android.gms.internal.ads.zznn
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int zza(com.google.android.gms.internal.ads.zzno r9, com.google.android.gms.internal.ads.zznt r10) throws java.lang.InterruptedException, java.io.IOException {
        /*
            r8 = this;
            r0 = 0
            r8.zzaoo = r0
            r1 = 1
            r2 = 1
        L5:
            if (r2 == 0) goto L3a
            boolean r3 = r8.zzaoo
            if (r3 != 0) goto L3a
            com.google.android.gms.internal.ads.zzob r2 = r8.zzazx
            boolean r2 = r2.zzb(r9)
            if (r2 == 0) goto L5
            long r3 = r9.getPosition()
            boolean r5 = r8.zzaob
            if (r5 == 0) goto L25
            r8.zzaod = r3
            long r3 = r8.zzaoc
            r10.zzahv = r3
            r8.zzaob = r0
        L23:
            r3 = 1
            goto L37
        L25:
            boolean r3 = r8.zzbam
            if (r3 == 0) goto L36
            long r3 = r8.zzaod
            r5 = -1
            int r7 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r7 == 0) goto L36
            r10.zzahv = r3
            r8.zzaod = r5
            goto L23
        L36:
            r3 = 0
        L37:
            if (r3 == 0) goto L5
            return r1
        L3a:
            if (r2 == 0) goto L3d
            return r0
        L3d:
            r9 = -1
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzod.zza(com.google.android.gms.internal.ads.zzno, com.google.android.gms.internal.ads.zznt):int");
    }

    final void zzb(int i, long j, long j2) throws zzlm {
        if (i == 160) {
            this.zzaop = false;
            return;
        }
        if (i == 174) {
            this.zzbal = new zzog(null);
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
            this.zzbal.zzaos = true;
            return;
        }
        if (i == 21968) {
            this.zzbal.zzbbn = true;
            return;
        }
        if (i != 25152) {
            if (i == 408125543) {
                long j3 = this.zzans;
                if (j3 != -1 && j3 != j) {
                    throw new zzlm("Multiple Segment elements not supported");
                }
                this.zzans = j;
                this.zzant = j2;
                return;
            }
            if (i == 475249515) {
                this.zzban = new zzsn();
                this.zzbao = new zzsn();
            } else if (i == 524531317 && !this.zzbam) {
                if (this.zzazz && this.zzaoc != -1) {
                    this.zzaob = true;
                } else {
                    this.zzbbf.zza(new zznv(this.zzack));
                    this.zzbam = true;
                }
            }
        }
    }

    final void zzy(int i) throws zzlm {
        zznu zznvVar;
        zzsn zzsnVar;
        zzsn zzsnVar2;
        int i2;
        if (i == 160) {
            if (this.zzbap != 2) {
                return;
            }
            if (!this.zzaop) {
                this.zzbax |= 1;
            }
            zza(this.zzazy.get(this.zzbav), this.zzbaq);
            this.zzbap = 0;
            return;
        }
        if (i == 174) {
            String str = this.zzbal.zzaor;
            if ((("V_VP8".equals(str) || "V_VP9".equals(str) || "V_MPEG2".equals(str) || "V_MPEG4/ISO/SP".equals(str) || "V_MPEG4/ISO/ASP".equals(str) || "V_MPEG4/ISO/AP".equals(str) || "V_MPEG4/ISO/AVC".equals(str) || "V_MPEGH/ISO/HEVC".equals(str) || "V_MS/VFW/FOURCC".equals(str) || "V_THEORA".equals(str) || "A_OPUS".equals(str) || "A_VORBIS".equals(str) || "A_AAC".equals(str) || "A_MPEG/L2".equals(str) || "A_MPEG/L3".equals(str) || "A_AC3".equals(str) || "A_EAC3".equals(str) || "A_TRUEHD".equals(str) || "A_DTS".equals(str) || "A_DTS/EXPRESS".equals(str) || "A_DTS/LOSSLESS".equals(str) || "A_FLAC".equals(str) || "A_MS/ACM".equals(str) || "A_PCM/INT/LIT".equals(str) || "S_TEXT/UTF8".equals(str) || "S_VOBSUB".equals(str) || "S_HDMV/PGS".equals(str) || "S_DVBSUB".equals(str)) ? 1 : 0) != 0) {
                zzog zzogVar = this.zzbal;
                zzogVar.zza(this.zzbbf, zzogVar.number);
                SparseArray<zzog> sparseArray = this.zzazy;
                zzog zzogVar2 = this.zzbal;
                sparseArray.put(zzogVar2.number, zzogVar2);
            }
            this.zzbal = null;
            return;
        }
        if (i == 19899) {
            int i3 = this.zzanz;
            if (i3 != -1) {
                long j = this.zzaoa;
                if (j != -1) {
                    if (i3 == 475249515) {
                        this.zzaoc = j;
                        return;
                    }
                    return;
                }
            }
            throw new zzlm("Mandatory element SeekID or SeekPosition not found");
        }
        if (i == 25152) {
            zzog zzogVar3 = this.zzbal;
            if (zzogVar3.zzaos) {
                zznx zznxVar = zzogVar3.zzbbj;
                if (zznxVar == null) {
                    throw new zzlm("Encrypted Track found but ContentEncKeyID was not found");
                }
                zzogVar3.zzatr = new zzne(new zzne.zza(zzkt.zzarg, MimeTypes.VIDEO_WEBM, zznxVar.zzazq));
                return;
            }
            return;
        }
        if (i == 28032) {
            zzog zzogVar4 = this.zzbal;
            if (zzogVar4.zzaos && zzogVar4.zzbbi != null) {
                throw new zzlm("Combining encryption and compression is not supported");
            }
            return;
        }
        if (i == 357149030) {
            if (this.zzanu == C.TIME_UNSET) {
                this.zzanu = 1000000L;
            }
            long j2 = this.zzbak;
            if (j2 != C.TIME_UNSET) {
                this.zzack = zzdw(j2);
                return;
            }
            return;
        }
        if (i != 374648427) {
            if (i == 475249515 && !this.zzbam) {
                zznp zznpVar = this.zzbbf;
                if (this.zzans == -1 || this.zzack == C.TIME_UNSET || (zzsnVar = this.zzban) == null || zzsnVar.size() == 0 || (zzsnVar2 = this.zzbao) == null || zzsnVar2.size() != this.zzban.size()) {
                    this.zzban = null;
                    this.zzbao = null;
                    zznvVar = new zznv(this.zzack);
                } else {
                    int size = this.zzban.size();
                    int[] iArr = new int[size];
                    long[] jArr = new long[size];
                    long[] jArr2 = new long[size];
                    long[] jArr3 = new long[size];
                    for (int i4 = 0; i4 < size; i4++) {
                        jArr3[i4] = this.zzban.get(i4);
                        jArr[i4] = this.zzans + this.zzbao.get(i4);
                    }
                    while (true) {
                        i2 = size - 1;
                        if (i >= i2) {
                            break;
                        }
                        int i5 = i + 1;
                        iArr[i] = (int) (jArr[i5] - jArr[i]);
                        jArr2[i] = jArr3[i5] - jArr3[i];
                        i = i5;
                    }
                    iArr[i2] = (int) ((this.zzans + this.zzant) - jArr[i2]);
                    jArr2[i2] = this.zzack - jArr3[i2];
                    this.zzban = null;
                    this.zzbao = null;
                    zznvVar = new zznl(iArr, jArr, jArr2, jArr3);
                }
                zznpVar.zza(zznvVar);
                this.zzbam = true;
                return;
            }
            return;
        }
        if (this.zzazy.size() == 0) {
            throw new zzlm("No valid tracks were found");
        }
        this.zzbbf.zzfi();
    }

    final void zzc(int i, long j) throws zzlm {
        if (i == 20529) {
            if (j == 0) {
                return;
            }
            StringBuilder sb = new StringBuilder(55);
            sb.append("ContentEncodingOrder ");
            sb.append(j);
            sb.append(" not supported");
            throw new zzlm(sb.toString());
        }
        if (i == 20530) {
            if (j == 1) {
                return;
            }
            StringBuilder sb2 = new StringBuilder(55);
            sb2.append("ContentEncodingScope ");
            sb2.append(j);
            sb2.append(" not supported");
            throw new zzlm(sb2.toString());
        }
        switch (i) {
            case 131:
                this.zzbal.type = (int) j;
                return;
            case WsMessage.THREAD_WAIT_LIST_JOIN_CANCEL_REQUEST /* 136 */:
                this.zzbal.zzbce = j == 1;
                return;
            case Constants.ERR_PUBLISH_STREAM_NOT_FOUND /* 155 */:
                this.zzbar = zzdw(j);
                return;
            case 159:
                this.zzbal.zzafu = (int) j;
                return;
            case 176:
                this.zzbal.width = (int) j;
                return;
            case 179:
                this.zzban.add(zzdw(j));
                return;
            case 186:
                this.zzbal.height = (int) j;
                return;
            case ThirdPartyAccountBaseFragment.API_ERR_EMAIL_TAKEN /* 215 */:
                this.zzbal.number = (int) j;
                return;
            case 231:
                this.zzaof = zzdw(j);
                return;
            case 241:
                if (this.zzaoi) {
                    return;
                }
                this.zzbao.add(j);
                this.zzaoi = true;
                return;
            case ThirdPartyAccountBaseFragment.API_ERR_EMAIL_NO_PASSWORD /* 251 */:
                this.zzaop = true;
                return;
            case 16980:
                if (j == 3) {
                    return;
                }
                StringBuilder sb3 = new StringBuilder(50);
                sb3.append("ContentCompAlgo ");
                sb3.append(j);
                sb3.append(" not supported");
                throw new zzlm(sb3.toString());
            case 17029:
                if (j < 1 || j > 2) {
                    StringBuilder sb4 = new StringBuilder(53);
                    sb4.append("DocTypeReadVersion ");
                    sb4.append(j);
                    sb4.append(" not supported");
                    throw new zzlm(sb4.toString());
                }
                return;
            case 17143:
                if (j == 1) {
                    return;
                }
                StringBuilder sb5 = new StringBuilder(50);
                sb5.append("EBMLReadVersion ");
                sb5.append(j);
                sb5.append(" not supported");
                throw new zzlm(sb5.toString());
            case 18401:
                if (j == 5) {
                    return;
                }
                StringBuilder sb6 = new StringBuilder(49);
                sb6.append("ContentEncAlgo ");
                sb6.append(j);
                sb6.append(" not supported");
                throw new zzlm(sb6.toString());
            case 18408:
                if (j == 1) {
                    return;
                }
                StringBuilder sb7 = new StringBuilder(56);
                sb7.append("AESSettingsCipherMode ");
                sb7.append(j);
                sb7.append(" not supported");
                throw new zzlm(sb7.toString());
            case 21420:
                this.zzaoa = j + this.zzans;
                return;
            case 21432:
                int i2 = (int) j;
                if (i2 == 0) {
                    this.zzbal.zzatu = 0;
                    return;
                }
                if (i2 == 1) {
                    this.zzbal.zzatu = 2;
                    return;
                } else if (i2 == 3) {
                    this.zzbal.zzatu = 1;
                    return;
                } else {
                    if (i2 != 15) {
                        return;
                    }
                    this.zzbal.zzatu = 3;
                    return;
                }
            case 21680:
                this.zzbal.zzbbk = (int) j;
                return;
            case 21682:
                this.zzbal.zzbbm = (int) j;
                return;
            case 21690:
                this.zzbal.zzbbl = (int) j;
                return;
            case 21930:
                this.zzbal.zzbcf = j == 1;
                return;
            case 22186:
                this.zzbal.zzaow = j;
                return;
            case 22203:
                this.zzbal.zzaox = j;
                return;
            case 25188:
                this.zzbal.zzbcd = (int) j;
                return;
            case 2352003:
                this.zzbal.zzbbh = (int) j;
                return;
            case 2807729:
                this.zzanu = j;
                return;
            default:
                switch (i) {
                    case 21945:
                        int i3 = (int) j;
                        if (i3 == 1) {
                            this.zzbal.zzbbq = 2;
                            return;
                        } else {
                            if (i3 != 2) {
                                return;
                            }
                            this.zzbal.zzbbq = 1;
                            return;
                        }
                    case 21946:
                        int i4 = (int) j;
                        if (i4 != 1) {
                            if (i4 == 16) {
                                this.zzbal.zzbbp = 6;
                                return;
                            } else if (i4 == 18) {
                                this.zzbal.zzbbp = 7;
                                return;
                            } else if (i4 != 6 && i4 != 7) {
                                return;
                            }
                        }
                        this.zzbal.zzbbp = 3;
                        return;
                    case 21947:
                        zzog zzogVar = this.zzbal;
                        zzogVar.zzbbn = true;
                        int i5 = (int) j;
                        if (i5 == 1) {
                            zzogVar.zzbbo = 1;
                            return;
                        }
                        if (i5 == 9) {
                            zzogVar.zzbbo = 6;
                            return;
                        } else {
                            if (i5 == 4 || i5 == 5 || i5 == 6 || i5 == 7) {
                                this.zzbal.zzbbo = 2;
                                return;
                            }
                            return;
                        }
                    case 21948:
                        this.zzbal.zzbbr = (int) j;
                        return;
                    case 21949:
                        this.zzbal.zzbbs = (int) j;
                        return;
                    default:
                        return;
                }
        }
    }

    final void zza(int i, double d) {
        if (i == 181) {
            this.zzbal.zzafv = (int) d;
            return;
        }
        if (i == 17545) {
            this.zzbak = (long) d;
            return;
        }
        switch (i) {
            case 21969:
                this.zzbal.zzbbt = (float) d;
                break;
            case 21970:
                this.zzbal.zzbbu = (float) d;
                break;
            case 21971:
                this.zzbal.zzbbv = (float) d;
                break;
            case 21972:
                this.zzbal.zzbbw = (float) d;
                break;
            case 21973:
                this.zzbal.zzbbx = (float) d;
                break;
            case 21974:
                this.zzbal.zzbby = (float) d;
                break;
            case 21975:
                this.zzbal.zzbbz = (float) d;
                break;
            case 21976:
                this.zzbal.zzbca = (float) d;
                break;
            case 21977:
                this.zzbal.zzbcb = (float) d;
                break;
            case 21978:
                this.zzbal.zzbcc = (float) d;
                break;
        }
    }

    final void zza(int i, String str) throws zzlm {
        if (i == 134) {
            this.zzbal.zzaor = str;
            return;
        }
        if (i != 17026) {
            if (i != 2274716) {
                return;
            }
            this.zzbal.zzauc = str;
        } else {
            if ("webm".equals(str) || "matroska".equals(str)) {
                return;
            }
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 22);
            sb.append("DocType ");
            sb.append(str);
            sb.append(" not supported");
            throw new zzlm(sb.toString());
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:80:0x01fd, code lost:
    
        throw new com.google.android.gms.internal.ads.zzlm("EBML lacing sample size out of range.");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    final void zza(int r20, int r21, com.google.android.gms.internal.ads.zzno r22) throws java.lang.InterruptedException, java.io.IOException {
        /*
            Method dump skipped, instructions count: 692
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzod.zza(int, int, com.google.android.gms.internal.ads.zzno):void");
    }

    private final void zza(zzog zzogVar, long j) {
        byte[] bArrZzbh;
        if ("S_TEXT/UTF8".equals(zzogVar.zzaor)) {
            byte[] bArr = this.zzbag.data;
            long j2 = this.zzbar;
            if (j2 == C.TIME_UNSET) {
                bArrZzbh = zzazv;
            } else {
                int i = (int) (j2 / 3600000000L);
                long j3 = j2 - (i * 3600000000L);
                int i2 = (int) (j3 / 60000000);
                long j4 = j3 - (60000000 * i2);
                bArrZzbh = zzsy.zzbh(String.format(Locale.US, "%02d:%02d:%02d,%03d", Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf((int) (j4 / 1000000)), Integer.valueOf((int) ((j4 - (1000000 * r4)) / 1000))));
            }
            System.arraycopy(bArrZzbh, 0, bArr, 19, 12);
            zznw zznwVar = zzogVar.zzbcg;
            zzst zzstVar = this.zzbag;
            zznwVar.zza(zzstVar, zzstVar.limit());
            this.zzamr += this.zzbag.limit();
        }
        zzogVar.zzbcg.zza(j, this.zzbax, this.zzamr, 0, zzogVar.zzbbj);
        this.zzaoo = true;
        zzij();
    }

    private final void zzij() {
        this.zzbay = 0;
        this.zzamr = 0;
        this.zzams = 0;
        this.zzbaz = false;
        this.zzbba = false;
        this.zzbbc = false;
        this.zzbbe = 0;
        this.zzbbd = (byte) 0;
        this.zzbbb = false;
        this.zzbaf.reset();
    }

    private final void zzb(zzno zznoVar, int i) throws InterruptedException, IOException {
        if (this.zzbac.limit() >= i) {
            return;
        }
        if (this.zzbac.capacity() < i) {
            zzst zzstVar = this.zzbac;
            byte[] bArr = zzstVar.data;
            zzstVar.zzb(Arrays.copyOf(bArr, Math.max(bArr.length << 1, i)), this.zzbac.limit());
        }
        zzst zzstVar2 = this.zzbac;
        zznoVar.readFully(zzstVar2.data, zzstVar2.limit(), i - this.zzbac.limit());
        this.zzbac.zzbo(i);
    }

    private final void zza(zzno zznoVar, zzog zzogVar, int i) throws InterruptedException, IOException {
        int i2;
        if ("S_TEXT/UTF8".equals(zzogVar.zzaor)) {
            int length = zzazu.length + i;
            if (this.zzbag.capacity() < length) {
                this.zzbag.data = Arrays.copyOf(zzazu, length + i);
            }
            zznoVar.readFully(this.zzbag.data, zzazu.length, i);
            this.zzbag.setPosition(0);
            this.zzbag.zzbo(length);
            return;
        }
        zznw zznwVar = zzogVar.zzbcg;
        if (!this.zzbaz) {
            if (zzogVar.zzaos) {
                this.zzbax &= -1073741825;
                if (!this.zzbba) {
                    zznoVar.readFully(this.zzbac.data, 0, 1);
                    this.zzbay++;
                    byte[] bArr = this.zzbac.data;
                    if ((bArr[0] & 128) == 128) {
                        throw new zzlm("Extension bit is set in signal byte");
                    }
                    this.zzbbd = bArr[0];
                    this.zzbba = true;
                }
                byte b = this.zzbbd;
                if ((b & 1) == 1) {
                    boolean z = (b & 2) == 2;
                    this.zzbax |= 1073741824;
                    if (!this.zzbbb) {
                        zznoVar.readFully(this.zzbah.data, 0, 8);
                        this.zzbay += 8;
                        this.zzbbb = true;
                        this.zzbac.data[0] = (byte) ((z ? 128 : 0) | 8);
                        this.zzbac.setPosition(0);
                        zznwVar.zza(this.zzbac, 1);
                        this.zzamr++;
                        this.zzbah.setPosition(0);
                        zznwVar.zza(this.zzbah, 8);
                        this.zzamr += 8;
                    }
                    if (z) {
                        if (!this.zzbbc) {
                            zznoVar.readFully(this.zzbac.data, 0, 1);
                            this.zzbay++;
                            this.zzbac.setPosition(0);
                            this.zzbbe = this.zzbac.readUnsignedByte();
                            this.zzbbc = true;
                        }
                        int i3 = this.zzbbe << 2;
                        this.zzbac.reset(i3);
                        zznoVar.readFully(this.zzbac.data, 0, i3);
                        this.zzbay += i3;
                        short s = (short) ((this.zzbbe / 2) + 1);
                        int i4 = (s * 6) + 2;
                        ByteBuffer byteBuffer = this.zzbaj;
                        if (byteBuffer == null || byteBuffer.capacity() < i4) {
                            this.zzbaj = ByteBuffer.allocate(i4);
                        }
                        this.zzbaj.position(0);
                        this.zzbaj.putShort(s);
                        int i5 = 0;
                        int i6 = 0;
                        while (true) {
                            i2 = this.zzbbe;
                            if (i5 >= i2) {
                                break;
                            }
                            int iZzgg = this.zzbac.zzgg();
                            if (i5 % 2 == 0) {
                                this.zzbaj.putShort((short) (iZzgg - i6));
                            } else {
                                this.zzbaj.putInt(iZzgg - i6);
                            }
                            i5++;
                            i6 = iZzgg;
                        }
                        int i7 = (i - this.zzbay) - i6;
                        if (i2 % 2 == 1) {
                            this.zzbaj.putInt(i7);
                        } else {
                            this.zzbaj.putShort((short) i7);
                            this.zzbaj.putInt(0);
                        }
                        this.zzbai.zzb(this.zzbaj.array(), i4);
                        zznwVar.zza(this.zzbai, i4);
                        this.zzamr += i4;
                    }
                }
            } else {
                byte[] bArr2 = zzogVar.zzbbi;
                if (bArr2 != null) {
                    this.zzbaf.zzb(bArr2, bArr2.length);
                }
            }
            this.zzbaz = true;
        }
        int iLimit = i + this.zzbaf.limit();
        if (!"V_MPEG4/ISO/AVC".equals(zzogVar.zzaor) && !"V_MPEGH/ISO/HEVC".equals(zzogVar.zzaor)) {
            while (true) {
                int i8 = this.zzbay;
                if (i8 >= iLimit) {
                    break;
                } else {
                    zza(zznoVar, zznwVar, iLimit - i8);
                }
            }
        } else {
            byte[] bArr3 = this.zzbab.data;
            bArr3[0] = 0;
            bArr3[1] = 0;
            bArr3[2] = 0;
            int i9 = zzogVar.zzamf;
            int i10 = 4 - i9;
            while (this.zzbay < iLimit) {
                int i11 = this.zzams;
                if (i11 == 0) {
                    int iMin = Math.min(i9, this.zzbaf.zzjz());
                    zznoVar.readFully(bArr3, i10 + iMin, i9 - iMin);
                    if (iMin > 0) {
                        this.zzbaf.zzb(bArr3, i10, iMin);
                    }
                    this.zzbay += i9;
                    this.zzbab.setPosition(0);
                    this.zzams = this.zzbab.zzgg();
                    this.zzbaa.setPosition(0);
                    zznwVar.zza(this.zzbaa, 4);
                    this.zzamr += 4;
                } else {
                    this.zzams = i11 - zza(zznoVar, zznwVar, i11);
                }
            }
        }
        if ("A_VORBIS".equals(zzogVar.zzaor)) {
            this.zzbad.setPosition(0);
            zznwVar.zza(this.zzbad, 4);
            this.zzamr += 4;
        }
    }

    private final int zza(zzno zznoVar, zznw zznwVar, int i) throws InterruptedException, IOException {
        int iZza;
        int iZzjz = this.zzbaf.zzjz();
        if (iZzjz > 0) {
            iZza = Math.min(i, iZzjz);
            zznwVar.zza(this.zzbaf, iZza);
        } else {
            iZza = zznwVar.zza(zznoVar, i, false);
        }
        this.zzbay += iZza;
        this.zzamr += iZza;
        return iZza;
    }

    private final long zzdw(long j) throws zzlm {
        long j2 = this.zzanu;
        if (j2 == C.TIME_UNSET) {
            throw new zzlm("Can't scale timecode prior to timecodeScale being set.");
        }
        return zzsy.zza(j, j2, 1000L);
    }

    private static int[] zza(int[] iArr, int i) {
        if (iArr == null) {
            return new int[i];
        }
        return iArr.length >= i ? iArr : new int[Math.max(iArr.length << 1, i)];
    }
}
