package com.fasterxml.jackson.databind.util;

import java.util.Iterator;
import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes5.dex */
public class EmptyIterator<T> implements Iterator<T> {
    private static final EmptyIterator<?> instance = new EmptyIterator<>();

    private EmptyIterator() {
    }

    public static <T> Iterator<T> instance() {
        return instance;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return false;
    }

    @Override // java.util.Iterator
    public T next() {
        throw new NoSuchElementException();
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException();
    }
}
