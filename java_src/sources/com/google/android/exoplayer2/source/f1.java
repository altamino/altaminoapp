package com.google.android.exoplayer2.source;

import android.os.Bundle;
import android.os.Parcelable;
import androidx.annotation.CheckResult;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.a2;
import java.util.ArrayList;
import java.util.Arrays;

/* JADX INFO: loaded from: classes7.dex */
public final class f1 implements com.google.android.exoplayer2.h {
    public static final com.google.android.exoplayer2.h.a<f1> CREATOR = new com.google.android.exoplayer2.h.a() { // from class: com.google.android.exoplayer2.source.e1
        @Override // com.google.android.exoplayer2.h.a
        public final com.google.android.exoplayer2.h a(Bundle bundle) {
            return f1.f(bundle);
        }
    };
    private static final int FIELD_FORMATS = 0;
    private static final int FIELD_ID = 1;
    private static final String TAG = "TrackGroup";
    private final a2[] formats;
    private int hashCode;
    public final String id;
    public final int length;
    public final int type;

    public f1(a2... a2VarArr) {
        this("", a2VarArr);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ f1 f(Bundle bundle) {
        ArrayList parcelableArrayList = bundle.getParcelableArrayList(e(0));
        return new f1(bundle.getString(e(1), ""), (a2[]) (parcelableArrayList == null ? com.google.common.collect.a0.x() : com.google.android.exoplayer2.util.c.b(a2.CREATOR, parcelableArrayList)).toArray(new a2[0]));
    }

    private static int i(int i10) {
        return i10 | 16384;
    }

    public int d(a2 a2Var) {
        int i10 = 0;
        while (true) {
            a2[] a2VarArr = this.formats;
            if (i10 >= a2VarArr.length) {
                return -1;
            }
            if (a2Var == a2VarArr[i10]) {
                return i10;
            }
            i10++;
        }
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || f1.class != obj.getClass()) {
            return false;
        }
        f1 f1Var = (f1) obj;
        return this.id.equals(f1Var.id) && Arrays.equals(this.formats, f1Var.formats);
    }

    public f1(String str, a2... a2VarArr) {
        com.google.android.exoplayer2.util.a.a(a2VarArr.length > 0);
        this.id = str;
        this.formats = a2VarArr;
        this.length = a2VarArr.length;
        int i10 = com.google.android.exoplayer2.util.x.i(a2VarArr[0].sampleMimeType);
        this.type = i10 == -1 ? com.google.android.exoplayer2.util.x.i(a2VarArr[0].containerMimeType) : i10;
        j();
    }

    private static String e(int i10) {
        return Integer.toString(i10, 36);
    }

    private static void g(String str, @Nullable String str2, @Nullable String str3, int i10) {
        com.google.android.exoplayer2.util.t.d(TAG, "", new IllegalStateException("Different " + str + " combined in one TrackGroup: '" + str2 + "' (track 0) and '" + str3 + "' (track " + i10 + ")"));
    }

    private static String h(@Nullable String str) {
        return (str == null || str.equals("und")) ? "" : str;
    }

    private void j() {
        String strH = h(this.formats[0].language);
        int i10 = i(this.formats[0].roleFlags);
        int i11 = 1;
        while (true) {
            a2[] a2VarArr = this.formats;
            if (i11 >= a2VarArr.length) {
                return;
            }
            if (!strH.equals(h(a2VarArr[i11].language))) {
                a2[] a2VarArr2 = this.formats;
                g("languages", a2VarArr2[0].language, a2VarArr2[i11].language, i11);
                return;
            } else {
                if (i10 != i(this.formats[i11].roleFlags)) {
                    g("role flags", Integer.toBinaryString(this.formats[0].roleFlags), Integer.toBinaryString(this.formats[i11].roleFlags), i11);
                    return;
                }
                i11++;
            }
        }
    }

    @CheckResult
    public f1 b(String str) {
        return new f1(str, this.formats);
    }

    public a2 c(int i10) {
        return this.formats[i10];
    }

    public int hashCode() {
        if (this.hashCode == 0) {
            this.hashCode = ((527 + this.id.hashCode()) * 31) + Arrays.hashCode(this.formats);
        }
        return this.hashCode;
    }

    @Override // com.google.android.exoplayer2.h
    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        ArrayList<? extends Parcelable> arrayList = new ArrayList<>(this.formats.length);
        for (a2 a2Var : this.formats) {
            arrayList.add(a2Var.j(true));
        }
        bundle.putParcelableArrayList(e(0), arrayList);
        bundle.putString(e(1), this.id);
        return bundle;
    }
}
