package v4;

/* JADX INFO: loaded from: classes9.dex */
public final class f implements com.google.firebase.perf.application.a.InterfaceC0260a {
    private static final y4.a logger = y4.a.e();

    @Override // com.google.firebase.perf.application.a.InterfaceC0260a
    public void a() {
        try {
            e.c();
        } catch (IllegalStateException e) {
            logger.k("FirebaseApp is not initialized. Firebase Performance will not be collecting any performance metrics until initialized. %s", e);
        }
    }
}
