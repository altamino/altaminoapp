package com.narvii.account;

import e8.p;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
public final class FirebaseRemoteConfigRepository {

    @NotNull
    private final kotlinx.coroutines.k0 ioDispatcher;

    @NotNull
    private final com.google.firebase.remoteconfig.a remoteConfig;

    /* JADX INFO: renamed from: com.narvii.account.FirebaseRemoteConfigRepository$getRemoteConfigBoolean$2, reason: invalid class name */
    @kotlin.coroutines.jvm.internal.f(c = "com.narvii.account.FirebaseRemoteConfigRepository$getRemoteConfigBoolean$2", f = "FirebaseRemoteConfigRepository.kt", l = {}, m = "invokeSuspend")
    static final class AnonymousClass2 extends kotlin.coroutines.jvm.internal.l implements p<kotlinx.coroutines.o0, kotlin.coroutines.d<? super Boolean>, Object> {
        final /* synthetic */ String $key;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(String str, kotlin.coroutines.d<? super AnonymousClass2> dVar) {
            super(2, dVar);
            this.$key = str;
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @NotNull
        public final kotlin.coroutines.d<w7.l0> create(@Nullable Object obj, @NotNull kotlin.coroutines.d<?> dVar) {
            return FirebaseRemoteConfigRepository.this.new AnonymousClass2(this.$key, dVar);
        }

        @Override // e8.p
        @Nullable
        public final Object invoke(@NotNull kotlinx.coroutines.o0 o0Var, @Nullable kotlin.coroutines.d<? super Boolean> dVar) {
            return ((AnonymousClass2) create(o0Var, dVar)).invokeSuspend(w7.l0.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            boolean zI;
            kotlin.coroutines.intrinsics.d.e();
            if (this.label == 0) {
                w7.w.b(obj);
                try {
                    zI = FirebaseRemoteConfigRepository.this.remoteConfig.i(this.$key);
                } catch (Exception unused) {
                    zI = false;
                }
                return kotlin.coroutines.jvm.internal.b.a(zI);
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    public FirebaseRemoteConfigRepository(@NotNull kotlinx.coroutines.k0 ioDispatcher, @NotNull com.google.firebase.remoteconfig.a remoteConfig) {
        kotlin.jvm.internal.t.j(ioDispatcher, "ioDispatcher");
        kotlin.jvm.internal.t.j(remoteConfig, "remoteConfig");
        this.ioDispatcher = ioDispatcher;
        this.remoteConfig = remoteConfig;
    }

    public /* synthetic */ FirebaseRemoteConfigRepository(kotlinx.coroutines.k0 k0Var, com.google.firebase.remoteconfig.a aVar, int i10, kotlin.jvm.internal.k kVar) {
        this((i10 & 1) != 0 ? kotlinx.coroutines.e1.b() : k0Var, aVar);
    }

    @Nullable
    public final Object getRemoteConfigBoolean(@NotNull String str, @NotNull kotlin.coroutines.d<? super Boolean> dVar) {
        return kotlinx.coroutines.i.g(this.ioDispatcher, new AnonymousClass2(str, null), dVar);
    }
}
