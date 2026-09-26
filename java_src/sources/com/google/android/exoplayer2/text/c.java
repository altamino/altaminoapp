package com.google.android.exoplayer2.text;

import android.os.Bundle;
import android.os.Parcel;
import com.google.common.collect.a0;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes7.dex */
public final class c {
    static final String BUNDLED_CUES = "c";

    public a0<b> a(byte[] bArr) {
        Parcel parcelObtain = Parcel.obtain();
        parcelObtain.unmarshall(bArr, 0, bArr.length);
        parcelObtain.setDataPosition(0);
        Bundle bundle = parcelObtain.readBundle(Bundle.class.getClassLoader());
        parcelObtain.recycle();
        return com.google.android.exoplayer2.util.c.b(b.CREATOR, (ArrayList) com.google.android.exoplayer2.util.a.e(bundle.getParcelableArrayList(BUNDLED_CUES)));
    }
}
