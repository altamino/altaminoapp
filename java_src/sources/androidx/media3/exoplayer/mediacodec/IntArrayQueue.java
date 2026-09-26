package androidx.media3.exoplayer.mediacodec;

import androidx.media3.common.util.UnstableApi;
import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes10.dex */
@UnstableApi
final class IntArrayQueue {
    private static final int DEFAULT_INITIAL_CAPACITY = 16;
    private int[] data;
    private int wrapAroundMask;
    private int headIndex = 0;
    private int tailIndex = -1;
    private int size = 0;

    public void b() {
        this.headIndex = 0;
        this.tailIndex = -1;
        this.size = 0;
    }

    public boolean d() {
        return this.size == 0;
    }

    private void c() {
        int[] iArr = this.data;
        int length = iArr.length << 1;
        if (length < 0) {
            throw new IllegalStateException();
        }
        int[] iArr2 = new int[length];
        int length2 = iArr.length;
        int i10 = this.headIndex;
        int i11 = length2 - i10;
        System.arraycopy(iArr, i10, iArr2, 0, i11);
        System.arraycopy(this.data, 0, iArr2, i11, i10);
        this.headIndex = 0;
        this.tailIndex = this.size - 1;
        this.data = iArr2;
        this.wrapAroundMask = iArr2.length - 1;
    }

    public void a(int i10) {
        if (this.size == this.data.length) {
            c();
        }
        int i11 = (this.tailIndex + 1) & this.wrapAroundMask;
        this.tailIndex = i11;
        this.data[i11] = i10;
        this.size++;
    }

    public int e() {
        int i10 = this.size;
        if (i10 == 0) {
            throw new NoSuchElementException();
        }
        int[] iArr = this.data;
        int i11 = this.headIndex;
        int i12 = iArr[i11];
        this.headIndex = (i11 + 1) & this.wrapAroundMask;
        this.size = i10 - 1;
        return i12;
    }

    public IntArrayQueue() {
        int[] iArr = new int[16];
        this.data = iArr;
        this.wrapAroundMask = iArr.length - 1;
    }
}
