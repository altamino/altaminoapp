package com.google.android.exoplayer2.upstream;

import androidx.annotation.Nullable;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes8.dex */
public final class c0 {
    private final Map<String, String> requestProperties = new HashMap();

    @Nullable
    private Map<String, String> requestPropertiesSnapshot;

    public synchronized Map<String, String> a() {
        try {
            if (this.requestPropertiesSnapshot == null) {
                this.requestPropertiesSnapshot = Collections.unmodifiableMap(new HashMap(this.requestProperties));
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.requestPropertiesSnapshot;
    }
}
