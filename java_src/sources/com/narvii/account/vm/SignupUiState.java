package com.narvii.account.vm;

import androidx.compose.foundation.c;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes11.dex */
public final class SignupUiState {
    private final boolean isEmailSignupAvailable;
    private final boolean isPhoneSignupAvailable;

    public static /* synthetic */ SignupUiState copy$default(SignupUiState signupUiState, boolean z6, boolean z10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z6 = signupUiState.isEmailSignupAvailable;
        }
        if ((i10 & 2) != 0) {
            z10 = signupUiState.isPhoneSignupAvailable;
        }
        return signupUiState.copy(z6, z10);
    }

    public final boolean component1() {
        return this.isEmailSignupAvailable;
    }

    public final boolean component2() {
        return this.isPhoneSignupAvailable;
    }

    @NotNull
    public final SignupUiState copy(boolean z6, boolean z10) {
        return new SignupUiState(z6, z10);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SignupUiState)) {
            return false;
        }
        SignupUiState signupUiState = (SignupUiState) obj;
        return this.isEmailSignupAvailable == signupUiState.isEmailSignupAvailable && this.isPhoneSignupAvailable == signupUiState.isPhoneSignupAvailable;
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
        return "SignupUiState(isEmailSignupAvailable=" + this.isEmailSignupAvailable + ", isPhoneSignupAvailable=" + this.isPhoneSignupAvailable + ")";
    }

    public SignupUiState(boolean z6, boolean z10) {
        this.isEmailSignupAvailable = z6;
        this.isPhoneSignupAvailable = z10;
    }
}
