package com.bumptech.glide.load.engine;

import androidx.annotation.NonNull;
import java.security.MessageDigest;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
class n implements com.bumptech.glide.load.g {
    private int hashCode;
    private final int height;
    private final Object model;
    private final com.bumptech.glide.load.i options;
    private final Class<?> resourceClass;
    private final com.bumptech.glide.load.g signature;
    private final Class<?> transcodeClass;
    private final Map<Class<?>, com.bumptech.glide.load.m<?>> transformations;
    private final int width;

    @Override // com.bumptech.glide.load.g
    public void b(@NonNull MessageDigest messageDigest) {
        throw new UnsupportedOperationException();
    }

    @Override // com.bumptech.glide.load.g
    public boolean equals(Object obj) {
        if (!(obj instanceof n)) {
            return false;
        }
        n nVar = (n) obj;
        return this.model.equals(nVar.model) && this.signature.equals(nVar.signature) && this.height == nVar.height && this.width == nVar.width && this.transformations.equals(nVar.transformations) && this.resourceClass.equals(nVar.resourceClass) && this.transcodeClass.equals(nVar.transcodeClass) && this.options.equals(nVar.options);
    }

    @Override // com.bumptech.glide.load.g
    public int hashCode() {
        if (this.hashCode == 0) {
            int iHashCode = this.model.hashCode();
            this.hashCode = iHashCode;
            int iHashCode2 = (((((iHashCode * 31) + this.signature.hashCode()) * 31) + this.width) * 31) + this.height;
            this.hashCode = iHashCode2;
            int iHashCode3 = (iHashCode2 * 31) + this.transformations.hashCode();
            this.hashCode = iHashCode3;
            int iHashCode4 = (iHashCode3 * 31) + this.resourceClass.hashCode();
            this.hashCode = iHashCode4;
            int iHashCode5 = (iHashCode4 * 31) + this.transcodeClass.hashCode();
            this.hashCode = iHashCode5;
            this.hashCode = (iHashCode5 * 31) + this.options.hashCode();
        }
        return this.hashCode;
    }

    public String toString() {
        return "EngineKey{model=" + this.model + ", width=" + this.width + ", height=" + this.height + ", resourceClass=" + this.resourceClass + ", transcodeClass=" + this.transcodeClass + ", signature=" + this.signature + ", hashCode=" + this.hashCode + ", transformations=" + this.transformations + ", options=" + this.options + kotlinx.serialization.json.internal.b.END_OBJ;
    }

    n(Object obj, com.bumptech.glide.load.g gVar, int i10, int i11, Map<Class<?>, com.bumptech.glide.load.m<?>> map, Class<?> cls, Class<?> cls2, com.bumptech.glide.load.i iVar) {
        this.model = com.bumptech.glide.util.j.d(obj);
        this.signature = (com.bumptech.glide.load.g) com.bumptech.glide.util.j.e(gVar, "Signature must not be null");
        this.width = i10;
        this.height = i11;
        this.transformations = (Map) com.bumptech.glide.util.j.d(map);
        this.resourceClass = (Class) com.bumptech.glide.util.j.e(cls, "Resource class must not be null");
        this.transcodeClass = (Class) com.bumptech.glide.util.j.e(cls2, "Transcode class must not be null");
        this.options = (com.bumptech.glide.load.i) com.bumptech.glide.util.j.d(iVar);
    }
}
