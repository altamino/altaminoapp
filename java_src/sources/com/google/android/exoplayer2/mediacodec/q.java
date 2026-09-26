package com.google.android.exoplayer2.mediacodec;

import java.util.List;

/* JADX INFO: loaded from: classes10.dex */
public interface q {
    public static final q DEFAULT = new q() { // from class: com.google.android.exoplayer2.mediacodec.p
        @Override // com.google.android.exoplayer2.mediacodec.q
        public final List a(String str, boolean z6, boolean z10) {
            return v.s(str, z6, z10);
        }
    };

    List<n> a(String str, boolean z6, boolean z10) throws v.c;
}
