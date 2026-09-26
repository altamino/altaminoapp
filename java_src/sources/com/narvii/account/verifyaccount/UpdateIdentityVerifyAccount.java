package com.narvii.account.verifyaccount;

import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes8.dex */
public final class UpdateIdentityVerifyAccount extends VerifyAccountType {

    @NotNull
    private final IdentityType identity;

    @NotNull
    public final IdentityType getIdentity() {
        return this.identity;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UpdateIdentityVerifyAccount(@NotNull IdentityType identity) {
        super(null);
        t.j(identity, "identity");
        this.identity = identity;
    }
}
