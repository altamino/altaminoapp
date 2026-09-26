package com.narvii.account.vm;

import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.j;
import androidx.lifecycle.viewmodel.CreationExtras;
import com.narvii.model.api.ApiResponse;
import com.narvii.security.KeyStoreService;
import com.narvii.util.http.ApiResponseListener;
import e8.p;
import kotlin.coroutines.d;
import kotlin.coroutines.jvm.internal.f;
import kotlin.coroutines.jvm.internal.l;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import kotlinx.coroutines.o0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.w;

/* JADX INFO: loaded from: classes5.dex */
public final class LoginViewModel extends ViewModel {

    @NotNull
    public static final Companion Companion = new Companion(null);

    @NotNull
    public static final String TAG = "LoginViewModel";

    @NotNull
    private final KeyStoreService keyStoreService;

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }

        @NotNull
        public final ViewModelProvider.Factory factory(@NotNull final KeyStoreService keyStoreService) {
            t.j(keyStoreService, "keyStoreService");
            return new ViewModelProvider.Factory() { // from class: com.narvii.account.vm.LoginViewModel$Companion$factory$1
                @Override // androidx.lifecycle.ViewModelProvider.Factory
                @NotNull
                public /* bridge */ /* synthetic */ ViewModel create(@NotNull Class cls, @NotNull CreationExtras creationExtras) {
                    return j.b(this, cls, creationExtras);
                }

                @Override // androidx.lifecycle.ViewModelProvider.Factory
                @NotNull
                public <T extends ViewModel> T create(@NotNull Class<T> modelClass) {
                    t.j(modelClass, "modelClass");
                    return new LoginViewModel(keyStoreService);
                }
            };
        }
    }

    /* JADX INFO: renamed from: com.narvii.account.vm.LoginViewModel$sendPublicKey$1, reason: invalid class name */
    @f(c = "com.narvii.account.vm.LoginViewModel$sendPublicKey$1", f = "LoginViewModel.kt", l = {}, m = "invokeSuspend")
    static final class AnonymousClass1 extends l implements p<o0, d<? super l0>, Object> {
        final /* synthetic */ ApiResponseListener<ApiResponse> $listener;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(ApiResponseListener<ApiResponse> apiResponseListener, d<? super AnonymousClass1> dVar) {
            super(2, dVar);
            this.$listener = apiResponseListener;
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @NotNull
        public final d<l0> create(@Nullable Object obj, @NotNull d<?> dVar) {
            return LoginViewModel.this.new AnonymousClass1(this.$listener, dVar);
        }

        @Override // e8.p
        @Nullable
        public final Object invoke(@NotNull o0 o0Var, @Nullable d<? super l0> dVar) {
            return ((AnonymousClass1) create(o0Var, dVar)).invokeSuspend(l0.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            kotlin.coroutines.intrinsics.d.e();
            if (this.label == 0) {
                w.b(obj);
                KeyStoreService unused = LoginViewModel.this.keyStoreService;
                ApiResponseListener<ApiResponse> apiResponseListener = this.$listener;
                return l0.INSTANCE;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    @NotNull
    public static final ViewModelProvider.Factory factory(@NotNull KeyStoreService keyStoreService) {
        return Companion.factory(keyStoreService);
    }

    public LoginViewModel(@NotNull KeyStoreService keyStoreService) {
        t.j(keyStoreService, "keyStoreService");
        this.keyStoreService = keyStoreService;
    }

    public final void sendPublicKey(@NotNull ApiResponseListener<ApiResponse> listener) {
        t.j(listener, "listener");
        kotlinx.coroutines.k.d(ViewModelKt.a(this), null, null, new AnonymousClass1(listener, null), 3, null);
    }
}
