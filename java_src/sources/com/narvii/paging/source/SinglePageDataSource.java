package com.narvii.paging.source;

import com.narvii.app.NVContext;
import com.narvii.model.NVObject;
import java.util.List;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
public abstract class SinglePageDataSource<T extends NVObject> extends DataSource<T> {
    public SinglePageDataSource(@Nullable NVContext nVContext) {
        super(nVContext);
    }

    @Override // com.narvii.paging.source.DataSource
    public void onErrorRetry() {
    }

    @NotNull
    public abstract List<T> pageData();

    public SinglePageDataSource(@Nullable NVContext nVContext, @Nullable List<? extends T> list) {
        super(nVContext, list);
    }

    @Override // com.narvii.paging.source.DataSource
    public void refresh(int i10, @Nullable PageRequestCallback pageRequestCallback) {
        if (pageRequestCallback != null) {
            pageRequestCallback.onPageRequestFinished(0);
        }
    }

    @Override // com.narvii.paging.source.DataSource
    public void loadInitData() {
        resetDataSource();
        appendData(pageData(), null);
        notifyPageSourceChange();
    }
}
