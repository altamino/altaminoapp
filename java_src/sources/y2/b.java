package y2;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.util.SparseArray;
import androidx.annotation.Nullable;
import androidx.core.view.ViewCompat;
import com.google.android.exoplayer2.util.b0;
import com.google.android.exoplayer2.util.o0;
import com.google.android.exoplayer2.util.t;
import com.narvii.util.ws.WsMessage;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.apache.commons.compress.archivers.tar.TarConstants;

/* JADX INFO: loaded from: classes6.dex */
final class b {
    private static final int DATA_TYPE_24_TABLE_DATA = 32;
    private static final int DATA_TYPE_28_TABLE_DATA = 33;
    private static final int DATA_TYPE_2BP_CODE_STRING = 16;
    private static final int DATA_TYPE_48_TABLE_DATA = 34;
    private static final int DATA_TYPE_4BP_CODE_STRING = 17;
    private static final int DATA_TYPE_8BP_CODE_STRING = 18;
    private static final int DATA_TYPE_END_LINE = 240;
    private static final int OBJECT_CODING_PIXELS = 0;
    private static final int OBJECT_CODING_STRING = 1;
    private static final int PAGE_STATE_NORMAL = 0;
    private static final int REGION_DEPTH_4_BIT = 2;
    private static final int REGION_DEPTH_8_BIT = 3;
    private static final int SEGMENT_TYPE_CLUT_DEFINITION = 18;
    private static final int SEGMENT_TYPE_DISPLAY_DEFINITION = 20;
    private static final int SEGMENT_TYPE_OBJECT_DATA = 19;
    private static final int SEGMENT_TYPE_PAGE_COMPOSITION = 16;
    private static final int SEGMENT_TYPE_REGION_COMPOSITION = 17;
    private static final String TAG = "DvbParser";
    private static final byte[] defaultMap2To4 = {0, 7, 8, com.google.common.base.c.SI};
    private static final byte[] defaultMap2To8 = {0, 119, -120, -1};
    private static final byte[] defaultMap4To8 = {0, 17, 34, TarConstants.LF_CHR, 68, 85, 102, 119, -120, -103, -86, -69, -52, -35, -18, -1};
    private Bitmap bitmap;
    private final Canvas canvas;
    private final a defaultClutDefinition;
    private final C0506b defaultDisplayDefinition;
    private final Paint defaultPaint;
    private final Paint fillRegionPaint;
    private final h subtitleService;

    private static final class f {
        public final int clutId;
        public final int depth;
        public final boolean fillFlag;
        public final int height;
        public final int id;
        public final int levelOfCompatibility;
        public final int pixelCode2Bit;
        public final int pixelCode4Bit;
        public final int pixelCode8Bit;
        public final SparseArray<g> regionObjects;
        public final int width;

        public void a(f fVar) {
            SparseArray<g> sparseArray = fVar.regionObjects;
            for (int i10 = 0; i10 < sparseArray.size(); i10++) {
                this.regionObjects.put(sparseArray.keyAt(i10), sparseArray.valueAt(i10));
            }
        }

        public f(int i10, boolean z6, int i11, int i12, int i13, int i14, int i15, int i16, int i17, int i18, SparseArray<g> sparseArray) {
            this.id = i10;
            this.fillFlag = z6;
            this.width = i11;
            this.height = i12;
            this.levelOfCompatibility = i13;
            this.depth = i14;
            this.clutId = i15;
            this.pixelCode8Bit = i16;
            this.pixelCode4Bit = i17;
            this.pixelCode2Bit = i18;
            this.regionObjects = sparseArray;
        }
    }

    private static final class h {
        public final int ancillaryPageId;

        @Nullable
        public C0506b displayDefinition;

        @Nullable
        public d pageComposition;
        public final int subtitlePageId;
        public final SparseArray<f> regions = new SparseArray<>();
        public final SparseArray<a> cluts = new SparseArray<>();
        public final SparseArray<c> objects = new SparseArray<>();
        public final SparseArray<a> ancillaryCluts = new SparseArray<>();
        public final SparseArray<c> ancillaryObjects = new SparseArray<>();

        public void a() {
            this.regions.clear();
            this.cluts.clear();
            this.objects.clear();
            this.ancillaryCluts.clear();
            this.ancillaryObjects.clear();
            this.displayDefinition = null;
            this.pageComposition = null;
        }

        public h(int i10, int i11) {
            this.subtitlePageId = i10;
            this.ancillaryPageId = i11;
        }
    }

    private static int[] c() {
        return new int[]{0, -1, ViewCompat.MEASURED_STATE_MASK, -8421505};
    }

    private static int f(int i10, int i11, int i12, int i13) {
        return (i10 << 24) | (i11 << 16) | (i12 << 8) | i13;
    }

    private static int g(b0 b0Var, int[] iArr, @Nullable byte[] bArr, int i10, int i11, @Nullable Paint paint, Canvas canvas) {
        int i12;
        int iH;
        int iH2;
        int i13 = i10;
        boolean z6 = false;
        while (true) {
            int iH3 = b0Var.h(2);
            if (iH3 != 0) {
                z6 = z6;
                i12 = 1;
            } else {
                if (b0Var.g()) {
                    iH = b0Var.h(3) + 3;
                    iH2 = b0Var.h(2);
                } else {
                    if (b0Var.g()) {
                        i12 = 1;
                    } else {
                        int iH4 = b0Var.h(2);
                        if (iH4 == 0) {
                            z6 = true;
                        } else if (iH4 == 1) {
                            i12 = 2;
                        } else if (iH4 == 2) {
                            iH = b0Var.h(4) + 12;
                            iH2 = b0Var.h(2);
                        } else if (iH4 != 3) {
                            z6 = z6;
                        } else {
                            iH = b0Var.h(8) + 29;
                            iH2 = b0Var.h(2);
                        }
                        iH3 = 0;
                        i12 = 0;
                    }
                    iH3 = 0;
                }
                z6 = z6;
                i12 = iH;
                iH3 = iH2;
            }
            if (i12 != 0 && paint != null) {
                if (bArr != null) {
                    iH3 = bArr[iH3];
                }
                paint.setColor(iArr[iH3]);
                canvas.drawRect(i13, i11, i13 + i12, i11 + 1, paint);
            }
            i13 += i12;
            if (z6) {
                return i13;
            }
            z6 = z6;
        }
    }

    private static int h(b0 b0Var, int[] iArr, @Nullable byte[] bArr, int i10, int i11, @Nullable Paint paint, Canvas canvas) {
        int i12;
        int iH;
        int iH2;
        int i13 = i10;
        boolean z6 = false;
        while (true) {
            int iH3 = b0Var.h(4);
            if (iH3 != 0) {
                z6 = z6;
                i12 = 1;
            } else if (b0Var.g()) {
                if (b0Var.g()) {
                    int iH4 = b0Var.h(2);
                    if (iH4 == 0) {
                        i12 = 1;
                    } else if (iH4 == 1) {
                        i12 = 2;
                    } else if (iH4 == 2) {
                        iH = b0Var.h(4) + 9;
                        iH2 = b0Var.h(4);
                    } else if (iH4 != 3) {
                        z6 = z6;
                        iH3 = 0;
                        i12 = 0;
                    } else {
                        iH = b0Var.h(8) + 25;
                        iH2 = b0Var.h(4);
                    }
                    iH3 = 0;
                } else {
                    iH = b0Var.h(2) + 4;
                    iH2 = b0Var.h(4);
                }
                z6 = z6;
                i12 = iH;
                iH3 = iH2;
            } else {
                int iH5 = b0Var.h(3);
                if (iH5 != 0) {
                    i12 = iH5 + 2;
                    iH3 = 0;
                } else {
                    z6 = true;
                    iH3 = 0;
                    i12 = 0;
                }
            }
            if (i12 != 0 && paint != null) {
                if (bArr != null) {
                    iH3 = bArr[iH3];
                }
                paint.setColor(iArr[iH3]);
                canvas.drawRect(i13, i11, i13 + i12, i11 + 1, paint);
            }
            i13 += i12;
            if (z6) {
                return i13;
            }
            z6 = z6;
        }
    }

    private static int i(b0 b0Var, int[] iArr, @Nullable byte[] bArr, int i10, int i11, @Nullable Paint paint, Canvas canvas) {
        boolean z6;
        int iH;
        int i12 = i10;
        boolean z10 = false;
        while (true) {
            int iH2 = b0Var.h(8);
            if (iH2 != 0) {
                z6 = z10;
                iH = 1;
            } else if (b0Var.g()) {
                z6 = z10;
                iH = b0Var.h(7);
                iH2 = b0Var.h(8);
            } else {
                int iH3 = b0Var.h(7);
                if (iH3 != 0) {
                    z6 = z10;
                    iH = iH3;
                    iH2 = 0;
                } else {
                    z6 = true;
                    iH2 = 0;
                    iH = 0;
                }
            }
            if (iH != 0 && paint != null) {
                if (bArr != null) {
                    iH2 = bArr[iH2];
                }
                paint.setColor(iArr[iH2]);
                canvas.drawRect(i12, i11, i12 + iH, i11 + 1, paint);
            }
            i12 += iH;
            if (z6) {
                return i12;
            }
            z10 = z6;
        }
    }

    private static void k(c cVar, a aVar, int i10, int i11, int i12, @Nullable Paint paint, Canvas canvas) {
        int[] iArr;
        if (i10 == 3) {
            iArr = aVar.clutEntries8Bit;
        } else {
            iArr = i10 == 2 ? aVar.clutEntries4Bit : aVar.clutEntries2Bit;
        }
        int[] iArr2 = iArr;
        j(cVar.topFieldData, iArr2, i10, i11, i12, paint, canvas);
        j(cVar.bottomFieldData, iArr2, i10, i11, i12 + 1, paint, canvas);
    }

    private static C0506b m(b0 b0Var) {
        int i10;
        int i11;
        int i12;
        int iH;
        b0Var.r(4);
        boolean zG = b0Var.g();
        b0Var.r(3);
        int iH2 = b0Var.h(16);
        int iH3 = b0Var.h(16);
        if (zG) {
            int iH4 = b0Var.h(16);
            int iH5 = b0Var.h(16);
            int iH6 = b0Var.h(16);
            iH = b0Var.h(16);
            i12 = iH5;
            i11 = iH6;
            i10 = iH4;
        } else {
            i10 = 0;
            i11 = 0;
            i12 = iH2;
            iH = iH3;
        }
        return new C0506b(iH2, iH3, i10, i12, i11, iH);
    }

    private static final class a {
        public final int[] clutEntries2Bit;
        public final int[] clutEntries4Bit;
        public final int[] clutEntries8Bit;
        public final int id;

        public a(int i10, int[] iArr, int[] iArr2, int[] iArr3) {
            this.id = i10;
            this.clutEntries2Bit = iArr;
            this.clutEntries4Bit = iArr2;
            this.clutEntries8Bit = iArr3;
        }
    }

    /* JADX INFO: renamed from: y2.b$b, reason: collision with other inner class name */
    private static final class C0506b {
        public final int height;
        public final int horizontalPositionMaximum;
        public final int horizontalPositionMinimum;
        public final int verticalPositionMaximum;
        public final int verticalPositionMinimum;
        public final int width;

        public C0506b(int i10, int i11, int i12, int i13, int i14, int i15) {
            this.width = i10;
            this.height = i11;
            this.horizontalPositionMinimum = i12;
            this.horizontalPositionMaximum = i13;
            this.verticalPositionMinimum = i14;
            this.verticalPositionMaximum = i15;
        }
    }

    private static final class c {
        public final byte[] bottomFieldData;
        public final int id;
        public final boolean nonModifyingColorFlag;
        public final byte[] topFieldData;

        public c(int i10, boolean z6, byte[] bArr, byte[] bArr2) {
            this.id = i10;
            this.nonModifyingColorFlag = z6;
            this.topFieldData = bArr;
            this.bottomFieldData = bArr2;
        }
    }

    private static final class d {
        public final SparseArray<e> regions;
        public final int state;
        public final int timeOutSecs;
        public final int version;

        public d(int i10, int i11, int i12, SparseArray<e> sparseArray) {
            this.timeOutSecs = i10;
            this.version = i11;
            this.state = i12;
            this.regions = sparseArray;
        }
    }

    private static final class e {
        public final int horizontalAddress;
        public final int verticalAddress;

        public e(int i10, int i11) {
            this.horizontalAddress = i10;
            this.verticalAddress = i11;
        }
    }

    private static final class g {
        public final int backgroundPixelCode;
        public final int foregroundPixelCode;
        public final int horizontalPosition;
        public final int provider;
        public final int type;
        public final int verticalPosition;

        public g(int i10, int i11, int i12, int i13, int i14, int i15) {
            this.type = i10;
            this.provider = i11;
            this.horizontalPosition = i12;
            this.verticalPosition = i13;
            this.foregroundPixelCode = i14;
            this.backgroundPixelCode = i15;
        }
    }

    private static byte[] a(int i10, int i11, b0 b0Var) {
        byte[] bArr = new byte[i10];
        for (int i12 = 0; i12 < i10; i12++) {
            bArr[i12] = (byte) b0Var.h(i11);
        }
        return bArr;
    }

    private static int[] d() {
        int[] iArr = new int[16];
        iArr[0] = 0;
        for (int i10 = 1; i10 < 16; i10++) {
            if (i10 < 8) {
                iArr[i10] = f(255, (i10 & 1) != 0 ? 255 : 0, (i10 & 2) != 0 ? 255 : 0, (i10 & 4) != 0 ? 255 : 0);
            } else {
                iArr[i10] = f(255, (i10 & 1) != 0 ? 127 : 0, (i10 & 2) != 0 ? 127 : 0, (i10 & 4) == 0 ? 0 : 127);
            }
        }
        return iArr;
    }

    private static int[] e() {
        int[] iArr = new int[256];
        iArr[0] = 0;
        for (int i10 = 0; i10 < 256; i10++) {
            if (i10 < 8) {
                iArr[i10] = f(63, (i10 & 1) != 0 ? 255 : 0, (i10 & 2) != 0 ? 255 : 0, (i10 & 4) == 0 ? 0 : 255);
            } else {
                int i11 = i10 & WsMessage.THREAD_WAIT_LIST_JOIN_CANCEL_REQUEST;
                if (i11 == 0) {
                    iArr[i10] = f(255, ((i10 & 1) != 0 ? 85 : 0) + ((i10 & 16) != 0 ? 170 : 0), ((i10 & 2) != 0 ? 85 : 0) + ((i10 & 32) != 0 ? 170 : 0), ((i10 & 4) == 0 ? 0 : 85) + ((i10 & 64) == 0 ? 0 : 170));
                } else if (i11 == 8) {
                    iArr[i10] = f(127, ((i10 & 1) != 0 ? 85 : 0) + ((i10 & 16) != 0 ? 170 : 0), ((i10 & 2) != 0 ? 85 : 0) + ((i10 & 32) != 0 ? 170 : 0), ((i10 & 4) == 0 ? 0 : 85) + ((i10 & 64) == 0 ? 0 : 170));
                } else if (i11 == 128) {
                    iArr[i10] = f(255, ((i10 & 1) != 0 ? 43 : 0) + 127 + ((i10 & 16) != 0 ? 85 : 0), ((i10 & 2) != 0 ? 43 : 0) + 127 + ((i10 & 32) != 0 ? 85 : 0), ((i10 & 4) == 0 ? 0 : 43) + 127 + ((i10 & 64) == 0 ? 0 : 85));
                } else if (i11 == 136) {
                    iArr[i10] = f(255, ((i10 & 1) != 0 ? 43 : 0) + ((i10 & 16) != 0 ? 85 : 0), ((i10 & 2) != 0 ? 43 : 0) + ((i10 & 32) != 0 ? 85 : 0), ((i10 & 4) == 0 ? 0 : 43) + ((i10 & 64) == 0 ? 0 : 85));
                }
            }
        }
        return iArr;
    }

    private static void j(byte[] bArr, int[] iArr, int i10, int i11, int i12, @Nullable Paint paint, Canvas canvas) {
        byte[] bArr2;
        byte[] bArr3;
        b0 b0Var = new b0(bArr);
        int iG = i11;
        int i13 = i12;
        byte[] bArrA = null;
        byte[] bArrA2 = null;
        byte[] bArrA3 = null;
        while (b0Var.b() != 0) {
            int iH = b0Var.h(8);
            if (iH != 240) {
                switch (iH) {
                    case 16:
                        if (i10 != 3) {
                            if (i10 == 2) {
                                bArr3 = bArrA3 == null ? defaultMap2To4 : bArrA3;
                            } else {
                                bArr2 = null;
                            }
                            iG = g(b0Var, iArr, bArr2, iG, i13, paint, canvas);
                            b0Var.c();
                        } else {
                            bArr3 = bArrA == null ? defaultMap2To8 : bArrA;
                        }
                        bArr2 = bArr3;
                        iG = g(b0Var, iArr, bArr2, iG, i13, paint, canvas);
                        b0Var.c();
                        break;
                    case 17:
                        iG = h(b0Var, iArr, i10 == 3 ? bArrA2 == null ? defaultMap4To8 : bArrA2 : null, iG, i13, paint, canvas);
                        b0Var.c();
                        break;
                    case 18:
                        iG = i(b0Var, iArr, null, iG, i13, paint, canvas);
                        break;
                    default:
                        switch (iH) {
                            case 32:
                                bArrA3 = a(4, 4, b0Var);
                                break;
                            case 33:
                                bArrA = a(4, 8, b0Var);
                                break;
                            case 34:
                                bArrA2 = a(16, 8, b0Var);
                                break;
                        }
                        break;
                }
            } else {
                i13 += 2;
                iG = i11;
            }
        }
    }

    private static a l(b0 b0Var, int i10) {
        int[] iArr;
        int iH;
        int i11;
        int iH2;
        int iH3;
        int iH4;
        int i12 = 8;
        int iH5 = b0Var.h(8);
        b0Var.r(8);
        int i13 = 2;
        int i14 = i10 - 2;
        int[] iArrC = c();
        int[] iArrD = d();
        int[] iArrE = e();
        while (i14 > 0) {
            int iH6 = b0Var.h(i12);
            int iH7 = b0Var.h(i12);
            if ((iH7 & 128) != 0) {
                iArr = iArrC;
            } else {
                iArr = (iH7 & 64) != 0 ? iArrD : iArrE;
            }
            if ((iH7 & 1) != 0) {
                iH3 = b0Var.h(i12);
                iH4 = b0Var.h(i12);
                iH = b0Var.h(i12);
                iH2 = b0Var.h(i12);
                i11 = i14 - 6;
            } else {
                int iH8 = b0Var.h(6) << i13;
                int iH9 = b0Var.h(4) << 4;
                iH = b0Var.h(4) << 4;
                i11 = i14 - 4;
                iH2 = b0Var.h(i13) << 6;
                iH3 = iH8;
                iH4 = iH9;
            }
            if (iH3 == 0) {
                iH2 = 255;
                iH4 = 0;
                iH = 0;
            }
            double d2 = iH3;
            double d6 = iH4 - 128;
            double d7 = iH - 128;
            iArr[iH6] = f((byte) (255 - (iH2 & 255)), o0.p((int) (d2 + (1.402d * d6)), 0, 255), o0.p((int) ((d2 - (0.34414d * d7)) - (d6 * 0.71414d)), 0, 255), o0.p((int) (d2 + (d7 * 1.772d)), 0, 255));
            i14 = i11;
            iH5 = iH5;
            i12 = 8;
            i13 = 2;
        }
        return new a(iH5, iArrC, iArrD, iArrE);
    }

    private static c n(b0 b0Var) {
        byte[] bArr;
        int iH = b0Var.h(16);
        b0Var.r(4);
        int iH2 = b0Var.h(2);
        boolean zG = b0Var.g();
        b0Var.r(1);
        byte[] bArr2 = o0.EMPTY_BYTE_ARRAY;
        if (iH2 != 1) {
            if (iH2 == 0) {
                int iH3 = b0Var.h(16);
                int iH4 = b0Var.h(16);
                if (iH3 > 0) {
                    bArr2 = new byte[iH3];
                    b0Var.k(bArr2, 0, iH3);
                }
                if (iH4 > 0) {
                    bArr = new byte[iH4];
                    b0Var.k(bArr, 0, iH4);
                }
            }
            return new c(iH, zG, bArr2, bArr);
        }
        b0Var.r(b0Var.h(8) * 16);
        bArr = bArr2;
        return new c(iH, zG, bArr2, bArr);
    }

    private static d o(b0 b0Var, int i10) {
        int iH = b0Var.h(8);
        int iH2 = b0Var.h(4);
        int iH3 = b0Var.h(2);
        b0Var.r(2);
        int i11 = i10 - 2;
        SparseArray sparseArray = new SparseArray();
        while (i11 > 0) {
            int iH4 = b0Var.h(8);
            b0Var.r(8);
            i11 -= 6;
            sparseArray.put(iH4, new e(b0Var.h(16), b0Var.h(16)));
        }
        return new d(iH, iH2, iH3, sparseArray);
    }

    private static f p(b0 b0Var, int i10) {
        int i11;
        int iH;
        int iH2;
        int iH3 = b0Var.h(8);
        b0Var.r(4);
        boolean zG = b0Var.g();
        b0Var.r(3);
        int i12 = 16;
        int iH4 = b0Var.h(16);
        int iH5 = b0Var.h(16);
        int iH6 = b0Var.h(3);
        int iH7 = b0Var.h(3);
        int i13 = 2;
        b0Var.r(2);
        int iH8 = b0Var.h(8);
        int iH9 = b0Var.h(8);
        int iH10 = b0Var.h(4);
        int iH11 = b0Var.h(2);
        b0Var.r(2);
        int i14 = i10 - 10;
        SparseArray sparseArray = new SparseArray();
        while (i14 > 0) {
            int iH12 = b0Var.h(i12);
            int iH13 = b0Var.h(i13);
            int iH14 = b0Var.h(i13);
            int iH15 = b0Var.h(12);
            int i15 = iH11;
            b0Var.r(4);
            int iH16 = b0Var.h(12);
            int i16 = i14 - 6;
            if (iH13 != 1) {
                i11 = 2;
                if (iH13 != 2) {
                    iH2 = 0;
                    iH = 0;
                    i14 = i16;
                }
                sparseArray.put(iH12, new g(iH13, iH14, iH15, iH16, iH2, iH));
                i13 = i11;
                iH11 = i15;
                i12 = 16;
            } else {
                i11 = 2;
            }
            i14 -= 8;
            iH2 = b0Var.h(8);
            iH = b0Var.h(8);
            sparseArray.put(iH12, new g(iH13, iH14, iH15, iH16, iH2, iH));
            i13 = i11;
            iH11 = i15;
            i12 = 16;
        }
        return new f(iH3, zG, iH4, iH5, iH6, iH7, iH8, iH9, iH10, iH11, sparseArray);
    }

    private static void q(b0 b0Var, h hVar) {
        f fVar;
        int iH = b0Var.h(8);
        int iH2 = b0Var.h(16);
        int iH3 = b0Var.h(16);
        int iD = b0Var.d() + iH3;
        if (iH3 * 8 > b0Var.b()) {
            t.i(TAG, "Data field length exceeds limit");
            b0Var.r(b0Var.b());
            return;
        }
        switch (iH) {
            case 16:
                if (iH2 == hVar.subtitlePageId) {
                    d dVar = hVar.pageComposition;
                    d dVarO = o(b0Var, iH3);
                    if (dVarO.state != 0) {
                        hVar.pageComposition = dVarO;
                        hVar.regions.clear();
                        hVar.cluts.clear();
                        hVar.objects.clear();
                    } else if (dVar != null && dVar.version != dVarO.version) {
                        hVar.pageComposition = dVarO;
                    }
                }
                break;
            case 17:
                d dVar2 = hVar.pageComposition;
                if (iH2 == hVar.subtitlePageId && dVar2 != null) {
                    f fVarP = p(b0Var, iH3);
                    if (dVar2.state == 0 && (fVar = hVar.regions.get(fVarP.id)) != null) {
                        fVarP.a(fVar);
                    }
                    hVar.regions.put(fVarP.id, fVarP);
                }
                break;
            case 18:
                if (iH2 == hVar.subtitlePageId) {
                    a aVarL = l(b0Var, iH3);
                    hVar.cluts.put(aVarL.id, aVarL);
                } else if (iH2 == hVar.ancillaryPageId) {
                    a aVarL2 = l(b0Var, iH3);
                    hVar.ancillaryCluts.put(aVarL2.id, aVarL2);
                }
                break;
            case 19:
                if (iH2 == hVar.subtitlePageId) {
                    c cVarN = n(b0Var);
                    hVar.objects.put(cVarN.id, cVarN);
                } else if (iH2 == hVar.ancillaryPageId) {
                    c cVarN2 = n(b0Var);
                    hVar.ancillaryObjects.put(cVarN2.id, cVarN2);
                }
                break;
            case 20:
                if (iH2 == hVar.subtitlePageId) {
                    hVar.displayDefinition = m(b0Var);
                }
                break;
        }
        b0Var.s(iD - b0Var.d());
    }

    public List<com.google.android.exoplayer2.text.b> b(byte[] bArr, int i10) {
        b0 b0Var = new b0(bArr, i10);
        while (b0Var.b() >= 48 && b0Var.h(8) == 15) {
            q(b0Var, this.subtitleService);
        }
        h hVar = this.subtitleService;
        d dVar = hVar.pageComposition;
        if (dVar == null) {
            return Collections.emptyList();
        }
        C0506b c0506b = hVar.displayDefinition;
        if (c0506b == null) {
            c0506b = this.defaultDisplayDefinition;
        }
        Bitmap bitmap = this.bitmap;
        if (bitmap == null || c0506b.width + 1 != bitmap.getWidth() || c0506b.height + 1 != this.bitmap.getHeight()) {
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(c0506b.width + 1, c0506b.height + 1, Bitmap.Config.ARGB_8888);
            this.bitmap = bitmapCreateBitmap;
            this.canvas.setBitmap(bitmapCreateBitmap);
        }
        ArrayList arrayList = new ArrayList();
        SparseArray<e> sparseArray = dVar.regions;
        for (int i11 = 0; i11 < sparseArray.size(); i11++) {
            this.canvas.save();
            e eVarValueAt = sparseArray.valueAt(i11);
            f fVar = this.subtitleService.regions.get(sparseArray.keyAt(i11));
            int i12 = eVarValueAt.horizontalAddress + c0506b.horizontalPositionMinimum;
            int i13 = eVarValueAt.verticalAddress + c0506b.verticalPositionMinimum;
            this.canvas.clipRect(i12, i13, Math.min(fVar.width + i12, c0506b.horizontalPositionMaximum), Math.min(fVar.height + i13, c0506b.verticalPositionMaximum));
            a aVar = this.subtitleService.cluts.get(fVar.clutId);
            if (aVar == null && (aVar = this.subtitleService.ancillaryCluts.get(fVar.clutId)) == null) {
                aVar = this.defaultClutDefinition;
            }
            int i14 = 0;
            for (SparseArray<g> sparseArray2 = fVar.regionObjects; i14 < sparseArray2.size(); sparseArray2 = sparseArray2) {
                int iKeyAt = sparseArray2.keyAt(i14);
                g gVarValueAt = sparseArray2.valueAt(i14);
                c cVar = this.subtitleService.objects.get(iKeyAt);
                c cVar2 = cVar == null ? this.subtitleService.ancillaryObjects.get(iKeyAt) : cVar;
                if (cVar2 != null) {
                    k(cVar2, aVar, fVar.depth, gVarValueAt.horizontalPosition + i12, i13 + gVarValueAt.verticalPosition, cVar2.nonModifyingColorFlag ? null : this.defaultPaint, this.canvas);
                }
                i14++;
            }
            if (fVar.fillFlag) {
                int i15 = fVar.depth;
                this.fillRegionPaint.setColor(i15 == 3 ? aVar.clutEntries8Bit[fVar.pixelCode8Bit] : i15 == 2 ? aVar.clutEntries4Bit[fVar.pixelCode4Bit] : aVar.clutEntries2Bit[fVar.pixelCode2Bit]);
                this.canvas.drawRect(i12, i13, fVar.width + i12, fVar.height + i13, this.fillRegionPaint);
            }
            arrayList.add(new com.google.android.exoplayer2.text.b.C0178b().f(Bitmap.createBitmap(this.bitmap, i12, i13, fVar.width, fVar.height)).k(i12 / c0506b.width).l(0).h(i13 / c0506b.height, 0).i(0).n(fVar.width / c0506b.width).g(fVar.height / c0506b.height).a());
            this.canvas.drawColor(0, PorterDuff.Mode.CLEAR);
            this.canvas.restore();
        }
        return Collections.unmodifiableList(arrayList);
    }

    public void r() {
        this.subtitleService.a();
    }

    public b(int i10, int i11) {
        Paint paint = new Paint();
        this.defaultPaint = paint;
        paint.setStyle(Paint.Style.FILL_AND_STROKE);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC));
        paint.setPathEffect(null);
        Paint paint2 = new Paint();
        this.fillRegionPaint = paint2;
        paint2.setStyle(Paint.Style.FILL);
        paint2.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OVER));
        paint2.setPathEffect(null);
        this.canvas = new Canvas();
        this.defaultDisplayDefinition = new C0506b(719, 575, 0, 719, 0, 575);
        this.defaultClutDefinition = new a(0, c(), d(), e());
        this.subtitleService = new h(i10, i11);
    }
}
