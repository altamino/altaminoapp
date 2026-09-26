package com.google.android.datatransport.runtime;

import androidx.annotation.NonNull;
import java.util.Arrays;

/* JADX INFO: loaded from: classes9.dex */
public final class h {
    private final byte[] bytes;
    private final f2.b encoding;

    public byte[] a() {
        return this.bytes;
    }

    public f2.b b() {
        return this.encoding;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof h)) {
            return false;
        }
        h hVar = (h) obj;
        if (this.encoding.equals(hVar.encoding)) {
            return Arrays.equals(this.bytes, hVar.bytes);
        }
        return false;
    }

    public int hashCode() {
        return ((this.encoding.hashCode() ^ 1000003) * 1000003) ^ Arrays.hashCode(this.bytes);
    }

    public String toString() {
        return "EncodedPayload{encoding=" + this.encoding + ", bytes=[...]}";
    }

    public h(@NonNull f2.b bVar, @NonNull byte[] bArr) {
        if (bVar != null) {
            if (bArr != null) {
                this.encoding = bVar;
                this.bytes = bArr;
                return;
            }
            throw new NullPointerException("bytes is null");
        }
        throw new NullPointerException("encoding is null");
    }
}
