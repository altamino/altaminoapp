package androidx.collection;

/* JADX INFO: loaded from: classes11.dex */
public final class CircularIntArray {
    private int mCapacityBitmask;
    private int[] mElements;
    private int mHead;
    private int mTail;

    public CircularIntArray() {
        this(8);
    }

    public void b() {
        this.mTail = this.mHead;
    }

    public boolean d() {
        return this.mHead == this.mTail;
    }

    public CircularIntArray(int i10) {
        if (i10 < 1) {
            throw new IllegalArgumentException("capacity must be >= 1");
        }
        if (i10 > 1073741824) {
            throw new IllegalArgumentException("capacity must be <= 2^30");
        }
        i10 = Integer.bitCount(i10) != 1 ? Integer.highestOneBit(i10 - 1) << 1 : i10;
        this.mCapacityBitmask = i10 - 1;
        this.mElements = new int[i10];
    }

    private void c() {
        int[] iArr = this.mElements;
        int length = iArr.length;
        int i10 = this.mHead;
        int i11 = length - i10;
        int i12 = length << 1;
        if (i12 < 0) {
            throw new RuntimeException("Max array capacity exceeded");
        }
        int[] iArr2 = new int[i12];
        System.arraycopy(iArr, i10, iArr2, 0, i11);
        System.arraycopy(this.mElements, 0, iArr2, i11, this.mHead);
        this.mElements = iArr2;
        this.mHead = 0;
        this.mTail = length;
        this.mCapacityBitmask = i12 - 1;
    }

    public void a(int i10) {
        int[] iArr = this.mElements;
        int i11 = this.mTail;
        iArr[i11] = i10;
        int i12 = this.mCapacityBitmask & (i11 + 1);
        this.mTail = i12;
        if (i12 == this.mHead) {
            c();
        }
    }

    public int e() {
        int i10 = this.mHead;
        if (i10 == this.mTail) {
            throw new ArrayIndexOutOfBoundsException();
        }
        int i11 = this.mElements[i10];
        this.mHead = (i10 + 1) & this.mCapacityBitmask;
        return i11;
    }
}
