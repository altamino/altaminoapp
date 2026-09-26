package com.narvii.account.vm;

import androidx.lifecycle.LiveData;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import com.google.firebase.remoteconfig.a;
import com.narvii.account.FirebaseRemoteConfigRepository;
import com.narvii.account.usecase.RemovePhoneAndEmailSignUpUseCase;
import com.narvii.account.usecase.SignUpRemoteConfig;
import e8.p;
import kotlin.coroutines.d;
import kotlin.coroutines.jvm.internal.f;
import kotlin.coroutines.jvm.internal.l;
import kotlin.jvm.internal.t;
import kotlinx.coroutines.k;
import kotlinx.coroutines.o0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.w;

/* JADX INFO: loaded from: classes7.dex */
public final class SignUpViewModel extends ViewModel {

    @NotNull
    private final MutableLiveData<SignupUiState> _uiState;

    @NotNull
    private final a remoteConfig;

    @NotNull
    private final RemovePhoneAndEmailSignUpUseCase removePhoneAndEmailSignUpUseCase;

    @NotNull
    private final FirebaseRemoteConfigRepository repository;

    @NotNull
    private final LiveData<SignupUiState> uiState;

    /* JADX INFO: renamed from: com.narvii.account.vm.SignUpViewModel$loadPhoneAndEmailSignUp$1, reason: invalid class name */
    @f(c = "com.narvii.account.vm.SignUpViewModel$loadPhoneAndEmailSignUp$1", f = "SignUpViewModel.kt", l = {35}, m = "invokeSuspend")
    static final class AnonymousClass1 extends l implements p<o0, d<? super l0>, Object> {
        int label;

        AnonymousClass1(d<? super AnonymousClass1> dVar) {
            super(2, dVar);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @NotNull
        public final d<l0> create(@Nullable Object obj, @NotNull d<?> dVar) {
            return SignUpViewModel.this.new AnonymousClass1(dVar);
        }

        @Override // e8.p
        @Nullable
        public final Object invoke(@NotNull o0 o0Var, @Nullable d<? super l0> dVar) {
            return ((AnonymousClass1) create(o0Var, dVar)).invokeSuspend(l0.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            Object objE = kotlin.coroutines.intrinsics.d.e();
            int i10 = this.label;
            if (i10 != 0) {
                if (i10 == 1) {
                    w.b(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                w.b(obj);
                RemovePhoneAndEmailSignUpUseCase removePhoneAndEmailSignUpUseCase = SignUpViewModel.this.removePhoneAndEmailSignUpUseCase;
                this.label = 1;
                obj = removePhoneAndEmailSignUpUseCase.invoke(this);
                if (obj == objE) {
                    return objE;
                }
            }
            SignUpRemoteConfig signUpRemoteConfig = (SignUpRemoteConfig) obj;
            SignUpViewModel.this._uiState.p(new SignupUiState(signUpRemoteConfig.isEmailSignupAvailable(), signUpRemoteConfig.isPhoneSignupAvailable()));
            return l0.INSTANCE;
        }
    }

    @NotNull
    public final LiveData<SignupUiState> getUiState() {
        return this.uiState;
    }

    public SignUpViewModel() {
        a aVarK = a.k();
        t.i(aVarK, "getInstance(...)");
        this.remoteConfig = aVarK;
        FirebaseRemoteConfigRepository firebaseRemoteConfigRepository = new FirebaseRemoteConfigRepository(null, aVarK, 1, null);
        this.repository = firebaseRemoteConfigRepository;
        this.removePhoneAndEmailSignUpUseCase = new RemovePhoneAndEmailSignUpUseCase(firebaseRemoteConfigRepository);
        MutableLiveData<SignupUiState> mutableLiveData = new MutableLiveData<>();
        this._uiState = mutableLiveData;
        this.uiState = mutableLiveData;
    }

    public final void loadPhoneAndEmailSignUp() {
        k.d(ViewModelKt.a(this), null, null, new AnonymousClass1(null), 3, null);
    }
}
