package com.bumptech.glide.load.engine;

import androidx.annotation.NonNull;
import androidx.core.util.Pools;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public class t<Data, ResourceType, Transcode> {
    private final Class<Data> dataClass;
    private final List<? extends i<Data, ResourceType, Transcode>> decodePaths;
    private final String failureMessage;
    private final Pools.Pool<List<Throwable>> listPool;

    private v<Transcode> b(com.bumptech.glide.load.data.e<Data> eVar, @NonNull com.bumptech.glide.load.i iVar, int i10, int i11, i.a<ResourceType> aVar, List<Throwable> list) throws q {
        int size = this.decodePaths.size();
        v<Transcode> vVarA = null;
        for (int i12 = 0; i12 < size; i12++) {
            try {
                vVarA = this.decodePaths.get(i12).a(eVar, i10, i11, iVar, aVar);
            } catch (q e) {
                list.add(e);
            }
            if (vVarA != null) {
                break;
            }
        }
        if (vVarA != null) {
            return vVarA;
        }
        throw new q(this.failureMessage, new ArrayList(list));
    }

    public v<Transcode> a(com.bumptech.glide.load.data.e<Data> eVar, @NonNull com.bumptech.glide.load.i iVar, int i10, int i11, i.a<ResourceType> aVar) throws q {
        List<Throwable> list = (List) com.bumptech.glide.util.j.d(this.listPool.a());
        try {
            return b(eVar, iVar, i10, i11, aVar, list);
        } finally {
            this.listPool.b(list);
        }
    }

    public String toString() {
        return "LoadPath{decodePaths=" + Arrays.toString(this.decodePaths.toArray()) + kotlinx.serialization.json.internal.b.END_OBJ;
    }

    public t(Class<Data> cls, Class<ResourceType> cls2, Class<Transcode> cls3, List<i<Data, ResourceType, Transcode>> list, Pools.Pool<List<Throwable>> pool) {
        this.dataClass = cls;
        this.listPool = pool;
        this.decodePaths = (List) com.bumptech.glide.util.j.c(list);
        this.failureMessage = "Failed LoadPath{" + cls.getSimpleName() + "->" + cls2.getSimpleName() + "->" + cls3.getSimpleName() + "}";
    }
}
