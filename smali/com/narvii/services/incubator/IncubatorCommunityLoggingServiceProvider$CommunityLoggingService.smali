.class public Lcom/narvii/services/incubator/IncubatorCommunityLoggingServiceProvider$CommunityLoggingService;
.super Lcom/narvii/util/logging/LoggingServiceWrapper;
.source "IncubatorCommunityLoggingServiceProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/services/incubator/IncubatorCommunityLoggingServiceProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CommunityLoggingService"
.end annotation


# instance fields
.field public headlineEnter:Z

.field public final ndcId:I


# direct methods
.method public constructor <init>(Lcom/narvii/util/logging/LoggingService;I)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "ndcId"

    aput-object v2, v0, v1

    .line 70
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-direct {p0, p1, v0}, Lcom/narvii/util/logging/LoggingServiceWrapper;-><init>(Lcom/narvii/util/logging/LoggingService;[Ljava/lang/Object;)V

    .line 71
    iput p2, p0, Lcom/narvii/services/incubator/IncubatorCommunityLoggingServiceProvider$CommunityLoggingService;->ndcId:I

    return-void
.end method
