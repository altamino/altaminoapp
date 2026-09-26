package com.narvii.master.viewmodel;

import androidx.compose.foundation.c;
import kotlin.jvm.internal.k;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes5.dex */
public final class MasterUiState {
    private final boolean isReLogin;

    public MasterUiState() {
        this(false, 1, null);
    }

    public static /* synthetic */ MasterUiState copy$default(MasterUiState masterUiState, boolean z6, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z6 = masterUiState.isReLogin;
        }
        return masterUiState.copy(z6);
    }

    public final boolean component1() {
        return this.isReLogin;
    }

    @NotNull
    public final MasterUiState copy(boolean z6) {
        return new MasterUiState(z6);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof MasterUiState) && this.isReLogin == ((MasterUiState) obj).isReLogin;
    }

    public int hashCode() {
        return c.a(this.isReLogin);
    }

    public final boolean isReLogin() {
        return this.isReLogin;
    }

    @NotNull
    public String toString() {
        return "MasterUiState(isReLogin=" + this.isReLogin + ")";
    }

    public MasterUiState(boolean z6) {
        this.isReLogin = z6;
    }

    public /* synthetic */ MasterUiState(boolean z6, int i10, k kVar) {
        this((i10 & 1) != 0 ? false : z6);
    }
}
