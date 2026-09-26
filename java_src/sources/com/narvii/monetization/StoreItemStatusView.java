package com.narvii.monetization;

import android.content.Context;
import android.content.res.TypedArray;
import android.text.Spannable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.content.ContextCompat;
import com.narvii.amino.master.R;
import com.narvii.app.NVContext;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.LogEvent;
import com.narvii.logging.LogUtils;
import com.narvii.model.OwnershipInfo;
import com.narvii.model.RestrictionInfo;
import com.narvii.monetization.utils.StoreItemHelper;
import com.narvii.util.NVToast;
import com.narvii.util.Utils;
import com.narvii.util.text.NVText;
import com.narvii.wallet.MembershipService;

/* JADX INFO: loaded from: classes8.dex */
public class StoreItemStatusView extends FrameLayout implements View.OnClickListener {
    public static final int STATUS_ACTIVATED = 5;
    public static final int STATUS_ADDED = 7;
    public static final int STATUS_DOWNLOADING = 2;
    public static final int STATUS_DOWNLOAD_ERROR = 3;
    public static final int STATUS_IDLE = 0;
    public static final int STATUS_LOADING = 1;
    public static final int STATUS_OWNED = 4;
    public static final int STATUS_SET = 6;
    public static final int STATUS_UNAVAILABLE = 8;
    private int activateDrawableId;
    private int activateStrId;
    private int activatedDrawableId;
    private int activatedStrId;
    private int activatedTextColorId;
    public boolean allowIgnoreDownloadError;
    private boolean bigStyle;
    private StoreItemOwnStatusController controller;
    private int curProgress;
    private int curStatus;
    private int downloadProgressDrawableId;
    private ProgressBar downloadStatusContainer;
    private boolean forceStatusExtraHintHeight;
    private int getDrawableId;
    private int getStrId;
    private ImageView imgStatusIndicator;
    private int initStatus;
    private ProgressBar loadingStatusContainer;
    private MembershipService membership;
    private boolean preview;
    private View stableStatusContainer;
    private StoreItemHelper storeItemHelper;
    private TextView tvStatusExtraHint;
    private TextView tvStatusHint;
    private View unavailableView;
    ViewClickListener viewClickListener;

    interface ViewClickListener {
        void onClickActivateItem();

        void onClickGetItem();

        void onClickMemberShip();

        void onClickUseItem();
    }

    public StoreItemStatusView(@NonNull Context context) {
        this(context, null);
    }

    private boolean isErrorStatus() {
        return this.curStatus == 3;
    }

    public void forceStatusExtraHintHeight(boolean z6) {
        this.forceStatusExtraHintHeight = z6;
    }

    public boolean isDownloadingStatus() {
        return this.curStatus == 2;
    }

    public boolean isLoadingStatus() {
        return this.curStatus == 1;
    }

    public boolean isStableStatus() {
        int i10 = this.curStatus;
        return i10 == 0 || i10 == 5 || i10 == 7 || i10 == 6 || i10 == 4;
    }

    public void setActivateDrawableId(int i10) {
        this.activateDrawableId = i10;
    }

    public void setActivateStrId(int i10) {
        this.activateStrId = i10;
    }

    public void setActivatedDrawableId(int i10) {
        this.activatedDrawableId = i10;
    }

    public void setActivatedStrId(int i10) {
        this.activatedStrId = i10;
    }

    public void setActivatedTextColorId(int i10) {
        this.activatedTextColorId = i10;
    }

    public void setBigStyle(boolean z6) {
        this.bigStyle = z6;
    }

    public void setController(StoreItemOwnStatusController storeItemOwnStatusController) {
        this.controller = storeItemOwnStatusController;
    }

    public void setDownloadProgressDrawableId(int i10) {
        this.downloadProgressDrawableId = i10;
    }

    public void setGetDrawableId(int i10) {
        this.getDrawableId = i10;
    }

    public void setGetStrId(int i10) {
        this.getStrId = i10;
    }

    public void setPreview(boolean z6) {
        this.preview = z6;
    }

    public void setViewClickListener(ViewClickListener viewClickListener) {
        this.viewClickListener = viewClickListener;
    }

    public StoreItemStatusView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.bigStyle = true;
        this.forceStatusExtraHintHeight = false;
        View.inflate(context, R.layout.container_store_item_status, this);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, com.narvii.amino.R.styleable.StoreItemStatusView);
        this.initStatus = typedArrayObtainStyledAttributes.getInt(0, 0);
        typedArrayObtainStyledAttributes.recycle();
        this.forceStatusExtraHintHeight = false;
        NVContext nVContext = Utils.getNVContext(getContext());
        if (nVContext != null) {
            this.membership = (MembershipService) nVContext.getService("membership");
            this.storeItemHelper = new StoreItemHelper(nVContext);
        }
    }

    private void updateExpiredText() {
        StoreItemOwnStatusController storeItemOwnStatusController = this.controller;
        if (storeItemOwnStatusController == null || storeItemOwnStatusController.getStoreItem() == null) {
            return;
        }
        RestrictionInfo restrictionInfo = this.controller.getStoreItem().getRestrictionInfo();
        OwnershipInfo ownershipInfo = this.controller.getStoreItem().getOwnershipInfo();
        if (this.storeItemHelper != null && restrictionInfo.hasAvailableDuration()) {
            Spannable expiredTimeSpannable = this.storeItemHelper.getExpiredTimeSpannable(ownershipInfo);
            if (!this.bigStyle || TextUtils.isEmpty(expiredTimeSpannable)) {
                return;
            }
            this.tvStatusExtraHint.setVisibility(0);
            this.tvStatusExtraHint.setText(expiredTimeSpannable, TextView.BufferType.SPANNABLE);
            this.tvStatusExtraHint.setTextColor(this.storeItemHelper.getExpiredTimeStringColor(ownershipInfo));
        }
    }

    private void updateIdleTextView() {
        MembershipService membershipService;
        StoreItemOwnStatusController storeItemOwnStatusController = this.controller;
        if (storeItemOwnStatusController == null || storeItemOwnStatusController.getStoreItem() == null) {
            return;
        }
        RestrictionInfo restrictionInfo = this.controller.getStoreItem().getRestrictionInfo();
        this.tvStatusHint.setTextColor(-1);
        int i10 = R.drawable.amino_coin_small;
        if (restrictionInfo == null || !restrictionInfo.isSupported()) {
            this.tvStatusHint.setText("- -");
            if (restrictionInfo == null || restrictionInfo.restrictType != 4) {
                return;
            }
            TextView textView = this.tvStatusHint;
            int i11 = Utils.isRtl() ? 0 : R.drawable.amino_coin_small;
            if (!Utils.isRtl()) {
                i10 = 0;
            }
            textView.setCompoundDrawablesWithIntrinsicBounds(i11, 0, i10, 0);
            this.tvStatusHint.setCompoundDrawablePadding((int) Utils.dpToPx(getContext(), 4.0f));
            return;
        }
        if (this.getStrId != 0) {
            this.tvStatusHint.setText(getContext().getString(this.getStrId));
            return;
        }
        if (restrictionInfo.restrictType != 4) {
            this.tvStatusHint.setText(com.narvii.util.text.TextUtils.getUpperCase(getContext(), R.string.get));
            return;
        }
        if (restrictionInfo.discountStatus == 1 && (membershipService = this.membership) != null && membershipService.isMembership()) {
            this.tvStatusHint.setText(this.storeItemHelper.getPriceExpiredTimeCheck(restrictionInfo.discountValue, restrictionInfo));
            if (this.bigStyle) {
                this.tvStatusExtraHint.setVisibility(0);
                NVText nVText = new NVText(getResources().getString(R.string.store_extra_hint_membership_origin_price));
                nVText.format(this.storeItemHelper.getCoinsSpannableWithDeleteLine(restrictionInfo.restrictValue));
                this.tvStatusExtraHint.setText(nVText, TextView.BufferType.SPANNABLE);
                this.tvStatusExtraHint.setTextColor(this.storeItemHelper.getExpiredTimeStringColor(null));
            }
        } else {
            this.tvStatusHint.setText(this.storeItemHelper.getPriceExpiredTimeCheck(restrictionInfo.restrictValue, restrictionInfo));
        }
        TextView textView2 = this.tvStatusHint;
        int i12 = Utils.isRtl() ? 0 : R.drawable.amino_coin_small;
        if (!Utils.isRtl()) {
            i10 = 0;
        }
        textView2.setCompoundDrawablesWithIntrinsicBounds(i12, 0, i10, 0);
        this.tvStatusHint.setCompoundDrawablePadding((int) Utils.dpToPx(getContext(), 4.0f));
    }

    private void updateViews() {
        this.unavailableView.setVisibility(this.curStatus == 8 ? 0 : 8);
        this.stableStatusContainer.setVisibility(isStableStatus() ? 0 : 4);
        this.loadingStatusContainer.setVisibility(isLoadingStatus() ? 0 : 8);
        ProgressBar progressBar = this.downloadStatusContainer;
        Context context = getContext();
        int i10 = this.downloadProgressDrawableId;
        if (i10 == 0) {
            i10 = R.drawable.store_item_downloading_progress_green;
        }
        progressBar.setProgressDrawable(ContextCompat.getDrawable(context, i10));
        this.downloadStatusContainer.setVisibility(isDownloadingStatus() ? 0 : 8);
        this.tvStatusExtraHint.setVisibility((this.bigStyle && this.forceStatusExtraHintHeight) ? 4 : 8);
        if (!isStableStatus()) {
            if (!isLoadingStatus() && isDownloadingStatus()) {
                this.downloadStatusContainer.setProgress(this.curProgress);
                return;
            }
            return;
        }
        this.tvStatusHint.setCompoundDrawablesWithIntrinsicBounds(0, 0, 0, 0);
        int i11 = this.curStatus;
        if (i11 == 0) {
            this.imgStatusIndicator.setImageDrawable(null);
            this.imgStatusIndicator.setVisibility(8);
            updateIdleTextView();
            View view = this.stableStatusContainer;
            Context context2 = getContext();
            int i12 = this.getDrawableId;
            if (i12 == 0) {
                i12 = R.drawable.selector_subscribe_green;
            }
            view.setBackgroundDrawable(ContextCompat.getDrawable(context2, i12));
            return;
        }
        if (i11 == 4) {
            this.imgStatusIndicator.setImageDrawable(null);
            this.imgStatusIndicator.setVisibility(8);
            TextView textView = this.tvStatusHint;
            int i13 = this.activateStrId;
            if (i13 == 0) {
                i13 = R.string.activate;
            }
            textView.setText(i13);
            this.tvStatusHint.setTextColor(-1);
            View view2 = this.stableStatusContainer;
            Context context3 = getContext();
            int i14 = this.activateDrawableId;
            if (i14 == 0) {
                i14 = R.drawable.selector_actvite_green_round;
            }
            view2.setBackgroundDrawable(ContextCompat.getDrawable(context3, i14));
            return;
        }
        int i15 = R.drawable.selector_actvite_green_stroke;
        int i16 = R.color.selector_store_item_text;
        if (i11 == 5) {
            this.imgStatusIndicator.setVisibility(8);
            TextView textView2 = this.tvStatusHint;
            int i17 = this.activatedStrId;
            if (i17 == 0) {
                i17 = R.string.activated;
            }
            textView2.setText(i17);
            TextView textView3 = this.tvStatusHint;
            Context context4 = getContext();
            int i18 = this.activatedTextColorId;
            if (i18 != 0) {
                i16 = i18;
            }
            textView3.setTextColor(ContextCompat.getColorStateList(context4, i16));
            View view3 = this.stableStatusContainer;
            Context context5 = getContext();
            int i19 = this.activatedDrawableId;
            if (i19 != 0) {
                i15 = i19;
            }
            view3.setBackgroundDrawable(ContextCompat.getDrawable(context5, i15));
            return;
        }
        if (i11 == 6) {
            this.imgStatusIndicator.setVisibility(0);
            this.imgStatusIndicator.setImageDrawable(ContextCompat.getDrawable(getContext(), R.drawable.ic_store_item_status_finish));
            this.tvStatusHint.setText(R.string.set);
            this.tvStatusHint.setTextColor(ContextCompat.getColorStateList(getContext(), R.color.selector_store_item_text));
            this.stableStatusContainer.setBackgroundDrawable(null);
            return;
        }
        if (i11 != 7) {
            return;
        }
        this.imgStatusIndicator.setVisibility(0);
        this.imgStatusIndicator.setImageDrawable(ContextCompat.getDrawable(getContext(), R.drawable.ic_store_item_status_finish));
        this.tvStatusHint.setText(R.string.added);
        TextView textView4 = this.tvStatusHint;
        Context context6 = getContext();
        int i20 = this.activatedTextColorId;
        if (i20 != 0) {
            i16 = i20;
        }
        textView4.setTextColor(ContextCompat.getColorStateList(context6, i16));
        View view4 = this.stableStatusContainer;
        Context context7 = getContext();
        int i21 = this.activatedDrawableId;
        if (i21 != 0) {
            i15 = i21;
        }
        view4.setBackgroundDrawable(ContextCompat.getDrawable(context7, i15));
    }

    public void updateDownloadingProgress(int i10) {
        if (i10 < 0) {
            i10 = 0;
        }
        if (i10 > 100) {
            i10 = 100;
        }
        this.curStatus = 2;
        this.curProgress = i10;
        updateViews();
    }

    public void updateStatus(int i10) {
        this.curStatus = i10;
        if (i10 != 2) {
            this.curProgress = 0;
        }
        updateViews();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() == R.id.status_container) {
            if (this.preview) {
                NVToast.makeText(getContext(), R.string.this_is_preview, 0).show();
                return;
            }
            int i10 = this.curStatus;
            if (i10 != 0) {
                if (i10 != 4) {
                    if (i10 == 5 && this.viewClickListener != null) {
                        LogEvent.clickBuilder(LogUtils.getPageContext(this), ActSemantic.use).area("ActionButton").send();
                        this.viewClickListener.onClickUseItem();
                        return;
                    }
                    return;
                }
                if (this.viewClickListener != null) {
                    LogEvent.clickBuilder(LogUtils.getPageContext(this), ActSemantic.activate).area("ActionButton").send();
                    this.viewClickListener.onClickActivateItem();
                    return;
                }
                return;
            }
            if (this.viewClickListener != null) {
                LogEvent.clickBuilder(LogUtils.getPageContext(this), ActSemantic.purchase).area("ActionButton").send();
                this.viewClickListener.onClickGetItem();
            }
        }
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.stableStatusContainer = findViewById(R.id.status_container);
        this.loadingStatusContainer = (ProgressBar) findViewById(R.id.loading);
        this.downloadStatusContainer = (ProgressBar) findViewById(R.id.downloading);
        this.unavailableView = findViewById(R.id.unavailable);
        this.imgStatusIndicator = (ImageView) findViewById(R.id.status_indicator);
        this.tvStatusHint = (TextView) findViewById(R.id.status_hint);
        this.stableStatusContainer.setOnClickListener(this);
        this.tvStatusExtraHint = (TextView) findViewById(R.id.status_extra_hint);
    }
}
