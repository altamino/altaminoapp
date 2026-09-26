package com.fasterxml.jackson.databind.ser.impl;

import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.ser.SerializerCache;
import java.util.Map;

/* JADX INFO: loaded from: classes8.dex */
public class JsonSerializerMap {
    private final Bucket[] _buckets;
    private final int _size;

    private static final int findSize(int i10) {
        int i11 = 8;
        while (i11 < (i10 <= 64 ? i10 + i10 : i10 + (i10 >> 2))) {
            i11 += i11;
        }
        return i11;
    }

    public int size() {
        return this._size;
    }

    private static final class Bucket {
        public final SerializerCache.TypeKey key;
        public final Bucket next;
        public final JsonSerializer<Object> value;

        public Bucket(Bucket bucket, SerializerCache.TypeKey typeKey, JsonSerializer<Object> jsonSerializer) {
            this.next = bucket;
            this.key = typeKey;
            this.value = jsonSerializer;
        }
    }

    public JsonSerializerMap(Map<SerializerCache.TypeKey, JsonSerializer<Object>> map) {
        int iFindSize = findSize(map.size());
        this._size = iFindSize;
        int i10 = iFindSize - 1;
        Bucket[] bucketArr = new Bucket[iFindSize];
        for (Map.Entry<SerializerCache.TypeKey, JsonSerializer<Object>> entry : map.entrySet()) {
            SerializerCache.TypeKey key = entry.getKey();
            int iHashCode = key.hashCode() & i10;
            bucketArr[iHashCode] = new Bucket(bucketArr[iHashCode], key, entry.getValue());
        }
        this._buckets = bucketArr;
    }

    public JsonSerializer<Object> find(SerializerCache.TypeKey typeKey) {
        int iHashCode = typeKey.hashCode();
        Bucket[] bucketArr = this._buckets;
        Bucket bucket = bucketArr[iHashCode & (bucketArr.length - 1)];
        if (bucket == null) {
            return null;
        }
        if (typeKey.equals(bucket.key)) {
            return bucket.value;
        }
        do {
            bucket = bucket.next;
            if (bucket == null) {
                return null;
            }
        } while (!typeKey.equals(bucket.key));
        return bucket.value;
    }
}
