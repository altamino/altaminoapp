package com.bumptech.glide.load.engine;

import android.util.Log;
import androidx.annotation.NonNull;
import androidx.core.util.Pools;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class i<DataType, ResourceType, Transcode> {
    private static final String TAG = "DecodePath";
    private final Class<DataType> dataClass;
    private final List<? extends com.bumptech.glide.load.k<DataType, ResourceType>> decoders;
    private final String failureMessage;
    private final Pools.Pool<List<Throwable>> listPool;
    private final com.bumptech.glide.load.resource.transcode.e<ResourceType, Transcode> transcoder;

    interface a<ResourceType> {
        @NonNull
        v<ResourceType> a(@NonNull v<ResourceType> vVar);
    }

    @NonNull
    private v<ResourceType> b(com.bumptech.glide.load.data.e<DataType> eVar, int i10, int i11, @NonNull com.bumptech.glide.load.i iVar) throws q {
        List<Throwable> list = (List) com.bumptech.glide.util.j.d(this.listPool.a());
        try {
            return c(eVar, i10, i11, iVar, list);
        } finally {
            this.listPool.b(list);
        }
    }

    @NonNull
    private v<ResourceType> c(com.bumptech.glide.load.data.e<DataType> eVar, int i10, int i11, @NonNull com.bumptech.glide.load.i iVar, List<Throwable> list) throws q {
        int size = this.decoders.size();
        v<ResourceType> vVarB = null;
        for (int i12 = 0; i12 < size; i12++) {
            com.bumptech.glide.load.k<DataType, ResourceType> kVar = this.decoders.get(i12);
            try {
                if (kVar.a(eVar.a(), iVar)) {
                    vVarB = kVar.b(eVar.a(), i10, i11, iVar);
                }
            } catch (IOException | OutOfMemoryError | RuntimeException e) {
                if (Log.isLoggable(TAG, 2)) {
                    Log.v(TAG, "Failed to decode data for " + kVar, e);
                }
                list.add(e);
            }
            if (vVarB != null) {
                break;
            }
        }
        if (vVarB != null) {
            return vVarB;
        }
        throw new q(this.failureMessage, new ArrayList(list));
    }

    public String toString() {
        return "DecodePath{ dataClass=" + this.dataClass + ", decoders=" + this.decoders + ", transcoder=" + this.transcoder + kotlinx.serialization.json.internal.b.END_OBJ;
    }

    public i(Class<DataType> cls, Class<ResourceType> cls2, Class<Transcode> cls3, List<? extends com.bumptech.glide.load.k<DataType, ResourceType>> list, com.bumptech.glide.load.resource.transcode.e<ResourceType, Transcode> eVar, Pools.Pool<List<Throwable>> pool) {
        this.dataClass = cls;
        this.decoders = list;
        this.transcoder = eVar;
        this.listPool = pool;
        this.failureMessage = "Failed DecodePath{" + cls.getSimpleName() + "->" + cls2.getSimpleName() + "->" + cls3.getSimpleName() + "}";
    }

    public v<Transcode> a(com.bumptech.glide.load.data.e<DataType> eVar, int i10, int i11, @NonNull com.bumptech.glide.load.i iVar, a<ResourceType> aVar) throws q {
        return this.transcoder.a(aVar.a(b(eVar, i10, i11, iVar)), iVar);
    }
}
