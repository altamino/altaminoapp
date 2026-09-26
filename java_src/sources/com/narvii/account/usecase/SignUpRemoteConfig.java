package com.narvii.account.usecase;

import androidx.compose.foundation.c;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
public final class SignUpRemoteConfig {
    private final boolean isEmailSignupAvailable;
    private final boolean isPhoneSignupAvailable;

    public static /* synthetic */ SignUpRemoteConfig copy$default(SignUpRemoteConfig signUpRemoteConfig, boolean z6, boolean z10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z6 = signUpRemoteConfig.isEmailSignupAvailable;
        }
        if ((i10 & 2) != 0) {
            z10 = signUpRemoteConfig.isPhoneSignupAvailable;
        }
        return signUpRemoteConfig.copy(z6, z10);
    }

    public final boolean component1() {
        return this.isEmailSignupAvailable;
    }

    public final boolean component2() {
        return this.isPhoneSignupAvailable;
    }

    @NotNull
    public final SignUpRemoteConfig copy(boolean z6, boolean z10) {
        return new SignUpRemoteConfig(z6, z10);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SignUpRemoteConfig)) {
            return false;
        }
        SignUpRemoteConfig signUpRemoteConfig = (SignUpRemoteConfig) obj;
        return this.isEmailSignupAvailable == signUpRemoteConfig.isEmailSignupAvailable && this.isPhoneSignupAvailable == signUpRemoteConfig.isPhoneSignupAvailable;
    }

    public int hashCode() {
        return (c.a(this.isEmailSignupAvailable) * 31) + c.a(this.isPhoneSignupAvailable);
    }

    public final boolean isEmailSignupAvailable() {
        return this.isEmailSignupAvailable;
    }

    public final boolean isPhoneSignupAvailable() {
        return this.isPhoneSignupAvailable;
    }

    @NotNull
    public String toString() {
        return "SignUpRemoteConfig(isEmailSignupAvailable=" + this.isEmailSignupAvailable + ", isPhoneSignupAvailable=" + this.isPhoneSignupAvailable + ")";
    }

    public SignUpRemoteConfig(boolean z6, boolean z10) {
        this.isEmailSignupAvailable = z6;
        this.isPhoneSignupAvailable = z10;
    }
}
