package com.google.firebase.perf.metrics;

import android.util.SparseIntArray;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes7.dex */
public class g {

    public static class a {
        int frozenFrames;
        int slowFrames;
        int totalFrames;

        public int b() {
            return this.frozenFrames;
        }

        public int c() {
            return this.slowFrames;
        }

        public int d() {
            return this.totalFrames;
        }

        public a a(a aVar) {
            return new a(this.totalFrames - aVar.d(), this.slowFrames - aVar.c(), this.frozenFrames - aVar.b());
        }

        public a(int i10, int i11, int i12) {
            this.totalFrames = i10;
            this.slowFrames = i11;
            this.frozenFrames = i12;
        }
    }

    @NonNull
    public static a a(@Nullable SparseIntArray[] sparseIntArrayArr) {
        int i10;
        int i11;
        SparseIntArray sparseIntArray;
        int i12 = 0;
        if (sparseIntArrayArr == null || (sparseIntArray = sparseIntArrayArr[0]) == null) {
            i10 = 0;
            i11 = 0;
        } else {
            int i13 = 0;
            i10 = 0;
            i11 = 0;
            while (i12 < sparseIntArray.size()) {
                int iKeyAt = sparseIntArray.keyAt(i12);
                int iValueAt = sparseIntArray.valueAt(i12);
                i13 += iValueAt;
                if (iKeyAt > 700) {
                    i11 += iValueAt;
                }
                if (iKeyAt > 16) {
                    i10 += iValueAt;
                }
                i12++;
            }
            i12 = i13;
        }
        return new a(i12, i10, i11);
    }
}
