package com.narvii.account.verifyaccount;

import kotlin.jvm.internal.k;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes5.dex */
public abstract class IdentityType {

    @NotNull
    public static final Companion Companion = new Companion(null);
    public static final int EMAIL_IDENTITY = 2;
    public static final int PHONE_NUMBER_IDENTITY = 1;

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }
    }

    public /* synthetic */ IdentityType(k kVar) {
        this();
    }

    private IdentityType() {
    }
}
