package com.narvii.account.usecase;

import com.narvii.account.FirebaseRemoteConfigRepository;
import kotlin.coroutines.jvm.internal.d;
import kotlin.coroutines.jvm.internal.f;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.w;

/* JADX INFO: loaded from: classes6.dex */
public final class RemovePhoneAndEmailSignUpUseCase {

    @NotNull
    private final FirebaseRemoteConfigRepository firebaseRemoteConfigRepository;

    /* JADX INFO: renamed from: com.narvii.account.usecase.RemovePhoneAndEmailSignUpUseCase$invoke$1, reason: invalid class name */
    @f(c = "com.narvii.account.usecase.RemovePhoneAndEmailSignUpUseCase", f = "RemovePhoneAndEmailSignUpUseCase.kt", l = {25}, m = "invoke")
    static final class AnonymousClass1 extends d {
        int label;
        /* synthetic */ Object result;

        AnonymousClass1(kotlin.coroutines.d<? super AnonymousClass1> dVar) {
            super(dVar);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return RemovePhoneAndEmailSignUpUseCase.this.invoke(this);
        }
    }

    public RemovePhoneAndEmailSignUpUseCase(@NotNull FirebaseRemoteConfigRepository firebaseRemoteConfigRepository) {
        t.j(firebaseRemoteConfigRepository, "firebaseRemoteConfigRepository");
        this.firebaseRemoteConfigRepository = firebaseRemoteConfigRepository;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object isEmailAndPhoneSignupAvailable(kotlin.coroutines.d<? super Boolean> dVar) {
        return this.firebaseRemoteConfigRepository.getRemoteConfigBoolean("enable_email_and_phone_signup", dVar);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Nullable
    public final Object invoke(@NotNull kotlin.coroutines.d<? super SignUpRemoteConfig> dVar) {
        AnonymousClass1 anonymousClass1;
        if (dVar instanceof AnonymousClass1) {
            anonymousClass1 = (AnonymousClass1) dVar;
            int i10 = anonymousClass1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                anonymousClass1.label = i10 - Integer.MIN_VALUE;
            } else {
                anonymousClass1 = new AnonymousClass1(dVar);
            }
        } else {
            anonymousClass1 = new AnonymousClass1(dVar);
        }
        Object objIsEmailAndPhoneSignupAvailable = anonymousClass1.result;
        Object objE = kotlin.coroutines.intrinsics.d.e();
        int i11 = anonymousClass1.label;
        if (i11 == 0) {
            w.b(objIsEmailAndPhoneSignupAvailable);
            anonymousClass1.label = 1;
            objIsEmailAndPhoneSignupAvailable = isEmailAndPhoneSignupAvailable(anonymousClass1);
            if (objIsEmailAndPhoneSignupAvailable == objE) {
                return objE;
            }
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            w.b(objIsEmailAndPhoneSignupAvailable);
        }
        ((Boolean) objIsEmailAndPhoneSignupAvailable).booleanValue();
        return new SignUpRemoteConfig(true, false);
    }
}
