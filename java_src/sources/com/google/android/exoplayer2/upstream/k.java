package com.google.android.exoplayer2.upstream;

import android.net.Uri;
import androidx.annotation.Nullable;
import java.io.IOException;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes10.dex */
public interface k extends h {

    public interface a {
        k createDataSource();
    }

    void b(m0 m0Var);

    long c(o oVar) throws IOException;

    void close() throws IOException;

    Map<String, List<String>> getResponseHeaders();

    @Nullable
    Uri getUri();
}
