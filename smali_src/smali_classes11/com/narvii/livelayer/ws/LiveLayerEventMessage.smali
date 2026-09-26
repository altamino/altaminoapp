.class public Lcom/narvii/livelayer/ws/LiveLayerEventMessage;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ndcId:I

.field public topic:Ljava/lang/String;

.field public userProfileCount:I

.field public userProfileList:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        contentAs = Lcom/narvii/model/User;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/model/User;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, -0x1

    .line 5
    .line 6
    iput v0, p0, Lcom/narvii/livelayer/ws/LiveLayerEventMessage;->ndcId:I

    .line 7
    return-void
.end method
