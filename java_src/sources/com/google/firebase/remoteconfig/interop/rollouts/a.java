package com.google.firebase.remoteconfig.interop.rollouts;

import com.google.firebase.remoteconfig.internal.g;
import java.io.IOException;

/* JADX INFO: loaded from: classes7.dex */
public final class a implements k4.a {
    public static final int CODEGEN_VERSION = 2;
    public static final k4.a CONFIG = new a();

    /* JADX INFO: renamed from: com.google.firebase.remoteconfig.interop.rollouts.a$a, reason: collision with other inner class name */
    private static final class C0264a implements j4.d<d> {
        static final C0264a INSTANCE = new C0264a();
        private static final j4.c ROLLOUTID_DESCRIPTOR = j4.c.d(g.ROLLOUT_METADATA_ID);
        private static final j4.c VARIANTID_DESCRIPTOR = j4.c.d(g.ROLLOUT_METADATA_VARIANT_ID);
        private static final j4.c PARAMETERKEY_DESCRIPTOR = j4.c.d("parameterKey");
        private static final j4.c PARAMETERVALUE_DESCRIPTOR = j4.c.d("parameterValue");
        private static final j4.c TEMPLATEVERSION_DESCRIPTOR = j4.c.d("templateVersion");

        @Override // j4.d
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(d dVar, j4.e eVar) throws IOException {
            eVar.c(ROLLOUTID_DESCRIPTOR, dVar.d());
            eVar.c(VARIANTID_DESCRIPTOR, dVar.f());
            eVar.c(PARAMETERKEY_DESCRIPTOR, dVar.b());
            eVar.c(PARAMETERVALUE_DESCRIPTOR, dVar.c());
            eVar.e(TEMPLATEVERSION_DESCRIPTOR, dVar.e());
        }

        private C0264a() {
        }
    }

    @Override // k4.a
    public void a(k4.b<?> bVar) {
        C0264a c0264a = C0264a.INSTANCE;
        bVar.a(d.class, c0264a);
        bVar.a(b.class, c0264a);
    }

    private a() {
    }
}
