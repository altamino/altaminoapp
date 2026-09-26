package com.google.android.exoplayer2.text.ttml;

/* JADX INFO: loaded from: classes.dex */
final class e {
    public final float height;
    public final String id;
    public final float line;
    public final int lineAnchor;
    public final int lineType;
    public final float position;
    public final float textSize;
    public final int textSizeType;
    public final int verticalType;
    public final float width;

    public e(String str) {
        this(str, -3.4028235E38f, -3.4028235E38f, Integer.MIN_VALUE, Integer.MIN_VALUE, -3.4028235E38f, -3.4028235E38f, Integer.MIN_VALUE, -3.4028235E38f, Integer.MIN_VALUE);
    }

    public e(String str, float f, float f6, int i10, int i11, float f7, float f10, int i12, float f11, int i13) {
        this.id = str;
        this.position = f;
        this.line = f6;
        this.lineType = i10;
        this.lineAnchor = i11;
        this.width = f7;
        this.height = f10;
        this.textSizeType = i12;
        this.textSize = f11;
        this.verticalType = i13;
    }
}
