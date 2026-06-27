package com.narvii.paging.storage;

import com.narvii.model.NVObject;
import java.util.Collections;
import java.util.List;

/* loaded from: classes3.dex */
public class SegmentPageStorage<T extends NVObject> extends PageStorage<T> {
    List<List<T>> pageData;

    @Override // com.narvii.paging.storage.PageStorage
    public void appendPage(List list, PageOperationCallback pageOperationCallback) {
    }

    @Override // java.util.AbstractList, java.util.List
    public T get(int i) {
        return null;
    }

    @Override // com.narvii.paging.storage.PageStorage
    public T getItemById(String str) {
        return null;
    }

    @Override // com.narvii.paging.storage.PageStorage
    public int getPosition(T t) {
        return 0;
    }

    @Override // com.narvii.paging.storage.PageStorage
    public void initPage(List<T> list, PageOperationCallback pageOperationCallback) {
    }

    @Override // com.narvii.paging.storage.PageStorage
    public boolean prependPage(List list, boolean z, PageOperationCallback pageOperationCallback) {
        return false;
    }

    @Override // com.narvii.paging.storage.PageStorage
    public int removeItem(T t) {
        return 0;
    }

    @Override // com.narvii.paging.storage.PageStorage
    public void resetPageData() {
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return 0;
    }

    @Override // com.narvii.paging.storage.PageStorage
    public int updateItem(T t) {
        return 0;
    }

    @Override // com.narvii.paging.storage.PageStorage
    public List<T> getDataList() {
        return Collections.emptyList();
    }
}
