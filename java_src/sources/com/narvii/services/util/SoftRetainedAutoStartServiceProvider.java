package com.narvii.services.util;

import android.util.SparseArray;
import com.narvii.app.NVContext;
import com.narvii.app.incubator.IncubatorApplication;
import com.narvii.services.AutostartServiceProvider;
import java.lang.ref.SoftReference;

/* JADX INFO: loaded from: classes4.dex */
public abstract class SoftRetainedAutoStartServiceProvider<T> implements AutostartServiceProvider<T> {
    private final SparseArray<SoftReference<T>> cache = new SparseArray<>();

    public abstract T createNew(NVContext nVContext);

    @Override // com.narvii.services.ServiceProvider
    public final T create(NVContext nVContext) {
        T t5;
        int communityId = IncubatorApplication.getCommunityId(nVContext);
        SoftReference<T> softReference = this.cache.get(communityId);
        if (softReference == null) {
            t5 = null;
        } else {
            t5 = softReference.get();
        }
        if (t5 == null) {
            T tCreateNew = createNew(nVContext);
            this.cache.put(communityId, new SoftReference<>(tCreateNew));
            return tCreateNew;
        }
        return t5;
    }
}
