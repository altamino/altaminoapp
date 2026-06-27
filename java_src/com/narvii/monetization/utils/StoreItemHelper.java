package com.narvii.monetization.utils;

import android.content.Context;
import android.text.Spannable;
import android.text.SpannableString;
import android.text.style.ForegroundColorSpan;
import android.text.style.StrikethroughSpan;
import android.text.style.StyleSpan;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVContext;
import com.narvii.master.widget.MasterBottomItemView;
import com.narvii.model.IBaseProduct;
import com.narvii.model.OwnershipInfo;
import com.narvii.model.RestrictionInfo;
import com.narvii.util.CenterAlignImageSpan;
import com.narvii.util.text.NVText;
import com.narvii.util.text.TextUtils;

/* loaded from: classes3.dex */
public class StoreItemHelper {
    private final Context context;
    private final NVContext nvContext;

    public StoreItemHelper(NVContext nVContext) {
        this.nvContext = nVContext;
        this.context = nVContext.getContext();
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
            } else if (iDaysExpired > 0) {
                string = this.context.getString(R.string.membership_status_expired_n_day, Integer.valueOf(iDaysExpired));
            } else {
                string = this.context.getString(R.string.membership_status_inactive);
            }
            return string;
        }
        int i = -ownershipInfo.daysExpired();
        if (i == 0) {
            return this.context.getString(R.string.membership_status_expiring_in_0_day);
        }
        if (i == 1) {
            return this.context.getString(R.string.store_item_status_expiring_in_1_day, String.valueOf(1));
        }
        if (i > 1) {
            return this.context.getString(R.string.store_item_status_expiring_in_n_day, String.valueOf(i));
        }
        return null;
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
            if (iDaysExpired > 0) {
                return new SpannableString(this.context.getString(R.string.membership_status_expired_n_day, Integer.valueOf(iDaysExpired)));
            }
            return new SpannableString(this.context.getString(R.string.membership_status_inactive));
        }
        int i = -ownershipInfo.daysExpired();
        if (i == 0) {
            return new SpannableString(this.context.getString(R.string.membership_status_expiring_in_0_day));
        }
        if (i == 1) {
            NVText nVText = new NVText(this.context.getString(R.string.store_item_status_expiring_in_1_day));
            nVText.markAllEntries(null);
            nVText.format(getBoldNumberSpannable(1));
            return nVText;
        }
        if (i <= 1) {
            return null;
        }
        NVText nVText2 = new NVText(this.context.getString(R.string.store_item_status_expiring_in_n_day));
        nVText2.markAllEntries(null);
        nVText2.format(getBoldNumberSpannable(i));
        return nVText2;
    }

    public Spannable getCoinsSpannableWithIcon(int i) {
        SpannableString spannableString = new SpannableString("  " + i);
        spannableString.setSpan(new StyleSpan(1), 0, spannableString.length(), 33);
        spannableString.setSpan(new CenterAlignImageSpan(this.nvContext.getContext(), R.drawable.amino_coin_small), 0, 1, 33);
        return spannableString;
    }

    public Spannable getCoinsSpannableWithDeleteLine(int i) {
        String string;
        if (i == 1) {
            string = this.nvContext.getContext().getString(R.string.one_coin);
        } else {
            string = this.nvContext.getContext().getString(R.string.num_coins, Integer.valueOf(i));
        }
        SpannableString spannableString = new SpannableString(string);
        spannableString.setSpan(new StrikethroughSpan(), 0, spannableString.length(), 33);
        return spannableString;
    }

    public Spannable getBoldNumberSpannable(int i) {
        Spannable boldSpannableString = TextUtils.getBoldSpannableString(String.valueOf(i));
        boldSpannableString.setSpan(new ForegroundColorSpan(-15066598), 0, boldSpannableString.length(), 33);
        return boldSpannableString;
    }

    public int getExpiredTimeStringColor(OwnershipInfo ownershipInfo) {
        int i;
        if (ownershipInfo == null || ownershipInfo.isExpired() || (i = -ownershipInfo.daysExpired()) < 0 || i > 7) {
            return MasterBottomItemView.TEXT_COLOR_UNSELECTED;
        }
        return -49088;
    }

    public String getPriceExpiredTime(int i, int i2) {
        if (i2 < 0) {
            return String.valueOf(i);
        }
        if (i2 == 0) {
            return this.nvContext.getContext().getString(R.string.price_with_expired_time_others, Integer.valueOf(i), Integer.valueOf(i2));
        }
        if (i2 == 1) {
            return this.nvContext.getContext().getString(R.string.price_with_expired_time_one_day, Integer.valueOf(i));
        }
        if (i2 % 31 != 0) {
            return this.nvContext.getContext().getString(R.string.price_with_expired_time_others, Integer.valueOf(i), Integer.valueOf(i2));
        }
        int i3 = i2 / 31;
        return i3 == 1 ? this.nvContext.getContext().getString(R.string.price_with_expired_time_month, Integer.valueOf(i)) : this.nvContext.getContext().getString(R.string.price_with_expired_time_n_months, Integer.valueOf(i), Integer.valueOf(i3));
    }

    public String getPriceExpiredTimeCheck(int i, RestrictionInfo restrictionInfo) {
        if (restrictionInfo == null || !restrictionInfo.hasAvailableDuration()) {
            return String.valueOf(i);
        }
        return getPriceExpiredTime(i, restrictionInfo.getAvailableDurationInDays());
    }

    public String getPriceExpiredTimeCheck(int i, IBaseProduct iBaseProduct) {
        if (iBaseProduct == null || iBaseProduct.getAvailableDurationInDays() < 0) {
            return String.valueOf(i);
        }
        return getPriceExpiredTime(i, iBaseProduct.getAvailableDurationInDays());
    }
}
