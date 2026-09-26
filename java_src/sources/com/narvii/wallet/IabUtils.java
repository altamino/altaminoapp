package com.narvii.wallet;

import com.android.billingclient.api.Purchase;
import com.narvii.util.text.TextUtils;
import java.math.RoundingMode;
import java.text.NumberFormat;
import java.util.Comparator;
import java.util.Currency;

/* JADX INFO: loaded from: classes4.dex */
public class IabUtils {
    public static final Comparator<Purchase> PURCHASE_COMPARATOR_R;
    public static NumberFormat floatFormat;

    public static String formatCoins(int i10) {
        return TextUtils.numberFormat.format(i10);
    }

    public static String getReason(int i10) {
        switch (i10) {
            case -3:
                return "SERVICE_TIMEOUT";
            case -2:
                return "FEATURE_NOT_SUPPORTED";
            case -1:
                return "SERVICE_DISCONNECTED";
            case 0:
                return "OK";
            case 1:
                return "USER_CANCELED";
            case 2:
                return "SERVICE_UNAVAILABLE";
            case 3:
                return "BILLING_UNAVAILABLE";
            case 4:
                return "ITEM_UNAVAILABLE";
            case 5:
                return "DEVELOPER_ERROR";
            case 6:
                return "ERROR";
            case 7:
                return "ITEM_ALREADY_OWNED";
            case 8:
                return "ITEM_NOT_OWNED";
            default:
                return null;
        }
    }

    public static String formatCoins(double d) {
        return floatFormat.format(d);
    }

    static {
        setUpFloatFormat();
        PURCHASE_COMPARATOR_R = new Comparator() { // from class: com.narvii.wallet.h
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return IabUtils.lambda$static$0((Purchase) obj, (Purchase) obj2);
            }
        };
    }

    public static String getCurrencyFormat(String str, Double d) {
        if (android.text.TextUtils.isEmpty(str)) {
            return "";
        }
        try {
            return Currency.getInstance(str).getSymbol() + floatFormat.format(d);
        } catch (Exception unused) {
            return str + " " + floatFormat.format(d);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int lambda$static$0(Purchase purchase, Purchase purchase2) {
        return Long.compare(purchase2.g(), purchase.g());
    }

    public static void setUpFloatFormat() {
        NumberFormat numberFormat = NumberFormat.getInstance();
        floatFormat = numberFormat;
        numberFormat.setRoundingMode(RoundingMode.DOWN);
        floatFormat.setMaximumFractionDigits(2);
    }
}
