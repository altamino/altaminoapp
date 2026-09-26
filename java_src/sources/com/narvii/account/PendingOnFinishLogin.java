package com.narvii.account;

import com.narvii.model.api.AccountResponse;
import com.narvii.util.http.ApiRequest;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
public final class PendingOnFinishLogin {

    @NotNull
    private final ApiRequest req;

    @NotNull
    private final AccountResponse resp;

    public static /* synthetic */ PendingOnFinishLogin copy$default(PendingOnFinishLogin pendingOnFinishLogin, ApiRequest apiRequest, AccountResponse accountResponse, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            apiRequest = pendingOnFinishLogin.req;
        }
        if ((i10 & 2) != 0) {
            accountResponse = pendingOnFinishLogin.resp;
        }
        return pendingOnFinishLogin.copy(apiRequest, accountResponse);
    }

    @NotNull
    public final ApiRequest component1() {
        return this.req;
    }

    @NotNull
    public final AccountResponse component2() {
        return this.resp;
    }

    @NotNull
    public final PendingOnFinishLogin copy(@NotNull ApiRequest req, @NotNull AccountResponse resp) {
        kotlin.jvm.internal.t.j(req, "req");
        kotlin.jvm.internal.t.j(resp, "resp");
        return new PendingOnFinishLogin(req, resp);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PendingOnFinishLogin)) {
            return false;
        }
        PendingOnFinishLogin pendingOnFinishLogin = (PendingOnFinishLogin) obj;
        return kotlin.jvm.internal.t.e(this.req, pendingOnFinishLogin.req) && kotlin.jvm.internal.t.e(this.resp, pendingOnFinishLogin.resp);
    }

    @NotNull
    public final ApiRequest getReq() {
        return this.req;
    }

    @NotNull
    public final AccountResponse getResp() {
        return this.resp;
    }

    public int hashCode() {
        return (this.req.hashCode() * 31) + this.resp.hashCode();
    }

    @NotNull
    public String toString() {
        return "PendingOnFinishLogin(req=" + this.req + ", resp=" + this.resp + ")";
    }

    public PendingOnFinishLogin(@NotNull ApiRequest req, @NotNull AccountResponse resp) {
        kotlin.jvm.internal.t.j(req, "req");
        kotlin.jvm.internal.t.j(resp, "resp");
        this.req = req;
        this.resp = resp;
    }
}
