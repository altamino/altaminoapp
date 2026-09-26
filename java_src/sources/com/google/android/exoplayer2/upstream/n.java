package com.google.android.exoplayer2.upstream;

import androidx.annotation.Nullable;
import java.io.IOException;

/* JADX INFO: loaded from: classes10.dex */
public final class n {
    public static void a(@Nullable k kVar) {
        if (kVar != null) {
            try {
                kVar.close();
            } catch (IOException unused) {
            }
        }
    }
}
