package com.fasterxml.jackson.databind.util;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes10.dex */
public class LRUMap<K, V> extends LinkedHashMap<K, V> implements Serializable {
    private static final long serialVersionUID = 1;
    protected transient int _jdkSerializeMaxEntries;
    protected final int _maxEntries;

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.writeInt(this._jdkSerializeMaxEntries);
    }

    protected Object readResolve() {
        int i10 = this._jdkSerializeMaxEntries;
        return new LRUMap(i10, i10);
    }

    public LRUMap(int i10, int i11) {
        super(i10, 0.8f, true);
        this._maxEntries = i11;
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException {
        this._jdkSerializeMaxEntries = objectInputStream.readInt();
    }

    @Override // java.util.LinkedHashMap
    protected boolean removeEldestEntry(Map.Entry<K, V> entry) {
        if (size() > this._maxEntries) {
            return true;
        }
        return false;
    }
}
