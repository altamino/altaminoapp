package com.bumptech.glide.load.engine;

import androidx.annotation.NonNull;
import java.security.MessageDigest;

/* JADX INFO: loaded from: classes6.dex */
final class d implements com.bumptech.glide.load.g {
    private final com.bumptech.glide.load.g signature;
    private final com.bumptech.glide.load.g sourceKey;

    @Override // com.bumptech.glide.load.g
    public void b(@NonNull MessageDigest messageDigest) {
        this.sourceKey.b(messageDigest);
        this.signature.b(messageDigest);
    }

    @Override // com.bumptech.glide.load.g
    public boolean equals(Object obj) {
        if (!(obj instanceof d)) {
            return false;
        }
        d dVar = (d) obj;
        return this.sourceKey.equals(dVar.sourceKey) && this.signature.equals(dVar.signature);
    }

    @Override // com.bumptech.glide.load.g
    public int hashCode() {
        return (this.sourceKey.hashCode() * 31) + this.signature.hashCode();
    }

    public String toString() {
        return "DataCacheKey{sourceKey=" + this.sourceKey + ", signature=" + this.signature + kotlinx.serialization.json.internal.b.END_OBJ;
    }

    d(com.bumptech.glide.load.g gVar, com.bumptech.glide.load.g gVar2) {
        this.sourceKey = gVar;
        this.signature = gVar2;
    }
}
