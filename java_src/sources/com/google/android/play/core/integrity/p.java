package com.google.android.play.core.integrity;

/* JADX INFO: loaded from: classes7.dex */
final class p extends d.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f1416a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Long f1417b;

    p() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.play.core.integrity.d.a
    public final d a() {
        String str = this.f1416a;
        if (str != null) {
            return new r(str, this.f1417b, null, 0 == true ? 1 : 0);
        }
        throw new IllegalStateException("Missing required properties: nonce");
    }

    @Override // com.google.android.play.core.integrity.d.a
    public final d.a c(String str) {
        if (str == null) {
            throw new NullPointerException("Null nonce");
        }
        this.f1416a = str;
        return this;
    }

    @Override // com.google.android.play.core.integrity.d.a
    public final d.a b(long j6) {
        this.f1417b = Long.valueOf(j6);
        return this;
    }
}
