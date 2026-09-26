package androidx.palette.graphics;

import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.Rect;
import android.os.AsyncTask;
import android.util.Log;
import android.util.SparseBooleanArray;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.collection.ArrayMap;
import androidx.core.graphics.ColorUtils;
import androidx.core.view.ViewCompat;
import com.google.firebase.remoteconfig.a;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import kotlinx.serialization.json.internal.b;

/* JADX INFO: loaded from: classes7.dex */
public final class Palette {
    static final int DEFAULT_CALCULATE_NUMBER_COLORS = 16;
    static final Filter DEFAULT_FILTER = new Filter() { // from class: androidx.palette.graphics.Palette.1
        private static final float BLACK_MAX_LIGHTNESS = 0.05f;
        private static final float WHITE_MIN_LIGHTNESS = 0.95f;

        private boolean b(float[] fArr) {
            return fArr[2] <= BLACK_MAX_LIGHTNESS;
        }

        private boolean c(float[] fArr) {
            float f = fArr[0];
            return f >= 10.0f && f <= 37.0f && fArr[1] <= 0.82f;
        }

        private boolean d(float[] fArr) {
            return fArr[2] >= WHITE_MIN_LIGHTNESS;
        }

        @Override // androidx.palette.graphics.Palette.Filter
        public boolean a(int i10, float[] fArr) {
            if (!d(fArr) && !b(fArr) && !c(fArr)) {
                return true;
            }
            return false;
        }
    };
    static final int DEFAULT_RESIZE_BITMAP_AREA = 12544;
    static final String LOG_TAG = "Palette";
    static final boolean LOG_TIMINGS = false;
    static final float MIN_CONTRAST_BODY_TEXT = 4.5f;
    static final float MIN_CONTRAST_TITLE_TEXT = 3.0f;
    private final List<Swatch> mSwatches;
    private final List<Target> mTargets;
    private final SparseBooleanArray mUsedColors = new SparseBooleanArray();
    private final Map<Target, Swatch> mSelectedSwatches = new ArrayMap();

    @Nullable
    private final Swatch mDominantSwatch = a();

    public static final class Builder {

        @Nullable
        private final Bitmap mBitmap;
        private final List<Filter> mFilters;
        private int mMaxColors;

        @Nullable
        private Rect mRegion;
        private int mResizeArea;
        private int mResizeMaxDimension;

        @Nullable
        private final List<Swatch> mSwatches;
        private final List<Target> mTargets;

        /* JADX INFO: renamed from: androidx.palette.graphics.Palette$Builder$1, reason: invalid class name */
        /* JADX INFO: loaded from: classes2.dex */
        class AnonymousClass1 extends AsyncTask<Bitmap, Void, Palette> {
            final /* synthetic */ Builder this$0;
            final /* synthetic */ PaletteAsyncListener val$listener;

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // android.os.AsyncTask
            @Nullable
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public Palette doInBackground(Bitmap... bitmapArr) {
                try {
                    return this.this$0.a();
                } catch (Exception e) {
                    Log.e(Palette.LOG_TAG, "Exception thrown during async generate", e);
                    return null;
                }
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // android.os.AsyncTask
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public void onPostExecute(@Nullable Palette palette) {
                this.val$listener.a(palette);
            }
        }

        public Builder(@NonNull Bitmap bitmap) {
            ArrayList arrayList = new ArrayList();
            this.mTargets = arrayList;
            this.mMaxColors = 16;
            this.mResizeArea = Palette.DEFAULT_RESIZE_BITMAP_AREA;
            this.mResizeMaxDimension = -1;
            ArrayList arrayList2 = new ArrayList();
            this.mFilters = arrayList2;
            if (bitmap == null || bitmap.isRecycled()) {
                throw new IllegalArgumentException("Bitmap is not valid");
            }
            arrayList2.add(Palette.DEFAULT_FILTER);
            this.mBitmap = bitmap;
            this.mSwatches = null;
            arrayList.add(Target.LIGHT_VIBRANT);
            arrayList.add(Target.VIBRANT);
            arrayList.add(Target.DARK_VIBRANT);
            arrayList.add(Target.LIGHT_MUTED);
            arrayList.add(Target.MUTED);
            arrayList.add(Target.DARK_MUTED);
        }

        private Bitmap c(Bitmap bitmap) {
            int iMax;
            int i10;
            double dSqrt = -1.0d;
            if (this.mResizeArea > 0) {
                int width = bitmap.getWidth() * bitmap.getHeight();
                int i11 = this.mResizeArea;
                if (width > i11) {
                    dSqrt = Math.sqrt(((double) i11) / ((double) width));
                }
            } else if (this.mResizeMaxDimension > 0 && (iMax = Math.max(bitmap.getWidth(), bitmap.getHeight())) > (i10 = this.mResizeMaxDimension)) {
                dSqrt = ((double) i10) / ((double) iMax);
            }
            return dSqrt <= a.DEFAULT_VALUE_FOR_DOUBLE ? bitmap : Bitmap.createScaledBitmap(bitmap, (int) Math.ceil(((double) bitmap.getWidth()) * dSqrt), (int) Math.ceil(((double) bitmap.getHeight()) * dSqrt), false);
        }

        @NonNull
        public Palette a() {
            List<Swatch> listD;
            Filter[] filterArr;
            Bitmap bitmap = this.mBitmap;
            if (bitmap != null) {
                Bitmap bitmapC = c(bitmap);
                Rect rect = this.mRegion;
                if (bitmapC != this.mBitmap && rect != null) {
                    double width = ((double) bitmapC.getWidth()) / ((double) this.mBitmap.getWidth());
                    rect.left = (int) Math.floor(((double) rect.left) * width);
                    rect.top = (int) Math.floor(((double) rect.top) * width);
                    rect.right = Math.min((int) Math.ceil(((double) rect.right) * width), bitmapC.getWidth());
                    rect.bottom = Math.min((int) Math.ceil(((double) rect.bottom) * width), bitmapC.getHeight());
                }
                int[] iArrB = b(bitmapC);
                int i10 = this.mMaxColors;
                if (this.mFilters.isEmpty()) {
                    filterArr = null;
                } else {
                    List<Filter> list = this.mFilters;
                    filterArr = (Filter[]) list.toArray(new Filter[list.size()]);
                }
                ColorCutQuantizer colorCutQuantizer = new ColorCutQuantizer(iArrB, i10, filterArr);
                if (bitmapC != this.mBitmap) {
                    bitmapC.recycle();
                }
                listD = colorCutQuantizer.d();
            } else {
                listD = this.mSwatches;
                if (listD == null) {
                    throw new AssertionError();
                }
            }
            Palette palette = new Palette(listD, this.mTargets);
            palette.c();
            return palette;
        }

        private int[] b(Bitmap bitmap) {
            int width = bitmap.getWidth();
            int height = bitmap.getHeight();
            int[] iArr = new int[width * height];
            bitmap.getPixels(iArr, 0, width, 0, 0, width, height);
            Rect rect = this.mRegion;
            if (rect == null) {
                return iArr;
            }
            int iWidth = rect.width();
            int iHeight = this.mRegion.height();
            int[] iArr2 = new int[iWidth * iHeight];
            for (int i10 = 0; i10 < iHeight; i10++) {
                Rect rect2 = this.mRegion;
                System.arraycopy(iArr, ((rect2.top + i10) * width) + rect2.left, iArr2, i10 * iWidth, iWidth);
            }
            return iArr2;
        }

        public Builder(@NonNull List<Swatch> list) {
            this.mTargets = new ArrayList();
            this.mMaxColors = 16;
            this.mResizeArea = Palette.DEFAULT_RESIZE_BITMAP_AREA;
            this.mResizeMaxDimension = -1;
            ArrayList arrayList = new ArrayList();
            this.mFilters = arrayList;
            if (list != null && !list.isEmpty()) {
                arrayList.add(Palette.DEFAULT_FILTER);
                this.mSwatches = list;
                this.mBitmap = null;
                return;
            }
            throw new IllegalArgumentException("List of Swatches is not valid");
        }
    }

    public interface Filter {
        boolean a(@ColorInt int i10, @NonNull float[] fArr);
    }

    public interface PaletteAsyncListener {
        void a(@Nullable Palette palette);
    }

    public static final class Swatch {
        private final int mBlue;
        private int mBodyTextColor;
        private boolean mGeneratedTextColors;
        private final int mGreen;

        @Nullable
        private float[] mHsl;
        private final int mPopulation;
        private final int mRed;
        private final int mRgb;
        private int mTitleTextColor;

        public int d() {
            return this.mPopulation;
        }

        @ColorInt
        public int e() {
            return this.mRgb;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || Swatch.class != obj.getClass()) {
                return false;
            }
            Swatch swatch = (Swatch) obj;
            return this.mPopulation == swatch.mPopulation && this.mRgb == swatch.mRgb;
        }

        public int hashCode() {
            return (this.mRgb * 31) + this.mPopulation;
        }

        private void a() {
            if (this.mGeneratedTextColors) {
                return;
            }
            int iF = ColorUtils.f(-1, this.mRgb, Palette.MIN_CONTRAST_BODY_TEXT);
            int iF2 = ColorUtils.f(-1, this.mRgb, 3.0f);
            if (iF != -1 && iF2 != -1) {
                this.mBodyTextColor = ColorUtils.o(-1, iF);
                this.mTitleTextColor = ColorUtils.o(-1, iF2);
                this.mGeneratedTextColors = true;
                return;
            }
            int iF3 = ColorUtils.f(ViewCompat.MEASURED_STATE_MASK, this.mRgb, Palette.MIN_CONTRAST_BODY_TEXT);
            int iF4 = ColorUtils.f(ViewCompat.MEASURED_STATE_MASK, this.mRgb, 3.0f);
            if (iF3 == -1 || iF4 == -1) {
                this.mBodyTextColor = iF != -1 ? ColorUtils.o(-1, iF) : ColorUtils.o(ViewCompat.MEASURED_STATE_MASK, iF3);
                this.mTitleTextColor = iF2 != -1 ? ColorUtils.o(-1, iF2) : ColorUtils.o(ViewCompat.MEASURED_STATE_MASK, iF4);
                this.mGeneratedTextColors = true;
            } else {
                this.mBodyTextColor = ColorUtils.o(ViewCompat.MEASURED_STATE_MASK, iF3);
                this.mTitleTextColor = ColorUtils.o(ViewCompat.MEASURED_STATE_MASK, iF4);
                this.mGeneratedTextColors = true;
            }
        }

        @NonNull
        public float[] c() {
            if (this.mHsl == null) {
                this.mHsl = new float[3];
            }
            ColorUtils.a(this.mRed, this.mGreen, this.mBlue, this.mHsl);
            return this.mHsl;
        }

        public String toString() {
            return Swatch.class.getSimpleName() + " [RGB: #" + Integer.toHexString(e()) + b.END_LIST + " [HSL: " + Arrays.toString(c()) + b.END_LIST + " [Population: " + this.mPopulation + b.END_LIST + " [Title Text: #" + Integer.toHexString(f()) + b.END_LIST + " [Body Text: #" + Integer.toHexString(b()) + b.END_LIST;
        }

        public Swatch(@ColorInt int i10, int i11) {
            this.mRed = Color.red(i10);
            this.mGreen = Color.green(i10);
            this.mBlue = Color.blue(i10);
            this.mRgb = i10;
            this.mPopulation = i11;
        }

        @ColorInt
        public int b() {
            a();
            return this.mBodyTextColor;
        }

        @ColorInt
        public int f() {
            a();
            return this.mTitleTextColor;
        }
    }

    @Nullable
    private Swatch a() {
        int size = this.mSwatches.size();
        int iD = Integer.MIN_VALUE;
        Swatch swatch = null;
        for (int i10 = 0; i10 < size; i10++) {
            Swatch swatch2 = this.mSwatches.get(i10);
            if (swatch2.d() > iD) {
                iD = swatch2.d();
                swatch = swatch2;
            }
        }
        return swatch;
    }

    @NonNull
    public static Builder b(@NonNull Bitmap bitmap) {
        return new Builder(bitmap);
    }

    @Nullable
    private Swatch f(Target target) {
        int size = this.mSwatches.size();
        float f = 0.0f;
        Swatch swatch = null;
        for (int i10 = 0; i10 < size; i10++) {
            Swatch swatch2 = this.mSwatches.get(i10);
            if (i(swatch2, target)) {
                float fD = d(swatch2, target);
                if (swatch == null || fD > f) {
                    swatch = swatch2;
                    f = fD;
                }
            }
        }
        return swatch;
    }

    void c() {
        int size = this.mTargets.size();
        for (int i10 = 0; i10 < size; i10++) {
            Target target = this.mTargets.get(i10);
            target.k();
            this.mSelectedSwatches.put(target, e(target));
        }
        this.mUsedColors.clear();
    }

    @Nullable
    public Swatch g() {
        return h(Target.MUTED);
    }

    @Nullable
    public Swatch h(@NonNull Target target) {
        return this.mSelectedSwatches.get(target);
    }

    Palette(List<Swatch> list, List<Target> list2) {
        this.mSwatches = list;
        this.mTargets = list2;
    }

    private float d(Swatch swatch, Target target) {
        int iD;
        float fG;
        float fA;
        float[] fArrC = swatch.c();
        Swatch swatch2 = this.mDominantSwatch;
        if (swatch2 != null) {
            iD = swatch2.d();
        } else {
            iD = 1;
        }
        float f = 0.0f;
        if (target.g() > 0.0f) {
            fG = target.g() * (1.0f - Math.abs(fArrC[1] - target.i()));
        } else {
            fG = 0.0f;
        }
        if (target.a() > 0.0f) {
            fA = target.a() * (1.0f - Math.abs(fArrC[2] - target.h()));
        } else {
            fA = 0.0f;
        }
        if (target.f() > 0.0f) {
            f = target.f() * (swatch.d() / iD);
        }
        return fG + fA + f;
    }

    @Nullable
    private Swatch e(Target target) {
        Swatch swatchF = f(target);
        if (swatchF != null && target.j()) {
            this.mUsedColors.append(swatchF.e(), true);
        }
        return swatchF;
    }

    private boolean i(Swatch swatch, Target target) {
        float[] fArrC = swatch.c();
        if (fArrC[1] >= target.e() && fArrC[1] <= target.c() && fArrC[2] >= target.d() && fArrC[2] <= target.b() && !this.mUsedColors.get(swatch.e())) {
            return true;
        }
        return false;
    }
}
