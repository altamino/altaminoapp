package com.narvii.paging.storage;

import com.narvii.model.NVObject;
import java.util.AbstractList;
import java.util.List;

/* loaded from: classes3.dex */
public abstract class PageStorage<T extends NVObject> extends AbstractList<T> {
    public abstract void appendPage(List<T> list, PageOperationCallback pageOperationCallback);

    public abstract List<T> getDataList();

    public abstract T getItemById(String str);

    public abstract int getPosition(T t);

    public abstract void initPage(List<T> list, PageOperationCallback pageOperationCallback);

    public abstract boolean prependPage(List<T> list, boolean z, PageOperationCallback pageOperationCallback);

    public abstract int removeItem(T t);

    public abstract void resetPageData();

    public abstract int updateItem(T t);
}
