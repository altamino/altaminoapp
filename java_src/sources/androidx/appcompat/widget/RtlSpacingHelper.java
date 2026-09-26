package androidx.appcompat.widget;

/* JADX INFO: loaded from: classes10.dex */
class RtlSpacingHelper {
    public static final int UNDEFINED = Integer.MIN_VALUE;
    private int mLeft = 0;
    private int mRight = 0;
    private int mStart = Integer.MIN_VALUE;
    private int mEnd = Integer.MIN_VALUE;
    private int mExplicitLeft = 0;
    private int mExplicitRight = 0;
    private boolean mIsRtl = false;
    private boolean mIsRelative = false;

    public int a() {
        return this.mIsRtl ? this.mLeft : this.mRight;
    }

    public int b() {
        return this.mLeft;
    }

    public int c() {
        return this.mRight;
    }

    public int d() {
        return this.mIsRtl ? this.mRight : this.mLeft;
    }

    public void e(int i10, int i11) {
        this.mIsRelative = false;
        if (i10 != Integer.MIN_VALUE) {
            this.mExplicitLeft = i10;
            this.mLeft = i10;
        }
        if (i11 != Integer.MIN_VALUE) {
            this.mExplicitRight = i11;
            this.mRight = i11;
        }
    }

    public void f(boolean z6) {
        if (z6 == this.mIsRtl) {
            return;
        }
        this.mIsRtl = z6;
        if (!this.mIsRelative) {
            this.mLeft = this.mExplicitLeft;
            this.mRight = this.mExplicitRight;
            return;
        }
        if (z6) {
            int i10 = this.mEnd;
            if (i10 == Integer.MIN_VALUE) {
                i10 = this.mExplicitLeft;
            }
            this.mLeft = i10;
            int i11 = this.mStart;
            if (i11 == Integer.MIN_VALUE) {
                i11 = this.mExplicitRight;
            }
            this.mRight = i11;
            return;
        }
        int i12 = this.mStart;
        if (i12 == Integer.MIN_VALUE) {
            i12 = this.mExplicitLeft;
        }
        this.mLeft = i12;
        int i13 = this.mEnd;
        if (i13 == Integer.MIN_VALUE) {
            i13 = this.mExplicitRight;
        }
        this.mRight = i13;
    }

    public void g(int i10, int i11) {
        this.mStart = i10;
        this.mEnd = i11;
        this.mIsRelative = true;
        if (this.mIsRtl) {
            if (i11 != Integer.MIN_VALUE) {
                this.mLeft = i11;
            }
            if (i10 != Integer.MIN_VALUE) {
                this.mRight = i10;
                return;
            }
            return;
        }
        if (i10 != Integer.MIN_VALUE) {
            this.mLeft = i10;
        }
        if (i11 != Integer.MIN_VALUE) {
            this.mRight = i11;
        }
    }

    RtlSpacingHelper() {
    }
}
