.class public Lcom/narvii/semicontext/SemiConfigService;
.super Lcom/narvii/config/ConfigService;
.source "SemiConfigService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/semicontext/SemiConfigService$SemiTheme;
    }
.end annotation


# instance fields
.field private communityId:I

.field private context:Lcom/narvii/app/NVContext;

.field private theme:Lcom/narvii/config/ConfigTheme;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;I)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/narvii/config/ConfigService;-><init>(Lcom/narvii/app/NVContext;)V

    .line 23
    iput-object p1, p0, Lcom/narvii/semicontext/SemiConfigService;->context:Lcom/narvii/app/NVContext;

    .line 24
    iput p2, p0, Lcom/narvii/semicontext/SemiConfigService;->communityId:I

    .line 25
    new-instance p1, Lcom/narvii/semicontext/SemiConfigService$SemiTheme;

    invoke-direct {p1, p0}, Lcom/narvii/semicontext/SemiConfigService$SemiTheme;-><init>(Lcom/narvii/semicontext/SemiConfigService;)V

    iput-object p1, p0, Lcom/narvii/semicontext/SemiConfigService;->theme:Lcom/narvii/config/ConfigTheme;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/semicontext/SemiConfigService;)Lcom/narvii/app/NVContext;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/narvii/semicontext/SemiConfigService;->context:Lcom/narvii/app/NVContext;

    return-object p0
.end method


# virtual methods
.method public getCommunityId()I
    .locals 1

    .line 30
    iget v0, p0, Lcom/narvii/semicontext/SemiConfigService;->communityId:I

    return v0
.end method

.method protected getConfigRequest()Lcom/narvii/util/http/ApiRequest;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTheme()Lcom/narvii/config/ConfigTheme;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/narvii/semicontext/SemiConfigService;->theme:Lcom/narvii/config/ConfigTheme;

    return-object v0
.end method
