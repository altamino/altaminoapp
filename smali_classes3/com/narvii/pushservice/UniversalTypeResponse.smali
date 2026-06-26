.class public Lcom/narvii/pushservice/UniversalTypeResponse;
.super Lcom/narvii/model/api/ApiResponse;
.source "UniversalTypeResponse.java"


# instance fields
.field public blog:Lcom/narvii/model/Blog;

.field public item:Lcom/narvii/model/Item;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/narvii/model/api/ApiResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public mediaList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/narvii/model/Media;",
            ">;"
        }
    .end annotation

    .line 18
    iget-object v0, p0, Lcom/narvii/pushservice/UniversalTypeResponse;->blog:Lcom/narvii/model/Blog;

    if-eqz v0, :cond_0

    .line 19
    iget-object v0, v0, Lcom/narvii/model/Feed;->mediaList:Ljava/util/List;

    return-object v0

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/narvii/pushservice/UniversalTypeResponse;->item:Lcom/narvii/model/Item;

    if-eqz v0, :cond_1

    .line 21
    iget-object v0, v0, Lcom/narvii/model/Feed;->mediaList:Ljava/util/List;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method
