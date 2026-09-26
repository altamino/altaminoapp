package com.narvii.util;

import android.os.Bundle;
import android.os.Parcel;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class BundleUtils {

    public static class SizeTree {
        public String key;
        public int totalSize;

        public SizeTree(String str, int i10) {
            this.key = str;
            this.totalSize = i10;
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
                int i10 = iSizeAsParcel - iSizeAsParcel2;
                if (i10 > 5000) {
                    arrayList.add(new SizeTree(str, i10));
                }
                iSizeAsParcel = iSizeAsParcel2;
            }
            bundle.putAll(bundle2);
            return arrayList;
        } catch (Throwable th) {
            bundle.putAll(bundle2);
            throw th;
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
}
