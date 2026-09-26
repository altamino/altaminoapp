package com.google.android.exoplayer2.extractor;

import java.io.IOException;

/* JADX INFO: loaded from: classes11.dex */
public interface l {
    public static final int RESULT_CONTINUE = 0;
    public static final int RESULT_END_OF_INPUT = -1;
    public static final int RESULT_SEEK = 1;

    boolean b(m mVar) throws IOException;

    int c(m mVar, a0 a0Var) throws IOException;

    void d(n nVar);

    void release();

    void seek(long j6, long j10);
}
