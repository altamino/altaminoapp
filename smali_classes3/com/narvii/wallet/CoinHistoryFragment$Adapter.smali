.class Lcom/narvii/wallet/CoinHistoryFragment$Adapter;
.super Lcom/narvii/list/NVPagedAdapter;
.source "CoinHistoryFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/wallet/CoinHistoryFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/list/NVPagedAdapter<",
        "Lcom/narvii/wallet/CoinHistory;",
        "Lcom/narvii/wallet/CoinHistoryListResponse;",
        ">;"
    }
.end annotation


# instance fields
.field fmt:Ljava/text/DateFormat;

.field final synthetic this$0:Lcom/narvii/wallet/CoinHistoryFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/wallet/CoinHistoryFragment;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/narvii/wallet/CoinHistoryFragment$Adapter;->this$0:Lcom/narvii/wallet/CoinHistoryFragment;

    .line 88
    invoke-direct {p0, p1}, Lcom/narvii/list/NVPagedAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    const/4 p1, 0x3

    .line 85
    invoke-static {p1}, Ljava/text/DateFormat;->getTimeInstance(I)Ljava/text/DateFormat;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/wallet/CoinHistoryFragment$Adapter;->fmt:Ljava/text/DateFormat;

    return-void
.end method

.method private getCornerRadius(Lcom/narvii/wallet/CoinHistory;)I
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 121
    :cond_0
    iget p1, p1, Lcom/narvii/wallet/CoinHistory;->sourceType:I

    const/16 v1, 0x10

    if-ne p1, v1, :cond_1

    const/16 p1, 0x2710

    return p1

    :cond_1
    return v0
.end method


# virtual methods
.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 1

    .line 103
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/wallet/CoinHistoryFragment$Adapter;->this$0:Lcom/narvii/wallet/CoinHistoryFragment;

    iget-boolean v0, v0, Lcom/narvii/wallet/CoinHistoryFragment;->businessWallet:Z

    if-eqz v0, :cond_0

    const-string v0, "/wallet/business-coin/history"

    goto :goto_0

    :cond_0
    const-string v0, "/wallet/coin/history"

    :goto_0
    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    return-object p1
.end method

.method protected dataType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/narvii/wallet/CoinHistory;",
            ">;"
        }
    .end annotation

    .line 93
    const-class v0, Lcom/narvii/wallet/CoinHistory;

    return-object v0
.end method

.method protected getItemType(Ljava/lang/Object;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected getItemTypeCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11

    .line 129
    check-cast p1, Lcom/narvii/wallet/CoinHistory;

    const v0, 0x7f0b06f1

    .line 130
    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p2

    const p3, 0x7f090562

    .line 132
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/narvii/widget/NVImageView;

    .line 133
    invoke-virtual {p1}, Lcom/narvii/wallet/CoinHistory;->icon()Ljava/lang/String;

    move-result-object v0

    .line 134
    iget v1, p1, Lcom/narvii/wallet/CoinHistory;->sourceType:I

    const/4 v2, 0x0

    const/16 v3, 0x10

    if-ne v1, v3, :cond_0

    .line 135
    iget-object v1, p0, Lcom/narvii/wallet/CoinHistoryFragment$Adapter;->this$0:Lcom/narvii/wallet/CoinHistoryFragment;

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0807ec

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/narvii/widget/NVImageView;->setDefaultDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 136
    iget-object v1, p0, Lcom/narvii/wallet/CoinHistoryFragment$Adapter;->this$0:Lcom/narvii/wallet/CoinHistoryFragment;

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/narvii/widget/NVImageView;->setErrorDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 138
    :cond_0
    invoke-virtual {p3, v2}, Lcom/narvii/widget/NVImageView;->setDefaultDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 139
    invoke-virtual {p3, v2}, Lcom/narvii/widget/NVImageView;->setErrorDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 141
    :goto_0
    invoke-virtual {p3, v0}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 142
    invoke-direct {p0, p1}, Lcom/narvii/wallet/CoinHistoryFragment$Adapter;->getCornerRadius(Lcom/narvii/wallet/CoinHistory;)I

    move-result v0

    invoke-virtual {p3, v0}, Lcom/narvii/widget/NVImageView;->setCornerRadius(I)V

    const p3, 0x7f090b9a

    .line 144
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 145
    invoke-virtual {p1}, Lcom/narvii/wallet/CoinHistory;->description()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p3, 0x7f090b5b

    .line 147
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 148
    invoke-virtual {p1}, Lcom/narvii/wallet/CoinHistory;->subtitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    invoke-virtual {p1}, Lcom/narvii/wallet/CoinHistory;->subtitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    const p3, 0x7f09032e

    .line 151
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 152
    iget-object v0, p1, Lcom/narvii/wallet/CoinHistory;->createdTime:Ljava/util/Date;

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lcom/narvii/wallet/CoinHistoryFragment$Adapter;->fmt:Ljava/text/DateFormat;

    invoke-virtual {v2, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p3, 0x7f0900a6

    .line 154
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 157
    iget-wide v2, p1, Lcom/narvii/wallet/CoinHistory;->originCoinsFloat:D

    const-string v0, "+"

    const-wide/16 v4, 0x0

    cmpl-double v6, v2, v4

    if-ltz v6, :cond_3

    .line 158
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p1, Lcom/narvii/wallet/CoinHistory;->originCoinsFloat:D

    invoke-static {v6, v7}, Lcom/narvii/wallet/IabUtils;->formatCoins(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const v3, -0xa13450

    goto :goto_3

    .line 161
    :cond_3
    invoke-static {v2, v3}, Lcom/narvii/wallet/IabUtils;->formatCoins(D)Ljava/lang/String;

    move-result-object v2

    const v3, -0xa6a1

    .line 164
    :goto_3
    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    invoke-virtual {p3, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const p3, 0x7f090b4a

    .line 168
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 169
    iget-object v2, p0, Lcom/narvii/wallet/CoinHistoryFragment$Adapter;->this$0:Lcom/narvii/wallet/CoinHistoryFragment;

    const v3, 0x7f0f10a8

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    iget-wide v8, p1, Lcom/narvii/wallet/CoinHistory;->taxCoinsFloat:D

    invoke-static {v8, v9}, Lcom/narvii/wallet/IabUtils;->formatCoins(D)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v1

    invoke-virtual {v2, v3, v7}, Landroid/support/v4/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    iget-wide v2, p1, Lcom/narvii/wallet/CoinHistory;->taxCoinsFloat:D

    cmpl-double v7, v2, v4

    if-eqz v7, :cond_4

    const/4 v2, 0x1

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    invoke-static {p3, v2}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    const p3, 0x7f09009e

    .line 172
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 173
    iget-object v2, p0, Lcom/narvii/wallet/CoinHistoryFragment$Adapter;->this$0:Lcom/narvii/wallet/CoinHistoryFragment;

    const v3, 0x7f0f0106

    new-array v7, v6, [Ljava/lang/Object;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/narvii/wallet/CoinHistory;->getBonusCoinsFloat()D

    move-result-wide v9

    invoke-static {v9, v10}, Lcom/narvii/wallet/IabUtils;->formatCoins(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v1

    invoke-virtual {v2, v3, v7}, Landroid/support/v4/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    invoke-virtual {p1}, Lcom/narvii/wallet/CoinHistory;->getBonusCoinsFloat()D

    move-result-wide v2

    cmpl-double p1, v2, v4

    if-eqz p1, :cond_5

    const/4 v1, 0x1

    :cond_5
    invoke-static {p3, v1}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    return-object p2
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    .line 181
    instance-of v0, p3, Lcom/narvii/wallet/CoinHistory;

    if-eqz v0, :cond_1

    .line 182
    check-cast p3, Lcom/narvii/wallet/CoinHistory;

    .line 183
    invoke-virtual {p3}, Lcom/narvii/wallet/CoinHistory;->deepLink()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 186
    :try_start_0
    new-instance p2, Landroid/content/Intent;

    const-string p3, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p2, p3, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string p1, "Source"

    .line 187
    iget-object p3, p0, Lcom/narvii/wallet/CoinHistoryFragment$Adapter;->this$0:Lcom/narvii/wallet/CoinHistoryFragment;

    iget-object p3, p3, Lcom/narvii/wallet/CoinHistoryFragment;->source:Ljava/lang/String;

    invoke-virtual {p2, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 188
    invoke-virtual {p0, p2}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    const/4 p1, 0x1

    return p1

    .line 194
    :cond_1
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVPagedAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method protected responseType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/narvii/wallet/CoinHistoryListResponse;",
            ">;"
        }
    .end annotation

    .line 98
    const-class v0, Lcom/narvii/wallet/CoinHistoryListResponse;

    return-object v0
.end method
