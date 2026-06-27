package com.narvii.services.util;

import android.util.SparseArray;
import com.narvii.app.NVContext;
import com.narvii.app.incubator.IncubatorApplication;
import com.narvii.services.ServiceProvider;
import java.lang.ref.SoftReference;

/* loaded from: classes3.dex */
public abstract class SoftRetainedServiceProvider<T> implements ServiceProvider<T> {
    private final SparseArray<SoftReference<T>> cache = new SparseArray<>();

    public abstract T createNew(NVContext nVContext);

    @Override // com.narvii.services.ServiceProvider
    public final T create(NVContext nVContext) {
        int communityId = IncubatorApplication.getCommunityId(nVContext);
        SoftReference<T> softReference = this.cache.get(communityId);
        T t = softReference == null ? null : softReference.get();
        if (t != null) {
            return t;
        }
        T tCreateNew = createNew(nVContext);
        this.cache.put(communityId, new SoftReference<>(tCreateNew));
        return tCreateNew;
    }
}
