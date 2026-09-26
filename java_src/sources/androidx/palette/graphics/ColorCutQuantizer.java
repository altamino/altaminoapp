package androidx.palette.graphics;

import android.graphics.Color;
import android.util.TimingLogger;
import androidx.annotation.Nullable;
import androidx.core.graphics.ColorUtils;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.PriorityQueue;

/* JADX INFO: loaded from: classes6.dex */
final class ColorCutQuantizer {
    static final int COMPONENT_BLUE = -1;
    static final int COMPONENT_GREEN = -2;
    static final int COMPONENT_RED = -3;
    private static final String LOG_TAG = "ColorCutQuantizer";
    private static final boolean LOG_TIMINGS = false;
    private static final int QUANTIZE_WORD_MASK = 31;
    private static final int QUANTIZE_WORD_WIDTH = 5;
    private static final Comparator<Vbox> VBOX_COMPARATOR_VOLUME = new Comparator<Vbox>() { // from class: androidx.palette.graphics.ColorCutQuantizer.1
        @Override // java.util.Comparator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(Vbox vbox, Vbox vbox2) {
            return vbox2.g() - vbox.g();
        }
    };
    final int[] mColors;
    final Palette.Filter[] mFilters;
    final int[] mHistogram;
    final List<Palette.Swatch> mQuantizedColors;
    private final float[] mTempHsl = new float[3];

    @Nullable
    final TimingLogger mTimingLogger = null;

    private class Vbox {
        private int mLowerIndex;
        private int mMaxBlue;
        private int mMaxGreen;
        private int mMaxRed;
        private int mMinBlue;
        private int mMinGreen;
        private int mMinRed;
        private int mPopulation;
        private int mUpperIndex;

        final int e() {
            return (this.mUpperIndex + 1) - this.mLowerIndex;
        }

        final int f() {
            int i10 = this.mMaxRed - this.mMinRed;
            int i11 = this.mMaxGreen - this.mMinGreen;
            int i12 = this.mMaxBlue - this.mMinBlue;
            if (i10 < i11 || i10 < i12) {
                return (i11 < i10 || i11 < i12) ? -1 : -2;
            }
            return -3;
        }

        final int g() {
            return ((this.mMaxRed - this.mMinRed) + 1) * ((this.mMaxGreen - this.mMinGreen) + 1) * ((this.mMaxBlue - this.mMinBlue) + 1);
        }

        Vbox(int i10, int i11) {
            this.mLowerIndex = i10;
            this.mUpperIndex = i11;
            c();
        }

        final void c() {
            ColorCutQuantizer colorCutQuantizer = ColorCutQuantizer.this;
            int[] iArr = colorCutQuantizer.mColors;
            int[] iArr2 = colorCutQuantizer.mHistogram;
            int i10 = Integer.MAX_VALUE;
            int i11 = Integer.MIN_VALUE;
            int i12 = Integer.MIN_VALUE;
            int i13 = Integer.MIN_VALUE;
            int i14 = 0;
            int i15 = Integer.MAX_VALUE;
            int i16 = Integer.MAX_VALUE;
            for (int i17 = this.mLowerIndex; i17 <= this.mUpperIndex; i17++) {
                int i18 = iArr[i17];
                i14 += iArr2[i18];
                int iK = ColorCutQuantizer.k(i18);
                int iJ = ColorCutQuantizer.j(i18);
                int i19 = ColorCutQuantizer.i(i18);
                if (iK > i11) {
                    i11 = iK;
                }
                if (iK < i10) {
                    i10 = iK;
                }
                if (iJ > i12) {
                    i12 = iJ;
                }
                if (iJ < i15) {
                    i15 = iJ;
                }
                if (i19 > i13) {
                    i13 = i19;
                }
                if (i19 < i16) {
                    i16 = i19;
                }
            }
            this.mMinRed = i10;
            this.mMaxRed = i11;
            this.mMinGreen = i15;
            this.mMaxGreen = i12;
            this.mMinBlue = i16;
            this.mMaxBlue = i13;
            this.mPopulation = i14;
        }

        final Palette.Swatch d() {
            ColorCutQuantizer colorCutQuantizer = ColorCutQuantizer.this;
            int[] iArr = colorCutQuantizer.mColors;
            int[] iArr2 = colorCutQuantizer.mHistogram;
            int iK = 0;
            int i10 = 0;
            int iJ = 0;
            int i11 = 0;
            for (int i12 = this.mLowerIndex; i12 <= this.mUpperIndex; i12++) {
                int i13 = iArr[i12];
                int i14 = iArr2[i13];
                i10 += i14;
                iK += ColorCutQuantizer.k(i13) * i14;
                iJ += ColorCutQuantizer.j(i13) * i14;
                i11 += i14 * ColorCutQuantizer.i(i13);
            }
            float f = i10;
            return new Palette.Swatch(ColorCutQuantizer.b(Math.round(iK / f), Math.round(iJ / f), Math.round(i11 / f)), i10);
        }

        final boolean a() {
            if (e() > 1) {
                return true;
            }
            return false;
        }

        final int b() {
            int iF = f();
            ColorCutQuantizer colorCutQuantizer = ColorCutQuantizer.this;
            int[] iArr = colorCutQuantizer.mColors;
            int[] iArr2 = colorCutQuantizer.mHistogram;
            ColorCutQuantizer.e(iArr, iF, this.mLowerIndex, this.mUpperIndex);
            Arrays.sort(iArr, this.mLowerIndex, this.mUpperIndex + 1);
            ColorCutQuantizer.e(iArr, iF, this.mLowerIndex, this.mUpperIndex);
            int i10 = this.mPopulation / 2;
            int i11 = this.mLowerIndex;
            int i12 = 0;
            while (true) {
                int i13 = this.mUpperIndex;
                if (i11 <= i13) {
                    i12 += iArr2[iArr[i11]];
                    if (i12 >= i10) {
                        return Math.min(i13 - 1, i11);
                    }
                    i11++;
                } else {
                    return this.mLowerIndex;
                }
            }
        }

        final Vbox h() {
            if (a()) {
                int iB = b();
                Vbox vbox = ColorCutQuantizer.this.new Vbox(iB + 1, this.mUpperIndex);
                this.mUpperIndex = iB;
                c();
                return vbox;
            }
            throw new IllegalStateException("Can not split a box with only 1 color");
        }
    }

    static int b(int i10, int i11, int i12) {
        return Color.rgb(f(i10, 5, 8), f(i11, 5, 8), f(i12, 5, 8));
    }

    static void e(int[] iArr, int i10, int i11, int i12) {
        if (i10 == -2) {
            while (i11 <= i12) {
                int i13 = iArr[i11];
                iArr[i11] = i(i13) | (j(i13) << 10) | (k(i13) << 5);
                i11++;
            }
            return;
        }
        if (i10 != -1) {
            return;
        }
        while (i11 <= i12) {
            int i14 = iArr[i11];
            iArr[i11] = k(i14) | (i(i14) << 10) | (j(i14) << 5);
            i11++;
        }
    }

    private static int f(int i10, int i11, int i12) {
        return (i12 > i11 ? i10 << (i12 - i11) : i10 >> (i11 - i12)) & ((1 << i12) - 1);
    }

    static int i(int i10) {
        return i10 & 31;
    }

    static int j(int i10) {
        return (i10 >> 5) & 31;
    }

    static int k(int i10) {
        return (i10 >> 10) & 31;
    }

    List<Palette.Swatch> d() {
        return this.mQuantizedColors;
    }

    private List<Palette.Swatch> c(Collection<Vbox> collection) {
        ArrayList arrayList = new ArrayList(collection.size());
        Iterator<Vbox> it = collection.iterator();
        while (it.hasNext()) {
            Palette.Swatch swatchD = it.next().d();
            if (!n(swatchD)) {
                arrayList.add(swatchD);
            }
        }
        return arrayList;
    }

    private List<Palette.Swatch> h(int i10) {
        PriorityQueue<Vbox> priorityQueue = new PriorityQueue<>(i10, VBOX_COMPARATOR_VOLUME);
        priorityQueue.offer(new Vbox(0, this.mColors.length - 1));
        o(priorityQueue, i10);
        return c(priorityQueue);
    }

    private boolean m(int i10, float[] fArr) {
        Palette.Filter[] filterArr = this.mFilters;
        if (filterArr != null && filterArr.length > 0) {
            int length = filterArr.length;
            for (int i11 = 0; i11 < length; i11++) {
                if (!this.mFilters[i11].a(i10, fArr)) {
                    return true;
                }
            }
        }
        return false;
    }

    ColorCutQuantizer(int[] iArr, int i10, Palette.Filter[] filterArr) {
        this.mFilters = filterArr;
        int[] iArr2 = new int[32768];
        this.mHistogram = iArr2;
        for (int i11 = 0; i11 < iArr.length; i11++) {
            int iG = g(iArr[i11]);
            iArr[i11] = iG;
            iArr2[iG] = iArr2[iG] + 1;
        }
        int i12 = 0;
        for (int i13 = 0; i13 < 32768; i13++) {
            if (iArr2[i13] > 0 && l(i13)) {
                iArr2[i13] = 0;
            }
            if (iArr2[i13] > 0) {
                i12++;
            }
        }
        int[] iArr3 = new int[i12];
        this.mColors = iArr3;
        int i14 = 0;
        for (int i15 = 0; i15 < 32768; i15++) {
            if (iArr2[i15] > 0) {
                iArr3[i14] = i15;
                i14++;
            }
        }
        if (i12 <= i10) {
            this.mQuantizedColors = new ArrayList();
            for (int i16 = 0; i16 < i12; i16++) {
                int i17 = iArr3[i16];
                this.mQuantizedColors.add(new Palette.Swatch(a(i17), iArr2[i17]));
            }
            return;
        }
        this.mQuantizedColors = h(i10);
    }

    private static int a(int i10) {
        return b(k(i10), j(i10), i(i10));
    }

    private static int g(int i10) {
        return f(Color.blue(i10), 8, 5) | (f(Color.red(i10), 8, 5) << 10) | (f(Color.green(i10), 8, 5) << 5);
    }

    private boolean l(int i10) {
        int iA = a(i10);
        ColorUtils.g(iA, this.mTempHsl);
        return m(iA, this.mTempHsl);
    }

    private boolean n(Palette.Swatch swatch) {
        return m(swatch.e(), swatch.c());
    }

    private void o(PriorityQueue<Vbox> priorityQueue, int i10) {
        Vbox vboxPoll;
        while (priorityQueue.size() < i10 && (vboxPoll = priorityQueue.poll()) != null && vboxPoll.a()) {
            priorityQueue.offer(vboxPoll.h());
            priorityQueue.offer(vboxPoll);
        }
    }
}
