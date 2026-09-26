package com.narvii.util;

import android.util.SparseArray;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes9.dex */
public class CollectionUtils {
    public static Object getObjectAt(List list, int i10) {
        if (list == null) {
            return null;
        }
        int size = list.size();
        if (i10 < 0 || i10 >= size) {
            return null;
        }
        return list.get(i10);
    }

    public static boolean isListEqualsIgnoreOrder(ArrayList<Object> arrayList, ArrayList<Object> arrayList2) {
        if (arrayList == null || arrayList.size() == 0) {
            return arrayList2 == null || arrayList2.size() == 0;
        }
        if (arrayList2 == null || arrayList2.size() != arrayList.size()) {
            return false;
        }
        Iterator<Object> it = arrayList.iterator();
        while (it.hasNext()) {
            if (!arrayList2.contains(it.next())) {
                return false;
            }
        }
        return true;
    }

    public static List getList(SparseArray sparseArray) {
        if (sparseArray == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < sparseArray.size(); i10++) {
            arrayList.add(sparseArray.valueAt(i10));
        }
        return arrayList;
    }

    public static int getSize(List list) {
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    public static boolean isEmpty(List list) {
        return list == null || list.size() == 0;
    }
}
