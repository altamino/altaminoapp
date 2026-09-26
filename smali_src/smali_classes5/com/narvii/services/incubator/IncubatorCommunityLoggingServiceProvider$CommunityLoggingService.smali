.class public Lcom/narvii/services/incubator/IncubatorCommunityLoggingServiceProvider$CommunityLoggingService;
.super Lcom/narvii/util/logging/LoggingServiceWrapper;
.source "SourceFile"


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

    .line 1
    const/4 v0, 0x2

    .line 2
    .line 3
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    .line 6
    const-string v2, "ndcId"

    .line 7
    .line 8
    aput-object v2, v0, v1

    .line 9
    const/4 v1, 0x1

    .line 10
    .line 11
    .line 12
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    move-result-object v2

    .line 14
    .line 15
    aput-object v2, v0, v1

    .line 16
    .line 17
    .line 18
    invoke-direct {p0, p1, v0}, Lcom/narvii/util/logging/LoggingServiceWrapper;-><init>(Lcom/narvii/util/logging/LoggingService;[Ljava/lang/Object;)V

    .line 19
    .line 20
    iput p2, p0, Lcom/narvii/services/incubator/IncubatorCommunityLoggingServiceProvider$CommunityLoggingService;->ndcId:I

    .line 21
    return-void
.end method
