package com.google.android.exoplayer2.trackselection;

import com.google.android.exoplayer2.a2;
import com.google.android.exoplayer2.source.f1;

/* JADX INFO: loaded from: classes9.dex */
public interface v {
    public static final int TYPE_CUSTOM_BASE = 10000;
    public static final int TYPE_UNSET = 0;

    a2 getFormat(int i10);

    int getIndexInTrackGroup(int i10);

    f1 getTrackGroup();

    int indexOf(int i10);

    int length();
}
