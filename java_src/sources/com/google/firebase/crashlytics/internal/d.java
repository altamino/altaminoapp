package com.google.firebase.crashlytics.internal;

import androidx.annotation.NonNull;
import com.google.firebase.crashlytics.internal.model.f0;
import com.google.firebase.crashlytics.internal.model.g0;
import java.io.File;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes9.dex */
public final class d implements com.google.firebase.crashlytics.internal.a {
    private static final h MISSING_NATIVE_SESSION_FILE_PROVIDER = new b();
    private final AtomicReference<com.google.firebase.crashlytics.internal.a> availableNativeComponent = new AtomicReference<>(null);
    private final o4.a<com.google.firebase.crashlytics.internal.a> deferredNativeComponent;

    private static final class b implements h {
        private b() {
        }

        @Override // com.google.firebase.crashlytics.internal.h
        public File a() {
            return null;
        }

        @Override // com.google.firebase.crashlytics.internal.h
        public f0.a b() {
            return null;
        }

        @Override // com.google.firebase.crashlytics.internal.h
        public File c() {
            return null;
        }

        @Override // com.google.firebase.crashlytics.internal.h
        public File d() {
            return null;
        }

        @Override // com.google.firebase.crashlytics.internal.h
        public File e() {
            return null;
        }

        @Override // com.google.firebase.crashlytics.internal.h
        public File f() {
            return null;
        }

        @Override // com.google.firebase.crashlytics.internal.h
        public File g() {
            return null;
        }
    }

    @Override // com.google.firebase.crashlytics.internal.a
    @NonNull
    public h b(@NonNull String str) {
        com.google.firebase.crashlytics.internal.a aVar = this.availableNativeComponent.get();
        return aVar == null ? MISSING_NATIVE_SESSION_FILE_PROVIDER : aVar.b(str);
    }

    @Override // com.google.firebase.crashlytics.internal.a
    public boolean c() {
        com.google.firebase.crashlytics.internal.a aVar = this.availableNativeComponent.get();
        return aVar != null && aVar.c();
    }

    @Override // com.google.firebase.crashlytics.internal.a
    public boolean d(@NonNull String str) {
        com.google.firebase.crashlytics.internal.a aVar = this.availableNativeComponent.get();
        return aVar != null && aVar.d(str);
    }

    public d(o4.a<com.google.firebase.crashlytics.internal.a> aVar) {
        this.deferredNativeComponent = aVar;
        aVar.a(new o4.a.InterfaceC0470a() { // from class: com.google.firebase.crashlytics.internal.b
            @Override // o4.a.InterfaceC0470a
            public final void a(o4.b bVar) {
                this.f1532a.g(bVar);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void g(o4.b bVar) {
        g.f().b("Crashlytics native component now available.");
        this.availableNativeComponent.set((com.google.firebase.crashlytics.internal.a) bVar.get());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void h(String str, String str2, long j6, g0 g0Var, o4.b bVar) {
        ((com.google.firebase.crashlytics.internal.a) bVar.get()).a(str, str2, j6, g0Var);
    }

    @Override // com.google.firebase.crashlytics.internal.a
    public void a(@NonNull final String str, @NonNull final String str2, final long j6, @NonNull final g0 g0Var) {
        g.f().i("Deferring native open session: " + str);
        this.deferredNativeComponent.a(new o4.a.InterfaceC0470a() { // from class: com.google.firebase.crashlytics.internal.c
            @Override // o4.a.InterfaceC0470a
            public final void a(o4.b bVar) {
                d.h(str, str2, j6, g0Var, bVar);
            }
        });
    }
}
