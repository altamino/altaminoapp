package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.zzdg;
import com.google.android.gms.internal.measurement.zzdh;

/* loaded from: classes2.dex */
public abstract class zzdh<MessageType extends zzdg<MessageType, BuilderType>, BuilderType extends zzdh<MessageType, BuilderType>> implements zzgi {
    protected abstract BuilderType zza(MessageType messagetype);

    @Override // 
    /* renamed from: zzjx, reason: merged with bridge method [inline-methods] */
    public abstract BuilderType clone();

    @Override // com.google.android.gms.internal.measurement.zzgi
    public final /* synthetic */ zzgi zza(zzgh zzghVar) {
        if (!zzmm().getClass().isInstance(zzghVar)) {
            throw new IllegalArgumentException("mergeFrom(MessageLite) can only merge messages of the same type.");
        }
        return zza((zzdh<MessageType, BuilderType>) zzghVar);
    }
}
