package com.google.android.datatransport.cct;

import androidx.annotation.Keep;
import g2.h;
import g2.m;

/* JADX INFO: loaded from: classes9.dex */
@Keep
public class CctBackendFactory implements g2.d {
    @Override // g2.d
    public m create(h hVar) {
        return new d(hVar.b(), hVar.e(), hVar.d());
    }
}
