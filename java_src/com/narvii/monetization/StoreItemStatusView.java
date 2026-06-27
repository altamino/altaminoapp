package com.narvii.monetization;

import android.content.Context;
import android.content.res.TypedArray;
import android.support.v4.content.ContextCompat;
import android.text.Spannable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.narvii.amino.mastes.R;
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
import com.narvii.util.text.TextUtils;
import com.narvii.wallet.MembershipService;

/* loaded from: classes3.dex */
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

    public void setPreview(boolean z) {
        this.preview = z;
    }

    public void setActivatedTextColorId(int i) {
        this.activatedTextColorId = i;
    }

    public void setActivatedStrId(int i) {
        this.activatedStrId = i;
    }

    public void setActivatedDrawableId(int i) {
        this.activatedDrawableId = i;
    }

    public void setGetStrId(int i) {
        this.getStrId = i;
    }

    public void setGetDrawableId(int i) {
        this.getDrawableId = i;
    }

    public void setActivateStrId(int i) {
        this.activateStrId = i;
    }

    public void setActivateDrawableId(int i) {
        this.activateDrawableId = i;
    }

    public void setDownloadProgressDrawableId(int i) {
        this.downloadProgressDrawableId = i;
    }

    public void setBigStyle(boolean z) {
        this.bigStyle = z;
    }

    public void setViewClickListener(ViewClickListener viewClickListener) {
        this.viewClickListener = viewClickListener;
    }

    public StoreItemStatusView(Context context) {
        this(context, null);
    }

    public StoreItemStatusView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.bigStyle = true;
        this.forceStatusExtraHintHeight = false;
        FrameLayout.inflate(context, R.layout.container_store_item_status, this);
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

    public void updateStatus(int i) {
        this.curStatus = i;
        if (this.curStatus != 2) {
            this.curProgress = 0;
        }
        updateViews();
    }

    public void setController(StoreItemOwnStatusController storeItemOwnStatusController) {
        this.controller = storeItemOwnStatusController;
    }

    public void updateDownloadingProgress(int i) {
        if (i < 0) {
            i = 0;
        }
        if (i > 100) {
            i = 100;
        }
        this.curStatus = 2;
        this.curProgress = i;
        updateViews();
    }

    public void forceStatusExtraHintHeight(boolean z) {
        this.forceStatusExtraHintHeight = z;
    }

    private void updateViews() {
        this.unavailableView.setVisibility(this.curStatus == 8 ? 0 : 8);
        this.stableStatusContainer.setVisibility(isStableStatus() ? 0 : 4);
        this.loadingStatusContainer.setVisibility(isLoadingStatus() ? 0 : 8);
        ProgressBar progressBar = this.downloadStatusContainer;
        Context context = getContext();
        int i = this.downloadProgressDrawableId;
        if (i == 0) {
            i = R.drawable.store_item_downloading_progress_green;
        }
        progressBar.setProgressDrawable(ContextCompat.getDrawable(context, i));
        this.downloadStatusContainer.setVisibility(isDownloadingStatus() ? 0 : 8);
        this.tvStatusExtraHint.setVisibility((this.bigStyle && this.forceStatusExtraHintHeight) ? 4 : 8);
        if (isStableStatus()) {
            this.tvStatusHint.setCompoundDrawablesWithIntrinsicBounds(0, 0, 0, 0);
            int i2 = this.curStatus;
            if (i2 == 0) {
                this.imgStatusIndicator.setImageDrawable(null);
                this.imgStatusIndicator.setVisibility(8);
                updateIdleTextView();
                View view = this.stableStatusContainer;
                Context context2 = getContext();
                int i3 = this.getDrawableId;
                if (i3 == 0) {
                    i3 = R.drawable.selector_subscribe_green;
                }
                view.setBackgroundDrawable(ContextCompat.getDrawable(context2, i3));
                return;
            }
            if (i2 == 4) {
                this.imgStatusIndicator.setImageDrawable(null);
                this.imgStatusIndicator.setVisibility(8);
                TextView textView = this.tvStatusHint;
                int i4 = this.activateStrId;
                if (i4 == 0) {
                    i4 = R.string.activate;
                }
                textView.setText(i4);
                this.tvStatusHint.setTextColor(-1);
                View view2 = this.stableStatusContainer;
                Context context3 = getContext();
                int i5 = this.activateDrawableId;
                if (i5 == 0) {
                    i5 = R.drawable.selector_actvite_green_round;
                }
                view2.setBackgroundDrawable(ContextCompat.getDrawable(context3, i5));
                return;
            }
            if (i2 == 5) {
                this.imgStatusIndicator.setVisibility(8);
                TextView textView2 = this.tvStatusHint;
                int i6 = this.activatedStrId;
                if (i6 == 0) {
                    i6 = R.string.activated;
                }
                textView2.setText(i6);
                TextView textView3 = this.tvStatusHint;
                Context context4 = getContext();
                int i7 = this.activatedTextColorId;
                if (i7 == 0) {
                    i7 = R.color.selector_store_item_text;
                }
                textView3.setTextColor(ContextCompat.getColorStateList(context4, i7));
                View view3 = this.stableStatusContainer;
                Context context5 = getContext();
                int i8 = this.activatedDrawableId;
                if (i8 == 0) {
                    i8 = R.drawable.selector_actvite_green_stroke;
                }
                view3.setBackgroundDrawable(ContextCompat.getDrawable(context5, i8));
                return;
            }
            if (i2 == 6) {
                this.imgStatusIndicator.setVisibility(0);
                this.imgStatusIndicator.setImageDrawable(ContextCompat.getDrawable(getContext(), R.drawable.ic_store_item_status_finish));
                this.tvStatusHint.setText(R.string.set);
                this.tvStatusHint.setTextColor(ContextCompat.getColorStateList(getContext(), R.color.selector_store_item_text));
                this.stableStatusContainer.setBackgroundDrawable(null);
                return;
            }
            if (i2 != 7) {
                return;
            }
            this.imgStatusIndicator.setVisibility(0);
            this.imgStatusIndicator.setImageDrawable(ContextCompat.getDrawable(getContext(), R.drawable.ic_store_item_status_finish));
            this.tvStatusHint.setText(R.string.added);
            TextView textView4 = this.tvStatusHint;
            Context context6 = getContext();
            int i9 = this.activatedTextColorId;
            if (i9 == 0) {
                i9 = R.color.selector_store_item_text;
            }
            textView4.setTextColor(ContextCompat.getColorStateList(context6, i9));
            View view4 = this.stableStatusContainer;
            Context context7 = getContext();
            int i10 = this.activatedDrawableId;
            if (i10 == 0) {
                i10 = R.drawable.selector_actvite_green_stroke;
            }
            view4.setBackgroundDrawable(ContextCompat.getDrawable(context7, i10));
            return;
        }
        if (!isLoadingStatus() && isDownloadingStatus()) {
            this.downloadStatusContainer.setProgress(this.curProgress);
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
        int i = R.drawable.amino_coin_small;
        if (restrictionInfo == null || !restrictionInfo.isSupported()) {
            this.tvStatusHint.setText("- -");
            if (restrictionInfo == null || restrictionInfo.restrictType != 4) {
                return;
            }
            TextView textView = this.tvStatusHint;
            int i2 = Utils.isRtl() ? 0 : R.drawable.amino_coin_small;
            if (!Utils.isRtl()) {
                i = 0;
            }
            textView.setCompoundDrawablesWithIntrinsicBounds(i2, 0, i, 0);
            this.tvStatusHint.setCompoundDrawablePadding((int) Utils.dpToPx(getContext(), 4.0f));
            return;
        }
        if (this.getStrId != 0) {
            this.tvStatusHint.setText(getContext().getString(this.getStrId));
            return;
        }
        if (restrictionInfo.restrictType == 4) {
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
            int i3 = Utils.isRtl() ? 0 : R.drawable.amino_coin_small;
            if (!Utils.isRtl()) {
                i = 0;
            }
            textView2.setCompoundDrawablesWithIntrinsicBounds(i3, 0, i, 0);
            this.tvStatusHint.setCompoundDrawablePadding((int) Utils.dpToPx(getContext(), 4.0f));
            return;
        }
        this.tvStatusHint.setText(TextUtils.getUpperCase(getContext(), R.string.get));
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
            if (!this.bigStyle || android.text.TextUtils.isEmpty(expiredTimeSpannable)) {
                return;
            }
            this.tvStatusExtraHint.setVisibility(0);
            this.tvStatusExtraHint.setText(expiredTimeSpannable, TextView.BufferType.SPANNABLE);
            this.tvStatusExtraHint.setTextColor(this.storeItemHelper.getExpiredTimeStringColor(ownershipInfo));
        }
    }

    public boolean isStableStatus() {
        int i = this.curStatus;
        return i == 0 || i == 5 || i == 7 || i == 6 || i == 4;
    }

    public boolean isLoadingStatus() {
        return this.curStatus == 1;
    }

    public boolean isDownloadingStatus() {
        return this.curStatus == 2;
    }

    private boolean isErrorStatus() {
        return this.curStatus == 3;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() != R.id.status_container) {
            return;
        }
        if (this.preview) {
            NVToast.makeText(getContext(), R.string.this_is_preview, 0).show();
            return;
        }
        int i = this.curStatus;
        if (i == 0) {
            if (this.viewClickListener != null) {
                LogEvent.clickBuilder(LogUtils.getPageContext(this), ActSemantic.purchase).area("ActionButton").send();
                this.viewClickListener.onClickGetItem();
                return;
            }
            return;
        }
        if (i == 4) {
            if (this.viewClickListener != null) {
                LogEvent.clickBuilder(LogUtils.getPageContext(this), ActSemantic.activate).area("ActionButton").send();
                this.viewClickListener.onClickActivateItem();
                return;
            }
            return;
        }
        if (i == 5 && this.viewClickListener != null) {
            LogEvent.clickBuilder(LogUtils.getPageContext(this), ActSemantic.use).area("ActionButton").send();
            this.viewClickListener.onClickUseItem();
        }
    }
}
