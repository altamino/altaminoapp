package com.narvii.wallet;

import android.content.Context;
import android.text.TextUtils;
import android.util.Base64;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVApplication;
import com.narvii.util.NativeHelper;
import com.narvii.wallet.util.IabHelper;
import com.narvii.wallet.util.IabResult;
import com.narvii.wallet.util.Purchase;
import java.math.RoundingMode;
import java.text.NumberFormat;
import java.util.Comparator;
import java.util.Currency;

/* loaded from: classes3.dex */
public class IabUtils {
    public static final Comparator<Purchase> PURCHASE_COMPARATOR_R;
    public static NumberFormat floatFormat;

    public static String getReason(int i) {
        switch (i) {
            case IabHelper.IABHELPER_SUBSCRIPTION_UPDATE_NOT_AVAILABLE /* -1011 */:
                return "IABHELPER_SUBSCRIPTION_UPDATE_NOT_AVAILABLE";
            case -1010:
                return "IABHELPER_INVALID_CONSUMPTION";
            case IabHelper.IABHELPER_SUBSCRIPTIONS_NOT_AVAILABLE /* -1009 */:
                return "IABHELPER_SUBSCRIPTIONS_NOT_AVAILABLE";
            case IabHelper.IABHELPER_UNKNOWN_ERROR /* -1008 */:
                return "IABHELPER_UNKNOWN_ERROR";
            case -1007:
                return "IABHELPER_MISSING_TOKEN";
            case IabHelper.IABHELPER_UNKNOWN_PURCHASE_RESPONSE /* -1006 */:
                return "IABHELPER_UNKNOWN_PURCHASE_RESPONSE";
            case IabHelper.IABHELPER_USER_CANCELLED /* -1005 */:
                return "IABHELPER_USER_CANCELLED";
            case -1004:
                return "IABHELPER_SEND_INTENT_FAILED";
            case IabHelper.IABHELPER_VERIFICATION_FAILED /* -1003 */:
                return "IABHELPER_VERIFICATION_FAILED";
            case IabHelper.IABHELPER_BAD_RESPONSE /* -1002 */:
                return "IABHELPER_BAD_RESPONSE";
            case IabHelper.IABHELPER_REMOTE_EXCEPTION /* -1001 */:
                return "IABHELPER_REMOTE_EXCEPTION ";
            case -1000:
                return "IABHELPER_ERROR_BASE";
            default:
                return null;
        }
    }

    static {
        setUpFloatFormat();
        PURCHASE_COMPARATOR_R = new Comparator<Purchase>() { // from class: com.narvii.wallet.IabUtils.1
            @Override // java.util.Comparator
            public int compare(Purchase purchase, Purchase purchase2) {
                long purchaseTime = purchase2.getPurchaseTime();
                long purchaseTime2 = purchase.getPurchaseTime();
                if (purchaseTime < purchaseTime2) {
                    return -1;
                }
                return purchaseTime == purchaseTime2 ? 0 : 1;
            }
        };
    }

    public static void setUpFloatFormat() {
        floatFormat = NumberFormat.getInstance();
        floatFormat.setRoundingMode(RoundingMode.DOWN);
        floatFormat.setMaximumFractionDigits(2);
    }

    public static IabHelper createIabHelper(Context context) {
        String string = context.getString(R.string.iab_epk);
        return new IabHelper(context, !TextUtils.isEmpty(string) ? Base64.encodeToString(NativeHelper.unpadder16(NativeHelper.B(Base64.decode(string, 0), 0)), 2) : null);
    }

    public static String getErrorMessage(IabResult iabResult) {
        if (iabResult.getResponse() == 3) {
            return NVApplication.instance().getString(R.string.iab_billing_unavailable_message);
        }
        return iabResult.getMessage();
    }

    public static String formatCoins(int i) {
        return com.narvii.util.text.TextUtils.numberFormat.format(i);
    }

    public static String getCurrencyFormat(String str, Double d) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        try {
            return Currency.getInstance(str).getSymbol() + floatFormat.format(d);
        } catch (Exception unused) {
            return str + " " + floatFormat.format(d);
        }
    }

    public static String formatCoins(double d) {
        return floatFormat.format(d);
    }
}
