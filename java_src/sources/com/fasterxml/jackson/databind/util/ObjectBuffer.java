package com.fasterxml.jackson.databind.util;

import java.lang.reflect.Array;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class ObjectBuffer {
    static final int INITIAL_CHUNK_SIZE = 12;
    static final int MAX_CHUNK_SIZE = 262144;
    static final int SMALL_CHUNK_SIZE = 16384;
    private Node _bufferHead;
    private Node _bufferTail;
    private int _bufferedEntryCount;
    private Object[] _freeBuffer;

    static final class Node {
        final Object[] _data;
        Node _next;

        public Object[] getData() {
            return this._data;
        }

        public Node next() {
            return this._next;
        }

        public void linkNext(Node node) {
            if (this._next != null) {
                throw new IllegalStateException();
            }
            this._next = node;
        }

        public Node(Object[] objArr) {
            this._data = objArr;
        }
    }

    public int bufferedSize() {
        return this._bufferedEntryCount;
    }

    public Object[] completeAndClearBuffer(Object[] objArr, int i10) {
        int i11 = this._bufferedEntryCount + i10;
        Object[] objArr2 = new Object[i11];
        _copyTo(objArr2, i11, objArr, i10);
        return objArr2;
    }

    protected final void _copyTo(Object obj, int i10, Object[] objArr, int i11) {
        int i12 = 0;
        for (Node next = this._bufferHead; next != null; next = next.next()) {
            Object[] data = next.getData();
            int length = data.length;
            System.arraycopy(data, 0, obj, i12, length);
            i12 += length;
        }
        System.arraycopy(objArr, 0, obj, i12, i11);
        int i13 = i12 + i11;
        if (i13 == i10) {
            return;
        }
        throw new IllegalStateException("Should have gotten " + i10 + " entries, got " + i13);
    }

    protected void _reset() {
        Node node = this._bufferTail;
        if (node != null) {
            this._freeBuffer = node.getData();
        }
        this._bufferTail = null;
        this._bufferHead = null;
        this._bufferedEntryCount = 0;
    }

    public Object[] appendCompletedChunk(Object[] objArr) {
        Node node = new Node(objArr);
        if (this._bufferHead == null) {
            this._bufferTail = node;
            this._bufferHead = node;
        } else {
            this._bufferTail.linkNext(node);
            this._bufferTail = node;
        }
        int length = objArr.length;
        this._bufferedEntryCount += length;
        return new Object[length < 16384 ? length + length : length + (length >> 2)];
    }

    public int initialCapacity() {
        Object[] objArr = this._freeBuffer;
        if (objArr == null) {
            return 0;
        }
        return objArr.length;
    }

    public <T> T[] completeAndClearBuffer(Object[] objArr, int i10, Class<T> cls) {
        int i11 = this._bufferedEntryCount + i10;
        T[] tArr = (T[]) ((Object[]) Array.newInstance((Class<?>) cls, i11));
        _copyTo(tArr, i11, objArr, i10);
        _reset();
        return tArr;
    }

    public Object[] resetAndStart() {
        _reset();
        Object[] objArr = this._freeBuffer;
        if (objArr == null) {
            return new Object[12];
        }
        return objArr;
    }

    public void completeAndClearBuffer(Object[] objArr, int i10, List<Object> list) {
        int i11;
        Node next = this._bufferHead;
        while (true) {
            i11 = 0;
            if (next == null) {
                break;
            }
            Object[] data = next.getData();
            int length = data.length;
            while (i11 < length) {
                list.add(data[i11]);
                i11++;
            }
            next = next.next();
        }
        while (i11 < i10) {
            list.add(objArr[i11]);
            i11++;
        }
    }
}
