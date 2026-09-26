package androidx.media3.common;

import android.os.Bundle;
import android.os.Parcelable;
import androidx.annotation.CheckResult;
import androidx.annotation.Nullable;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.BundleableUtil;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import java.util.ArrayList;
import java.util.Arrays;

/* JADX INFO: loaded from: classes6.dex */
public final class TrackGroup implements Bundleable {
    private static final String TAG = "TrackGroup";
    private final Format[] formats;
    private int hashCode;

    @UnstableApi
    public final String id;

    @UnstableApi
    public final int length;

    @UnstableApi
    public final int type;
    private static final String FIELD_FORMATS = Util.z0(0);
    private static final String FIELD_ID = Util.z0(1);

    @UnstableApi
    public static final Bundleable.Creator<TrackGroup> CREATOR = new Bundleable.Creator() { // from class: androidx.media3.common.h2
        @Override // androidx.media3.common.Bundleable.Creator
        public final Bundleable a(Bundle bundle) {
            return TrackGroup.e(bundle);
        }
    };

    @UnstableApi
    public TrackGroup(Format... formatArr) {
        this("", formatArr);
    }

    private static int h(int i10) {
        return i10 | 16384;
    }

    @UnstableApi
    public int d(Format format) {
        int i10 = 0;
        while (true) {
            Format[] formatArr = this.formats;
            if (i10 >= formatArr.length) {
                return -1;
            }
            if (format == formatArr[i10]) {
                return i10;
            }
            i10++;
        }
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || TrackGroup.class != obj.getClass()) {
            return false;
        }
        TrackGroup trackGroup = (TrackGroup) obj;
        return this.id.equals(trackGroup.id) && Arrays.equals(this.formats, trackGroup.formats);
    }

    @UnstableApi
    public TrackGroup(String str, Format... formatArr) {
        Assertions.a(formatArr.length > 0);
        this.id = str;
        this.formats = formatArr;
        this.length = formatArr.length;
        int iK = MimeTypes.k(formatArr[0].sampleMimeType);
        this.type = iK == -1 ? MimeTypes.k(formatArr[0].containerMimeType) : iK;
        i();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ TrackGroup e(Bundle bundle) {
        ArrayList parcelableArrayList = bundle.getParcelableArrayList(FIELD_FORMATS);
        return new TrackGroup(bundle.getString(FIELD_ID, ""), (Format[]) (parcelableArrayList == null ? com.google.common.collect.a0.x() : BundleableUtil.d(Format.CREATOR, parcelableArrayList)).toArray(new Format[0]));
    }

    private static void f(String str, @Nullable String str2, @Nullable String str3, int i10) {
        Log.d(TAG, "", new IllegalStateException("Different " + str + " combined in one TrackGroup: '" + str2 + "' (track 0) and '" + str3 + "' (track " + i10 + ")"));
    }

    private static String g(@Nullable String str) {
        return (str == null || str.equals("und")) ? "" : str;
    }

    private void i() {
        String strG = g(this.formats[0].language);
        int iH = h(this.formats[0].roleFlags);
        int i10 = 1;
        while (true) {
            Format[] formatArr = this.formats;
            if (i10 >= formatArr.length) {
                return;
            }
            if (!strG.equals(g(formatArr[i10].language))) {
                Format[] formatArr2 = this.formats;
                f("languages", formatArr2[0].language, formatArr2[i10].language, i10);
                return;
            } else {
                if (iH != h(this.formats[i10].roleFlags)) {
                    f("role flags", Integer.toBinaryString(this.formats[0].roleFlags), Integer.toBinaryString(this.formats[i10].roleFlags), i10);
                    return;
                }
                i10++;
            }
        }
    }

    @CheckResult
    @UnstableApi
    public TrackGroup b(String str) {
        return new TrackGroup(str, this.formats);
    }

    @UnstableApi
    public Format c(int i10) {
        return this.formats[i10];
    }

    public int hashCode() {
        if (this.hashCode == 0) {
            this.hashCode = ((527 + this.id.hashCode()) * 31) + Arrays.hashCode(this.formats);
        }
        return this.hashCode;
    }

    @Override // androidx.media3.common.Bundleable
    @UnstableApi
    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        ArrayList<? extends Parcelable> arrayList = new ArrayList<>(this.formats.length);
        for (Format format : this.formats) {
            arrayList.add(format.i(true));
        }
        bundle.putParcelableArrayList(FIELD_FORMATS, arrayList);
        bundle.putString(FIELD_ID, this.id);
        return bundle;
    }
}
