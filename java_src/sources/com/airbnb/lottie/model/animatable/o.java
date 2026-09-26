package com.airbnb.lottie.model.animatable;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes9.dex */
public abstract class o<V, O> implements m<V, O> {
    final V initialValue;
    final List<h0.a<V>> keyframes;

    o(V v5) {
        this(Collections.emptyList(), v5);
    }

    /* JADX WARN: Multi-variable type inference failed */
    O b(V v5) {
        return v5;
    }

    o(List<h0.a<V>> list, V v5) {
        this.keyframes = list;
        this.initialValue = v5;
    }

    public O c() {
        return b(this.initialValue);
    }

    public boolean d() {
        return !this.keyframes.isEmpty();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("parseInitialValue=");
        sb.append(this.initialValue);
        if (!this.keyframes.isEmpty()) {
            sb.append(", values=");
            sb.append(Arrays.toString(this.keyframes.toArray()));
        }
        return sb.toString();
    }
}
