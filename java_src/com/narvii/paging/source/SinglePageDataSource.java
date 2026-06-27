package com.narvii.paging.source;

import com.narvii.app.NVContext;
import com.narvii.model.NVObject;
import java.util.List;

/* compiled from: SinglePageDataSource.kt */
/* loaded from: classes3.dex */
public abstract class SinglePageDataSource<T extends NVObject> extends DataSource<T> {
    @Override // com.narvii.paging.source.DataSource
    public void onErrorRetry() {
    }

    public abstract List<T> pageData();

    public SinglePageDataSource(NVContext nVContext) {
        super(nVContext);
    }

    public SinglePageDataSource(NVContext nVContext, List<? extends T> list) {
        super(nVContext, list);
    }

    @Override // com.narvii.paging.source.DataSource
    public void loadInitData() {
        resetDataSource();
        appendData(pageData(), null);
        notifyPageSourceChange();
    }

    @Override // com.narvii.paging.source.DataSource
    public void refresh(int i, PageRequestCallback pageRequestCallback) {
        if (pageRequestCallback != null) {
            pageRequestCallback.onPageRequestFinished(0);
        }
    }
}
