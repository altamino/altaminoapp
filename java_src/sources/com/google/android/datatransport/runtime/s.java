package com.google.android.datatransport.runtime;

/* JADX INFO: loaded from: classes9.dex */
final class s<T> implements f2.f<T> {
    private final String name;
    private final f2.b payloadEncoding;
    private final f2.e<T, byte[]> transformer;
    private final p transportContext;
    private final t transportInternal;

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void e(Exception exc) {
    }

    p d() {
        return this.transportContext;
    }

    @Override // f2.f
    public void a(f2.c<T> cVar, f2.h hVar) {
        this.transportInternal.a(o.a().e(this.transportContext).c(cVar).f(this.name).d(this.transformer).b(this.payloadEncoding).a(), hVar);
    }

    @Override // f2.f
    public void b(f2.c<T> cVar) {
        a(cVar, new f2.h() { // from class: com.google.android.datatransport.runtime.r
            @Override // f2.h
            public final void a(Exception exc) {
                s.e(exc);
            }
        });
    }

    s(p pVar, String str, f2.b bVar, f2.e<T, byte[]> eVar, t tVar) {
        this.transportContext = pVar;
        this.name = str;
        this.payloadEncoding = bVar;
        this.transformer = eVar;
        this.transportInternal = tVar;
    }
}
