package com.google.android.exoplayer2.extractor.mkv;

import com.google.android.exoplayer2.extractor.m;
import com.google.android.exoplayer2.v2;
import java.io.IOException;

/* JADX INFO: loaded from: classes10.dex */
public interface b {
    public static final int ELEMENT_TYPE_BINARY = 4;
    public static final int ELEMENT_TYPE_FLOAT = 5;
    public static final int ELEMENT_TYPE_MASTER = 1;
    public static final int ELEMENT_TYPE_STRING = 3;
    public static final int ELEMENT_TYPE_UNKNOWN = 0;
    public static final int ELEMENT_TYPE_UNSIGNED_INT = 2;

    void a(int i10, int i11, m mVar) throws IOException;

    void endMasterElement(int i10) throws v2;

    void floatElement(int i10, double d) throws v2;

    int getElementType(int i10);

    void integerElement(int i10, long j6) throws v2;

    boolean isLevel1Element(int i10);

    void startMasterElement(int i10, long j6, long j10) throws v2;

    void stringElement(int i10, String str) throws v2;
}
