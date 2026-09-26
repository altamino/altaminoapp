package com.narvii.account.verifyaccount;

import androidx.annotation.StringRes;
import com.narvii.amino.master.R;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import w7.s;

/* JADX INFO: loaded from: classes8.dex */
public final class VerifyAccountTypeKt {
    public static final int getIntValue(@NotNull VerifyAccountType verifyAccountType) {
        t.j(verifyAccountType, "<this>");
        if (verifyAccountType instanceof ResetPassVerifyAccount) {
            return 1;
        }
        if (verifyAccountType instanceof ForgotPassVerifyAccount) {
            return 2;
        }
        if (verifyAccountType instanceof ChangePassVerifyAccount) {
            return 3;
        }
        if (verifyAccountType instanceof SignupVerifyAccount) {
            return 4;
        }
        if (verifyAccountType instanceof AddIdentityVerifyAccount) {
            return 5;
        }
        if (verifyAccountType instanceof UpdateIdentityVerifyAccount) {
            return 6;
        }
        if (verifyAccountType instanceof VerifyNewIdentityVerifyAccount) {
            return 7;
        }
        if (verifyAccountType instanceof DeleteAccountVerifyAccount) {
            return 8;
        }
        throw new s();
    }

    @NotNull
    public static final IdentityType identityType(int i10) {
        if (i10 == 1) {
            return PhoneIdentity.INSTANCE;
        }
        if (i10 == 2) {
            return EmailIdentity.INSTANCE;
        }
        throw new IllegalStateException("Not expected case");
    }

    @StringRes
    public static final int getNextBtnTitle(@NotNull VerifyAccountType verifyAccountType) {
        t.j(verifyAccountType, "<this>");
        if (verifyAccountType instanceof SignupVerifyAccount) {
            return R.string.next;
        }
        return verifyAccountType instanceof ChangePassVerifyAccount ? R.string.account_change_password : R.string.account_verify_code;
    }

    @NotNull
    public static final String getNvFragmentPageName(@NotNull VerifyAccountType verifyAccountType) {
        t.j(verifyAccountType, "<this>");
        if (verifyAccountType instanceof ResetPassVerifyAccount) {
            return "ResetPassVerifyAccount";
        }
        if (verifyAccountType instanceof ForgotPassVerifyAccount) {
            return "ForgotPassVerifyAccount";
        }
        if (verifyAccountType instanceof ChangePassVerifyAccount) {
            return "ChangePassVerifyAccount";
        }
        if (verifyAccountType instanceof SignupVerifyAccount) {
            return "SignUpCreatePassword";
        }
        if (verifyAccountType instanceof AddIdentityVerifyAccount) {
            return "AddIdentityVerifyAccount";
        }
        if (verifyAccountType instanceof UpdateIdentityVerifyAccount) {
            return "UpdateIdentityVerifyAccount";
        }
        if (verifyAccountType instanceof VerifyNewIdentityVerifyAccount) {
            return "VerifyNewIdentityVerifyAccount";
        }
        if (verifyAccountType instanceof DeleteAccountVerifyAccount) {
            return "DeleteAccountVerifyAccount";
        }
        throw new s();
    }

    @StringRes
    public static final int getPageTitle(@NotNull VerifyAccountType verifyAccountType) {
        t.j(verifyAccountType, "<this>");
        if ((verifyAccountType instanceof ResetPassVerifyAccount) || (verifyAccountType instanceof ForgotPassVerifyAccount)) {
            return R.string.reset_password;
        }
        if (verifyAccountType instanceof ChangePassVerifyAccount) {
            return R.string.account_change_password;
        }
        if (verifyAccountType instanceof SignupVerifyAccount) {
            return R.string.account_signup;
        }
        if (verifyAccountType instanceof AddIdentityVerifyAccount) {
            IdentityType identity = ((AddIdentityVerifyAccount) verifyAccountType).getIdentity();
            if (identity instanceof PhoneIdentity) {
                return R.string.add_phone_number;
            }
            if (identity instanceof EmailIdentity) {
                return R.string.add_email;
            }
            throw new s();
        }
        if (verifyAccountType instanceof UpdateIdentityVerifyAccount) {
            IdentityType identity2 = ((UpdateIdentityVerifyAccount) verifyAccountType).getIdentity();
            if (identity2 instanceof PhoneIdentity) {
                return R.string.update_phone_number;
            }
            if (identity2 instanceof EmailIdentity) {
                return R.string.update_email;
            }
            throw new s();
        }
        if (!(verifyAccountType instanceof VerifyNewIdentityVerifyAccount)) {
            if (verifyAccountType instanceof DeleteAccountVerifyAccount) {
                return R.string.account_delete;
            }
            throw new s();
        }
        IdentityType identity3 = ((VerifyNewIdentityVerifyAccount) verifyAccountType).getIdentity();
        if (identity3 instanceof PhoneIdentity) {
            return R.string.verify_phone_number;
        }
        if (identity3 instanceof EmailIdentity) {
            return R.string.verify_email;
        }
        throw new s();
    }

    public static /* synthetic */ VerifyAccountType verifyAccountType$default(int i10, int i11, int i12, Object obj) {
        if ((i12 & 2) != 0) {
            i11 = 0;
        }
        return verifyAccountType(i10, i11);
    }

    @NotNull
    public static final VerifyAccountType verifyAccountType(int i10, int i11) {
        switch (i10) {
            case 1:
                return ResetPassVerifyAccount.INSTANCE;
            case 2:
                return ForgotPassVerifyAccount.INSTANCE;
            case 3:
                return ChangePassVerifyAccount.INSTANCE;
            case 4:
                return SignupVerifyAccount.INSTANCE;
            case 5:
                return new AddIdentityVerifyAccount(identityType(i11));
            case 6:
                return new UpdateIdentityVerifyAccount(identityType(i11));
            case 7:
                return new VerifyNewIdentityVerifyAccount(identityType(i11));
            case 8:
                return DeleteAccountVerifyAccount.INSTANCE;
            default:
                throw new IllegalStateException("Not expected case");
        }
    }

    public static final int getIntValue(@NotNull IdentityType identityType) {
        t.j(identityType, "<this>");
        if (identityType instanceof PhoneIdentity) {
            return 1;
        }
        if (identityType instanceof EmailIdentity) {
            return 2;
        }
        throw new s();
    }
}
