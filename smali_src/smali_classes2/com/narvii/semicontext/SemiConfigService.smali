.class public Lcom/narvii/semicontext/SemiConfigService;
.super Lcom/narvii/config/ConfigService;
.source "SourceFile"


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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/config/ConfigService;-><init>(Lcom/narvii/app/NVContext;)V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/narvii/semicontext/SemiConfigService;->context:Lcom/narvii/app/NVContext;

    .line 6
    .line 7
    iput p2, p0, Lcom/narvii/semicontext/SemiConfigService;->communityId:I

    .line 8
    .line 9
    new-instance p1, Lcom/narvii/semicontext/SemiConfigService$SemiTheme;

    .line 10
    .line 11
    .line 12
    invoke-direct {p1, p0}, Lcom/narvii/semicontext/SemiConfigService$SemiTheme;-><init>(Lcom/narvii/semicontext/SemiConfigService;)V

    .line 13
    .line 14
    iput-object p1, p0, Lcom/narvii/semicontext/SemiConfigService;->theme:Lcom/narvii/config/ConfigTheme;

    .line 15
    return-void
.end method

.method static bridge synthetic f(Lcom/narvii/semicontext/SemiConfigService;)Lcom/narvii/app/NVContext;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/semicontext/SemiConfigService;->context:Lcom/narvii/app/NVContext;

    return-object p0
.end method


# virtual methods
.method public getCommunityId()I
    .locals 1

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

    iget-object v0, p0, Lcom/narvii/semicontext/SemiConfigService;->theme:Lcom/narvii/config/ConfigTheme;

    return-object v0
.end method
