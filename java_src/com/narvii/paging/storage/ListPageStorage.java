package com.narvii.paging.storage;

import com.narvii.model.NVObject;
import com.narvii.model.RefHost;
import com.narvii.model.StrategyObject;
import com.narvii.util.Log;
import com.narvii.util.Utils;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: classes3.dex */
public class ListPageStorage<T extends NVObject> extends PageStorage<T> {
    ArrayList<T> pageData = null;

    @Override // java.util.AbstractList, java.util.List
    public T get(int i) {
        ArrayList<T> arrayList = this.pageData;
        if (arrayList == null || i < 0 || i >= arrayList.size()) {
            return null;
        }
        return this.pageData.get(i);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        ArrayList<T> arrayList = this.pageData;
        if (arrayList == null) {
            return 0;
        }
        return arrayList.size();
    }

    @Override // java.util.AbstractList, java.util.List
    public T remove(int i) {
        ArrayList<T> arrayList = this.pageData;
        if (arrayList == null) {
            return null;
        }
        return arrayList.remove(i);
    }

    @Override // com.narvii.paging.storage.PageStorage
    public void initPage(List<T> list, PageOperationCallback pageOperationCallback) {
        if (list == null) {
            return;
        }
        if (this.pageData == null) {
            this.pageData = new ArrayList<>();
        }
        this.pageData.clear();
        this.pageData.addAll(list);
        if (pageOperationCallback != null) {
            pageOperationCallback.onInitialized(list.size());
        }
    }

    @Override // com.narvii.paging.storage.PageStorage
    public void appendPage(List<T> list, PageOperationCallback pageOperationCallback) {
        if (list == null) {
            return;
        }
        if (list.size() == 0) {
            if (this.pageData == null) {
                this.pageData = new ArrayList<>();
            }
            if (pageOperationCallback != null) {
                pageOperationCallback.onEmptyPageAppended();
                return;
            }
            return;
        }
        if (this.pageData == null) {
            this.pageData = new ArrayList<>();
        }
        this.pageData.addAll(list);
        if (pageOperationCallback != null) {
            pageOperationCallback.onPageAppended(list.size());
        }
    }

    @Override // com.narvii.paging.storage.PageStorage
    public boolean prependPage(List<T> list, boolean z, PageOperationCallback pageOperationCallback) {
        if (list == null) {
            return false;
        }
        if (list.isEmpty()) {
            if (this.pageData == null) {
                this.pageData = new ArrayList<>();
            }
            if (pageOperationCallback != null) {
                pageOperationCallback.onEmptyPagePrepend();
            }
            return false;
        }
        boolean[] zArr = new boolean[1];
        if (this.pageData == null) {
            this.pageData = new ArrayList<>();
        }
        if (z) {
            ArrayList<T> arrayListMergeTop = mergeTop(this.pageData, list, zArr);
            int size = this.pageData.size();
            this.pageData = arrayListMergeTop;
            if (pageOperationCallback != null) {
                if (arrayListMergeTop.size() - size == 0) {
                    pageOperationCallback.onEmptyPagePrepend();
                } else {
                    pageOperationCallback.onPagePrepend(arrayListMergeTop.size() - size);
                }
            }
        } else {
            this.pageData.addAll(0, list);
            if (pageOperationCallback != null) {
                pageOperationCallback.onPagePrepend(list.size());
            }
        }
        return zArr[0];
    }

    @Override // com.narvii.paging.storage.PageStorage
    public void resetPageData() {
        ArrayList<T> arrayList = this.pageData;
        if (arrayList != null) {
            arrayList.clear();
        }
    }

    private ArrayList<T> mergeTop(ArrayList<T> arrayList, List<T> list, boolean[] zArr) {
        if (list == null) {
            return arrayList;
        }
        if (arrayList.size() == 0) {
            zArr[0] = true;
            return new ArrayList<>(list);
        }
        if (list.isEmpty()) {
            zArr[0] = true;
            return new ArrayList<>();
        }
        if (arrayList.size() >= list.size()) {
            int size = list.size() - 1;
            T t = list.get(size);
            for (int i = 0; i < list.size(); i++) {
                if (Utils.isEqualsNotNull(t.id(), arrayList.get(i).id())) {
                    ArrayList<T> arrayList2 = new ArrayList<>(arrayList.size() + (size - i));
                    arrayList2.addAll(list);
                    for (int i2 = i + 1; i2 < arrayList.size(); i2++) {
                        arrayList2.add(arrayList.get(i2));
                    }
                    return arrayList2;
                }
            }
            zArr[0] = true;
            ArrayList<T> arrayList3 = new ArrayList<>();
            arrayList3.addAll(list);
            arrayList3.addAll(arrayList);
            return arrayList3;
        }
        T t2 = arrayList.get(0);
        for (int i3 = 0; i3 < list.size(); i3++) {
            if (Utils.isEqualsNotNull(t2.id(), list.get(i3).id())) {
                if (i3 == 0) {
                    return arrayList;
                }
                ArrayList<T> arrayList4 = new ArrayList<>(arrayList.size() + i3);
                for (int i4 = 0; i4 < i3; i4++) {
                    arrayList4.add(list.get(i4));
                }
                arrayList4.addAll(arrayList);
                return arrayList4;
            }
        }
        zArr[0] = true;
        ArrayList<T> arrayList5 = new ArrayList<>();
        arrayList5.addAll(list);
        arrayList5.addAll(arrayList);
        return arrayList5;
    }

    @Override // com.narvii.paging.storage.PageStorage
    public int updateItem(T t) {
        ArrayList<T> arrayList;
        int iIndexOfId;
        String strategyInfo;
        if (t == null || (arrayList = this.pageData) == null || (iIndexOfId = Utils.indexOfId(arrayList, t.id())) < 0) {
            return -1;
        }
        T t2 = this.pageData.get(iIndexOfId);
        boolean z = false;
        if ((t2 instanceof StrategyObject) && (t instanceof StrategyObject) && (strategyInfo = ((StrategyObject) t2).getStrategyInfo()) != null) {
            try {
                Cloneable cloneableM46clone = t.m46clone();
                ((StrategyObject) cloneableM46clone).setStrategyInfo(strategyInfo);
                this.pageData.set(iIndexOfId, cloneableM46clone);
                z = true;
            } catch (Exception e) {
                Log.e("replace object", e);
            }
        }
        if (!z) {
            this.pageData.set(iIndexOfId, t);
        }
        return iIndexOfId;
    }

    @Override // com.narvii.paging.storage.PageStorage
    public int removeItem(T t) {
        int iIndexOfId;
        if (t == null || (iIndexOfId = Utils.indexOfId(this.pageData, t.id())) < 0) {
            return -1;
        }
        this.pageData.remove(iIndexOfId);
        return iIndexOfId;
    }

    @Override // com.narvii.paging.storage.PageStorage
    public List<T> getDataList() {
        ArrayList<T> arrayList = this.pageData;
        return arrayList == null ? Collections.emptyList() : arrayList;
    }

    @Override // com.narvii.paging.storage.PageStorage
    public T getItemById(String str) {
        if (str != null && this.pageData != null) {
            for (int i = 0; i < this.pageData.size(); i++) {
                if (Utils.isEqualsNotNull(str, this.pageData.get(i).id()) || ((this.pageData.get(i) instanceof RefHost) && Utils.isEqualsNotNull(str, ((RefHost) this.pageData.get(i)).refId()))) {
                    return this.pageData.get(i);
                }
            }
        }
        return null;
    }

    @Override // com.narvii.paging.storage.PageStorage
    public int getPosition(T t) {
        if (t != null && this.pageData != null) {
            for (int i = 0; i < this.pageData.size(); i++) {
                if (Utils.isEqualsNotNull(this.pageData.get(i).id(), t.id())) {
                    return i;
                }
            }
        }
        return -1;
    }
}
