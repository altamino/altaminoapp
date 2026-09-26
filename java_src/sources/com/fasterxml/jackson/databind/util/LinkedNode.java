package com.fasterxml.jackson.databind.util;

/* JADX INFO: loaded from: classes11.dex */
public final class LinkedNode<T> {
    final LinkedNode<T> _next;
    final T _value;

    public LinkedNode<T> next() {
        return this._next;
    }

    public T value() {
        return this._value;
    }

    public static <ST> boolean contains(LinkedNode<ST> linkedNode, ST st) {
        while (linkedNode != null) {
            if (linkedNode.value() == st) {
                return true;
            }
            linkedNode = linkedNode.next();
        }
        return false;
    }

    public LinkedNode(T t5, LinkedNode<T> linkedNode) {
        this._value = t5;
        this._next = linkedNode;
    }
}
