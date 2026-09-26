package com.narvii.account.verifyaccount;

import kotlin.jvm.internal.k;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes4.dex */
public abstract class VerifyAccountType {
    public static final int ADD_IDENTITY_VERIFY_ACCOUNT = 5;
    public static final int CHANGE_PASSWORD_VERIFY_ACCOUNT = 3;

    @NotNull
    public static final Companion Companion = new Companion(null);
    public static final int DELETE_ACCOUNT_VERIFY_ACCOUNT = 8;
    public static final int FORGOT_PASSWORD_VERIFY_ACCOUNT = 2;
    public static final int RESET_PASSWORD_VERIFY_ACCOUNT = 1;
    public static final int SIGNUP_VERIFY_ACCOUNT = 4;
    public static final int UPDATE_IDENTITY_VERIFY_ACCOUNT = 6;
    public static final int VERIFY_NEW_IDENTITY_VERIFY_ACCOUNT = 7;

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }
    }

    public /* synthetic */ VerifyAccountType(k kVar) {
        this();
    }

    private VerifyAccountType() {
    }
}
