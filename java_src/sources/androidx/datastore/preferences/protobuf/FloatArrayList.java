package androidx.datastore.preferences.protobuf;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

/* JADX INFO: loaded from: classes11.dex */
final class FloatArrayList extends AbstractProtobufList<Float> implements Internal.FloatList, RandomAccess, PrimitiveNonBoxingCollection {
    private static final FloatArrayList EMPTY_LIST;
    private float[] array;
    private int size;

    FloatArrayList() {
        this(new float[10], 0);
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractProtobufList, java.util.AbstractList, java.util.Collection, java.util.List
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof FloatArrayList)) {
            return super.equals(obj);
        }
        FloatArrayList floatArrayList = (FloatArrayList) obj;
        if (this.size != floatArrayList.size) {
            return false;
        }
        float[] fArr = floatArrayList.array;
        for (int i10 = 0; i10 < this.size; i10++) {
            if (Float.floatToIntBits(this.array[i10]) != Float.floatToIntBits(fArr[i10])) {
                return false;
            }
        }
        return true;
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractProtobufList, java.util.AbstractList, java.util.Collection, java.util.List
    public int hashCode() {
        int iFloatToIntBits = 1;
        for (int i10 = 0; i10 < this.size; i10++) {
            iFloatToIntBits = (iFloatToIntBits * 31) + Float.floatToIntBits(this.array[i10]);
        }
        return iFloatToIntBits;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.size;
    }

    static {
        FloatArrayList floatArrayList = new FloatArrayList(new float[0], 0);
        EMPTY_LIST = floatArrayList;
        floatArrayList.makeImmutable();
    }

    private FloatArrayList(float[] fArr, int i10) {
        this.array = fArr;
        this.size = i10;
    }

    private void g(int i10) {
        if (i10 < 0 || i10 >= this.size) {
            throw new IndexOutOfBoundsException(m(i10));
        }
    }

    private String m(int i10) {
        return "Index:" + i10 + ", Size:" + this.size;
    }

    @Override // androidx.datastore.preferences.protobuf.Internal.ProtobufList
    /* JADX INFO: renamed from: p, reason: merged with bridge method [inline-methods] */
    public Internal.FloatList mutableCopyWithCapacity(int i10) {
        if (i10 >= this.size) {
            return new FloatArrayList(Arrays.copyOf(this.array, i10), this.size);
        }
        throw new IllegalArgumentException();
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractProtobufList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean remove(Object obj) {
        c();
        for (int i10 = 0; i10 < this.size; i10++) {
            if (obj.equals(Float.valueOf(this.array[i10]))) {
                float[] fArr = this.array;
                System.arraycopy(fArr, i10 + 1, fArr, i10, (this.size - i10) - 1);
                this.size--;
                ((AbstractList) this).modCount++;
                return true;
            }
        }
        return false;
    }

    private void f(int i10, float f) {
        int i11;
        c();
        if (i10 >= 0 && i10 <= (i11 = this.size)) {
            float[] fArr = this.array;
            if (i11 < fArr.length) {
                System.arraycopy(fArr, i10, fArr, i10 + 1, i11 - i10);
            } else {
                float[] fArr2 = new float[((i11 * 3) / 2) + 1];
                System.arraycopy(fArr, 0, fArr2, 0, i10);
                System.arraycopy(this.array, i10, fArr2, i10 + 1, this.size - i10);
                this.array = fArr2;
            }
            this.array[i10] = f;
            this.size++;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException(m(i10));
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractProtobufList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean addAll(Collection<? extends Float> collection) {
        c();
        Internal.a(collection);
        if (!(collection instanceof FloatArrayList)) {
            return super.addAll(collection);
        }
        FloatArrayList floatArrayList = (FloatArrayList) collection;
        int i10 = floatArrayList.size;
        if (i10 == 0) {
            return false;
        }
        int i11 = this.size;
        if (Integer.MAX_VALUE - i11 >= i10) {
            int i12 = i11 + i10;
            float[] fArr = this.array;
            if (i12 > fArr.length) {
                this.array = Arrays.copyOf(fArr, i12);
            }
            System.arraycopy(floatArrayList.array, 0, this.array, this.size, floatArrayList.size);
            this.size = i12;
            ((AbstractList) this).modCount++;
            return true;
        }
        throw new OutOfMemoryError();
    }

    public void addFloat(float f) {
        c();
        int i10 = this.size;
        float[] fArr = this.array;
        if (i10 == fArr.length) {
            float[] fArr2 = new float[((i10 * 3) / 2) + 1];
            System.arraycopy(fArr, 0, fArr2, 0, i10);
            this.array = fArr2;
        }
        float[] fArr3 = this.array;
        int i11 = this.size;
        this.size = i11 + 1;
        fArr3[i11] = f;
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractProtobufList, java.util.AbstractList, java.util.List
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public void add(int i10, Float f) {
        f(i10, f.floatValue());
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractProtobufList, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public boolean add(Float f) {
        addFloat(f.floatValue());
        return true;
    }

    public float getFloat(int i10) {
        g(i10);
        return this.array[i10];
    }

    @Override // java.util.AbstractList, java.util.List
    /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
    public Float get(int i10) {
        return Float.valueOf(getFloat(i10));
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractProtobufList, java.util.AbstractList, java.util.List
    /* JADX INFO: renamed from: q, reason: merged with bridge method [inline-methods] */
    public Float remove(int i10) {
        c();
        g(i10);
        float[] fArr = this.array;
        float f = fArr[i10];
        int i11 = this.size;
        if (i10 < i11 - 1) {
            System.arraycopy(fArr, i10 + 1, fArr, i10, (i11 - i10) - 1);
        }
        this.size--;
        ((AbstractList) this).modCount++;
        return Float.valueOf(f);
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractProtobufList, java.util.AbstractList, java.util.List
    /* JADX INFO: renamed from: r, reason: merged with bridge method [inline-methods] */
    public Float set(int i10, Float f) {
        return Float.valueOf(setFloat(i10, f.floatValue()));
    }

    @Override // java.util.AbstractList
    protected void removeRange(int i10, int i11) {
        c();
        if (i11 >= i10) {
            float[] fArr = this.array;
            System.arraycopy(fArr, i11, fArr, i10, this.size - i11);
            this.size -= i11 - i10;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException("toIndex < fromIndex");
    }

    public float setFloat(int i10, float f) {
        c();
        g(i10);
        float[] fArr = this.array;
        float f6 = fArr[i10];
        fArr[i10] = f;
        return f6;
    }
}
