.class public Lcom/narvii/services/incubator/IncubatorCommunityLoggingServiceProvider;
.super Ljava/lang/Object;
.source "IncubatorCommunityLoggingServiceProvider.java"

# interfaces
.implements Lcom/narvii/services/AutostartServiceProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/services/incubator/IncubatorCommunityLoggingServiceProvider$CommunityLoggingService;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/services/AutostartServiceProvider<",
        "Lcom/narvii/services/incubator/IncubatorCommunityLoggingServiceProvider$CommunityLoggingService;",
        ">;"
    }
.end annotation


# static fields
.field public static final HEADLINE_ENTER:Lcom/narvii/util/statistics/TmpValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/statistics/TmpValue<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    new-instance v0, Lcom/narvii/util/statistics/TmpValue;

    invoke-direct {v0}, Lcom/narvii/util/statistics/TmpValue;-><init>()V

    sput-object v0, Lcom/narvii/services/incubator/IncubatorCommunityLoggingServiceProvider;->HEADLINE_ENTER:Lcom/narvii/util/statistics/TmpValue;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lcom/narvii/app/NVContext;)Lcom/narvii/services/incubator/IncubatorCommunityLoggingServiceProvider$CommunityLoggingService;
    .locals 3

    const-string v0, "config"

    .line 21
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/config/ConfigService;

    .line 22
    new-instance v0, Lcom/narvii/services/incubator/IncubatorCommunityLoggingServiceProvider$CommunityLoggingService;

    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object v1

    const-string v2, "logging"

    invoke-virtual {v1, v2}, Lcom/narvii/app/NVApplication;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/util/logging/LoggingService;

    invoke-virtual {p1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result p1

    invoke-direct {v0, v1, p1}, Lcom/narvii/services/incubator/IncubatorCommunityLoggingServiceProvider$CommunityLoggingService;-><init>(Lcom/narvii/util/logging/LoggingService;I)V

    return-object v0
.end method

.method public bridge synthetic create(Lcom/narvii/app/NVContext;)Ljava/lang/Object;
    .locals 0

    .line 16
    invoke-virtual {p0, p1}, Lcom/narvii/services/incubator/IncubatorCommunityLoggingServiceProvider;->create(Lcom/narvii/app/NVContext;)Lcom/narvii/services/incubator/IncubatorCommunityLoggingServiceProvider$CommunityLoggingService;

    move-result-object p1

    return-object p1
.end method

.method public destroy(Lcom/narvii/app/NVContext;Lcom/narvii/services/incubator/IncubatorCommunityLoggingServiceProvider$CommunityLoggingService;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic destroy(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 16
    check-cast p2, Lcom/narvii/services/incubator/IncubatorCommunityLoggingServiceProvider$CommunityLoggingService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/incubator/IncubatorCommunityLoggingServiceProvider;->destroy(Lcom/narvii/app/NVContext;Lcom/narvii/services/incubator/IncubatorCommunityLoggingServiceProvider$CommunityLoggingService;)V

    return-void
.end method

.method public pause(Lcom/narvii/app/NVContext;Lcom/narvii/services/incubator/IncubatorCommunityLoggingServiceProvider$CommunityLoggingService;)V
    .locals 4

    .line 44
    instance-of p1, p1, Lcom/narvii/services/incubator/CommunityContext;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 45
    iget-boolean p1, p2, Lcom/narvii/services/incubator/IncubatorCommunityLoggingServiceProvider$CommunityLoggingService;->headlineEnter:Z

    const-string v1, "AminoQuited"

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const-string v2, "eventOrigin"

    aput-object v2, p1, v0

    const/4 v2, 0x1

    .line 46
    sget-object v3, Lcom/narvii/util/logging/LoggingOrigin;->Headlines:Lcom/narvii/util/logging/LoggingOrigin;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    aput-object v3, p1, v2

    invoke-virtual {p2, v1, p1}, Lcom/narvii/util/logging/LoggingServiceWrapper;->logEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-array p1, v0, [Ljava/lang/Object;

    .line 48
    invoke-virtual {p2, v1, p1}, Lcom/narvii/util/logging/LoggingServiceWrapper;->logEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    :cond_1
    :goto_0
    iput-boolean v0, p2, Lcom/narvii/services/incubator/IncubatorCommunityLoggingServiceProvider$CommunityLoggingService;->headlineEnter:Z

    return-void
.end method

.method public bridge synthetic pause(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 16
    check-cast p2, Lcom/narvii/services/incubator/IncubatorCommunityLoggingServiceProvider$CommunityLoggingService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/incubator/IncubatorCommunityLoggingServiceProvider;->pause(Lcom/narvii/app/NVContext;Lcom/narvii/services/incubator/IncubatorCommunityLoggingServiceProvider$CommunityLoggingService;)V

    return-void
.end method

.method public resume(Lcom/narvii/app/NVContext;Lcom/narvii/services/incubator/IncubatorCommunityLoggingServiceProvider$CommunityLoggingService;)V
    .locals 3

    .line 32
    sget-object v0, Lcom/narvii/services/incubator/IncubatorCommunityLoggingServiceProvider;->HEADLINE_ENTER:Lcom/narvii/util/statistics/TmpValue;

    iget v1, p2, Lcom/narvii/services/incubator/IncubatorCommunityLoggingServiceProvider$CommunityLoggingService;->ndcId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/util/statistics/TmpValue;->compareAndRemove(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p2, Lcom/narvii/services/incubator/IncubatorCommunityLoggingServiceProvider$CommunityLoggingService;->headlineEnter:Z

    .line 33
    instance-of p1, p1, Lcom/narvii/services/incubator/CommunityContext;

    if-eqz p1, :cond_1

    .line 34
    iget-boolean p1, p2, Lcom/narvii/services/incubator/IncubatorCommunityLoggingServiceProvider$CommunityLoggingService;->headlineEnter:Z

    const/4 v0, 0x0

    const-string v1, "AminoEntered"

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const-string v2, "eventOrigin"

    aput-object v2, p1, v0

    const/4 v0, 0x1

    .line 35
    sget-object v2, Lcom/narvii/util/logging/LoggingOrigin;->Headlines:Lcom/narvii/util/logging/LoggingOrigin;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, v0

    invoke-virtual {p2, v1, p1}, Lcom/narvii/util/logging/LoggingServiceWrapper;->logEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-array p1, v0, [Ljava/lang/Object;

    .line 37
    invoke-virtual {p2, v1, p1}, Lcom/narvii/util/logging/LoggingServiceWrapper;->logEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic resume(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 16
    check-cast p2, Lcom/narvii/services/incubator/IncubatorCommunityLoggingServiceProvider$CommunityLoggingService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/incubator/IncubatorCommunityLoggingServiceProvider;->resume(Lcom/narvii/app/NVContext;Lcom/narvii/services/incubator/IncubatorCommunityLoggingServiceProvider$CommunityLoggingService;)V

    return-void
.end method

.method public start(Lcom/narvii/app/NVContext;Lcom/narvii/services/incubator/IncubatorCommunityLoggingServiceProvider$CommunityLoggingService;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic start(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 16
    check-cast p2, Lcom/narvii/services/incubator/IncubatorCommunityLoggingServiceProvider$CommunityLoggingService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/incubator/IncubatorCommunityLoggingServiceProvider;->start(Lcom/narvii/app/NVContext;Lcom/narvii/services/incubator/IncubatorCommunityLoggingServiceProvider$CommunityLoggingService;)V

    return-void
.end method

.method public stop(Lcom/narvii/app/NVContext;Lcom/narvii/services/incubator/IncubatorCommunityLoggingServiceProvider$CommunityLoggingService;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic stop(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 16
    check-cast p2, Lcom/narvii/services/incubator/IncubatorCommunityLoggingServiceProvider$CommunityLoggingService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/incubator/IncubatorCommunityLoggingServiceProvider;->stop(Lcom/narvii/app/NVContext;Lcom/narvii/services/incubator/IncubatorCommunityLoggingServiceProvider$CommunityLoggingService;)V

    return-void
.end method
