package com.google.android.exoplayer2.extractor;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.v2;
import java.io.EOFException;
import java.io.IOException;

/* JADX INFO: loaded from: classes11.dex */
public final class o {
    public static int c(m mVar, byte[] bArr, int i10, int i11) throws IOException {
        int i12 = 0;
        while (i12 < i11) {
            int iA = mVar.a(bArr, i10 + i12, i11 - i12);
            if (iA == -1) {
                break;
            }
            i12 += iA;
        }
        return i12;
    }

    public static void a(boolean z6, @Nullable String str) throws v2 {
        if (!z6) {
            throw v2.a(str, null);
        }
    }

    public static boolean b(m mVar, byte[] bArr, int i10, int i11, boolean z6) throws IOException {
        try {
            return mVar.peekFully(bArr, i10, i11, z6);
        } catch (EOFException e) {
            if (z6) {
                return false;
            }
            throw e;
        }
    }

    public static boolean d(m mVar, byte[] bArr, int i10, int i11) throws IOException {
        try {
            mVar.readFully(bArr, i10, i11);
            return true;
        } catch (EOFException unused) {
            return false;
        }
    }

    public static boolean e(m mVar, int i10) throws IOException {
        try {
            mVar.skipFully(i10);
            return true;
        } catch (EOFException unused) {
            return false;
        }
    }
}
