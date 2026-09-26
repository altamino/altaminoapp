package com.google.android.exoplayer2.text;

import android.graphics.Bitmap;
import android.os.Bundle;
import android.text.Layout;
import android.text.Spanned;
import android.text.SpannedString;
import android.text.TextUtils;
import androidx.annotation.ColorInt;
import androidx.annotation.Nullable;
import androidx.core.view.ViewCompat;

/* JADX INFO: loaded from: classes7.dex */
public final class b implements com.google.android.exoplayer2.h {
    public static final int ANCHOR_TYPE_END = 2;
    public static final int ANCHOR_TYPE_MIDDLE = 1;
    public static final int ANCHOR_TYPE_START = 0;
    public static final float DIMEN_UNSET = -3.4028235E38f;
    private static final int FIELD_BITMAP = 3;
    private static final int FIELD_BITMAP_HEIGHT = 12;
    private static final int FIELD_LINE = 4;
    private static final int FIELD_LINE_ANCHOR = 6;
    private static final int FIELD_LINE_TYPE = 5;
    private static final int FIELD_MULTI_ROW_ALIGNMENT = 2;
    private static final int FIELD_POSITION = 7;
    private static final int FIELD_POSITION_ANCHOR = 8;
    private static final int FIELD_SHEAR_DEGREES = 16;
    private static final int FIELD_SIZE = 11;
    private static final int FIELD_TEXT = 0;
    private static final int FIELD_TEXT_ALIGNMENT = 1;
    private static final int FIELD_TEXT_SIZE = 10;
    private static final int FIELD_TEXT_SIZE_TYPE = 9;
    private static final int FIELD_VERTICAL_TYPE = 15;
    private static final int FIELD_WINDOW_COLOR = 13;
    private static final int FIELD_WINDOW_COLOR_SET = 14;
    public static final int LINE_TYPE_FRACTION = 0;
    public static final int LINE_TYPE_NUMBER = 1;
    public static final int TEXT_SIZE_TYPE_ABSOLUTE = 2;
    public static final int TEXT_SIZE_TYPE_FRACTIONAL = 0;
    public static final int TEXT_SIZE_TYPE_FRACTIONAL_IGNORE_PADDING = 1;
    public static final int TYPE_UNSET = Integer.MIN_VALUE;
    public static final int VERTICAL_TYPE_LR = 2;
    public static final int VERTICAL_TYPE_RL = 1;

    @Nullable
    public final Bitmap bitmap;
    public final float bitmapHeight;
    public final float line;
    public final int lineAnchor;
    public final int lineType;

    @Nullable
    public final Layout.Alignment multiRowAlignment;
    public final float position;
    public final int positionAnchor;
    public final float shearDegrees;
    public final float size;

    @Nullable
    public final CharSequence text;

    @Nullable
    public final Layout.Alignment textAlignment;
    public final float textSize;
    public final int textSizeType;
    public final int verticalType;
    public final int windowColor;
    public final boolean windowColorSet;
    public static final b EMPTY = new C0178b().o("").a();
    public static final com.google.android.exoplayer2.h.a<b> CREATOR = new com.google.android.exoplayer2.h.a() { // from class: com.google.android.exoplayer2.text.a
        @Override // com.google.android.exoplayer2.h.a
        public final com.google.android.exoplayer2.h a(Bundle bundle) {
            return b.c(bundle);
        }
    };

    /* JADX INFO: renamed from: com.google.android.exoplayer2.text.b$b, reason: collision with other inner class name */
    public static final class C0178b {

        @Nullable
        private Bitmap bitmap;
        private float bitmapHeight;
        private float line;
        private int lineAnchor;
        private int lineType;

        @Nullable
        private Layout.Alignment multiRowAlignment;
        private float position;
        private int positionAnchor;
        private float shearDegrees;
        private float size;

        @Nullable
        private CharSequence text;

        @Nullable
        private Layout.Alignment textAlignment;
        private float textSize;
        private int textSizeType;
        private int verticalType;

        @ColorInt
        private int windowColor;
        private boolean windowColorSet;

        public C0178b b() {
            this.windowColorSet = false;
            return this;
        }

        public int c() {
            return this.lineAnchor;
        }

        public int d() {
            return this.positionAnchor;
        }

        @Nullable
        public CharSequence e() {
            return this.text;
        }

        public C0178b f(Bitmap bitmap) {
            this.bitmap = bitmap;
            return this;
        }

        public C0178b g(float f) {
            this.bitmapHeight = f;
            return this;
        }

        public C0178b h(float f, int i10) {
            this.line = f;
            this.lineType = i10;
            return this;
        }

        public C0178b i(int i10) {
            this.lineAnchor = i10;
            return this;
        }

        public C0178b j(@Nullable Layout.Alignment alignment) {
            this.multiRowAlignment = alignment;
            return this;
        }

        public C0178b k(float f) {
            this.position = f;
            return this;
        }

        public C0178b l(int i10) {
            this.positionAnchor = i10;
            return this;
        }

        public C0178b m(float f) {
            this.shearDegrees = f;
            return this;
        }

        public C0178b n(float f) {
            this.size = f;
            return this;
        }

        public C0178b o(CharSequence charSequence) {
            this.text = charSequence;
            return this;
        }

        public C0178b p(@Nullable Layout.Alignment alignment) {
            this.textAlignment = alignment;
            return this;
        }

        public C0178b q(float f, int i10) {
            this.textSize = f;
            this.textSizeType = i10;
            return this;
        }

        public C0178b r(int i10) {
            this.verticalType = i10;
            return this;
        }

        public C0178b s(@ColorInt int i10) {
            this.windowColor = i10;
            this.windowColorSet = true;
            return this;
        }

        public C0178b() {
            this.text = null;
            this.bitmap = null;
            this.textAlignment = null;
            this.multiRowAlignment = null;
            this.line = -3.4028235E38f;
            this.lineType = Integer.MIN_VALUE;
            this.lineAnchor = Integer.MIN_VALUE;
            this.position = -3.4028235E38f;
            this.positionAnchor = Integer.MIN_VALUE;
            this.textSizeType = Integer.MIN_VALUE;
            this.textSize = -3.4028235E38f;
            this.size = -3.4028235E38f;
            this.bitmapHeight = -3.4028235E38f;
            this.windowColorSet = false;
            this.windowColor = ViewCompat.MEASURED_STATE_MASK;
            this.verticalType = Integer.MIN_VALUE;
        }

        public b a() {
            return new b(this.text, this.textAlignment, this.multiRowAlignment, this.bitmap, this.line, this.lineType, this.lineAnchor, this.position, this.positionAnchor, this.textSizeType, this.textSize, this.size, this.bitmapHeight, this.windowColorSet, this.windowColor, this.verticalType, this.shearDegrees);
        }

        private C0178b(b bVar) {
            this.text = bVar.text;
            this.bitmap = bVar.bitmap;
            this.textAlignment = bVar.textAlignment;
            this.multiRowAlignment = bVar.multiRowAlignment;
            this.line = bVar.line;
            this.lineType = bVar.lineType;
            this.lineAnchor = bVar.lineAnchor;
            this.position = bVar.position;
            this.positionAnchor = bVar.positionAnchor;
            this.textSizeType = bVar.textSizeType;
            this.textSize = bVar.textSize;
            this.size = bVar.size;
            this.bitmapHeight = bVar.bitmapHeight;
            this.windowColorSet = bVar.windowColorSet;
            this.windowColor = bVar.windowColor;
            this.verticalType = bVar.verticalType;
            this.shearDegrees = bVar.shearDegrees;
        }
    }

    public boolean equals(@Nullable Object obj) {
        Bitmap bitmap;
        Bitmap bitmap2;
        if (this == obj) {
            return true;
        }
        if (obj == null || b.class != obj.getClass()) {
            return false;
        }
        b bVar = (b) obj;
        return TextUtils.equals(this.text, bVar.text) && this.textAlignment == bVar.textAlignment && this.multiRowAlignment == bVar.multiRowAlignment && ((bitmap = this.bitmap) != null ? !((bitmap2 = bVar.bitmap) == null || !bitmap.sameAs(bitmap2)) : bVar.bitmap == null) && this.line == bVar.line && this.lineType == bVar.lineType && this.lineAnchor == bVar.lineAnchor && this.position == bVar.position && this.positionAnchor == bVar.positionAnchor && this.size == bVar.size && this.bitmapHeight == bVar.bitmapHeight && this.windowColorSet == bVar.windowColorSet && this.windowColor == bVar.windowColor && this.textSizeType == bVar.textSizeType && this.textSize == bVar.textSize && this.verticalType == bVar.verticalType && this.shearDegrees == bVar.shearDegrees;
    }

    @Deprecated
    public b(CharSequence charSequence) {
        this(charSequence, null, -3.4028235E38f, Integer.MIN_VALUE, Integer.MIN_VALUE, -3.4028235E38f, Integer.MIN_VALUE, -3.4028235E38f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final b c(Bundle bundle) {
        C0178b c0178b = new C0178b();
        CharSequence charSequence = bundle.getCharSequence(d(0));
        if (charSequence != null) {
            c0178b.o(charSequence);
        }
        Layout.Alignment alignment = (Layout.Alignment) bundle.getSerializable(d(1));
        if (alignment != null) {
            c0178b.p(alignment);
        }
        Layout.Alignment alignment2 = (Layout.Alignment) bundle.getSerializable(d(2));
        if (alignment2 != null) {
            c0178b.j(alignment2);
        }
        Bitmap bitmap = (Bitmap) bundle.getParcelable(d(3));
        if (bitmap != null) {
            c0178b.f(bitmap);
        }
        if (bundle.containsKey(d(4)) && bundle.containsKey(d(5))) {
            c0178b.h(bundle.getFloat(d(4)), bundle.getInt(d(5)));
        }
        if (bundle.containsKey(d(6))) {
            c0178b.i(bundle.getInt(d(6)));
        }
        if (bundle.containsKey(d(7))) {
            c0178b.k(bundle.getFloat(d(7)));
        }
        if (bundle.containsKey(d(8))) {
            c0178b.l(bundle.getInt(d(8)));
        }
        if (bundle.containsKey(d(10)) && bundle.containsKey(d(9))) {
            c0178b.q(bundle.getFloat(d(10)), bundle.getInt(d(9)));
        }
        if (bundle.containsKey(d(11))) {
            c0178b.n(bundle.getFloat(d(11)));
        }
        if (bundle.containsKey(d(12))) {
            c0178b.g(bundle.getFloat(d(12)));
        }
        if (bundle.containsKey(d(13))) {
            c0178b.s(bundle.getInt(d(13)));
        }
        if (!bundle.getBoolean(d(14), false)) {
            c0178b.b();
        }
        if (bundle.containsKey(d(15))) {
            c0178b.r(bundle.getInt(d(15)));
        }
        if (bundle.containsKey(d(16))) {
            c0178b.m(bundle.getFloat(d(16)));
        }
        return c0178b.a();
    }

    private static String d(int i10) {
        return Integer.toString(i10, 36);
    }

    public C0178b b() {
        return new C0178b();
    }

    public int hashCode() {
        return com.google.common.base.k.b(this.text, this.textAlignment, this.multiRowAlignment, this.bitmap, Float.valueOf(this.line), Integer.valueOf(this.lineType), Integer.valueOf(this.lineAnchor), Float.valueOf(this.position), Integer.valueOf(this.positionAnchor), Float.valueOf(this.size), Float.valueOf(this.bitmapHeight), Boolean.valueOf(this.windowColorSet), Integer.valueOf(this.windowColor), Integer.valueOf(this.textSizeType), Float.valueOf(this.textSize), Integer.valueOf(this.verticalType), Float.valueOf(this.shearDegrees));
    }

    @Override // com.google.android.exoplayer2.h
    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putCharSequence(d(0), this.text);
        bundle.putSerializable(d(1), this.textAlignment);
        bundle.putSerializable(d(2), this.multiRowAlignment);
        bundle.putParcelable(d(3), this.bitmap);
        bundle.putFloat(d(4), this.line);
        bundle.putInt(d(5), this.lineType);
        bundle.putInt(d(6), this.lineAnchor);
        bundle.putFloat(d(7), this.position);
        bundle.putInt(d(8), this.positionAnchor);
        bundle.putInt(d(9), this.textSizeType);
        bundle.putFloat(d(10), this.textSize);
        bundle.putFloat(d(11), this.size);
        bundle.putFloat(d(12), this.bitmapHeight);
        bundle.putBoolean(d(14), this.windowColorSet);
        bundle.putInt(d(13), this.windowColor);
        bundle.putInt(d(15), this.verticalType);
        bundle.putFloat(d(16), this.shearDegrees);
        return bundle;
    }

    @Deprecated
    public b(CharSequence charSequence, @Nullable Layout.Alignment alignment, float f, int i10, int i11, float f6, int i12, float f7) {
        this(charSequence, alignment, f, i10, i11, f6, i12, f7, false, ViewCompat.MEASURED_STATE_MASK);
    }

    @Deprecated
    public b(CharSequence charSequence, @Nullable Layout.Alignment alignment, float f, int i10, int i11, float f6, int i12, float f7, int i13, float f10) {
        this(charSequence, alignment, null, null, f, i10, i11, f6, i12, i13, f10, f7, -3.4028235E38f, false, ViewCompat.MEASURED_STATE_MASK, Integer.MIN_VALUE, 0.0f);
    }

    @Deprecated
    public b(CharSequence charSequence, @Nullable Layout.Alignment alignment, float f, int i10, int i11, float f6, int i12, float f7, boolean z6, int i13) {
        this(charSequence, alignment, null, null, f, i10, i11, f6, i12, Integer.MIN_VALUE, -3.4028235E38f, f7, -3.4028235E38f, z6, i13, Integer.MIN_VALUE, 0.0f);
    }

    private b(@Nullable CharSequence charSequence, @Nullable Layout.Alignment alignment, @Nullable Layout.Alignment alignment2, @Nullable Bitmap bitmap, float f, int i10, int i11, float f6, int i12, int i13, float f7, float f10, float f11, boolean z6, int i14, int i15, float f12) {
        if (charSequence == null) {
            com.google.android.exoplayer2.util.a.e(bitmap);
        } else {
            com.google.android.exoplayer2.util.a.a(bitmap == null);
        }
        if (charSequence instanceof Spanned) {
            this.text = SpannedString.valueOf(charSequence);
        } else if (charSequence != null) {
            this.text = charSequence.toString();
        } else {
            this.text = null;
        }
        this.textAlignment = alignment;
        this.multiRowAlignment = alignment2;
        this.bitmap = bitmap;
        this.line = f;
        this.lineType = i10;
        this.lineAnchor = i11;
        this.position = f6;
        this.positionAnchor = i12;
        this.size = f10;
        this.bitmapHeight = f11;
        this.windowColorSet = z6;
        this.windowColor = i14;
        this.textSizeType = i13;
        this.textSize = f7;
        this.verticalType = i15;
        this.shearDegrees = f12;
    }
}
