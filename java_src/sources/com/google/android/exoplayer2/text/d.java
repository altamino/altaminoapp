package com.google.android.exoplayer2.text;

import android.os.Bundle;
import android.os.Parcel;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes7.dex */
public final class d {
    public byte[] a(List<b> list) {
        ArrayList<Bundle> arrayListD = com.google.android.exoplayer2.util.c.d(list);
        Bundle bundle = new Bundle();
        bundle.putParcelableArrayList("c", arrayListD);
        Parcel parcelObtain = Parcel.obtain();
        parcelObtain.writeBundle(bundle);
        byte[] bArrMarshall = parcelObtain.marshall();
        parcelObtain.recycle();
        return bArrMarshall;
    }
}
