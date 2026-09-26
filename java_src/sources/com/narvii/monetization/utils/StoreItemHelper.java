package com.narvii.monetization.utils;

import android.content.Context;
import android.text.Spannable;
import android.text.SpannableString;
import android.text.style.ForegroundColorSpan;
import android.text.style.StrikethroughSpan;
import android.text.style.StyleSpan;
import com.narvii.amino.master.R;
import com.narvii.app.NVContext;
import com.narvii.master.widget.MasterBottomItemView;
import com.narvii.model.IBaseProduct;
import com.narvii.model.OwnershipInfo;
import com.narvii.model.RestrictionInfo;
import com.narvii.util.CenterAlignImageSpan;
import com.narvii.util.text.NVText;
import com.narvii.util.text.TextUtils;

/* JADX INFO: loaded from: classes6.dex */
public class StoreItemHelper {
    private final Context context;
    private final NVContext nvContext;

    public Spannable getCoinsSpannableWithDeleteLine(int i10) {
        SpannableString spannableString = new SpannableString(i10 == 1 ? this.nvContext.getContext().getString(R.string.one_coin) : this.nvContext.getContext().getString(R.string.num_coins, Integer.valueOf(i10)));
        spannableString.setSpan(new StrikethroughSpan(), 0, spannableString.length(), 33);
        return spannableString;
    }

    public Spannable getExpiredTimeSpannable(OwnershipInfo ownershipInfo) {
        if (ownershipInfo == null) {
            return null;
        }
        if (ownershipInfo.isExpired()) {
            int iDaysExpired = ownershipInfo.daysExpired();
            if (iDaysExpired == 0) {
                return new SpannableString(this.context.getString(R.string.membership_status_expired_0_day));
            }
            if (iDaysExpired == 1) {
                return new SpannableString(this.context.getString(R.string.membership_status_expired_1_day));
            }
            return iDaysExpired > 0 ? new SpannableString(this.context.getString(R.string.membership_status_expired_n_day, Integer.valueOf(iDaysExpired))) : new SpannableString(this.context.getString(R.string.membership_status_inactive));
        }
        int i10 = -ownershipInfo.daysExpired();
        if (i10 == 0) {
            return new SpannableString(this.context.getString(R.string.membership_status_expiring_in_0_day));
        }
        if (i10 == 1) {
            NVText nVText = new NVText(this.context.getString(R.string.store_item_status_expiring_in_1_day));
            nVText.markAllEntries(null);
            nVText.format(getBoldNumberSpannable(1));
            return nVText;
        }
        if (i10 <= 1) {
            return null;
        }
        NVText nVText2 = new NVText(this.context.getString(R.string.store_item_status_expiring_in_n_day));
        nVText2.markAllEntries(null);
        nVText2.format(getBoldNumberSpannable(i10));
        return nVText2;
    }

    public String getExpiredTimeString(OwnershipInfo ownershipInfo) {
        String string;
        if (ownershipInfo == null) {
            return null;
        }
        if (ownershipInfo.isExpired()) {
            int iDaysExpired = ownershipInfo.daysExpired();
            if (iDaysExpired == 0) {
                string = this.context.getString(R.string.membership_status_expired_0_day);
            } else if (iDaysExpired == 1) {
                string = this.context.getString(R.string.membership_status_expired_1_day);
            } else {
                string = iDaysExpired > 0 ? this.context.getString(R.string.membership_status_expired_n_day, Integer.valueOf(iDaysExpired)) : this.context.getString(R.string.membership_status_inactive);
            }
            return string;
        }
        int i10 = -ownershipInfo.daysExpired();
        if (i10 == 0) {
            return this.context.getString(R.string.membership_status_expiring_in_0_day);
        }
        if (i10 == 1) {
            return this.context.getString(R.string.store_item_status_expiring_in_1_day, String.valueOf(1));
        }
        if (i10 > 1) {
            return this.context.getString(R.string.store_item_status_expiring_in_n_day, String.valueOf(i10));
        }
        return null;
    }

    public String getPriceExpiredTimeCheck(int i10, RestrictionInfo restrictionInfo) {
        return (restrictionInfo == null || !restrictionInfo.hasAvailableDuration()) ? String.valueOf(i10) : getPriceExpiredTime(i10, restrictionInfo.getAvailableDurationInDays());
    }

    public Spannable getCoinsSpannableWithIcon(int i10) {
        SpannableString spannableString = new SpannableString("  " + i10);
        spannableString.setSpan(new StyleSpan(1), 0, spannableString.length(), 33);
        spannableString.setSpan(new CenterAlignImageSpan(this.nvContext.getContext(), R.drawable.amino_coin_small), 0, 1, 33);
        return spannableString;
    }

    public int getExpiredTimeStringColor(OwnershipInfo ownershipInfo) {
        int i10;
        if (ownershipInfo == null || ownershipInfo.isExpired() || (i10 = -ownershipInfo.daysExpired()) < 0 || i10 > 7) {
            return MasterBottomItemView.TEXT_COLOR_UNSELECTED;
        }
        return -49088;
    }

    public String getPriceExpiredTime(int i10, int i11) {
        if (i11 < 0) {
            return String.valueOf(i10);
        }
        if (i11 == 0) {
            return this.nvContext.getContext().getString(R.string.price_with_expired_time_others, Integer.valueOf(i10), Integer.valueOf(i11));
        }
        if (i11 == 1) {
            return this.nvContext.getContext().getString(R.string.price_with_expired_time_one_day, Integer.valueOf(i10));
        }
        if (i11 % 31 != 0) {
            return this.nvContext.getContext().getString(R.string.price_with_expired_time_others, Integer.valueOf(i10), Integer.valueOf(i11));
        }
        int i12 = i11 / 31;
        return i12 == 1 ? this.nvContext.getContext().getString(R.string.price_with_expired_time_month, Integer.valueOf(i10)) : this.nvContext.getContext().getString(R.string.price_with_expired_time_n_months, Integer.valueOf(i10), Integer.valueOf(i12));
    }

    public StoreItemHelper(NVContext nVContext) {
        this.nvContext = nVContext;
        this.context = nVContext.getContext();
    }

    public Spannable getBoldNumberSpannable(int i10) {
        Spannable boldSpannableString = TextUtils.getBoldSpannableString(String.valueOf(i10));
        boldSpannableString.setSpan(new ForegroundColorSpan(-15066598), 0, boldSpannableString.length(), 33);
        return boldSpannableString;
    }

    public String getPriceExpiredTimeCheck(int i10, IBaseProduct iBaseProduct) {
        if (iBaseProduct != null && iBaseProduct.getAvailableDurationInDays() >= 0) {
            return getPriceExpiredTime(i10, iBaseProduct.getAvailableDurationInDays());
        }
        return String.valueOf(i10);
    }
}
