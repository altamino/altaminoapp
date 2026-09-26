package com.google.android.exoplayer2.extractor.ts;

import android.util.SparseArray;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.a2;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes7.dex */
public final class j implements i0.c {
    private static final int DESCRIPTOR_TAG_CAPTION_SERVICE = 134;
    public static final int FLAG_ALLOW_NON_IDR_KEYFRAMES = 1;
    public static final int FLAG_DETECT_ACCESS_UNITS = 8;
    public static final int FLAG_ENABLE_HDMV_DTS_AUDIO_STREAMS = 64;
    public static final int FLAG_IGNORE_AAC_STREAM = 2;
    public static final int FLAG_IGNORE_H264_STREAM = 4;
    public static final int FLAG_IGNORE_SPLICE_INFO_STREAM = 16;
    public static final int FLAG_OVERRIDE_CAPTION_DESCRIPTORS = 32;
    private final List<a2> closedCaptionFormats;
    private final int flags;

    public j() {
        this(0);
    }

    private boolean e(int i10) {
        return (i10 & this.flags) != 0;
    }

    @Override // com.google.android.exoplayer2.extractor.ts.i0.c
    @Nullable
    public i0 a(int i10, i0.b bVar) {
        if (i10 != 2) {
            if (i10 == 3 || i10 == 4) {
                return new w(new t(bVar.language));
            }
            if (i10 == 21) {
                return new w(new r());
            }
            if (i10 == 27) {
                if (e(4)) {
                    return null;
                }
                return new w(new p(b(bVar), e(1), e(8)));
            }
            if (i10 == 36) {
                return new w(new q(b(bVar)));
            }
            if (i10 == 89) {
                return new w(new l(bVar.dvbSubtitleInfos));
            }
            if (i10 != 138) {
                if (i10 == 172) {
                    return new w(new f(bVar.language));
                }
                if (i10 == 257) {
                    return new c0(new v("application/vnd.dvb.ait"));
                }
                if (i10 == 134) {
                    if (e(16)) {
                        return null;
                    }
                    return new c0(new v("application/x-scte35"));
                }
                if (i10 != 135) {
                    switch (i10) {
                        case 15:
                            if (e(2)) {
                                return null;
                            }
                            return new w(new i(false, bVar.language));
                        case 16:
                            return new w(new o(c(bVar)));
                        case 17:
                            if (e(2)) {
                                return null;
                            }
                            return new w(new s(bVar.language));
                        default:
                            switch (i10) {
                                case 128:
                                    break;
                                case 129:
                                    break;
                                case 130:
                                    if (!e(64)) {
                                        return null;
                                    }
                                    break;
                                default:
                                    return null;
                            }
                            break;
                    }
                }
                return new w(new c(bVar.language));
            }
            return new w(new k(bVar.language));
        }
        return new w(new n(c(bVar)));
    }

    public j(int i10) {
        this(i10, com.google.common.collect.a0.x());
    }

    private d0 b(i0.b bVar) {
        return new d0(d(bVar));
    }

    private k0 c(i0.b bVar) {
        return new k0(d(bVar));
    }

    private List<a2> d(i0.b bVar) {
        String str;
        int i10;
        if (e(32)) {
            return this.closedCaptionFormats;
        }
        com.google.android.exoplayer2.util.c0 c0Var = new com.google.android.exoplayer2.util.c0(bVar.descriptorBytes);
        List<a2> arrayList = this.closedCaptionFormats;
        while (c0Var.a() > 0) {
            int iD = c0Var.D();
            int iE = c0Var.e() + c0Var.D();
            if (iD == 134) {
                arrayList = new ArrayList<>();
                int iD2 = c0Var.D() & 31;
                for (int i11 = 0; i11 < iD2; i11++) {
                    String strA = c0Var.A(3);
                    int iD3 = c0Var.D();
                    boolean z6 = (iD3 & 128) != 0;
                    if (z6) {
                        i10 = iD3 & 63;
                        str = "application/cea-708";
                    } else {
                        str = "application/cea-608";
                        i10 = 1;
                    }
                    byte bD = (byte) c0Var.D();
                    c0Var.Q(1);
                    arrayList.add(new a2.b().e0(str).V(strA).F(i10).T(z6 ? com.google.android.exoplayer2.util.e.b((bD & 64) != 0) : null).E());
                }
            }
            c0Var.P(iE);
        }
        return arrayList;
    }

    @Override // com.google.android.exoplayer2.extractor.ts.i0.c
    public SparseArray<i0> createInitialPayloadReaders() {
        return new SparseArray<>();
    }

    public j(int i10, List<a2> list) {
        this.flags = i10;
        this.closedCaptionFormats = list;
    }
}
