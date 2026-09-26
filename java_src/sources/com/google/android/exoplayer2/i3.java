package com.google.android.exoplayer2;

import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: loaded from: classes11.dex */
final class i3 extends a {
    private final HashMap<Object, Integer> childIndexByUid;
    private final int[] firstPeriodInChildIndices;
    private final int[] firstWindowInChildIndices;
    private final int periodCount;
    private final z3[] timelines;
    private final Object[] uids;
    private final int windowCount;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public i3(Collection<? extends s2> collection, com.google.android.exoplayer2.source.y0 y0Var) {
        super(false, y0Var);
        int iT = 0;
        int size = collection.size();
        this.firstPeriodInChildIndices = new int[size];
        this.firstWindowInChildIndices = new int[size];
        this.timelines = new z3[size];
        this.uids = new Object[size];
        this.childIndexByUid = new HashMap<>();
        int iM = 0;
        int i10 = 0;
        for (s2 s2Var : collection) {
            this.timelines[i10] = s2Var.b();
            this.firstWindowInChildIndices[i10] = iT;
            this.firstPeriodInChildIndices[i10] = iM;
            iT += this.timelines[i10].t();
            iM += this.timelines[i10].m();
            this.uids[i10] = s2Var.a();
            this.childIndexByUid.put(this.uids[i10], Integer.valueOf(i10));
            i10++;
        }
        this.windowCount = iT;
        this.periodCount = iM;
    }

    @Override // com.google.android.exoplayer2.z3
    public int m() {
        return this.periodCount;
    }

    @Override // com.google.android.exoplayer2.z3
    public int t() {
        return this.windowCount;
    }

    @Override // com.google.android.exoplayer2.a
    protected int A(int i10) {
        return com.google.android.exoplayer2.util.o0.h(this.firstWindowInChildIndices, i10 + 1, false, false);
    }

    @Override // com.google.android.exoplayer2.a
    protected Object D(int i10) {
        return this.uids[i10];
    }

    @Override // com.google.android.exoplayer2.a
    protected int F(int i10) {
        return this.firstPeriodInChildIndices[i10];
    }

    @Override // com.google.android.exoplayer2.a
    protected int G(int i10) {
        return this.firstWindowInChildIndices[i10];
    }

    @Override // com.google.android.exoplayer2.a
    protected z3 J(int i10) {
        return this.timelines[i10];
    }

    List<z3> K() {
        return Arrays.asList(this.timelines);
    }

    @Override // com.google.android.exoplayer2.a
    protected int y(Object obj) {
        Integer num = this.childIndexByUid.get(obj);
        if (num == null) {
            return -1;
        }
        return num.intValue();
    }

    @Override // com.google.android.exoplayer2.a
    protected int z(int i10) {
        return com.google.android.exoplayer2.util.o0.h(this.firstPeriodInChildIndices, i10 + 1, false, false);
    }
}
