.class public Lcom/narvii/wallet/optinads/OptinAdsUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static breakParagraph(Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x0

    .line 11
    const/4 v3, 0x1

    .line 12
    move v4, v2

    .line 13
    move v5, v4

    .line 14
    move v6, v5

    .line 15
    move v7, v3

    .line 16
    .line 17
    :goto_0
    if-ge v4, v1, :cond_3

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    .line 21
    move-result v8

    .line 22
    .line 23
    const/16 v9, 0xa

    .line 24
    .line 25
    if-ne v8, v9, :cond_1

    .line 26
    .line 27
    add-int/lit8 v7, v7, 0x1

    .line 28
    .line 29
    if-lt v7, v9, :cond_0

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 33
    move-result-object v5

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    move v6, v2

    .line 38
    move v7, v6

    .line 39
    move v5, v4

    .line 40
    goto :goto_2

    .line 41
    :cond_0
    :goto_1
    move v6, v2

    .line 42
    goto :goto_2

    .line 43
    :cond_1
    add-int/2addr v6, v3

    .line 44
    .line 45
    const/16 v8, 0x2c

    .line 46
    .line 47
    if-lt v6, v8, :cond_2

    .line 48
    .line 49
    add-int/lit8 v7, v7, 0x1

    .line 50
    goto :goto_1

    .line 51
    .line 52
    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    .line 53
    goto :goto_0

    .line 54
    .line 55
    :cond_3
    if-le v4, v5, :cond_4

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 59
    move-result-object p0

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 63
    move-result-object v1

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 67
    move-result v1

    .line 68
    .line 69
    if-lez v1, :cond_4

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    :cond_4
    return-object v0
.end method

.method public static getBannerLift(Lcom/narvii/app/NVContext;I)I
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Lcom/narvii/wallet/optinads/OptinAds;->optin(Lcom/narvii/app/NVContext;I)Z

    .line 4
    move-result p1

    .line 5
    .line 6
    if-eqz p1, :cond_1

    .line 7
    .line 8
    instance-of p1, p0, Lcom/narvii/app/NVFragment;

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    move-object p1, p0

    .line 12
    .line 13
    check-cast p1, Lcom/narvii/app/NVFragment;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->isEmbedFragment()Z

    .line 17
    move-result p1

    .line 18
    .line 19
    if-nez p1, :cond_1

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-interface {p0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 23
    move-result-object p0

    .line 24
    .line 25
    const/high16 p1, 0x42480000    # 50.0f

    .line 26
    .line 27
    .line 28
    invoke-static {p0, p1}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    .line 29
    move-result p0

    .line 30
    return p0

    .line 31
    :cond_1
    const/4 p0, 0x0

    .line 32
    return p0
.end method

.method public static optinAdsLevel(Lcom/narvii/app/NVContext;ILjava/lang/String;Lcom/narvii/util/Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            "I",
            "Ljava/lang/String;",
            "Lcom/narvii/util/Callback<",
            "Lcom/narvii/model/api/AccountResponse;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, p2, p3, v0}, Lcom/narvii/wallet/optinads/OptinAdsUtil;->optinAdsLevel(Lcom/narvii/app/NVContext;ILjava/lang/String;Lcom/narvii/util/Callback;Ljava/lang/String;)V

    return-void
.end method

.method public static optinAdsLevel(Lcom/narvii/app/NVContext;ILjava/lang/String;Lcom/narvii/util/Callback;Ljava/lang/String;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            "I",
            "Ljava/lang/String;",
            "Lcom/narvii/util/Callback<",
            "Lcom/narvii/model/api/AccountResponse;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 2
    new-instance v2, Lcom/narvii/util/dialog/ProgressDialog;

    invoke-interface {p0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 3
    invoke-virtual {v2}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    const-string v0, "api"

    .line 4
    invoke-interface {p0, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/narvii/util/http/ApiService;

    .line 5
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    const-string v1, "/wallet/ads/config"

    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    const-string v1, "adsLevel"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v9

    .line 6
    new-instance v10, Lcom/narvii/wallet/optinads/OptinAdsUtil$1;

    move-object v0, v10

    move-object v1, p0

    move-object v3, p3

    move-object v4, p0

    move v5, p1

    move-object v6, p2

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/narvii/wallet/optinads/OptinAdsUtil$1;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/util/dialog/ProgressDialog;Lcom/narvii/util/Callback;Lcom/narvii/app/NVContext;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v9, v10}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method

.method public static setupAdapter(Lcom/narvii/app/NVContext;Lcom/narvii/list/NVAdapter;IILjava/lang/String;Z)Lcom/narvii/list/NVAdapter;
    .locals 1

    const/4 v0, 0x1

    .line 2
    invoke-static {p0, v0}, Lcom/narvii/wallet/optinads/OptinAds;->optin(Lcom/narvii/app/NVContext;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Lcom/narvii/wallet/optinads/OptinAdsAdapter;

    invoke-direct {v0, p0, p2, p3, p4}, Lcom/narvii/wallet/optinads/OptinAdsAdapter;-><init>(Lcom/narvii/app/NVContext;IILjava/lang/String;)V

    iput-boolean p5, v0, Lcom/narvii/wallet/optinads/OptinAdsAdapter;->addDivider:Z

    .line 4
    invoke-static {p0}, Lcom/narvii/util/Utils;->isDarkTheme(Lcom/narvii/app/NVContext;)Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/narvii/wallet/optinads/OptinAdsAdapter;->setDarkTheme(Z)V

    .line 5
    invoke-virtual {v0, p1}, Lcom/narvii/list/ProxyAdapter;->setAdapter(Landroid/widget/ListAdapter;)V

    return-object v0

    :cond_0
    return-object p1
.end method

.method public static setupAdapter(Lcom/narvii/app/NVContext;Lcom/narvii/list/NVAdapter;Ljava/lang/String;Z)Lcom/narvii/list/NVAdapter;
    .locals 6

    const/4 v2, 0x5

    const/4 v3, 0x5

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move v5, p3

    .line 1
    invoke-static/range {v0 .. v5}, Lcom/narvii/wallet/optinads/OptinAdsUtil;->setupAdapter(Lcom/narvii/app/NVContext;Lcom/narvii/list/NVAdapter;IILjava/lang/String;Z)Lcom/narvii/list/NVAdapter;

    move-result-object p0

    return-object p0
.end method
