.class public Lcom/narvii/services/EnterCommunityHelper;
.super Ljava/lang/Object;
.source "EnterCommunityHelper.java"

# interfaces
.implements Lcom/narvii/services/AutostartServiceProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/services/AutostartServiceProvider<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final SKIP_ENTER_COMMUNITY:Lcom/narvii/util/statistics/TmpValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/statistics/TmpValue<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final SOURCE:Lcom/narvii/util/statistics/TmpValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/statistics/TmpValue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    new-instance v0, Lcom/narvii/util/statistics/TmpValue;

    invoke-direct {v0}, Lcom/narvii/util/statistics/TmpValue;-><init>()V

    sput-object v0, Lcom/narvii/services/EnterCommunityHelper;->SOURCE:Lcom/narvii/util/statistics/TmpValue;

    .line 31
    new-instance v0, Lcom/narvii/util/statistics/TmpValue;

    invoke-direct {v0}, Lcom/narvii/util/statistics/TmpValue;-><init>()V

    sput-object v0, Lcom/narvii/services/EnterCommunityHelper;->SKIP_ENTER_COMMUNITY:Lcom/narvii/util/statistics/TmpValue;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$start$0(Lcom/narvii/theme/ThemePackService;ILcom/narvii/model/Community;)V
    .locals 1

    .line 99
    invoke-virtual {p2}, Lcom/narvii/model/Community;->themePackRevision()I

    move-result v0

    invoke-virtual {p2}, Lcom/narvii/model/Community;->themePackUrl()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, v0, p2}, Lcom/narvii/theme/ThemePackService;->require(IILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public create(Lcom/narvii/app/NVContext;)Ljava/lang/Object;
    .locals 0

    return-object p0
.end method

.method public destroy(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public logEnterCommunity(Lcom/narvii/app/NVContext;J)V
    .locals 0

    return-void
.end method

.method public pause(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public resume(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public start(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 4

    const-string p2, "config"

    .line 84
    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/config/ConfigService;

    .line 85
    invoke-virtual {p2}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result p2

    if-eqz p2, :cond_1

    const-string v0, "community"

    .line 87
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/community/CommunityService;

    .line 88
    invoke-virtual {v0, p2}, Lcom/narvii/community/CommunityService;->getCommunity(I)Lcom/narvii/model/Community;

    move-result-object v0

    const-string/jumbo v1, "themePack"

    .line 89
    invoke-interface {p1, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/theme/ThemePackService;

    .line 92
    invoke-virtual {v1, p2}, Lcom/narvii/theme/ThemePackService;->touchThemePack(I)V

    .line 94
    invoke-virtual {v1, p2}, Lcom/narvii/theme/ThemePackService;->getThemeInfo(I)Lcom/narvii/theme/ThemeInfo;

    move-result-object v2

    const-string v3, "affiliations"

    .line 95
    invoke-interface {p1, v3}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/community/AffiliationsService;

    .line 96
    invoke-virtual {p1, p2}, Lcom/narvii/community/AffiliationsService;->contains(I)Z

    move-result p1

    if-eqz v0, :cond_1

    .line 97
    invoke-virtual {v0}, Lcom/narvii/model/Community;->themePackUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    if-eqz p1, :cond_1

    if-eqz v2, :cond_0

    iget p1, v2, Lcom/narvii/theme/ThemeInfo;->revision:I

    invoke-virtual {v0}, Lcom/narvii/model/Community;->themePackRevision()I

    move-result v2

    if-eq p1, v2, :cond_1

    .line 98
    :cond_0
    invoke-virtual {v1, p2}, Lcom/narvii/theme/ThemePackService;->addToDownLoadList(I)V

    .line 99
    new-instance p1, Lcom/narvii/services/-$$Lambda$EnterCommunityHelper$5p6Hh-Q0x7GKrzFaIl5YGmmHGBY;

    invoke-direct {p1, v1, p2, v0}, Lcom/narvii/services/-$$Lambda$EnterCommunityHelper$5p6Hh-Q0x7GKrzFaIl5YGmmHGBY;-><init>(Lcom/narvii/theme/ThemePackService;ILcom/narvii/model/Community;)V

    invoke-static {p1}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public stop(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method
