package com.narvii.paging.storage;

import com.narvii.model.NVObject;
import com.narvii.model.RefHost;
import com.narvii.model.StrategyObject;
import com.narvii.util.Log;
import com.narvii.util.Utils;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes10.dex */
public class ListPageStorage<T extends NVObject> extends PageStorage<T> {
    ArrayList<T> pageData = null;

    @Override // com.narvii.paging.storage.PageStorage
    public T getItemById(String str) {
        if (str != null && this.pageData != null) {
            for (int i10 = 0; i10 < this.pageData.size(); i10++) {
                if (Utils.isEqualsNotNull(str, this.pageData.get(i10).id()) || ((this.pageData.get(i10) instanceof RefHost) && Utils.isEqualsNotNull(str, ((RefHost) this.pageData.get(i10)).refId()))) {
                    return this.pageData.get(i10);
                }
            }
        }
        return null;
    }

    @Override // com.narvii.paging.storage.PageStorage
    public int getPosition(T t5) {
        if (t5 != null && this.pageData != null) {
            for (int i10 = 0; i10 < this.pageData.size(); i10++) {
                if (Utils.isEqualsNotNull(this.pageData.get(i10).id(), t5.id())) {
                    return i10;
                }
            }
        }
        return -1;
    }

    @Override // com.narvii.paging.storage.PageStorage
    public boolean prependPage(List<T> list, boolean z6, PageOperationCallback pageOperationCallback) {
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
        if (z6) {
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
    public int removeItem(T t5) {
        int iIndexOfId;
        if (t5 == null || (iIndexOfId = Utils.indexOfId(this.pageData, t5.id())) < 0) {
            return -1;
        }
        this.pageData.remove(iIndexOfId);
        return iIndexOfId;
    }

    @Override // com.narvii.paging.storage.PageStorage
    public int updateItem(T t5) {
        ArrayList<T> arrayList;
        int iIndexOfId;
        String strategyInfo;
        if (t5 == null || (arrayList = this.pageData) == null || (iIndexOfId = Utils.indexOfId(arrayList, t5.id())) < 0) {
            return -1;
        }
        T t10 = this.pageData.get(iIndexOfId);
        if ((t10 instanceof StrategyObject) && (t5 instanceof StrategyObject) && (strategyInfo = ((StrategyObject) t10).getStrategyInfo()) != null) {
            try {
                Cloneable cloneableM1622clone = t5.m1622clone();
                ((StrategyObject) cloneableM1622clone).setStrategyInfo(strategyInfo);
                this.pageData.set(iIndexOfId, (T) cloneableM1622clone);
            } catch (Exception e) {
                Log.e("replace object", e);
                this.pageData.set(iIndexOfId, t5);
            }
        } else {
            this.pageData.set(iIndexOfId, t5);
        }
        return iIndexOfId;
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
            T t5 = list.get(size);
            for (int i10 = 0; i10 < list.size(); i10++) {
                if (Utils.isEqualsNotNull(t5.id(), arrayList.get(i10).id())) {
                    ArrayList<T> arrayList2 = new ArrayList<>(arrayList.size() + (size - i10));
                    arrayList2.addAll(list);
                    for (int i11 = i10 + 1; i11 < arrayList.size(); i11++) {
                        arrayList2.add(arrayList.get(i11));
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
        T t10 = arrayList.get(0);
        for (int i12 = 0; i12 < list.size(); i12++) {
            if (Utils.isEqualsNotNull(t10.id(), list.get(i12).id())) {
                if (i12 == 0) {
                    return arrayList;
                }
                ArrayList<T> arrayList4 = new ArrayList<>(arrayList.size() + i12);
                for (int i13 = 0; i13 < i12; i13++) {
                    arrayList4.add(list.get(i13));
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

    @Override // java.util.AbstractList, java.util.List
    public T get(int i10) {
        ArrayList<T> arrayList = this.pageData;
        if (arrayList == null || i10 < 0 || i10 >= arrayList.size()) {
            return null;
        }
        return this.pageData.get(i10);
    }

    @Override // com.narvii.paging.storage.PageStorage
    public List<T> getDataList() {
        ArrayList<T> arrayList = this.pageData;
        return arrayList == null ? Collections.emptyList() : arrayList;
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

    @Override // java.util.AbstractList, java.util.List
    public T remove(int i10) {
        ArrayList<T> arrayList = this.pageData;
        if (arrayList == null) {
            return null;
        }
        return arrayList.remove(i10);
    }

    @Override // com.narvii.paging.storage.PageStorage
    public void resetPageData() {
        ArrayList<T> arrayList = this.pageData;
        if (arrayList != null) {
            arrayList.clear();
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        ArrayList<T> arrayList = this.pageData;
        if (arrayList == null) {
            return 0;
        }
        return arrayList.size();
    }
}
