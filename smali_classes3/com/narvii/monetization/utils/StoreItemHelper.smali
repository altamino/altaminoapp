.class public Lcom/narvii/monetization/utils/StoreItemHelper;
.super Ljava/lang/Object;
.source "StoreItemHelper.java"


# instance fields
.field private final context:Landroid/content/Context;

.field private final nvContext:Lcom/narvii/app/NVContext;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/narvii/monetization/utils/StoreItemHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 29
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/monetization/utils/StoreItemHelper;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getBoldNumberSpannable(I)Landroid/text/Spannable;
    .locals 4

    .line 119
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/text/TextUtils;->getBoldSpannableString(Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object p1

    .line 120
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    const v1, -0xe5e5e6

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {p1}, Landroid/text/Spannable;->length()I

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x21

    invoke-interface {p1, v0, v2, v1, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    return-object p1
.end method

.method public getCoinsSpannableWithDeleteLine(I)Landroid/text/Spannable;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 109
    iget-object p1, p0, Lcom/narvii/monetization/utils/StoreItemHelper;->nvContext:Lcom/narvii/app/NVContext;

    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    const v1, 0x7f0f0ccd

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 111
    :cond_0
    iget-object v2, p0, Lcom/narvii/monetization/utils/StoreItemHelper;->nvContext:Lcom/narvii/app/NVContext;

    invoke-interface {v2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0f0cc7

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v0

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 113
    :goto_0
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 114
    new-instance p1, Landroid/text/style/StrikethroughSpan;

    invoke-direct {p1}, Landroid/text/style/StrikethroughSpan;-><init>()V

    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v2

    const/16 v3, 0x21

    invoke-virtual {v1, p1, v0, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object v1
.end method

.method public getCoinsSpannableWithIcon(I)Landroid/text/Spannable;
    .locals 6

    .line 100
    new-instance v0, Landroid/text/SpannableString;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 101
    new-instance p1, Landroid/text/style/StyleSpan;

    const/4 v1, 0x1

    invoke-direct {p1, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v2

    const/16 v3, 0x21

    const/4 v4, 0x0

    invoke-virtual {v0, p1, v4, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 102
    new-instance p1, Lcom/narvii/util/CenterAlignImageSpan;

    iget-object v2, p0, Lcom/narvii/monetization/utils/StoreItemHelper;->nvContext:Lcom/narvii/app/NVContext;

    invoke-interface {v2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const v5, 0x7f08007a

    invoke-direct {p1, v2, v5}, Lcom/narvii/util/CenterAlignImageSpan;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, p1, v4, v1, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object v0
.end method

.method public getExpiredTimeSpannable(Lcom/narvii/model/OwnershipInfo;)Landroid/text/Spannable;
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 67
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/model/OwnershipInfo;->isExpired()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_4

    .line 68
    invoke-virtual {p1}, Lcom/narvii/model/OwnershipInfo;->daysExpired()I

    move-result p1

    if-nez p1, :cond_1

    .line 70
    new-instance p1, Landroid/text/SpannableString;

    iget-object v0, p0, Lcom/narvii/monetization/utils/StoreItemHelper;->context:Landroid/content/Context;

    const v1, 0x7f0f0b84

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    return-object p1

    :cond_1
    if-ne p1, v3, :cond_2

    .line 72
    new-instance p1, Landroid/text/SpannableString;

    iget-object v0, p0, Lcom/narvii/monetization/utils/StoreItemHelper;->context:Landroid/content/Context;

    const v1, 0x7f0f0b85

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    return-object p1

    :cond_2
    if-lez p1, :cond_3

    .line 74
    new-instance v0, Landroid/text/SpannableString;

    iget-object v1, p0, Lcom/narvii/monetization/utils/StoreItemHelper;->context:Landroid/content/Context;

    const v4, 0x7f0f0b86

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v2

    invoke-virtual {v1, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    return-object v0

    .line 76
    :cond_3
    new-instance p1, Landroid/text/SpannableString;

    iget-object v0, p0, Lcom/narvii/monetization/utils/StoreItemHelper;->context:Landroid/content/Context;

    const v1, 0x7f0f0b8a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    return-object p1

    .line 79
    :cond_4
    invoke-virtual {p1}, Lcom/narvii/model/OwnershipInfo;->daysExpired()I

    move-result p1

    neg-int p1, p1

    if-nez p1, :cond_5

    .line 81
    new-instance p1, Landroid/text/SpannableString;

    iget-object v0, p0, Lcom/narvii/monetization/utils/StoreItemHelper;->context:Landroid/content/Context;

    const v1, 0x7f0f0b87

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    return-object p1

    :cond_5
    if-ne p1, v3, :cond_6

    .line 83
    iget-object p1, p0, Lcom/narvii/monetization/utils/StoreItemHelper;->context:Landroid/content/Context;

    const v1, 0x7f0f103a

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 84
    new-instance v1, Lcom/narvii/util/text/NVText;

    invoke-direct {v1, p1}, Lcom/narvii/util/text/NVText;-><init>(Ljava/lang/CharSequence;)V

    .line 85
    invoke-virtual {v1, v0}, Lcom/narvii/util/text/NVText;->markAllEntries(Lcom/narvii/util/text/OnTagClickListener;)I

    new-array p1, v3, [Ljava/lang/CharSequence;

    .line 86
    invoke-virtual {p0, v3}, Lcom/narvii/monetization/utils/StoreItemHelper;->getBoldNumberSpannable(I)Landroid/text/Spannable;

    move-result-object v0

    aput-object v0, p1, v2

    invoke-virtual {v1, p1}, Lcom/narvii/util/text/NVText;->format([Ljava/lang/CharSequence;)V

    return-object v1

    :cond_6
    if-le p1, v3, :cond_7

    .line 89
    iget-object v1, p0, Lcom/narvii/monetization/utils/StoreItemHelper;->context:Landroid/content/Context;

    const v4, 0x7f0f103b

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 90
    new-instance v4, Lcom/narvii/util/text/NVText;

    invoke-direct {v4, v1}, Lcom/narvii/util/text/NVText;-><init>(Ljava/lang/CharSequence;)V

    .line 91
    invoke-virtual {v4, v0}, Lcom/narvii/util/text/NVText;->markAllEntries(Lcom/narvii/util/text/OnTagClickListener;)I

    new-array v0, v3, [Ljava/lang/CharSequence;

    .line 92
    invoke-virtual {p0, p1}, Lcom/narvii/monetization/utils/StoreItemHelper;->getBoldNumberSpannable(I)Landroid/text/Spannable;

    move-result-object p1

    aput-object p1, v0, v2

    invoke-virtual {v4, v0}, Lcom/narvii/util/text/NVText;->format([Ljava/lang/CharSequence;)V

    return-object v4

    :cond_7
    return-object v0
.end method

.method public getExpiredTimeString(Lcom/narvii/model/OwnershipInfo;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 38
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/model/OwnershipInfo;->isExpired()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_4

    .line 39
    invoke-virtual {p1}, Lcom/narvii/model/OwnershipInfo;->daysExpired()I

    move-result p1

    if-nez p1, :cond_1

    .line 41
    iget-object p1, p0, Lcom/narvii/monetization/utils/StoreItemHelper;->context:Landroid/content/Context;

    const v0, 0x7f0f0b84

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    move-object v0, p1

    goto :goto_1

    :cond_1
    if-ne p1, v3, :cond_2

    .line 43
    iget-object p1, p0, Lcom/narvii/monetization/utils/StoreItemHelper;->context:Landroid/content/Context;

    const v0, 0x7f0f0b85

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    if-lez p1, :cond_3

    .line 45
    iget-object v0, p0, Lcom/narvii/monetization/utils/StoreItemHelper;->context:Landroid/content/Context;

    const v1, 0x7f0f0b86

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v2

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 47
    :cond_3
    iget-object p1, p0, Lcom/narvii/monetization/utils/StoreItemHelper;->context:Landroid/content/Context;

    const v0, 0x7f0f0b8a

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 50
    :cond_4
    invoke-virtual {p1}, Lcom/narvii/model/OwnershipInfo;->daysExpired()I

    move-result p1

    neg-int p1, p1

    if-nez p1, :cond_5

    .line 52
    iget-object p1, p0, Lcom/narvii/monetization/utils/StoreItemHelper;->context:Landroid/content/Context;

    const v0, 0x7f0f0b87

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_5
    if-ne p1, v3, :cond_6

    .line 54
    iget-object p1, p0, Lcom/narvii/monetization/utils/StoreItemHelper;->context:Landroid/content/Context;

    const v0, 0x7f0f103a

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_6
    if-le p1, v3, :cond_7

    .line 56
    iget-object v0, p0, Lcom/narvii/monetization/utils/StoreItemHelper;->context:Landroid/content/Context;

    const v1, 0x7f0f103b

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v2

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_7
    :goto_1
    return-object v0
.end method

.method public getExpiredTimeStringColor(Lcom/narvii/model/OwnershipInfo;)I
    .locals 1

    if-eqz p1, :cond_0

    .line 125
    invoke-virtual {p1}, Lcom/narvii/model/OwnershipInfo;->isExpired()Z

    move-result v0

    if-nez v0, :cond_0

    .line 126
    invoke-virtual {p1}, Lcom/narvii/model/OwnershipInfo;->daysExpired()I

    move-result p1

    neg-int p1, p1

    if-ltz p1, :cond_0

    const/4 v0, 0x7

    if-gt p1, v0, :cond_0

    const p1, -0xbfc0

    return p1

    :cond_0
    const p1, -0x666667

    return p1
.end method

.method public getPriceExpiredTime(II)Ljava/lang/String;
    .locals 5

    if-gez p2, :cond_0

    .line 136
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const v0, 0x7f0f0e21

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez p2, :cond_1

    .line 138
    iget-object v4, p0, Lcom/narvii/monetization/utils/StoreItemHelper;->nvContext:Lcom/narvii/app/NVContext;

    invoke-interface {v4}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v4

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v3

    invoke-virtual {v4, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    if-ne p2, v3, :cond_2

    .line 140
    iget-object p2, p0, Lcom/narvii/monetization/utils/StoreItemHelper;->nvContext:Lcom/narvii/app/NVContext;

    invoke-interface {p2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f0f0e20

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-virtual {p2, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 141
    :cond_2
    rem-int/lit8 v4, p2, 0x1f

    if-nez v4, :cond_4

    .line 142
    div-int/lit8 p2, p2, 0x1f

    if-ne p2, v3, :cond_3

    .line 144
    iget-object p2, p0, Lcom/narvii/monetization/utils/StoreItemHelper;->nvContext:Lcom/narvii/app/NVContext;

    invoke-interface {p2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f0f0e1e

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-virtual {p2, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 146
    :cond_3
    iget-object v0, p0, Lcom/narvii/monetization/utils/StoreItemHelper;->nvContext:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const v4, 0x7f0f0e1f

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v3

    invoke-virtual {v0, v4, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 149
    :cond_4
    iget-object v4, p0, Lcom/narvii/monetization/utils/StoreItemHelper;->nvContext:Lcom/narvii/app/NVContext;

    invoke-interface {v4}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v4

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v3

    invoke-virtual {v4, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getPriceExpiredTimeCheck(ILcom/narvii/model/IBaseProduct;)Ljava/lang/String;
    .locals 1

    if-eqz p2, :cond_1

    .line 162
    invoke-interface {p2}, Lcom/narvii/model/IBaseProduct;->getAvailableDurationInDays()I

    move-result v0

    if-gez v0, :cond_0

    goto :goto_0

    .line 165
    :cond_0
    invoke-interface {p2}, Lcom/narvii/model/IBaseProduct;->getAvailableDurationInDays()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/narvii/monetization/utils/StoreItemHelper;->getPriceExpiredTime(II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 163
    :cond_1
    :goto_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getPriceExpiredTimeCheck(ILcom/narvii/model/RestrictionInfo;)Ljava/lang/String;
    .locals 1

    if-eqz p2, :cond_1

    .line 154
    invoke-virtual {p2}, Lcom/narvii/model/RestrictionInfo;->hasAvailableDuration()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 157
    :cond_0
    invoke-virtual {p2}, Lcom/narvii/model/RestrictionInfo;->getAvailableDurationInDays()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/narvii/monetization/utils/StoreItemHelper;->getPriceExpiredTime(II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 155
    :cond_1
    :goto_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
