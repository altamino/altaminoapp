package com.google.android.exoplayer2.upstream;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.util.o0;
import java.io.IOException;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes8.dex */
public final class b0 extends z {
    public final Map<String, List<String>> headerFields;
    public final byte[] responseBody;
    public final int responseCode;

    @Nullable
    public final String responseMessage;

    @Deprecated
    public b0(int i10, Map<String, List<String>> map, o oVar) {
        this(i10, null, null, map, oVar, o0.EMPTY_BYTE_ARRAY);
    }

    @Deprecated
    public b0(int i10, @Nullable String str, Map<String, List<String>> map, o oVar) {
        this(i10, str, null, map, oVar, o0.EMPTY_BYTE_ARRAY);
    }

    public b0(int i10, @Nullable String str, @Nullable IOException iOException, Map<String, List<String>> map, o oVar, byte[] bArr) {
        super("Response code: " + i10, iOException, oVar, 2004, 1);
        this.responseCode = i10;
        this.responseMessage = str;
        this.headerFields = map;
        this.responseBody = bArr;
    }
}
