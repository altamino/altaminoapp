package com.bumptech.glide.load.engine;

import androidx.annotation.NonNull;
import java.nio.ByteBuffer;
import java.security.MessageDigest;

/* JADX INFO: loaded from: classes6.dex */
final class x implements com.bumptech.glide.load.g {
    private static final com.bumptech.glide.util.g<Class<?>, byte[]> RESOURCE_CLASS_BYTES = new com.bumptech.glide.util.g<>(50);
    private final com.bumptech.glide.load.engine.bitmap_recycle.b arrayPool;
    private final Class<?> decodedResourceClass;
    private final int height;
    private final com.bumptech.glide.load.i options;
    private final com.bumptech.glide.load.g signature;
    private final com.bumptech.glide.load.g sourceKey;
    private final com.bumptech.glide.load.m<?> transformation;
    private final int width;

    private byte[] c() {
        com.bumptech.glide.util.g<Class<?>, byte[]> gVar = RESOURCE_CLASS_BYTES;
        byte[] bArrH = gVar.h(this.decodedResourceClass);
        if (bArrH != null) {
            return bArrH;
        }
        byte[] bytes = this.decodedResourceClass.getName().getBytes(com.bumptech.glide.load.g.CHARSET);
        gVar.k(this.decodedResourceClass, bytes);
        return bytes;
    }

    @Override // com.bumptech.glide.load.g
    public void b(@NonNull MessageDigest messageDigest) {
        byte[] bArr = (byte[]) this.arrayPool.d(8, byte[].class);
        ByteBuffer.wrap(bArr).putInt(this.width).putInt(this.height).array();
        this.signature.b(messageDigest);
        this.sourceKey.b(messageDigest);
        messageDigest.update(bArr);
        com.bumptech.glide.load.m<?> mVar = this.transformation;
        if (mVar != null) {
            mVar.b(messageDigest);
        }
        this.options.b(messageDigest);
        messageDigest.update(c());
        this.arrayPool.e(bArr);
    }

    @Override // com.bumptech.glide.load.g
    public boolean equals(Object obj) {
        if (!(obj instanceof x)) {
            return false;
        }
        x xVar = (x) obj;
        return this.height == xVar.height && this.width == xVar.width && com.bumptech.glide.util.k.c(this.transformation, xVar.transformation) && this.decodedResourceClass.equals(xVar.decodedResourceClass) && this.sourceKey.equals(xVar.sourceKey) && this.signature.equals(xVar.signature) && this.options.equals(xVar.options);
    }

    @Override // com.bumptech.glide.load.g
    public int hashCode() {
        int iHashCode = (((((this.sourceKey.hashCode() * 31) + this.signature.hashCode()) * 31) + this.width) * 31) + this.height;
        com.bumptech.glide.load.m<?> mVar = this.transformation;
        if (mVar != null) {
            iHashCode = (iHashCode * 31) + mVar.hashCode();
        }
        return (((iHashCode * 31) + this.decodedResourceClass.hashCode()) * 31) + this.options.hashCode();
    }

    public String toString() {
        return "ResourceCacheKey{sourceKey=" + this.sourceKey + ", signature=" + this.signature + ", width=" + this.width + ", height=" + this.height + ", decodedResourceClass=" + this.decodedResourceClass + ", transformation='" + this.transformation + "', options=" + this.options + kotlinx.serialization.json.internal.b.END_OBJ;
    }

    x(com.bumptech.glide.load.engine.bitmap_recycle.b bVar, com.bumptech.glide.load.g gVar, com.bumptech.glide.load.g gVar2, int i10, int i11, com.bumptech.glide.load.m<?> mVar, Class<?> cls, com.bumptech.glide.load.i iVar) {
        this.arrayPool = bVar;
        this.sourceKey = gVar;
        this.signature = gVar2;
        this.width = i10;
        this.height = i11;
        this.transformation = mVar;
        this.decodedResourceClass = cls;
        this.options = iVar;
    }
}
