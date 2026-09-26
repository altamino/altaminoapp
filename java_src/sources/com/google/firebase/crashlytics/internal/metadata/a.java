package com.google.firebase.crashlytics.internal.metadata;

import java.io.IOException;

/* JADX INFO: loaded from: classes4.dex */
public final class a implements k4.a {
    public static final int CODEGEN_VERSION = 2;
    public static final k4.a CONFIG = new a();

    /* JADX INFO: renamed from: com.google.firebase.crashlytics.internal.metadata.a$a, reason: collision with other inner class name */
    private static final class C0232a implements j4.d<i> {
        static final C0232a INSTANCE = new C0232a();
        private static final j4.c ROLLOUTID_DESCRIPTOR = j4.c.d(com.google.firebase.remoteconfig.internal.g.ROLLOUT_METADATA_ID);
        private static final j4.c PARAMETERKEY_DESCRIPTOR = j4.c.d("parameterKey");
        private static final j4.c PARAMETERVALUE_DESCRIPTOR = j4.c.d("parameterValue");
        private static final j4.c VARIANTID_DESCRIPTOR = j4.c.d(com.google.firebase.remoteconfig.internal.g.ROLLOUT_METADATA_VARIANT_ID);
        private static final j4.c TEMPLATEVERSION_DESCRIPTOR = j4.c.d("templateVersion");

        @Override // j4.d
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(i iVar, j4.e eVar) throws IOException {
            eVar.c(ROLLOUTID_DESCRIPTOR, iVar.e());
            eVar.c(PARAMETERKEY_DESCRIPTOR, iVar.c());
            eVar.c(PARAMETERVALUE_DESCRIPTOR, iVar.d());
            eVar.c(VARIANTID_DESCRIPTOR, iVar.g());
            eVar.e(TEMPLATEVERSION_DESCRIPTOR, iVar.f());
        }

        private C0232a() {
        }
    }

    @Override // k4.a
    public void a(k4.b<?> bVar) {
        C0232a c0232a = C0232a.INSTANCE;
        bVar.a(i.class, c0232a);
        bVar.a(b.class, c0232a);
    }

    private a() {
    }
}
