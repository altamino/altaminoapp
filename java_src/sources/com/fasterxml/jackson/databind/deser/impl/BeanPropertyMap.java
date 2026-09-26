package com.fasterxml.jackson.databind.deser.impl;

import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.deser.SettableBeanProperty;
import com.fasterxml.jackson.databind.util.NameTransformer;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.NoSuchElementException;
import kotlinx.serialization.json.internal.b;

/* JADX INFO: loaded from: classes8.dex */
public final class BeanPropertyMap implements Iterable<SettableBeanProperty>, Serializable {
    private static final long serialVersionUID = 1;
    private final Bucket[] _buckets;
    private final int _hashMask;
    private int _nextBucketIndex;
    private final int _size;

    private static final class IteratorImpl implements Iterator<SettableBeanProperty> {
        private final Bucket[] _buckets;
        private Bucket _currentBucket;
        private int _nextBucketIndex;

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this._currentBucket != null;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.util.Iterator
        public SettableBeanProperty next() {
            Bucket bucket = this._currentBucket;
            if (bucket == null) {
                throw new NoSuchElementException();
            }
            Bucket bucket2 = bucket.next;
            while (bucket2 == null) {
                int i10 = this._nextBucketIndex;
                Bucket[] bucketArr = this._buckets;
                if (i10 >= bucketArr.length) {
                    break;
                }
                this._nextBucketIndex = i10 + 1;
                bucket2 = bucketArr[i10];
            }
            this._currentBucket = bucket2;
            return bucket.value;
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException();
        }

        public IteratorImpl(Bucket[] bucketArr) {
            this._buckets = bucketArr;
            int length = bucketArr.length;
            int i10 = 0;
            while (i10 < length) {
                int i11 = i10 + 1;
                Bucket bucket = this._buckets[i10];
                if (bucket != null) {
                    this._currentBucket = bucket;
                    i10 = i11;
                    break;
                }
                i10 = i11;
            }
            this._nextBucketIndex = i10;
        }
    }

    public BeanPropertyMap(Collection<SettableBeanProperty> collection) {
        this._nextBucketIndex = 0;
        int size = collection.size();
        this._size = size;
        int iFindSize = findSize(size);
        this._hashMask = iFindSize - 1;
        Bucket[] bucketArr = new Bucket[iFindSize];
        for (SettableBeanProperty settableBeanProperty : collection) {
            String name = settableBeanProperty.getName();
            int iHashCode = name.hashCode() & this._hashMask;
            Bucket bucket = bucketArr[iHashCode];
            int i10 = this._nextBucketIndex;
            this._nextBucketIndex = i10 + 1;
            bucketArr[iHashCode] = new Bucket(bucket, name, settableBeanProperty, i10);
        }
        this._buckets = bucketArr;
    }

    private static final int findSize(int i10) {
        int i11 = 2;
        while (i11 < (i10 <= 32 ? i10 + i10 : i10 + (i10 >> 2))) {
            i11 += i11;
        }
        return i11;
    }

    public SettableBeanProperty find(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Can not pass null property name");
        }
        int iHashCode = str.hashCode() & this._hashMask;
        Bucket bucket = this._buckets[iHashCode];
        if (bucket == null) {
            return null;
        }
        if (bucket.key == str) {
            return bucket.value;
        }
        do {
            bucket = bucket.next;
            if (bucket == null) {
                return _findWithEquals(str, iHashCode);
            }
        } while (bucket.key != str);
        return bucket.value;
    }

    public int size() {
        return this._size;
    }

    private static final class Bucket implements Serializable {
        private static final long serialVersionUID = 1;
        public final int index;
        public final String key;
        public final Bucket next;
        public final SettableBeanProperty value;

        public Bucket(Bucket bucket, String str, SettableBeanProperty settableBeanProperty, int i10) {
            this.next = bucket;
            this.key = str;
            this.value = settableBeanProperty;
            this.index = i10;
        }
    }

    private SettableBeanProperty _findWithEquals(String str, int i10) {
        for (Bucket bucket = this._buckets[i10]; bucket != null; bucket = bucket.next) {
            if (str.equals(bucket.key)) {
                return bucket.value;
            }
        }
        return null;
    }

    public BeanPropertyMap assignIndexes() {
        int i10 = 0;
        for (Bucket bucket : this._buckets) {
            while (bucket != null) {
                bucket.value.assignIndex(i10);
                bucket = bucket.next;
                i10++;
            }
        }
        return this;
    }

    public SettableBeanProperty[] getPropertiesInInsertionOrder() {
        SettableBeanProperty[] settableBeanPropertyArr = new SettableBeanProperty[this._nextBucketIndex];
        for (Bucket bucket : this._buckets) {
            for (; bucket != null; bucket = bucket.next) {
                settableBeanPropertyArr[bucket.index] = bucket.value;
            }
        }
        return settableBeanPropertyArr;
    }

    @Override // java.lang.Iterable
    public Iterator<SettableBeanProperty> iterator() {
        return new IteratorImpl(this._buckets);
    }

    public BeanPropertyMap renameAll(NameTransformer nameTransformer) {
        JsonDeserializer<Object> jsonDeserializerUnwrappingDeserializer;
        if (nameTransformer == null || nameTransformer == NameTransformer.NOP) {
            return this;
        }
        ArrayList arrayList = new ArrayList();
        for (SettableBeanProperty settableBeanProperty : this) {
            SettableBeanProperty settableBeanPropertyWithSimpleName = settableBeanProperty.withSimpleName(nameTransformer.transform(settableBeanProperty.getName()));
            JsonDeserializer<Object> valueDeserializer = settableBeanPropertyWithSimpleName.getValueDeserializer();
            if (valueDeserializer != null && (jsonDeserializerUnwrappingDeserializer = valueDeserializer.unwrappingDeserializer(nameTransformer)) != valueDeserializer) {
                settableBeanPropertyWithSimpleName = settableBeanPropertyWithSimpleName.withValueDeserializer(jsonDeserializerUnwrappingDeserializer);
            }
            arrayList.add(settableBeanPropertyWithSimpleName);
        }
        return new BeanPropertyMap(arrayList);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Properties=[");
        int i10 = 0;
        for (SettableBeanProperty settableBeanProperty : getPropertiesInInsertionOrder()) {
            if (settableBeanProperty != null) {
                int i11 = i10 + 1;
                if (i10 > 0) {
                    sb.append(", ");
                }
                sb.append(settableBeanProperty.getName());
                sb.append('(');
                sb.append(settableBeanProperty.getType());
                sb.append(')');
                i10 = i11;
            }
        }
        sb.append(b.END_LIST);
        return sb.toString();
    }

    public BeanPropertyMap withProperty(SettableBeanProperty settableBeanProperty) {
        Bucket[] bucketArr = this._buckets;
        int length = bucketArr.length;
        Bucket[] bucketArr2 = new Bucket[length];
        System.arraycopy(bucketArr, 0, bucketArr2, 0, length);
        String name = settableBeanProperty.getName();
        if (find(settableBeanProperty.getName()) != null) {
            BeanPropertyMap beanPropertyMap = new BeanPropertyMap(bucketArr2, length, this._nextBucketIndex);
            beanPropertyMap.replace(settableBeanProperty);
            return beanPropertyMap;
        }
        int iHashCode = name.hashCode() & this._hashMask;
        Bucket bucket = bucketArr2[iHashCode];
        int i10 = this._nextBucketIndex;
        this._nextBucketIndex = i10 + 1;
        bucketArr2[iHashCode] = new Bucket(bucket, name, settableBeanProperty, i10);
        return new BeanPropertyMap(bucketArr2, this._size + 1, this._nextBucketIndex);
    }

    public void remove(SettableBeanProperty settableBeanProperty) {
        String name = settableBeanProperty.getName();
        int iHashCode = name.hashCode();
        Bucket[] bucketArr = this._buckets;
        int length = iHashCode & (bucketArr.length - 1);
        Bucket bucket = null;
        boolean z6 = false;
        for (Bucket bucket2 = bucketArr[length]; bucket2 != null; bucket2 = bucket2.next) {
            if (!z6 && bucket2.key.equals(name)) {
                z6 = true;
            } else {
                bucket = new Bucket(bucket, bucket2.key, bucket2.value, bucket2.index);
            }
        }
        if (z6) {
            this._buckets[length] = bucket;
            return;
        }
        throw new NoSuchElementException("No entry '" + settableBeanProperty + "' found, can't remove");
    }

    public void replace(SettableBeanProperty settableBeanProperty) {
        String name = settableBeanProperty.getName();
        int iHashCode = name.hashCode();
        Bucket[] bucketArr = this._buckets;
        int length = iHashCode & (bucketArr.length - 1);
        Bucket bucket = null;
        int i10 = -1;
        for (Bucket bucket2 = bucketArr[length]; bucket2 != null; bucket2 = bucket2.next) {
            if (i10 < 0 && bucket2.key.equals(name)) {
                i10 = bucket2.index;
            } else {
                bucket = new Bucket(bucket, bucket2.key, bucket2.value, bucket2.index);
            }
        }
        if (i10 >= 0) {
            this._buckets[length] = new Bucket(bucket, name, settableBeanProperty, i10);
            return;
        }
        throw new NoSuchElementException("No entry '" + settableBeanProperty + "' found, can't replace");
    }

    private BeanPropertyMap(Bucket[] bucketArr, int i10, int i11) {
        this._nextBucketIndex = 0;
        this._buckets = bucketArr;
        this._size = i10;
        this._hashMask = bucketArr.length - 1;
        this._nextBucketIndex = i11;
    }

    public SettableBeanProperty find(int i10) {
        int length = this._buckets.length;
        for (int i11 = 0; i11 < length; i11++) {
            for (Bucket bucket = this._buckets[i11]; bucket != null; bucket = bucket.next) {
                if (bucket.index == i10) {
                    return bucket.value;
                }
            }
        }
        return null;
    }
}
