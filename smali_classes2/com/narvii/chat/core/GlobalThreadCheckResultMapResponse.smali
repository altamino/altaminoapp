.class public final Lcom/narvii/chat/core/GlobalThreadCheckResultMapResponse;
.super Lcom/narvii/model/api/ApiResponse;
.source "GlobalThreadCheckResultMapResponse.kt"


# instance fields
.field private threadCheckResultInCommunities:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/narvii/chat/core/ThreadCheckInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private treatedNdcIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/narvii/model/api/ApiResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public getThreadCheckResultInCommunities()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/narvii/chat/core/ThreadCheckInfo;",
            ">;>;"
        }
    .end annotation

    .line 11
    iget-object v0, p0, Lcom/narvii/chat/core/GlobalThreadCheckResultMapResponse;->threadCheckResultInCommunities:Ljava/util/HashMap;

    return-object v0
.end method

.method public getTreatedNdcIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 12
    iget-object v0, p0, Lcom/narvii/chat/core/GlobalThreadCheckResultMapResponse;->treatedNdcIds:Ljava/util/List;

    return-object v0
.end method

.method public setThreadCheckResultInCommunities(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/narvii/chat/core/ThreadCheckInfo;",
            ">;>;)V"
        }
    .end annotation

    .line 11
    iput-object p1, p0, Lcom/narvii/chat/core/GlobalThreadCheckResultMapResponse;->threadCheckResultInCommunities:Ljava/util/HashMap;

    return-void
.end method

.method public setTreatedNdcIds(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 12
    iput-object p1, p0, Lcom/narvii/chat/core/GlobalThreadCheckResultMapResponse;->treatedNdcIds:Ljava/util/List;

    return-void
.end method
