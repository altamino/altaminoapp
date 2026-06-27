package com.narvii.util;

import android.util.SparseArray;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes3.dex */
public class CollectionUtils {
    public static int getSize(List list) {
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    public static List getList(SparseArray sparseArray) {
        if (sparseArray == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < sparseArray.size(); i++) {
            arrayList.add(sparseArray.valueAt(i));
        }
        return arrayList;
    }

    public static boolean isEmpty(List list) {
        return list == null || list.size() == 0;
    }

    public static Object getObjectAt(List list, int i) {
        if (list == null) {
            return null;
        }
        int size = list.size();
        if (i < 0 || i >= size) {
            return null;
        }
        return list.get(i);
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
}
