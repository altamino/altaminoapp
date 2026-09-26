.class public Lcom/narvii/monetization/StoreItemStatusView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

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
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/narvii/monetization/StoreItemStatusView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/narvii/monetization/StoreItemStatusView;->bigStyle:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/narvii/monetization/StoreItemStatusView;->forceStatusExtraHintHeight:Z

    const v1, 0x7f0d0127

    .line 3
    invoke-static {p1, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 4
    sget-object v1, Lcom/narvii/amino/R$styleable;->StoreItemStatusView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 5
    invoke-virtual {p1, v0, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/narvii/monetization/StoreItemStatusView;->initStatus:I

    .line 6
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    iput-boolean v0, p0, Lcom/narvii/monetization/StoreItemStatusView;->forceStatusExtraHintHeight:Z

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string p2, "membership"

    .line 8
    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/wallet/MembershipService;

    iput-object p2, p0, Lcom/narvii/monetization/StoreItemStatusView;->membership:Lcom/narvii/wallet/MembershipService;

    .line 9
    new-instance p2, Lcom/narvii/monetization/utils/StoreItemHelper;

    invoke-direct {p2, p1}, Lcom/narvii/monetization/utils/StoreItemHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p2, p0, Lcom/narvii/monetization/StoreItemStatusView;->storeItemHelper:Lcom/narvii/monetization/utils/StoreItemHelper;

    :cond_0
    return-void
.end method

.method private isErrorStatus()Z
    .locals 2

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

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemStatusView;->controller:Lcom/narvii/monetization/StoreItemOwnStatusController;

    .line 3
    .line 4
    if-eqz v0, :cond_4

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/monetization/StoreItemOwnStatusController;->getStoreItem()Lcom/narvii/model/IStoreItem;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    goto :goto_0

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemStatusView;->controller:Lcom/narvii/monetization/StoreItemOwnStatusController;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/narvii/monetization/StoreItemOwnStatusController;->getStoreItem()Lcom/narvii/model/IStoreItem;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    .line 20
    invoke-interface {v0}, Lcom/narvii/model/IStoreItem;->getRestrictionInfo()Lcom/narvii/model/RestrictionInfo;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    iget-object v1, p0, Lcom/narvii/monetization/StoreItemStatusView;->controller:Lcom/narvii/monetization/StoreItemOwnStatusController;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/narvii/monetization/StoreItemOwnStatusController;->getStoreItem()Lcom/narvii/model/IStoreItem;

    .line 27
    move-result-object v1

    .line 28
    .line 29
    .line 30
    invoke-interface {v1}, Lcom/narvii/model/IStoreItem;->getOwnershipInfo()Lcom/narvii/model/OwnershipInfo;

    .line 31
    move-result-object v1

    .line 32
    .line 33
    iget-object v2, p0, Lcom/narvii/monetization/StoreItemStatusView;->storeItemHelper:Lcom/narvii/monetization/utils/StoreItemHelper;

    .line 34
    .line 35
    if-nez v2, :cond_1

    .line 36
    return-void

    .line 37
    .line 38
    .line 39
    :cond_1
    invoke-virtual {v0}, Lcom/narvii/model/RestrictionInfo;->hasAvailableDuration()Z

    .line 40
    move-result v0

    .line 41
    .line 42
    if-nez v0, :cond_2

    .line 43
    return-void

    .line 44
    .line 45
    :cond_2
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemStatusView;->storeItemHelper:Lcom/narvii/monetization/utils/StoreItemHelper;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v1}, Lcom/narvii/monetization/utils/StoreItemHelper;->getExpiredTimeSpannable(Lcom/narvii/model/OwnershipInfo;)Landroid/text/Spannable;

    .line 49
    move-result-object v0

    .line 50
    .line 51
    iget-boolean v2, p0, Lcom/narvii/monetization/StoreItemStatusView;->bigStyle:Z

    .line 52
    .line 53
    if-eqz v2, :cond_4

    .line 54
    .line 55
    .line 56
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 57
    move-result v2

    .line 58
    .line 59
    if-eqz v2, :cond_3

    .line 60
    goto :goto_0

    .line 61
    .line 62
    :cond_3
    iget-object v2, p0, Lcom/narvii/monetization/StoreItemStatusView;->tvStatusExtraHint:Landroid/widget/TextView;

    .line 63
    const/4 v3, 0x0

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 67
    .line 68
    iget-object v2, p0, Lcom/narvii/monetization/StoreItemStatusView;->tvStatusExtraHint:Landroid/widget/TextView;

    .line 69
    .line 70
    sget-object v3, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v2, v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 74
    .line 75
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemStatusView;->tvStatusExtraHint:Landroid/widget/TextView;

    .line 76
    .line 77
    iget-object v2, p0, Lcom/narvii/monetization/StoreItemStatusView;->storeItemHelper:Lcom/narvii/monetization/utils/StoreItemHelper;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v2, v1}, Lcom/narvii/monetization/utils/StoreItemHelper;->getExpiredTimeStringColor(Lcom/narvii/model/OwnershipInfo;)I

    .line 81
    move-result v1

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 85
    :cond_4
    :goto_0
    return-void
.end method

.method private updateIdleTextView()V
    .locals 8

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemStatusView;->controller:Lcom/narvii/monetization/StoreItemOwnStatusController;

    .line 3
    .line 4
    if-eqz v0, :cond_c

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/monetization/StoreItemOwnStatusController;->getStoreItem()Lcom/narvii/model/IStoreItem;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    goto/16 :goto_6

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemStatusView;->controller:Lcom/narvii/monetization/StoreItemOwnStatusController;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/narvii/monetization/StoreItemOwnStatusController;->getStoreItem()Lcom/narvii/model/IStoreItem;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    .line 21
    invoke-interface {v0}, Lcom/narvii/model/IStoreItem;->getRestrictionInfo()Lcom/narvii/model/RestrictionInfo;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    iget-object v1, p0, Lcom/narvii/monetization/StoreItemStatusView;->tvStatusHint:Landroid/widget/TextView;

    .line 25
    const/4 v2, -0x1

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 29
    .line 30
    const/high16 v1, 0x40800000    # 4.0f

    .line 31
    const/4 v2, 0x4

    .line 32
    .line 33
    .line 34
    const v3, 0x7f0800b0

    .line 35
    const/4 v4, 0x0

    .line 36
    .line 37
    if-eqz v0, :cond_9

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/narvii/model/RestrictionInfo;->isSupported()Z

    .line 41
    move-result v5

    .line 42
    .line 43
    if-nez v5, :cond_1

    .line 44
    .line 45
    goto/16 :goto_3

    .line 46
    .line 47
    :cond_1
    iget v5, p0, Lcom/narvii/monetization/StoreItemStatusView;->getStrId:I

    .line 48
    .line 49
    if-eqz v5, :cond_2

    .line 50
    .line 51
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemStatusView;->tvStatusHint:Landroid/widget/TextView;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 55
    move-result-object v1

    .line 56
    .line 57
    iget v2, p0, Lcom/narvii/monetization/StoreItemStatusView;->getStrId:I

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 61
    move-result-object v1

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    return-void

    .line 66
    .line 67
    :cond_2
    iget v5, v0, Lcom/narvii/model/RestrictionInfo;->restrictType:I

    .line 68
    .line 69
    if-ne v5, v2, :cond_8

    .line 70
    .line 71
    iget v2, v0, Lcom/narvii/model/RestrictionInfo;->discountStatus:I

    .line 72
    const/4 v5, 0x1

    .line 73
    .line 74
    if-ne v2, v5, :cond_4

    .line 75
    .line 76
    iget-object v2, p0, Lcom/narvii/monetization/StoreItemStatusView;->membership:Lcom/narvii/wallet/MembershipService;

    .line 77
    .line 78
    if-eqz v2, :cond_3

    .line 79
    .line 80
    .line 81
    invoke-virtual {v2}, Lcom/narvii/wallet/MembershipService;->isMembership()Z

    .line 82
    move-result v2

    .line 83
    .line 84
    if-eqz v2, :cond_3

    .line 85
    .line 86
    iget-object v2, p0, Lcom/narvii/monetization/StoreItemStatusView;->tvStatusHint:Landroid/widget/TextView;

    .line 87
    .line 88
    iget-object v6, p0, Lcom/narvii/monetization/StoreItemStatusView;->storeItemHelper:Lcom/narvii/monetization/utils/StoreItemHelper;

    .line 89
    .line 90
    iget v7, v0, Lcom/narvii/model/RestrictionInfo;->discountValue:I

    .line 91
    .line 92
    .line 93
    invoke-virtual {v6, v7, v0}, Lcom/narvii/monetization/utils/StoreItemHelper;->getPriceExpiredTimeCheck(ILcom/narvii/model/RestrictionInfo;)Ljava/lang/String;

    .line 94
    move-result-object v6

    .line 95
    .line 96
    .line 97
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    .line 99
    iget-boolean v2, p0, Lcom/narvii/monetization/StoreItemStatusView;->bigStyle:Z

    .line 100
    .line 101
    if-eqz v2, :cond_5

    .line 102
    .line 103
    iget-object v2, p0, Lcom/narvii/monetization/StoreItemStatusView;->tvStatusExtraHint:Landroid/widget/TextView;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 110
    move-result-object v2

    .line 111
    .line 112
    .line 113
    const v6, 0x7f121148

    .line 114
    .line 115
    .line 116
    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 117
    move-result-object v2

    .line 118
    .line 119
    new-instance v6, Lcom/narvii/util/text/NVText;

    .line 120
    .line 121
    .line 122
    invoke-direct {v6, v2}, Lcom/narvii/util/text/NVText;-><init>(Ljava/lang/CharSequence;)V

    .line 123
    .line 124
    new-array v2, v5, [Ljava/lang/CharSequence;

    .line 125
    .line 126
    iget-object v5, p0, Lcom/narvii/monetization/StoreItemStatusView;->storeItemHelper:Lcom/narvii/monetization/utils/StoreItemHelper;

    .line 127
    .line 128
    iget v0, v0, Lcom/narvii/model/RestrictionInfo;->restrictValue:I

    .line 129
    .line 130
    .line 131
    invoke-virtual {v5, v0}, Lcom/narvii/monetization/utils/StoreItemHelper;->getCoinsSpannableWithDeleteLine(I)Landroid/text/Spannable;

    .line 132
    move-result-object v0

    .line 133
    .line 134
    aput-object v0, v2, v4

    .line 135
    .line 136
    .line 137
    invoke-virtual {v6, v2}, Lcom/narvii/util/text/NVText;->format([Ljava/lang/CharSequence;)V

    .line 138
    .line 139
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemStatusView;->tvStatusExtraHint:Landroid/widget/TextView;

    .line 140
    .line 141
    sget-object v2, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v0, v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 145
    .line 146
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemStatusView;->tvStatusExtraHint:Landroid/widget/TextView;

    .line 147
    .line 148
    iget-object v2, p0, Lcom/narvii/monetization/StoreItemStatusView;->storeItemHelper:Lcom/narvii/monetization/utils/StoreItemHelper;

    .line 149
    const/4 v5, 0x0

    .line 150
    .line 151
    .line 152
    invoke-virtual {v2, v5}, Lcom/narvii/monetization/utils/StoreItemHelper;->getExpiredTimeStringColor(Lcom/narvii/model/OwnershipInfo;)I

    .line 153
    move-result v2

    .line 154
    .line 155
    .line 156
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 157
    goto :goto_0

    .line 158
    .line 159
    :cond_3
    iget-object v2, p0, Lcom/narvii/monetization/StoreItemStatusView;->tvStatusHint:Landroid/widget/TextView;

    .line 160
    .line 161
    iget-object v5, p0, Lcom/narvii/monetization/StoreItemStatusView;->storeItemHelper:Lcom/narvii/monetization/utils/StoreItemHelper;

    .line 162
    .line 163
    iget v6, v0, Lcom/narvii/model/RestrictionInfo;->restrictValue:I

    .line 164
    .line 165
    .line 166
    invoke-virtual {v5, v6, v0}, Lcom/narvii/monetization/utils/StoreItemHelper;->getPriceExpiredTimeCheck(ILcom/narvii/model/RestrictionInfo;)Ljava/lang/String;

    .line 167
    move-result-object v0

    .line 168
    .line 169
    .line 170
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    goto :goto_0

    .line 172
    .line 173
    :cond_4
    iget-object v2, p0, Lcom/narvii/monetization/StoreItemStatusView;->tvStatusHint:Landroid/widget/TextView;

    .line 174
    .line 175
    iget-object v5, p0, Lcom/narvii/monetization/StoreItemStatusView;->storeItemHelper:Lcom/narvii/monetization/utils/StoreItemHelper;

    .line 176
    .line 177
    iget v6, v0, Lcom/narvii/model/RestrictionInfo;->restrictValue:I

    .line 178
    .line 179
    .line 180
    invoke-virtual {v5, v6, v0}, Lcom/narvii/monetization/utils/StoreItemHelper;->getPriceExpiredTimeCheck(ILcom/narvii/model/RestrictionInfo;)Ljava/lang/String;

    .line 181
    move-result-object v0

    .line 182
    .line 183
    .line 184
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    .line 186
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemStatusView;->tvStatusHint:Landroid/widget/TextView;

    .line 187
    .line 188
    .line 189
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 190
    move-result v2

    .line 191
    .line 192
    if-eqz v2, :cond_6

    .line 193
    move v2, v4

    .line 194
    goto :goto_1

    .line 195
    :cond_6
    move v2, v3

    .line 196
    .line 197
    .line 198
    :goto_1
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 199
    move-result v5

    .line 200
    .line 201
    if-eqz v5, :cond_7

    .line 202
    goto :goto_2

    .line 203
    :cond_7
    move v3, v4

    .line 204
    .line 205
    .line 206
    :goto_2
    invoke-virtual {v0, v2, v4, v3, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 207
    .line 208
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemStatusView;->tvStatusHint:Landroid/widget/TextView;

    .line 209
    .line 210
    .line 211
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 212
    move-result-object v2

    .line 213
    .line 214
    .line 215
    invoke-static {v2, v1}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 216
    move-result v1

    .line 217
    float-to-int v1, v1

    .line 218
    .line 219
    .line 220
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 221
    return-void

    .line 222
    .line 223
    :cond_8
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemStatusView;->tvStatusHint:Landroid/widget/TextView;

    .line 224
    .line 225
    .line 226
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 227
    move-result-object v1

    .line 228
    .line 229
    .line 230
    const v2, 0x7f1207cb

    .line 231
    .line 232
    .line 233
    invoke-static {v1, v2}, Lcom/narvii/util/text/TextUtils;->getUpperCase(Landroid/content/Context;I)Ljava/lang/String;

    .line 234
    move-result-object v1

    .line 235
    .line 236
    .line 237
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 238
    return-void

    .line 239
    .line 240
    :cond_9
    :goto_3
    iget-object v5, p0, Lcom/narvii/monetization/StoreItemStatusView;->tvStatusHint:Landroid/widget/TextView;

    .line 241
    .line 242
    const-string v6, "- -"

    .line 243
    .line 244
    .line 245
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    .line 247
    if-eqz v0, :cond_c

    .line 248
    .line 249
    iget v0, v0, Lcom/narvii/model/RestrictionInfo;->restrictType:I

    .line 250
    .line 251
    if-ne v0, v2, :cond_c

    .line 252
    .line 253
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemStatusView;->tvStatusHint:Landroid/widget/TextView;

    .line 254
    .line 255
    .line 256
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 257
    move-result v2

    .line 258
    .line 259
    if-eqz v2, :cond_a

    .line 260
    move v2, v4

    .line 261
    goto :goto_4

    .line 262
    :cond_a
    move v2, v3

    .line 263
    .line 264
    .line 265
    :goto_4
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 266
    move-result v5

    .line 267
    .line 268
    if-eqz v5, :cond_b

    .line 269
    goto :goto_5

    .line 270
    :cond_b
    move v3, v4

    .line 271
    .line 272
    .line 273
    :goto_5
    invoke-virtual {v0, v2, v4, v3, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 274
    .line 275
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemStatusView;->tvStatusHint:Landroid/widget/TextView;

    .line 276
    .line 277
    .line 278
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 279
    move-result-object v2

    .line 280
    .line 281
    .line 282
    invoke-static {v2, v1}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 283
    move-result v1

    .line 284
    float-to-int v1, v1

    .line 285
    .line 286
    .line 287
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 288
    :cond_c
    :goto_6
    return-void
.end method

.method private updateViews()V
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemStatusView;->unavailableView:Landroid/view/View;

    .line 3
    .line 4
    iget v1, p0, Lcom/narvii/monetization/StoreItemStatusView;->curStatus:I

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    const/16 v3, 0x8

    .line 8
    .line 9
    if-ne v1, v3, :cond_0

    .line 10
    move v1, v2

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move v1, v3

    .line 13
    .line 14
    .line 15
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 16
    .line 17
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemStatusView;->stableStatusContainer:Landroid/view/View;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/narvii/monetization/StoreItemStatusView;->isStableStatus()Z

    .line 21
    move-result v1

    .line 22
    const/4 v4, 0x4

    .line 23
    .line 24
    if-eqz v1, :cond_1

    .line 25
    move v1, v2

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    move v1, v4

    .line 28
    .line 29
    .line 30
    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 31
    .line 32
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemStatusView;->loadingStatusContainer:Landroid/widget/ProgressBar;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/narvii/monetization/StoreItemStatusView;->isLoadingStatus()Z

    .line 36
    move-result v1

    .line 37
    .line 38
    if-eqz v1, :cond_2

    .line 39
    move v1, v2

    .line 40
    goto :goto_2

    .line 41
    :cond_2
    move v1, v3

    .line 42
    .line 43
    .line 44
    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 45
    .line 46
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemStatusView;->downloadStatusContainer:Landroid/widget/ProgressBar;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 50
    move-result-object v1

    .line 51
    .line 52
    iget v5, p0, Lcom/narvii/monetization/StoreItemStatusView;->downloadProgressDrawableId:I

    .line 53
    .line 54
    if-eqz v5, :cond_3

    .line 55
    goto :goto_3

    .line 56
    .line 57
    .line 58
    :cond_3
    const v5, 0x7f0809c8

    .line 59
    .line 60
    .line 61
    :goto_3
    invoke-static {v1, v5}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 62
    move-result-object v1

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 66
    .line 67
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemStatusView;->downloadStatusContainer:Landroid/widget/ProgressBar;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0}, Lcom/narvii/monetization/StoreItemStatusView;->isDownloadingStatus()Z

    .line 71
    move-result v1

    .line 72
    .line 73
    if-eqz v1, :cond_4

    .line 74
    move v1, v2

    .line 75
    goto :goto_4

    .line 76
    :cond_4
    move v1, v3

    .line 77
    .line 78
    .line 79
    :goto_4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 80
    .line 81
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemStatusView;->tvStatusExtraHint:Landroid/widget/TextView;

    .line 82
    .line 83
    iget-boolean v1, p0, Lcom/narvii/monetization/StoreItemStatusView;->bigStyle:Z

    .line 84
    .line 85
    if-eqz v1, :cond_5

    .line 86
    .line 87
    iget-boolean v1, p0, Lcom/narvii/monetization/StoreItemStatusView;->forceStatusExtraHintHeight:Z

    .line 88
    .line 89
    if-eqz v1, :cond_5

    .line 90
    move v1, v4

    .line 91
    goto :goto_5

    .line 92
    :cond_5
    move v1, v3

    .line 93
    .line 94
    .line 95
    :goto_5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0}, Lcom/narvii/monetization/StoreItemStatusView;->isStableStatus()Z

    .line 99
    move-result v0

    .line 100
    .line 101
    if-eqz v0, :cond_13

    .line 102
    .line 103
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemStatusView;->tvStatusHint:Landroid/widget/TextView;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 107
    .line 108
    iget v0, p0, Lcom/narvii/monetization/StoreItemStatusView;->curStatus:I

    .line 109
    const/4 v1, 0x0

    .line 110
    .line 111
    if-eqz v0, :cond_11

    .line 112
    .line 113
    if-eq v0, v4, :cond_e

    .line 114
    const/4 v4, 0x5

    .line 115
    .line 116
    .line 117
    const v5, 0x7f08090f

    .line 118
    .line 119
    .line 120
    const v6, 0x7f060446

    .line 121
    .line 122
    if-eq v0, v4, :cond_a

    .line 123
    const/4 v3, 0x6

    .line 124
    .line 125
    .line 126
    const v4, 0x7f08063d

    .line 127
    .line 128
    if-eq v0, v3, :cond_9

    .line 129
    const/4 v1, 0x7

    .line 130
    .line 131
    if-eq v0, v1, :cond_6

    .line 132
    .line 133
    goto/16 :goto_a

    .line 134
    .line 135
    :cond_6
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemStatusView;->imgStatusIndicator:Landroid/widget/ImageView;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 139
    .line 140
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemStatusView;->imgStatusIndicator:Landroid/widget/ImageView;

    .line 141
    .line 142
    .line 143
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 144
    move-result-object v1

    .line 145
    .line 146
    .line 147
    invoke-static {v1, v4}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 148
    move-result-object v1

    .line 149
    .line 150
    .line 151
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 152
    .line 153
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemStatusView;->tvStatusHint:Landroid/widget/TextView;

    .line 154
    .line 155
    .line 156
    const v1, 0x7f120096

    .line 157
    .line 158
    .line 159
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 160
    .line 161
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemStatusView;->tvStatusHint:Landroid/widget/TextView;

    .line 162
    .line 163
    .line 164
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 165
    move-result-object v1

    .line 166
    .line 167
    iget v2, p0, Lcom/narvii/monetization/StoreItemStatusView;->activatedTextColorId:I

    .line 168
    .line 169
    if-eqz v2, :cond_7

    .line 170
    move v6, v2

    .line 171
    .line 172
    .line 173
    :cond_7
    invoke-static {v1, v6}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 174
    move-result-object v1

    .line 175
    .line 176
    .line 177
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 178
    .line 179
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemStatusView;->stableStatusContainer:Landroid/view/View;

    .line 180
    .line 181
    .line 182
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 183
    move-result-object v1

    .line 184
    .line 185
    iget v2, p0, Lcom/narvii/monetization/StoreItemStatusView;->activatedDrawableId:I

    .line 186
    .line 187
    if-eqz v2, :cond_8

    .line 188
    move v5, v2

    .line 189
    .line 190
    .line 191
    :cond_8
    invoke-static {v1, v5}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 192
    move-result-object v1

    .line 193
    .line 194
    .line 195
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 196
    .line 197
    goto/16 :goto_a

    .line 198
    .line 199
    :cond_9
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemStatusView;->imgStatusIndicator:Landroid/widget/ImageView;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 203
    .line 204
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemStatusView;->imgStatusIndicator:Landroid/widget/ImageView;

    .line 205
    .line 206
    .line 207
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 208
    move-result-object v2

    .line 209
    .line 210
    .line 211
    invoke-static {v2, v4}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 212
    move-result-object v2

    .line 213
    .line 214
    .line 215
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 216
    .line 217
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemStatusView;->tvStatusHint:Landroid/widget/TextView;

    .line 218
    .line 219
    .line 220
    const v2, 0x7f121091

    .line 221
    .line 222
    .line 223
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 224
    .line 225
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemStatusView;->tvStatusHint:Landroid/widget/TextView;

    .line 226
    .line 227
    .line 228
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 229
    move-result-object v2

    .line 230
    .line 231
    .line 232
    invoke-static {v2, v6}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 233
    move-result-object v2

    .line 234
    .line 235
    .line 236
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 237
    .line 238
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemStatusView;->stableStatusContainer:Landroid/view/View;

    .line 239
    .line 240
    .line 241
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 242
    .line 243
    goto/16 :goto_a

    .line 244
    .line 245
    :cond_a
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemStatusView;->imgStatusIndicator:Landroid/widget/ImageView;

    .line 246
    .line 247
    .line 248
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 249
    .line 250
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemStatusView;->tvStatusHint:Landroid/widget/TextView;

    .line 251
    .line 252
    iget v1, p0, Lcom/narvii/monetization/StoreItemStatusView;->activatedStrId:I

    .line 253
    .line 254
    if-eqz v1, :cond_b

    .line 255
    goto :goto_6

    .line 256
    .line 257
    .line 258
    :cond_b
    const v1, 0x7f12006a

    .line 259
    .line 260
    .line 261
    :goto_6
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 262
    .line 263
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemStatusView;->tvStatusHint:Landroid/widget/TextView;

    .line 264
    .line 265
    .line 266
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 267
    move-result-object v1

    .line 268
    .line 269
    iget v2, p0, Lcom/narvii/monetization/StoreItemStatusView;->activatedTextColorId:I

    .line 270
    .line 271
    if-eqz v2, :cond_c

    .line 272
    move v6, v2

    .line 273
    .line 274
    .line 275
    :cond_c
    invoke-static {v1, v6}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 276
    move-result-object v1

    .line 277
    .line 278
    .line 279
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 280
    .line 281
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemStatusView;->stableStatusContainer:Landroid/view/View;

    .line 282
    .line 283
    .line 284
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 285
    move-result-object v1

    .line 286
    .line 287
    iget v2, p0, Lcom/narvii/monetization/StoreItemStatusView;->activatedDrawableId:I

    .line 288
    .line 289
    if-eqz v2, :cond_d

    .line 290
    move v5, v2

    .line 291
    .line 292
    .line 293
    :cond_d
    invoke-static {v1, v5}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 294
    move-result-object v1

    .line 295
    .line 296
    .line 297
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 298
    goto :goto_a

    .line 299
    .line 300
    :cond_e
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemStatusView;->imgStatusIndicator:Landroid/widget/ImageView;

    .line 301
    .line 302
    .line 303
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 304
    .line 305
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemStatusView;->imgStatusIndicator:Landroid/widget/ImageView;

    .line 306
    .line 307
    .line 308
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 309
    .line 310
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemStatusView;->tvStatusHint:Landroid/widget/TextView;

    .line 311
    .line 312
    iget v1, p0, Lcom/narvii/monetization/StoreItemStatusView;->activateStrId:I

    .line 313
    .line 314
    if-eqz v1, :cond_f

    .line 315
    goto :goto_7

    .line 316
    .line 317
    .line 318
    :cond_f
    const v1, 0x7f120069

    .line 319
    .line 320
    .line 321
    :goto_7
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 322
    .line 323
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemStatusView;->tvStatusHint:Landroid/widget/TextView;

    .line 324
    const/4 v1, -0x1

    .line 325
    .line 326
    .line 327
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 328
    .line 329
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemStatusView;->stableStatusContainer:Landroid/view/View;

    .line 330
    .line 331
    .line 332
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 333
    move-result-object v1

    .line 334
    .line 335
    iget v2, p0, Lcom/narvii/monetization/StoreItemStatusView;->activateDrawableId:I

    .line 336
    .line 337
    if-eqz v2, :cond_10

    .line 338
    goto :goto_8

    .line 339
    .line 340
    .line 341
    :cond_10
    const v2, 0x7f08090d

    .line 342
    .line 343
    .line 344
    :goto_8
    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 345
    move-result-object v1

    .line 346
    .line 347
    .line 348
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 349
    goto :goto_a

    .line 350
    .line 351
    :cond_11
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemStatusView;->imgStatusIndicator:Landroid/widget/ImageView;

    .line 352
    .line 353
    .line 354
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 355
    .line 356
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemStatusView;->imgStatusIndicator:Landroid/widget/ImageView;

    .line 357
    .line 358
    .line 359
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 360
    .line 361
    .line 362
    invoke-direct {p0}, Lcom/narvii/monetization/StoreItemStatusView;->updateIdleTextView()V

    .line 363
    .line 364
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemStatusView;->stableStatusContainer:Landroid/view/View;

    .line 365
    .line 366
    .line 367
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 368
    move-result-object v1

    .line 369
    .line 370
    iget v2, p0, Lcom/narvii/monetization/StoreItemStatusView;->getDrawableId:I

    .line 371
    .line 372
    if-eqz v2, :cond_12

    .line 373
    goto :goto_9

    .line 374
    .line 375
    .line 376
    :cond_12
    const v2, 0x7f080952

    .line 377
    .line 378
    .line 379
    :goto_9
    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 380
    move-result-object v1

    .line 381
    .line 382
    .line 383
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 384
    goto :goto_a

    .line 385
    .line 386
    .line 387
    :cond_13
    invoke-virtual {p0}, Lcom/narvii/monetization/StoreItemStatusView;->isLoadingStatus()Z

    .line 388
    move-result v0

    .line 389
    .line 390
    if-eqz v0, :cond_14

    .line 391
    goto :goto_a

    .line 392
    .line 393
    .line 394
    :cond_14
    invoke-virtual {p0}, Lcom/narvii/monetization/StoreItemStatusView;->isDownloadingStatus()Z

    .line 395
    move-result v0

    .line 396
    .line 397
    if-eqz v0, :cond_15

    .line 398
    .line 399
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemStatusView;->downloadStatusContainer:Landroid/widget/ProgressBar;

    .line 400
    .line 401
    iget v1, p0, Lcom/narvii/monetization/StoreItemStatusView;->curProgress:I

    .line 402
    .line 403
    .line 404
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 405
    :cond_15
    :goto_a
    return-void
.end method


# virtual methods
.method public forceStatusExtraHintHeight(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/monetization/StoreItemStatusView;->forceStatusExtraHintHeight:Z

    return-void
.end method

.method public isDownloadingStatus()Z
    .locals 2

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

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 4
    move-result p1

    .line 5
    .line 6
    .line 7
    const v0, 0x7f0a0d97

    .line 8
    .line 9
    if-eq p1, v0, :cond_0

    .line 10
    .line 11
    goto/16 :goto_0

    .line 12
    .line 13
    :cond_0
    iget-boolean p1, p0, Lcom/narvii/monetization/StoreItemStatusView;->preview:Z

    .line 14
    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    .line 22
    const v0, 0x7f1211ac

    .line 23
    const/4 v1, 0x0

    .line 24
    .line 25
    .line 26
    invoke-static {p1, v0, v1}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    .line 27
    move-result-object p1

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 31
    return-void

    .line 32
    .line 33
    :cond_1
    iget p1, p0, Lcom/narvii/monetization/StoreItemStatusView;->curStatus:I

    .line 34
    .line 35
    const-string v0, "ActionButton"

    .line 36
    .line 37
    if-eqz p1, :cond_4

    .line 38
    const/4 v1, 0x4

    .line 39
    .line 40
    if-eq p1, v1, :cond_3

    .line 41
    const/4 v1, 0x5

    .line 42
    .line 43
    if-eq p1, v1, :cond_2

    .line 44
    goto :goto_0

    .line 45
    .line 46
    :cond_2
    iget-object p1, p0, Lcom/narvii/monetization/StoreItemStatusView;->viewClickListener:Lcom/narvii/monetization/StoreItemStatusView$ViewClickListener;

    .line 47
    .line 48
    if-eqz p1, :cond_5

    .line 49
    .line 50
    .line 51
    invoke-static {p0}, Lcom/narvii/logging/LogUtils;->getPageContext(Landroid/view/View;)Lcom/narvii/app/NVContext;

    .line 52
    move-result-object p1

    .line 53
    .line 54
    sget-object v1, Lcom/narvii/logging/ActSemantic;->use:Lcom/narvii/logging/ActSemantic;

    .line 55
    .line 56
    .line 57
    invoke-static {p1, v1}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 58
    move-result-object p1

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 62
    move-result-object p1

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 66
    .line 67
    iget-object p1, p0, Lcom/narvii/monetization/StoreItemStatusView;->viewClickListener:Lcom/narvii/monetization/StoreItemStatusView$ViewClickListener;

    .line 68
    .line 69
    .line 70
    invoke-interface {p1}, Lcom/narvii/monetization/StoreItemStatusView$ViewClickListener;->onClickUseItem()V

    .line 71
    goto :goto_0

    .line 72
    .line 73
    :cond_3
    iget-object p1, p0, Lcom/narvii/monetization/StoreItemStatusView;->viewClickListener:Lcom/narvii/monetization/StoreItemStatusView$ViewClickListener;

    .line 74
    .line 75
    if-eqz p1, :cond_5

    .line 76
    .line 77
    .line 78
    invoke-static {p0}, Lcom/narvii/logging/LogUtils;->getPageContext(Landroid/view/View;)Lcom/narvii/app/NVContext;

    .line 79
    move-result-object p1

    .line 80
    .line 81
    sget-object v1, Lcom/narvii/logging/ActSemantic;->activate:Lcom/narvii/logging/ActSemantic;

    .line 82
    .line 83
    .line 84
    invoke-static {p1, v1}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 85
    move-result-object p1

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 89
    move-result-object p1

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 93
    .line 94
    iget-object p1, p0, Lcom/narvii/monetization/StoreItemStatusView;->viewClickListener:Lcom/narvii/monetization/StoreItemStatusView$ViewClickListener;

    .line 95
    .line 96
    .line 97
    invoke-interface {p1}, Lcom/narvii/monetization/StoreItemStatusView$ViewClickListener;->onClickActivateItem()V

    .line 98
    goto :goto_0

    .line 99
    .line 100
    :cond_4
    iget-object p1, p0, Lcom/narvii/monetization/StoreItemStatusView;->viewClickListener:Lcom/narvii/monetization/StoreItemStatusView$ViewClickListener;

    .line 101
    .line 102
    if-eqz p1, :cond_5

    .line 103
    .line 104
    .line 105
    invoke-static {p0}, Lcom/narvii/logging/LogUtils;->getPageContext(Landroid/view/View;)Lcom/narvii/app/NVContext;

    .line 106
    move-result-object p1

    .line 107
    .line 108
    sget-object v1, Lcom/narvii/logging/ActSemantic;->purchase:Lcom/narvii/logging/ActSemantic;

    .line 109
    .line 110
    .line 111
    invoke-static {p1, v1}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 112
    move-result-object p1

    .line 113
    .line 114
    .line 115
    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 116
    move-result-object p1

    .line 117
    .line 118
    .line 119
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 120
    .line 121
    iget-object p1, p0, Lcom/narvii/monetization/StoreItemStatusView;->viewClickListener:Lcom/narvii/monetization/StoreItemStatusView$ViewClickListener;

    .line 122
    .line 123
    .line 124
    invoke-interface {p1}, Lcom/narvii/monetization/StoreItemStatusView$ViewClickListener;->onClickGetItem()V

    .line 125
    :cond_5
    :goto_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 4
    .line 5
    .line 6
    const v0, 0x7f0a0d97

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    iput-object v0, p0, Lcom/narvii/monetization/StoreItemStatusView;->stableStatusContainer:Landroid/view/View;

    .line 13
    .line 14
    .line 15
    const v0, 0x7f0a081d

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    check-cast v0, Landroid/widget/ProgressBar;

    .line 22
    .line 23
    iput-object v0, p0, Lcom/narvii/monetization/StoreItemStatusView;->loadingStatusContainer:Landroid/widget/ProgressBar;

    .line 24
    .line 25
    .line 26
    const v0, 0x7f0a0459

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    check-cast v0, Landroid/widget/ProgressBar;

    .line 33
    .line 34
    iput-object v0, p0, Lcom/narvii/monetization/StoreItemStatusView;->downloadStatusContainer:Landroid/widget/ProgressBar;

    .line 35
    .line 36
    .line 37
    const v0, 0x7f0a0f23

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 41
    move-result-object v0

    .line 42
    .line 43
    iput-object v0, p0, Lcom/narvii/monetization/StoreItemStatusView;->unavailableView:Landroid/view/View;

    .line 44
    .line 45
    .line 46
    const v0, 0x7f0a0d9b

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 50
    move-result-object v0

    .line 51
    .line 52
    check-cast v0, Landroid/widget/ImageView;

    .line 53
    .line 54
    iput-object v0, p0, Lcom/narvii/monetization/StoreItemStatusView;->imgStatusIndicator:Landroid/widget/ImageView;

    .line 55
    .line 56
    .line 57
    const v0, 0x7f0a0d9a

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 61
    move-result-object v0

    .line 62
    .line 63
    check-cast v0, Landroid/widget/TextView;

    .line 64
    .line 65
    iput-object v0, p0, Lcom/narvii/monetization/StoreItemStatusView;->tvStatusHint:Landroid/widget/TextView;

    .line 66
    .line 67
    iget-object v0, p0, Lcom/narvii/monetization/StoreItemStatusView;->stableStatusContainer:Landroid/view/View;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    .line 72
    .line 73
    const v0, 0x7f0a0d99

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 77
    move-result-object v0

    .line 78
    .line 79
    check-cast v0, Landroid/widget/TextView;

    .line 80
    .line 81
    iput-object v0, p0, Lcom/narvii/monetization/StoreItemStatusView;->tvStatusExtraHint:Landroid/widget/TextView;

    .line 82
    return-void
.end method

.method public setActivateDrawableId(I)V
    .locals 0

    iput p1, p0, Lcom/narvii/monetization/StoreItemStatusView;->activateDrawableId:I

    return-void
.end method

.method public setActivateStrId(I)V
    .locals 0

    iput p1, p0, Lcom/narvii/monetization/StoreItemStatusView;->activateStrId:I

    return-void
.end method

.method public setActivatedDrawableId(I)V
    .locals 0

    iput p1, p0, Lcom/narvii/monetization/StoreItemStatusView;->activatedDrawableId:I

    return-void
.end method

.method public setActivatedStrId(I)V
    .locals 0

    iput p1, p0, Lcom/narvii/monetization/StoreItemStatusView;->activatedStrId:I

    return-void
.end method

.method public setActivatedTextColorId(I)V
    .locals 0

    iput p1, p0, Lcom/narvii/monetization/StoreItemStatusView;->activatedTextColorId:I

    return-void
.end method

.method public setBigStyle(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/monetization/StoreItemStatusView;->bigStyle:Z

    return-void
.end method

.method public setController(Lcom/narvii/monetization/StoreItemOwnStatusController;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/monetization/StoreItemStatusView;->controller:Lcom/narvii/monetization/StoreItemOwnStatusController;

    return-void
.end method

.method public setDownloadProgressDrawableId(I)V
    .locals 0

    iput p1, p0, Lcom/narvii/monetization/StoreItemStatusView;->downloadProgressDrawableId:I

    return-void
.end method

.method public setGetDrawableId(I)V
    .locals 0

    iput p1, p0, Lcom/narvii/monetization/StoreItemStatusView;->getDrawableId:I

    return-void
.end method

.method public setGetStrId(I)V
    .locals 0

    iput p1, p0, Lcom/narvii/monetization/StoreItemStatusView;->getStrId:I

    return-void
.end method

.method public setPreview(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/monetization/StoreItemStatusView;->preview:Z

    return-void
.end method

.method public setViewClickListener(Lcom/narvii/monetization/StoreItemStatusView$ViewClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/monetization/StoreItemStatusView;->viewClickListener:Lcom/narvii/monetization/StoreItemStatusView$ViewClickListener;

    return-void
.end method

.method public updateDownloadingProgress(I)V
    .locals 1

    .line 1
    .line 2
    if-gez p1, :cond_0

    .line 3
    const/4 p1, 0x0

    .line 4
    .line 5
    :cond_0
    const/16 v0, 0x64

    .line 6
    .line 7
    if-le p1, v0, :cond_1

    .line 8
    move p1, v0

    .line 9
    :cond_1
    const/4 v0, 0x2

    .line 10
    .line 11
    iput v0, p0, Lcom/narvii/monetization/StoreItemStatusView;->curStatus:I

    .line 12
    .line 13
    iput p1, p0, Lcom/narvii/monetization/StoreItemStatusView;->curProgress:I

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Lcom/narvii/monetization/StoreItemStatusView;->updateViews()V

    .line 17
    return-void
.end method

.method public updateStatus(I)V
    .locals 1

    .line 1
    .line 2
    iput p1, p0, Lcom/narvii/monetization/StoreItemStatusView;->curStatus:I

    .line 3
    const/4 v0, 0x2

    .line 4
    .line 5
    if-eq p1, v0, :cond_0

    .line 6
    const/4 p1, 0x0

    .line 7
    .line 8
    iput p1, p0, Lcom/narvii/monetization/StoreItemStatusView;->curProgress:I

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-direct {p0}, Lcom/narvii/monetization/StoreItemStatusView;->updateViews()V

    .line 12
    return-void
.end method
