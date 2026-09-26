package androidx.media3.extractor.text.dvb;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.util.SparseArray;
import androidx.annotation.Nullable;
import androidx.core.view.ViewCompat;
import androidx.media3.common.text.Cue;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.ParsableBitArray;
import androidx.media3.common.util.Util;
import com.google.common.base.c;
import com.narvii.util.ws.WsMessage;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.apache.commons.compress.archivers.tar.TarConstants;

/* JADX INFO: loaded from: classes5.dex */
final class DvbParser {
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
    private static final byte[] defaultMap2To4 = {0, 7, 8, c.SI};
    private static final byte[] defaultMap2To8 = {0, 119, -120, -1};
    private static final byte[] defaultMap4To8 = {0, 17, 34, TarConstants.LF_CHR, 68, 85, 102, 119, -120, -103, -86, -69, -52, -35, -18, -1};
    private Bitmap bitmap;
    private final Canvas canvas;
    private final ClutDefinition defaultClutDefinition;
    private final DisplayDefinition defaultDisplayDefinition;
    private final Paint defaultPaint;
    private final Paint fillRegionPaint;
    private final SubtitleService subtitleService;

    private static final class RegionComposition {
        public final int clutId;
        public final int depth;
        public final boolean fillFlag;
        public final int height;
        public final int id;
        public final int levelOfCompatibility;
        public final int pixelCode2Bit;
        public final int pixelCode4Bit;
        public final int pixelCode8Bit;
        public final SparseArray<RegionObject> regionObjects;
        public final int width;

        public void a(RegionComposition regionComposition) {
            SparseArray<RegionObject> sparseArray = regionComposition.regionObjects;
            for (int i10 = 0; i10 < sparseArray.size(); i10++) {
                this.regionObjects.put(sparseArray.keyAt(i10), sparseArray.valueAt(i10));
            }
        }

        public RegionComposition(int i10, boolean z6, int i11, int i12, int i13, int i14, int i15, int i16, int i17, int i18, SparseArray<RegionObject> sparseArray) {
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

    private static final class SubtitleService {
        public final int ancillaryPageId;

        @Nullable
        public DisplayDefinition displayDefinition;

        @Nullable
        public PageComposition pageComposition;
        public final int subtitlePageId;
        public final SparseArray<RegionComposition> regions = new SparseArray<>();
        public final SparseArray<ClutDefinition> cluts = new SparseArray<>();
        public final SparseArray<ObjectData> objects = new SparseArray<>();
        public final SparseArray<ClutDefinition> ancillaryCluts = new SparseArray<>();
        public final SparseArray<ObjectData> ancillaryObjects = new SparseArray<>();

        public void a() {
            this.regions.clear();
            this.cluts.clear();
            this.objects.clear();
            this.ancillaryCluts.clear();
            this.ancillaryObjects.clear();
            this.displayDefinition = null;
            this.pageComposition = null;
        }

        public SubtitleService(int i10, int i11) {
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

    private static int g(ParsableBitArray parsableBitArray, int[] iArr, @Nullable byte[] bArr, int i10, int i11, @Nullable Paint paint, Canvas canvas) {
        int i12;
        int iH;
        int iH2;
        int i13 = i10;
        boolean z6 = false;
        while (true) {
            int iH3 = parsableBitArray.h(2);
            if (iH3 != 0) {
                z6 = z6;
                i12 = 1;
            } else {
                if (parsableBitArray.g()) {
                    iH = parsableBitArray.h(3) + 3;
                    iH2 = parsableBitArray.h(2);
                } else {
                    if (parsableBitArray.g()) {
                        i12 = 1;
                    } else {
                        int iH4 = parsableBitArray.h(2);
                        if (iH4 == 0) {
                            z6 = true;
                        } else if (iH4 == 1) {
                            i12 = 2;
                        } else if (iH4 == 2) {
                            iH = parsableBitArray.h(4) + 12;
                            iH2 = parsableBitArray.h(2);
                        } else if (iH4 != 3) {
                            z6 = z6;
                        } else {
                            iH = parsableBitArray.h(8) + 29;
                            iH2 = parsableBitArray.h(2);
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

    private static int h(ParsableBitArray parsableBitArray, int[] iArr, @Nullable byte[] bArr, int i10, int i11, @Nullable Paint paint, Canvas canvas) {
        int i12;
        int iH;
        int iH2;
        int i13 = i10;
        boolean z6 = false;
        while (true) {
            int iH3 = parsableBitArray.h(4);
            if (iH3 != 0) {
                z6 = z6;
                i12 = 1;
            } else if (parsableBitArray.g()) {
                if (parsableBitArray.g()) {
                    int iH4 = parsableBitArray.h(2);
                    if (iH4 == 0) {
                        i12 = 1;
                    } else if (iH4 == 1) {
                        i12 = 2;
                    } else if (iH4 == 2) {
                        iH = parsableBitArray.h(4) + 9;
                        iH2 = parsableBitArray.h(4);
                    } else if (iH4 != 3) {
                        z6 = z6;
                        iH3 = 0;
                        i12 = 0;
                    } else {
                        iH = parsableBitArray.h(8) + 25;
                        iH2 = parsableBitArray.h(4);
                    }
                    iH3 = 0;
                } else {
                    iH = parsableBitArray.h(2) + 4;
                    iH2 = parsableBitArray.h(4);
                }
                z6 = z6;
                i12 = iH;
                iH3 = iH2;
            } else {
                int iH5 = parsableBitArray.h(3);
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

    private static int i(ParsableBitArray parsableBitArray, int[] iArr, @Nullable byte[] bArr, int i10, int i11, @Nullable Paint paint, Canvas canvas) {
        boolean z6;
        int iH;
        int i12 = i10;
        boolean z10 = false;
        while (true) {
            int iH2 = parsableBitArray.h(8);
            if (iH2 != 0) {
                z6 = z10;
                iH = 1;
            } else if (parsableBitArray.g()) {
                z6 = z10;
                iH = parsableBitArray.h(7);
                iH2 = parsableBitArray.h(8);
            } else {
                int iH3 = parsableBitArray.h(7);
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

    private static void k(ObjectData objectData, ClutDefinition clutDefinition, int i10, int i11, int i12, @Nullable Paint paint, Canvas canvas) {
        int[] iArr;
        if (i10 == 3) {
            iArr = clutDefinition.clutEntries8Bit;
        } else {
            iArr = i10 == 2 ? clutDefinition.clutEntries4Bit : clutDefinition.clutEntries2Bit;
        }
        int[] iArr2 = iArr;
        j(objectData.topFieldData, iArr2, i10, i11, i12, paint, canvas);
        j(objectData.bottomFieldData, iArr2, i10, i11, i12 + 1, paint, canvas);
    }

    private static DisplayDefinition m(ParsableBitArray parsableBitArray) {
        int i10;
        int i11;
        int i12;
        int iH;
        parsableBitArray.r(4);
        boolean zG = parsableBitArray.g();
        parsableBitArray.r(3);
        int iH2 = parsableBitArray.h(16);
        int iH3 = parsableBitArray.h(16);
        if (zG) {
            int iH4 = parsableBitArray.h(16);
            int iH5 = parsableBitArray.h(16);
            int iH6 = parsableBitArray.h(16);
            iH = parsableBitArray.h(16);
            i12 = iH5;
            i11 = iH6;
            i10 = iH4;
        } else {
            i10 = 0;
            i11 = 0;
            i12 = iH2;
            iH = iH3;
        }
        return new DisplayDefinition(iH2, iH3, i10, i12, i11, iH);
    }

    private static final class ClutDefinition {
        public final int[] clutEntries2Bit;
        public final int[] clutEntries4Bit;
        public final int[] clutEntries8Bit;
        public final int id;

        public ClutDefinition(int i10, int[] iArr, int[] iArr2, int[] iArr3) {
            this.id = i10;
            this.clutEntries2Bit = iArr;
            this.clutEntries4Bit = iArr2;
            this.clutEntries8Bit = iArr3;
        }
    }

    private static final class DisplayDefinition {
        public final int height;
        public final int horizontalPositionMaximum;
        public final int horizontalPositionMinimum;
        public final int verticalPositionMaximum;
        public final int verticalPositionMinimum;
        public final int width;

        public DisplayDefinition(int i10, int i11, int i12, int i13, int i14, int i15) {
            this.width = i10;
            this.height = i11;
            this.horizontalPositionMinimum = i12;
            this.horizontalPositionMaximum = i13;
            this.verticalPositionMinimum = i14;
            this.verticalPositionMaximum = i15;
        }
    }

    private static final class ObjectData {
        public final byte[] bottomFieldData;
        public final int id;
        public final boolean nonModifyingColorFlag;
        public final byte[] topFieldData;

        public ObjectData(int i10, boolean z6, byte[] bArr, byte[] bArr2) {
            this.id = i10;
            this.nonModifyingColorFlag = z6;
            this.topFieldData = bArr;
            this.bottomFieldData = bArr2;
        }
    }

    private static final class PageComposition {
        public final SparseArray<PageRegion> regions;
        public final int state;
        public final int timeOutSecs;
        public final int version;

        public PageComposition(int i10, int i11, int i12, SparseArray<PageRegion> sparseArray) {
            this.timeOutSecs = i10;
            this.version = i11;
            this.state = i12;
            this.regions = sparseArray;
        }
    }

    private static final class PageRegion {
        public final int horizontalAddress;
        public final int verticalAddress;

        public PageRegion(int i10, int i11) {
            this.horizontalAddress = i10;
            this.verticalAddress = i11;
        }
    }

    private static final class RegionObject {
        public final int backgroundPixelCode;
        public final int foregroundPixelCode;
        public final int horizontalPosition;
        public final int provider;
        public final int type;
        public final int verticalPosition;

        public RegionObject(int i10, int i11, int i12, int i13, int i14, int i15) {
            this.type = i10;
            this.provider = i11;
            this.horizontalPosition = i12;
            this.verticalPosition = i13;
            this.foregroundPixelCode = i14;
            this.backgroundPixelCode = i15;
        }
    }

    private static byte[] a(int i10, int i11, ParsableBitArray parsableBitArray) {
        byte[] bArr = new byte[i10];
        for (int i12 = 0; i12 < i10; i12++) {
            bArr[i12] = (byte) parsableBitArray.h(i11);
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
        ParsableBitArray parsableBitArray = new ParsableBitArray(bArr);
        int iG = i11;
        int i13 = i12;
        byte[] bArrA = null;
        byte[] bArrA2 = null;
        byte[] bArrA3 = null;
        while (parsableBitArray.b() != 0) {
            int iH = parsableBitArray.h(8);
            if (iH != 240) {
                switch (iH) {
                    case 16:
                        if (i10 != 3) {
                            if (i10 == 2) {
                                bArr3 = bArrA3 == null ? defaultMap2To4 : bArrA3;
                            } else {
                                bArr2 = null;
                            }
                            iG = g(parsableBitArray, iArr, bArr2, iG, i13, paint, canvas);
                            parsableBitArray.c();
                        } else {
                            bArr3 = bArrA == null ? defaultMap2To8 : bArrA;
                        }
                        bArr2 = bArr3;
                        iG = g(parsableBitArray, iArr, bArr2, iG, i13, paint, canvas);
                        parsableBitArray.c();
                        break;
                    case 17:
                        iG = h(parsableBitArray, iArr, i10 == 3 ? bArrA2 == null ? defaultMap4To8 : bArrA2 : null, iG, i13, paint, canvas);
                        parsableBitArray.c();
                        break;
                    case 18:
                        iG = i(parsableBitArray, iArr, null, iG, i13, paint, canvas);
                        break;
                    default:
                        switch (iH) {
                            case 32:
                                bArrA3 = a(4, 4, parsableBitArray);
                                break;
                            case 33:
                                bArrA = a(4, 8, parsableBitArray);
                                break;
                            case 34:
                                bArrA2 = a(16, 8, parsableBitArray);
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

    private static ClutDefinition l(ParsableBitArray parsableBitArray, int i10) {
        int[] iArr;
        int iH;
        int i11;
        int iH2;
        int iH3;
        int iH4;
        int i12 = 8;
        int iH5 = parsableBitArray.h(8);
        parsableBitArray.r(8);
        int i13 = 2;
        int i14 = i10 - 2;
        int[] iArrC = c();
        int[] iArrD = d();
        int[] iArrE = e();
        while (i14 > 0) {
            int iH6 = parsableBitArray.h(i12);
            int iH7 = parsableBitArray.h(i12);
            if ((iH7 & 128) != 0) {
                iArr = iArrC;
            } else {
                iArr = (iH7 & 64) != 0 ? iArrD : iArrE;
            }
            if ((iH7 & 1) != 0) {
                iH3 = parsableBitArray.h(i12);
                iH4 = parsableBitArray.h(i12);
                iH = parsableBitArray.h(i12);
                iH2 = parsableBitArray.h(i12);
                i11 = i14 - 6;
            } else {
                int iH8 = parsableBitArray.h(6) << i13;
                int iH9 = parsableBitArray.h(4) << 4;
                iH = parsableBitArray.h(4) << 4;
                i11 = i14 - 4;
                iH2 = parsableBitArray.h(i13) << 6;
                iH3 = iH8;
                iH4 = iH9;
            }
            if (iH3 == 0) {
                iH2 = 255;
                iH4 = 0;
                iH = 0;
            }
            double d = iH3;
            double d2 = iH4 - 128;
            double d6 = iH - 128;
            iArr[iH6] = f((byte) (255 - (iH2 & 255)), Util.q((int) (d + (1.402d * d2)), 0, 255), Util.q((int) ((d - (0.34414d * d6)) - (d2 * 0.71414d)), 0, 255), Util.q((int) (d + (d6 * 1.772d)), 0, 255));
            i14 = i11;
            iH5 = iH5;
            i12 = 8;
            i13 = 2;
        }
        return new ClutDefinition(iH5, iArrC, iArrD, iArrE);
    }

    private static ObjectData n(ParsableBitArray parsableBitArray) {
        byte[] bArr;
        int iH = parsableBitArray.h(16);
        parsableBitArray.r(4);
        int iH2 = parsableBitArray.h(2);
        boolean zG = parsableBitArray.g();
        parsableBitArray.r(1);
        byte[] bArr2 = Util.EMPTY_BYTE_ARRAY;
        if (iH2 != 1) {
            if (iH2 == 0) {
                int iH3 = parsableBitArray.h(16);
                int iH4 = parsableBitArray.h(16);
                if (iH3 > 0) {
                    bArr2 = new byte[iH3];
                    parsableBitArray.k(bArr2, 0, iH3);
                }
                if (iH4 > 0) {
                    bArr = new byte[iH4];
                    parsableBitArray.k(bArr, 0, iH4);
                }
            }
            return new ObjectData(iH, zG, bArr2, bArr);
        }
        parsableBitArray.r(parsableBitArray.h(8) * 16);
        bArr = bArr2;
        return new ObjectData(iH, zG, bArr2, bArr);
    }

    private static PageComposition o(ParsableBitArray parsableBitArray, int i10) {
        int iH = parsableBitArray.h(8);
        int iH2 = parsableBitArray.h(4);
        int iH3 = parsableBitArray.h(2);
        parsableBitArray.r(2);
        int i11 = i10 - 2;
        SparseArray sparseArray = new SparseArray();
        while (i11 > 0) {
            int iH4 = parsableBitArray.h(8);
            parsableBitArray.r(8);
            i11 -= 6;
            sparseArray.put(iH4, new PageRegion(parsableBitArray.h(16), parsableBitArray.h(16)));
        }
        return new PageComposition(iH, iH2, iH3, sparseArray);
    }

    private static RegionComposition p(ParsableBitArray parsableBitArray, int i10) {
        int i11;
        int iH;
        int iH2;
        int iH3 = parsableBitArray.h(8);
        parsableBitArray.r(4);
        boolean zG = parsableBitArray.g();
        parsableBitArray.r(3);
        int i12 = 16;
        int iH4 = parsableBitArray.h(16);
        int iH5 = parsableBitArray.h(16);
        int iH6 = parsableBitArray.h(3);
        int iH7 = parsableBitArray.h(3);
        int i13 = 2;
        parsableBitArray.r(2);
        int iH8 = parsableBitArray.h(8);
        int iH9 = parsableBitArray.h(8);
        int iH10 = parsableBitArray.h(4);
        int iH11 = parsableBitArray.h(2);
        parsableBitArray.r(2);
        int i14 = i10 - 10;
        SparseArray sparseArray = new SparseArray();
        while (i14 > 0) {
            int iH12 = parsableBitArray.h(i12);
            int iH13 = parsableBitArray.h(i13);
            int iH14 = parsableBitArray.h(i13);
            int iH15 = parsableBitArray.h(12);
            int i15 = iH11;
            parsableBitArray.r(4);
            int iH16 = parsableBitArray.h(12);
            int i16 = i14 - 6;
            if (iH13 != 1) {
                i11 = 2;
                if (iH13 != 2) {
                    iH2 = 0;
                    iH = 0;
                    i14 = i16;
                }
                sparseArray.put(iH12, new RegionObject(iH13, iH14, iH15, iH16, iH2, iH));
                i13 = i11;
                iH11 = i15;
                i12 = 16;
            } else {
                i11 = 2;
            }
            i14 -= 8;
            iH2 = parsableBitArray.h(8);
            iH = parsableBitArray.h(8);
            sparseArray.put(iH12, new RegionObject(iH13, iH14, iH15, iH16, iH2, iH));
            i13 = i11;
            iH11 = i15;
            i12 = 16;
        }
        return new RegionComposition(iH3, zG, iH4, iH5, iH6, iH7, iH8, iH9, iH10, iH11, sparseArray);
    }

    private static void q(ParsableBitArray parsableBitArray, SubtitleService subtitleService) {
        RegionComposition regionComposition;
        int iH = parsableBitArray.h(8);
        int iH2 = parsableBitArray.h(16);
        int iH3 = parsableBitArray.h(16);
        int iD = parsableBitArray.d() + iH3;
        if (iH3 * 8 > parsableBitArray.b()) {
            Log.i(TAG, "Data field length exceeds limit");
            parsableBitArray.r(parsableBitArray.b());
            return;
        }
        switch (iH) {
            case 16:
                if (iH2 == subtitleService.subtitlePageId) {
                    PageComposition pageComposition = subtitleService.pageComposition;
                    PageComposition pageCompositionO = o(parsableBitArray, iH3);
                    if (pageCompositionO.state != 0) {
                        subtitleService.pageComposition = pageCompositionO;
                        subtitleService.regions.clear();
                        subtitleService.cluts.clear();
                        subtitleService.objects.clear();
                    } else if (pageComposition != null && pageComposition.version != pageCompositionO.version) {
                        subtitleService.pageComposition = pageCompositionO;
                    }
                }
                break;
            case 17:
                PageComposition pageComposition2 = subtitleService.pageComposition;
                if (iH2 == subtitleService.subtitlePageId && pageComposition2 != null) {
                    RegionComposition regionCompositionP = p(parsableBitArray, iH3);
                    if (pageComposition2.state == 0 && (regionComposition = subtitleService.regions.get(regionCompositionP.id)) != null) {
                        regionCompositionP.a(regionComposition);
                    }
                    subtitleService.regions.put(regionCompositionP.id, regionCompositionP);
                }
                break;
            case 18:
                if (iH2 == subtitleService.subtitlePageId) {
                    ClutDefinition clutDefinitionL = l(parsableBitArray, iH3);
                    subtitleService.cluts.put(clutDefinitionL.id, clutDefinitionL);
                } else if (iH2 == subtitleService.ancillaryPageId) {
                    ClutDefinition clutDefinitionL2 = l(parsableBitArray, iH3);
                    subtitleService.ancillaryCluts.put(clutDefinitionL2.id, clutDefinitionL2);
                }
                break;
            case 19:
                if (iH2 == subtitleService.subtitlePageId) {
                    ObjectData objectDataN = n(parsableBitArray);
                    subtitleService.objects.put(objectDataN.id, objectDataN);
                } else if (iH2 == subtitleService.ancillaryPageId) {
                    ObjectData objectDataN2 = n(parsableBitArray);
                    subtitleService.ancillaryObjects.put(objectDataN2.id, objectDataN2);
                }
                break;
            case 20:
                if (iH2 == subtitleService.subtitlePageId) {
                    subtitleService.displayDefinition = m(parsableBitArray);
                }
                break;
        }
        parsableBitArray.s(iD - parsableBitArray.d());
    }

    public List<Cue> b(byte[] bArr, int i10) {
        ParsableBitArray parsableBitArray = new ParsableBitArray(bArr, i10);
        while (parsableBitArray.b() >= 48 && parsableBitArray.h(8) == 15) {
            q(parsableBitArray, this.subtitleService);
        }
        SubtitleService subtitleService = this.subtitleService;
        PageComposition pageComposition = subtitleService.pageComposition;
        if (pageComposition == null) {
            return Collections.emptyList();
        }
        DisplayDefinition displayDefinition = subtitleService.displayDefinition;
        if (displayDefinition == null) {
            displayDefinition = this.defaultDisplayDefinition;
        }
        Bitmap bitmap = this.bitmap;
        if (bitmap == null || displayDefinition.width + 1 != bitmap.getWidth() || displayDefinition.height + 1 != this.bitmap.getHeight()) {
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(displayDefinition.width + 1, displayDefinition.height + 1, Bitmap.Config.ARGB_8888);
            this.bitmap = bitmapCreateBitmap;
            this.canvas.setBitmap(bitmapCreateBitmap);
        }
        ArrayList arrayList = new ArrayList();
        SparseArray<PageRegion> sparseArray = pageComposition.regions;
        for (int i11 = 0; i11 < sparseArray.size(); i11++) {
            this.canvas.save();
            PageRegion pageRegionValueAt = sparseArray.valueAt(i11);
            RegionComposition regionComposition = this.subtitleService.regions.get(sparseArray.keyAt(i11));
            int i12 = pageRegionValueAt.horizontalAddress + displayDefinition.horizontalPositionMinimum;
            int i13 = pageRegionValueAt.verticalAddress + displayDefinition.verticalPositionMinimum;
            this.canvas.clipRect(i12, i13, Math.min(regionComposition.width + i12, displayDefinition.horizontalPositionMaximum), Math.min(regionComposition.height + i13, displayDefinition.verticalPositionMaximum));
            ClutDefinition clutDefinition = this.subtitleService.cluts.get(regionComposition.clutId);
            if (clutDefinition == null && (clutDefinition = this.subtitleService.ancillaryCluts.get(regionComposition.clutId)) == null) {
                clutDefinition = this.defaultClutDefinition;
            }
            int i14 = 0;
            for (SparseArray<RegionObject> sparseArray2 = regionComposition.regionObjects; i14 < sparseArray2.size(); sparseArray2 = sparseArray2) {
                int iKeyAt = sparseArray2.keyAt(i14);
                RegionObject regionObjectValueAt = sparseArray2.valueAt(i14);
                ObjectData objectData = this.subtitleService.objects.get(iKeyAt);
                ObjectData objectData2 = objectData == null ? this.subtitleService.ancillaryObjects.get(iKeyAt) : objectData;
                if (objectData2 != null) {
                    k(objectData2, clutDefinition, regionComposition.depth, regionObjectValueAt.horizontalPosition + i12, i13 + regionObjectValueAt.verticalPosition, objectData2.nonModifyingColorFlag ? null : this.defaultPaint, this.canvas);
                }
                i14++;
            }
            if (regionComposition.fillFlag) {
                int i15 = regionComposition.depth;
                this.fillRegionPaint.setColor(i15 == 3 ? clutDefinition.clutEntries8Bit[regionComposition.pixelCode8Bit] : i15 == 2 ? clutDefinition.clutEntries4Bit[regionComposition.pixelCode4Bit] : clutDefinition.clutEntries2Bit[regionComposition.pixelCode2Bit]);
                this.canvas.drawRect(i12, i13, regionComposition.width + i12, regionComposition.height + i13, this.fillRegionPaint);
            }
            arrayList.add(new Cue.Builder().f(Bitmap.createBitmap(this.bitmap, i12, i13, regionComposition.width, regionComposition.height)).k(i12 / displayDefinition.width).l(0).h(i13 / displayDefinition.height, 0).i(0).n(regionComposition.width / displayDefinition.width).g(regionComposition.height / displayDefinition.height).a());
            this.canvas.drawColor(0, PorterDuff.Mode.CLEAR);
            this.canvas.restore();
        }
        return Collections.unmodifiableList(arrayList);
    }

    public void r() {
        this.subtitleService.a();
    }

    public DvbParser(int i10, int i11) {
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
        this.defaultDisplayDefinition = new DisplayDefinition(719, 575, 0, 719, 0, 575);
        this.defaultClutDefinition = new ClutDefinition(0, c(), d(), e());
        this.subtitleService = new SubtitleService(i10, i11);
    }
}
