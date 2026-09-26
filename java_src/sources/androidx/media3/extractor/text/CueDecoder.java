package androidx.media3.extractor.text;

import android.os.Bundle;
import android.os.Parcel;
import androidx.media3.common.text.Cue;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.BundleableUtil;
import androidx.media3.common.util.UnstableApi;
import com.google.common.collect.a0;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes11.dex */
@UnstableApi
public final class CueDecoder {
    static final String BUNDLED_CUES = "c";

    public a0<Cue> a(byte[] bArr) {
        Parcel parcelObtain = Parcel.obtain();
        parcelObtain.unmarshall(bArr, 0, bArr.length);
        parcelObtain.setDataPosition(0);
        Bundle bundle = parcelObtain.readBundle(Bundle.class.getClassLoader());
        parcelObtain.recycle();
        return BundleableUtil.d(Cue.CREATOR, (ArrayList) Assertions.e(bundle.getParcelableArrayList(BUNDLED_CUES)));
    }
}
