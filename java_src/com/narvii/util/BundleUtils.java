package com.narvii.util;

import android.os.Bundle;
import android.os.Parcel;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
public class BundleUtils {

    public static class SizeTree {
        public String key;
        public int totalSize;

        public SizeTree(String str, int i) {
            this.key = str;
            this.totalSize = i;
        }
    }

    public static int sizeAsParcel(Bundle bundle) {
        Parcel parcelObtain = Parcel.obtain();
        try {
            parcelObtain.writeBundle(bundle);
            return parcelObtain.dataSize();
        } finally {
            parcelObtain.recycle();
        }
    }

    public static List<SizeTree> sizeTreeFromBundle(Bundle bundle) {
        ArrayList arrayList = new ArrayList(bundle.size());
        Bundle bundle2 = new Bundle(bundle);
        try {
            int iSizeAsParcel = sizeAsParcel(bundle);
            for (String str : bundle2.keySet()) {
                bundle.remove(str);
                int iSizeAsParcel2 = sizeAsParcel(bundle);
                int i = iSizeAsParcel - iSizeAsParcel2;
                if (i > 5000) {
                    arrayList.add(new SizeTree(str, i));
                }
                iSizeAsParcel = iSizeAsParcel2;
            }
            return arrayList;
        } finally {
            bundle.putAll(bundle2);
        }
    }
}
