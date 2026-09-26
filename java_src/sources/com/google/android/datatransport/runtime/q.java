package com.google.android.datatransport.runtime;

import java.util.Set;

/* JADX INFO: loaded from: classes9.dex */
final class q implements f2.g {
    private final Set<f2.b> supportedPayloadEncodings;
    private final p transportContext;
    private final t transportInternal;

    @Override // f2.g
    public <T> f2.f<T> a(String str, Class<T> cls, f2.b bVar, f2.e<T, byte[]> eVar) {
        if (this.supportedPayloadEncodings.contains(bVar)) {
            return new s(this.transportContext, str, bVar, eVar, this.transportInternal);
        }
        throw new IllegalArgumentException(String.format("%s is not supported byt this factory. Supported encodings are: %s.", bVar, this.supportedPayloadEncodings));
    }

    q(Set<f2.b> set, p pVar, t tVar) {
        this.supportedPayloadEncodings = set;
        this.transportContext = pVar;
        this.transportInternal = tVar;
    }
}
