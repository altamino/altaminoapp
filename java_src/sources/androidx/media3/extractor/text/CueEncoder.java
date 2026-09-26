package androidx.media3.extractor.text;

import android.os.Bundle;
import android.os.Parcel;
import androidx.media3.common.text.Cue;
import androidx.media3.common.util.BundleableUtil;
import androidx.media3.common.util.UnstableApi;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
@UnstableApi
public final class CueEncoder {
    public byte[] a(List<Cue> list) {
        ArrayList<Bundle> arrayListI = BundleableUtil.i(list);
        Bundle bundle = new Bundle();
        bundle.putParcelableArrayList("c", arrayListI);
        Parcel parcelObtain = Parcel.obtain();
        parcelObtain.writeBundle(bundle);
        byte[] bArrMarshall = parcelObtain.marshall();
        parcelObtain.recycle();
        return bArrMarshall;
    }
}
