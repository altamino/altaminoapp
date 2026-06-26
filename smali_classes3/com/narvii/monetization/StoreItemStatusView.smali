.class public Lcom/narvii/monetization/StoreItemStatusView;
.super Landroid/widget/FrameLayout;
.source "StoreItemStatusView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/monetization/StoreItemStatusView$ViewClickListener;
    }
.end annotation


# static fields
.field public static final STATUS_ACTIVATED:I = 0x5

.field public static final STATUS_ADDED:I = 0x7

.field public static final STATUS_DOWNLOADING:I = 0x2

.field public static final STATUS_DOWNLOAD_ERROR:I = 0x3

.field public static final STATUS_IDLE:I = 0x0

.field public static final STATUS_LOADING:I = 0x1

.field public static final STATUS_OWNED:I = 0x4

.field public static final STATUS_SET:I = 0x6

.field public static final STATUS_UNAVAILABLE:I = 0x8


# instance fields
.field private activateDrawableId:I

.field private activateStrId:I

.field private activatedDrawableId:I

.field private activatedStrId:I

.field private activatedTextColorId:I

.field public allowIgnoreDownloadError:Z

.field private bigStyle:Z

.field private controller:Lcom/narvii/monetization/StoreItemOwnStatusController;

.field private curProgress:I

.field private curStatus:I

.field private downloadProgressDrawableId:I

.field private downloadStatusContainer:Landroid/widget/ProgressBar;

.field private forceStatusExtraHintHeight:Z

.field private getDrawableId:I

.field private getStrId:I

.field private imgStatusIndicator:Landroid/widget/ImageView;

.field private initStatus:I

.field private loadingStatusContainer:Landroid/widget/ProgressBar;

.field private membership:Lcom/narvii/wallet/MembershipService;

.field private preview:Z

.field private stableStatusContainer:Landroid/view/View;

.field private storeItemHelper:Lcom/narvii/monetization/utils/StoreItemHelper;

.field private tvStatusExtraHint:Landroid/widget/TextView;

.field private tvStatusHint:Landroid/widget/TextView;

.field private unavailableView:Landroid/view/View;

.field viewClickListener:Lcom/narvii/monetization/StoreItemStatusView$ViewClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 137
    invoke-direct {p0, p1, v0}, Lcom/narvii/monetization/StoreItemStatusView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 141
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    .line 76
    iput-boolean v0, p0, Lcom/narvii/monetization/StoreItemStatusView;->bigStyle:Z

    const/4 v0, 0x0

    .line 78
    iput-boolean v0, p0, Lcom/narvii/monetization/StoreItemStatusView;->forceStatusExtraHintHeight:Z

    const v1, 0x7f0b0112

    .line 142
    invoke-static {p1, v1, p0}, Landroid/widget/FrameLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 144
    sget-object v1, Lcom/narvii/amino/R$styleable;->StoreItemStatusView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 145
    invoke-virtual {p1, v0, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/narvii/monetization/StoreItemStatusView;->initStatus:I

    .line 146
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 148
    iput-boolean v0, p0, Lcom/narvii/monetization/StoreItemStatusView;->forceStatusExtraHintHeight:Z

    .line 150
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string p2, "membership"

    .line 152
    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/wallet/MembershipService;

    iput-object p2, p0, Lcom/narvii/monetization/StoreItemStatusView;->membership:Lcom/narvii/wallet/MembershipService;

    .line 153
    new-instance p2, Lcom/narvii/monetization/utils/StoreItemHelper;

    invoke-direct {p2, p1}, Lcom/narvii/monetization/utils/StoreItemHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p2, p0, Lcom/narvii/monetization/StoreItemStatusView;->storeItemHelper:Lcom/narvii/monetization/utils/StoreItemHelper;

    :cond_0
    return-void
.end method

.method private isErrorStatus()Z
    .locals 2

    .line 357
    iget v0, p0, Lcom/narvii/monetization/StoreItemStatusView;->curStatus:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private updateExpiredText()V
    .locals 4

    .line 315
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemStatusView;->controller:Lcom/narvii/monetization/StoreItemOwnStatusController;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/narvii/monetization/StoreItemOwnStatusController;->getStoreItem()Lcom/narvii/model/IStoreItem;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 318
    :cond_0
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemStatusView;->controller:Lcom/narvii/monetization/StoreItemOwnStatusController;

    invoke-virtual {v0}, Lcom/narvii/monetization/StoreItemOwnStatusController;->getStoreItem()Lcom/narvii/model/IStoreItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/narvii/model/IStoreItem;->getRestrictionInfo()Lcom/narvii/model/RestrictionInfo;

    move-result-object v0

    .line 319
    iget-object v1, p0, Lcom/narvii/monetization/StoreItemStatusView;->controller:Lcom/narvii/monetization/StoreItemOwnStatusController;

    invoke-virtual {v1}, Lcom/narvii/monetization/StoreItemOwnStatusController;->getStoreItem()Lcom/narvii/model/IStoreItem;

    move-result-object v1

    invoke-interface {v1}, Lcom/narvii/model/IStoreItem;->getOwnershipInfo()Lcom/narvii/model/OwnershipInfo;

    move-result-object v1

    .line 321
    iget-object v2, p0, Lcom/narvii/monetization/StoreItemStatusView;->storeItemHelper:Lcom/narvii/monetization/utils/StoreItemHelper;

    if-nez v2, :cond_1

    return-void

    .line 325
    :cond_1
    invoke-virtual {v0}, Lcom/narvii/model/RestrictionInfo;->hasAvailableDuration()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 328
    :cond_2
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemStatusView;->storeItemHelper:Lcom/narvii/monetization/utils/StoreItemHelper;

    invoke-virtual {v0, v1}, Lcom/narvii/monetization/utils/StoreItemHelper;->getExpiredTimeSpannable(Lcom/narvii/model/OwnershipInfo;)Landroid/text/Spannable;

    move-result-object v0

    .line 330
    iget-boolean v2, p0, Lcom/narvii/monetization/StoreItemStatusView;->bigStyle:Z

    if-eqz v2, :cond_4

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    .line 334
    :cond_3
    iget-object v2, p0, Lcom/narvii/monetization/StoreItemStatusView;->tvStatusExtraHint:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 335
    iget-object v2, p0, Lcom/narvii/monetization/StoreItemStatusView;->tvStatusExtraHint:Landroid/widget/TextView;

    sget-object v3, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v2, v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 336
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemStatusView;->tvStatusExtraHint:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/narvii/monetization/StoreItemStatusView;->storeItemHelper:Lcom/narvii/monetization/utils/StoreItemHelper;

    invoke-virtual {v2, v1}, Lcom/narvii/monetization/utils/StoreItemHelper;->getExpiredTimeStringColor(Lcom/narvii/model/OwnershipInfo;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_4
    :goto_0
    return-void
.end method

.method private updateIdleTextView()V
    .locals 8

    .line 261
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemStatusView;->controller:Lcom/narvii/monetization/StoreItemOwnStatusController;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/narvii/monetization/StoreItemOwnStatusController;->getStoreItem()Lcom/narvii/model/IStoreItem;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_6

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemStatusView;->controller:Lcom/narvii/monetization/StoreItemOwnStatusController;

    invoke-virtual {v0}, Lcom/narvii/monetization/StoreItemOwnStatusController;->getStoreItem()Lcom/narvii/model/IStoreItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/narvii/model/IStoreItem;->getRestrictionInfo()Lcom/narvii/model/RestrictionInfo;

    move-result-object v0

    .line 266
    iget-object v1, p0, Lcom/narvii/monetization/StoreItemStatusView;->tvStatusHint:Landroid/widget/TextView;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v1, 0x40800000    # 4.0f

    const/4 v2, 0x4

    const v3, 0x7f08007a

    const/4 v4, 0x0

    if-eqz v0, :cond_9

    .line 268
    invoke-virtual {v0}, Lcom/narvii/model/RestrictionInfo;->isSupported()Z

    move-result v5

    if-nez v5, :cond_1

    goto/16 :goto_3

    .line 278
    :cond_1
    iget v5, p0, Lcom/narvii/monetization/StoreItemStatusView;->getStrId:I

    if-eqz v5, :cond_2

    .line 279
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemStatusView;->tvStatusHint:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/narvii/monetization/StoreItemStatusView;->getStrId:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 284
    :cond_2
    iget v5, v0, Lcom/narvii/model/RestrictionInfo;->restrictType:I

    if-ne v5, v2, :cond_8

    .line 287
    iget v2, v0, Lcom/narvii/model/RestrictionInfo;->discountStatus:I

    const/4 v5, 0x1

    if-ne v2, v5, :cond_4

    .line 289
    iget-object v2, p0, Lcom/narvii/monetization/StoreItemStatusView;->membership:Lcom/narvii/wallet/MembershipService;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/narvii/wallet/MembershipService;->isMembership()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 290
    iget-object v2, p0, Lcom/narvii/monetization/StoreItemStatusView;->tvStatusHint:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/narvii/monetization/StoreItemStatusView;->storeItemHelper:Lcom/narvii/monetization/utils/StoreItemHelper;

    iget v7, v0, Lcom/narvii/model/RestrictionInfo;->discountValue:I

    invoke-virtual {v6, v7, v0}, Lcom/narvii/monetization/utils/StoreItemHelper;->getPriceExpiredTimeCheck(ILcom/narvii/model/RestrictionInfo;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 291
    iget-boolean v2, p0, Lcom/narvii/monetization/StoreItemStatusView;->bigStyle:Z

    if-eqz v2, :cond_5

    .line 292
    iget-object v2, p0, Lcom/narvii/monetization/StoreItemStatusView;->tvStatusExtraHint:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 293
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x7f0f1037

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 294
    new-instance v6, Lcom/narvii/util/text/NVText;

    invoke-direct {v6, v2}, Lcom/narvii/util/text/NVText;-><init>(Ljava/lang/CharSequence;)V

    new-array v2, v5, [Ljava/lang/CharSequence;

    .line 295
    iget-object v5, p0, Lcom/narvii/monetization/StoreItemStatusView;->storeItemHelper:Lcom/narvii/monetization/utils/StoreItemHelper;

    iget v0, v0, Lcom/narvii/model/RestrictionInfo;->restrictValue:I

    invoke-virtual {v5, v0}, Lcom/narvii/monetization/utils/StoreItemHelper;->getCoinsSpannableWithDeleteLine(I)Landroid/text/Spannable;

    move-result-object v0

    aput-object v0, v2, v4

    invoke-virtual {v6, v2}, Lcom/narvii/util/text/NVText;->format([Ljava/lang/CharSequence;)V

    .line 296
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemStatusView;->tvStatusExtraHint:Landroid/widget/TextView;

    sget-object v2, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v0, v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 297
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemStatusView;->tvStatusExtraHint:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/narvii/monetization/StoreItemStatusView;->storeItemHelper:Lcom/narvii/monetization/utils/StoreItemHelper;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lcom/narvii/monetization/utils/StoreItemHelper;->getExpiredTimeStringColor(Lcom/narvii/model/OwnershipInfo;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 300
    :cond_3
    iget-object v2, p0, Lcom/narvii/monetization/StoreItemStatusView;->tvStatusHint:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/narvii/monetization/StoreItemStatusView;->storeItemHelper:Lcom/narvii/monetization/utils/StoreItemHelper;

    iget v6, v0, Lcom/narvii/model/RestrictionInfo;->restrictValue:I

    invoke-virtual {v5, v6, v0}, Lcom/narvii/monetization/utils/StoreItemHelper;->getPriceExpiredTimeCheck(ILcom/narvii/model/RestrictionInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 303
    :cond_4
    iget-object v2, p0, Lcom/narvii/monetization/StoreItemStatusView;->tvStatusHint:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/narvii/monetization/StoreItemStatusView;->storeItemHelper:Lcom/narvii/monetization/utils/StoreItemHelper;

    iget v6, v0, Lcom/narvii/model/RestrictionInfo;->restrictValue:I

    invoke-virtual {v5, v6, v0}, Lcom/narvii/monetization/utils/StoreItemHelper;->getPriceExpiredTimeCheck(ILcom/narvii/model/RestrictionInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 305
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemStatusView;->tvStatusHint:Landroid/widget/TextView;

    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x0

    goto :goto_1

    :cond_6
    const v2, 0x7f08007a

    :goto_1
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v5

    if-eqz v5, :cond_7

    goto :goto_2

    :cond_7
    const/4 v3, 0x0

    :goto_2
    invoke-virtual {v0, v2, v4, v3, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 306
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemStatusView;->tvStatusHint:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    return-void

    .line 309
    :cond_8
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemStatusView;->tvStatusHint:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f0722

    invoke-static {v1, v2}, Lcom/narvii/util/text/TextUtils;->getUpperCase(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 269
    :cond_9
    :goto_3
    iget-object v5, p0, Lcom/narvii/monetization/StoreItemStatusView;->tvStatusHint:Landroid/widget/TextView;

    const-string v6, "- -"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v0, :cond_c

    .line 270
    iget v0, v0, Lcom/narvii/model/RestrictionInfo;->restrictType:I

    if-ne v0, v2, :cond_c

    .line 271
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemStatusView;->tvStatusHint:Landroid/widget/TextView;

    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v2

    if-eqz v2, :cond_a

    const/4 v2, 0x0

    goto :goto_4

    :cond_a
    const v2, 0x7f08007a

    :goto_4
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v5

    if-eqz v5, :cond_b

    goto :goto_5

    :cond_b
    const/4 v3, 0x0

    :goto_5
    invoke-virtual {v0, v2, v4, v3, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 272
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemStatusView;->tvStatusHint:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    :cond_c
    :goto_6
    return-void
.end method

.method private updateViews()V
    .locals 7

    .line 205
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemStatusView;->unavailableView:Landroid/view/View;

    iget v1, p0, Lcom/narvii/monetization/StoreItemStatusView;->curStatus:I

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 206
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemStatusView;->stableStatusContainer:Landroid/view/View;

    invoke-virtual {p0}, Lcom/narvii/monetization/StoreItemStatusView;->isStableStatus()Z

    move-result v1

    const/4 v4, 0x4

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    const/4 v1, 0x4

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 207
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemStatusView;->loadingStatusContainer:Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/narvii/monetization/StoreItemStatusView;->isLoadingStatus()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    const/16 v1, 0x8

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 208
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemStatusView;->downloadStatusContainer:Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v5, p0, Lcom/narvii/monetization/StoreItemStatusView;->downloadProgressDrawableId:I

    if-eqz v5, :cond_3

    goto :goto_3

    :cond_3
    const v5, 0x7f0807a1

    :goto_3
    invoke-static {v1, v5}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 209
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemStatusView;->downloadStatusContainer:Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/narvii/monetization/StoreItemStatusView;->isDownloadingStatus()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    goto :goto_4

    :cond_4
    const/16 v1, 0x8

    :goto_4
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 210
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemStatusView;->tvStatusExtraHint:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/narvii/monetization/StoreItemStatusView;->bigStyle:Z

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/narvii/monetization/StoreItemStatusView;->forceStatusExtraHintHeight:Z

    if-eqz v1, :cond_5

    const/4 v1, 0x4

    goto :goto_5

    :cond_5
    const/16 v1, 0x8

    :goto_5
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 211
    invoke-virtual {p0}, Lcom/narvii/monetization/StoreItemStatusView;->isStableStatus()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 212
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemStatusView;->tvStatusHint:Landroid/widget/TextView;

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 213
    iget v0, p0, Lcom/narvii/monetization/StoreItemStatusView;->curStatus:I

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    if-eq v0, v4, :cond_e

    const/4 v4, 0x5

    const v5, 0x7f080712

    const v6, 0x7f0601d8

    if-eq v0, v4, :cond_a

    const/4 v2, 0x6

    const v4, 0x7f08050e

    if-eq v0, v2, :cond_9

    const/4 v1, 0x7

    if-eq v0, v1, :cond_6

    goto/16 :goto_e

    .line 245
    :cond_6
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemStatusView;->imgStatusIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 246
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemStatusView;->imgStatusIndicator:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v4}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 247
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemStatusView;->tvStatusHint:Landroid/widget/TextView;

    const v1, 0x7f0f008d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 248
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemStatusView;->tvStatusHint:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/narvii/monetization/StoreItemStatusView;->activatedTextColorId:I

    if-eqz v2, :cond_7

    goto :goto_6

    :cond_7
    const v2, 0x7f0601d8

    :goto_6
    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 250
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemStatusView;->stableStatusContainer:Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/narvii/monetization/StoreItemStatusView;->activatedDrawableId:I

    if-eqz v2, :cond_8

    goto :goto_7

    :cond_8
    const v2, 0x7f080712

    :goto_7
    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_e

    .line 236
    :cond_9
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemStatusView;->imgStatusIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 237
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemStatusView;->imgStatusIndicator:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v4}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 238
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemStatusView;->tvStatusHint:Landroid/widget/TextView;

    const v2, 0x7f0f0f85

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 239
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemStatusView;->tvStatusHint:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v6}, Landroid/support/v4/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 242
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemStatusView;->stableStatusContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_e

    .line 229
    :cond_a
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemStatusView;->imgStatusIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 230
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemStatusView;->tvStatusHint:Landroid/widget/TextView;

    iget v1, p0, Lcom/narvii/monetization/StoreItemStatusView;->activatedStrId:I

    if-eqz v1, :cond_b

    goto :goto_8

    :cond_b
    const v1, 0x7f0f0062

    :goto_8
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 231
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemStatusView;->tvStatusHint:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/narvii/monetization/StoreItemStatusView;->activatedTextColorId:I

    if-eqz v2, :cond_c

    goto :goto_9

    :cond_c
    const v2, 0x7f0601d8

    :goto_9
    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 233
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemStatusView;->stableStatusContainer:Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/narvii/monetization/StoreItemStatusView;->activatedDrawableId:I

    if-eqz v2, :cond_d

    goto :goto_a

    :cond_d
    const v2, 0x7f080712

    :goto_a
    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_e

    .line 221
    :cond_e
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemStatusView;->imgStatusIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 222
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemStatusView;->imgStatusIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 223
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemStatusView;->tvStatusHint:Landroid/widget/TextView;

    iget v1, p0, Lcom/narvii/monetization/StoreItemStatusView;->activateStrId:I

    if-eqz v1, :cond_f

    goto :goto_b

    :cond_f
    const v1, 0x7f0f0061

    :goto_b
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 224
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemStatusView;->tvStatusHint:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 226
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemStatusView;->stableStatusContainer:Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/narvii/monetization/StoreItemStatusView;->activateDrawableId:I

    if-eqz v2, :cond_10

    goto :goto_c

    :cond_10
    const v2, 0x7f080710

    :goto_c
    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_e

    .line 215
    :cond_11
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemStatusView;->imgStatusIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 216
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemStatusView;->imgStatusIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 217
    invoke-direct {p0}, Lcom/narvii/monetization/StoreItemStatusView;->updateIdleTextView()V

    .line 218
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemStatusView;->stableStatusContainer:Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/narvii/monetization/StoreItemStatusView;->getDrawableId:I

    if-eqz v2, :cond_12

    goto :goto_d

    :cond_12
    const v2, 0x7f080755

    :goto_d
    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_e

    .line 253
    :cond_13
    invoke-virtual {p0}, Lcom/narvii/monetization/StoreItemStatusView;->isLoadingStatus()Z

    move-result v0

    if-eqz v0, :cond_14

    goto :goto_e

    .line 255
    :cond_14
    invoke-virtual {p0}, Lcom/narvii/monetization/StoreItemStatusView;->isDownloadingStatus()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 256
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemStatusView;->downloadStatusContainer:Landroid/widget/ProgressBar;

    iget v1, p0, Lcom/narvii/monetization/StoreItemStatusView;->curProgress:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_15
    :goto_e
    return-void
.end method


# virtual methods
.method public forceStatusExtraHintHeight(Z)V
    .locals 0

    .line 201
    iput-boolean p1, p0, Lcom/narvii/monetization/StoreItemStatusView;->forceStatusExtraHintHeight:Z

    return-void
.end method

.method public isDownloadingStatus()Z
    .locals 2

    .line 353
    iget v0, p0, Lcom/narvii/monetization/StoreItemStatusView;->curStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isLoadingStatus()Z
    .locals 2

    .line 349
    iget v0, p0, Lcom/narvii/monetization/StoreItemStatusView;->curStatus:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isStableStatus()Z
    .locals 2

    .line 341
    iget v0, p0, Lcom/narvii/monetization/StoreItemStatusView;->curStatus:I

    if-eqz v0, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 362
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090a9e

    if-eq p1, v0, :cond_0

    goto/16 :goto_0

    .line 364
    :cond_0
    iget-boolean p1, p0, Lcom/narvii/monetization/StoreItemStatusView;->preview:Z

    if-eqz p1, :cond_1

    .line 365
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0f10b1

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    return-void

    .line 368
    :cond_1
    iget p1, p0, Lcom/narvii/monetization/StoreItemStatusView;->curStatus:I

    const-string v0, "ActionButton"

    if-eqz p1, :cond_4

    const/4 v1, 0x4

    if-eq p1, v1, :cond_3

    const/4 v1, 0x5

    if-eq p1, v1, :cond_2

    goto :goto_0

    .line 382
    :cond_2
    iget-object p1, p0, Lcom/narvii/monetization/StoreItemStatusView;->viewClickListener:Lcom/narvii/monetization/StoreItemStatusView$ViewClickListener;

    if-eqz p1, :cond_5

    .line 383
    invoke-static {p0}, Lcom/narvii/logging/LogUtils;->getPageContext(Landroid/view/View;)Lcom/narvii/app/NVContext;

    move-result-object p1

    sget-object v1, Lcom/narvii/logging/ActSemantic;->use:Lcom/narvii/logging/ActSemantic;

    invoke-static {p1, v1}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 384
    iget-object p1, p0, Lcom/narvii/monetization/StoreItemStatusView;->viewClickListener:Lcom/narvii/monetization/StoreItemStatusView$ViewClickListener;

    invoke-interface {p1}, Lcom/narvii/monetization/StoreItemStatusView$ViewClickListener;->onClickUseItem()V

    goto :goto_0

    .line 376
    :cond_3
    iget-object p1, p0, Lcom/narvii/monetization/StoreItemStatusView;->viewClickListener:Lcom/narvii/monetization/StoreItemStatusView$ViewClickListener;

    if-eqz p1, :cond_5

    .line 377
    invoke-static {p0}, Lcom/narvii/logging/LogUtils;->getPageContext(Landroid/view/View;)Lcom/narvii/app/NVContext;

    move-result-object p1

    sget-object v1, Lcom/narvii/logging/ActSemantic;->activate:Lcom/narvii/logging/ActSemantic;

    invoke-static {p1, v1}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 378
    iget-object p1, p0, Lcom/narvii/monetization/StoreItemStatusView;->viewClickListener:Lcom/narvii/monetization/StoreItemStatusView$ViewClickListener;

    invoke-interface {p1}, Lcom/narvii/monetization/StoreItemStatusView$ViewClickListener;->onClickActivateItem()V

    goto :goto_0

    .line 370
    :cond_4
    iget-object p1, p0, Lcom/narvii/monetization/StoreItemStatusView;->viewClickListener:Lcom/narvii/monetization/StoreItemStatusView$ViewClickListener;

    if-eqz p1, :cond_5

    .line 371
    invoke-static {p0}, Lcom/narvii/logging/LogUtils;->getPageContext(Landroid/view/View;)Lcom/narvii/app/NVContext;

    move-result-object p1

    sget-object v1, Lcom/narvii/logging/ActSemantic;->purchase:Lcom/narvii/logging/ActSemantic;

    invoke-static {p1, v1}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 372
    iget-object p1, p0, Lcom/narvii/monetization/StoreItemStatusView;->viewClickListener:Lcom/narvii/monetization/StoreItemStatusView$ViewClickListener;

    invoke-interface {p1}, Lcom/narvii/monetization/StoreItemStatusView$ViewClickListener;->onClickGetItem()V

    :cond_5
    :goto_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 159
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f090a9e

    .line 160
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/monetization/StoreItemStatusView;->stableStatusContainer:Landroid/view/View;

    const v0, 0x7f090693

    .line 161
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/narvii/monetization/StoreItemStatusView;->loadingStatusContainer:Landroid/widget/ProgressBar;

    const v0, 0x7f090371

    .line 162
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/narvii/monetization/StoreItemStatusView;->downloadStatusContainer:Landroid/widget/ProgressBar;

    const v0, 0x7f090c00

    .line 163
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/monetization/StoreItemStatusView;->unavailableView:Landroid/view/View;

    const v0, 0x7f090aa2

    .line 165
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/narvii/monetization/StoreItemStatusView;->imgStatusIndicator:Landroid/widget/ImageView;

    const v0, 0x7f090aa1

    .line 166
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/narvii/monetization/StoreItemStatusView;->tvStatusHint:Landroid/widget/TextView;

    .line 167
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemStatusView;->stableStatusContainer:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090aa0

    .line 169
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/narvii/monetization/StoreItemStatusView;->tvStatusExtraHint:Landroid/widget/TextView;

    return-void
.end method

.method public setActivateDrawableId(I)V
    .locals 0

    .line 121
    iput p1, p0, Lcom/narvii/monetization/StoreItemStatusView;->activateDrawableId:I

    return-void
.end method

.method public setActivateStrId(I)V
    .locals 0

    .line 117
    iput p1, p0, Lcom/narvii/monetization/StoreItemStatusView;->activateStrId:I

    return-void
.end method

.method public setActivatedDrawableId(I)V
    .locals 0

    .line 105
    iput p1, p0, Lcom/narvii/monetization/StoreItemStatusView;->activatedDrawableId:I

    return-void
.end method

.method public setActivatedStrId(I)V
    .locals 0

    .line 101
    iput p1, p0, Lcom/narvii/monetization/StoreItemStatusView;->activatedStrId:I

    return-void
.end method

.method public setActivatedTextColorId(I)V
    .locals 0

    .line 97
    iput p1, p0, Lcom/narvii/monetization/StoreItemStatusView;->activatedTextColorId:I

    return-void
.end method

.method public setBigStyle(Z)V
    .locals 0

    .line 129
    iput-boolean p1, p0, Lcom/narvii/monetization/StoreItemStatusView;->bigStyle:Z

    return-void
.end method

.method public setController(Lcom/narvii/monetization/StoreItemOwnStatusController;)V
    .locals 0

    .line 185
    iput-object p1, p0, Lcom/narvii/monetization/StoreItemStatusView;->controller:Lcom/narvii/monetization/StoreItemOwnStatusController;

    return-void
.end method

.method public setDownloadProgressDrawableId(I)V
    .locals 0

    .line 125
    iput p1, p0, Lcom/narvii/monetization/StoreItemStatusView;->downloadProgressDrawableId:I

    return-void
.end method

.method public setGetDrawableId(I)V
    .locals 0

    .line 113
    iput p1, p0, Lcom/narvii/monetization/StoreItemStatusView;->getDrawableId:I

    return-void
.end method

.method public setGetStrId(I)V
    .locals 0

    .line 109
    iput p1, p0, Lcom/narvii/monetization/StoreItemStatusView;->getStrId:I

    return-void
.end method

.method public setPreview(Z)V
    .locals 0

    .line 92
    iput-boolean p1, p0, Lcom/narvii/monetization/StoreItemStatusView;->preview:Z

    return-void
.end method

.method public setViewClickListener(Lcom/narvii/monetization/StoreItemStatusView$ViewClickListener;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/narvii/monetization/StoreItemStatusView;->viewClickListener:Lcom/narvii/monetization/StoreItemStatusView$ViewClickListener;

    return-void
.end method

.method public updateDownloadingProgress(I)V
    .locals 1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    const/16 v0, 0x64

    if-le p1, v0, :cond_1

    const/16 p1, 0x64

    :cond_1
    const/4 v0, 0x2

    .line 195
    iput v0, p0, Lcom/narvii/monetization/StoreItemStatusView;->curStatus:I

    .line 196
    iput p1, p0, Lcom/narvii/monetization/StoreItemStatusView;->curProgress:I

    .line 197
    invoke-direct {p0}, Lcom/narvii/monetization/StoreItemStatusView;->updateViews()V

    return-void
.end method

.method public updateStatus(I)V
    .locals 1

    .line 176
    iput p1, p0, Lcom/narvii/monetization/StoreItemStatusView;->curStatus:I

    .line 177
    iget p1, p0, Lcom/narvii/monetization/StoreItemStatusView;->curStatus:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    .line 178
    iput p1, p0, Lcom/narvii/monetization/StoreItemStatusView;->curProgress:I

    .line 180
    :cond_0
    invoke-direct {p0}, Lcom/narvii/monetization/StoreItemStatusView;->updateViews()V

    return-void
.end method
