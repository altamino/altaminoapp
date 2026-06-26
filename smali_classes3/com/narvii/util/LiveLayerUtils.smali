.class public Lcom/narvii/util/LiveLayerUtils;
.super Ljava/lang/Object;
.source "LiveLayerUtils.java"


# static fields
.field public static final REPORT_ACTIVE:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getBaseCoverMedia(Lcom/narvii/model/Feed;)Lcom/narvii/model/Media;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 91
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/model/Feed;->firstMedia()Lcom/narvii/model/Media;

    move-result-object v0

    if-nez v0, :cond_1

    .line 93
    invoke-virtual {p0}, Lcom/narvii/model/Feed;->getBackgroundMedia()Lcom/narvii/model/Media;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v0
.end method

.method public static getCoverMedia(Lcom/narvii/model/Feed;)Lcom/narvii/model/Media;
    .locals 3

    .line 99
    instance-of v0, p0, Lcom/narvii/model/Blog;

    if-eqz v0, :cond_3

    .line 100
    invoke-static {p0}, Lcom/narvii/util/LiveLayerUtils;->getBaseCoverMedia(Lcom/narvii/model/Feed;)Lcom/narvii/model/Media;

    move-result-object v0

    .line 101
    check-cast p0, Lcom/narvii/model/Blog;

    if-nez v0, :cond_2

    .line 102
    iget v1, p0, Lcom/narvii/model/Blog;->type:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    .line 103
    iget-object p0, p0, Lcom/narvii/model/Blog;->polloptList:Ljava/util/List;

    if-eqz p0, :cond_2

    .line 104
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/PollOption;

    if-eqz v1, :cond_0

    .line 106
    invoke-virtual {v1}, Lcom/narvii/model/PollOption;->firstMedia()Lcom/narvii/model/Media;

    move-result-object v2

    if-eqz v2, :cond_1

    return-object v2

    .line 111
    :cond_1
    iget-object v1, v1, Lcom/narvii/model/PollOption;->refObject:Lcom/narvii/model/Feed;

    if-eqz v1, :cond_0

    .line 112
    invoke-virtual {v1}, Lcom/narvii/model/Feed;->firstMedia()Lcom/narvii/model/Media;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_2
    return-object v0

    .line 123
    :cond_3
    instance-of v0, p0, Lcom/narvii/model/Item;

    if-eqz v0, :cond_4

    .line 124
    invoke-static {p0}, Lcom/narvii/util/LiveLayerUtils;->getBaseCoverMedia(Lcom/narvii/model/Feed;)Lcom/narvii/model/Media;

    move-result-object p0

    return-object p0

    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method

.method public static isStatusOk(Lcom/narvii/model/NVObject;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 83
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/model/NVObject;->status()I

    move-result p0

    const/16 v1, 0x9

    if-eq p0, v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static reportCommenting(Lcom/narvii/app/NVContext;ILjava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public static reportPolling(Lcom/narvii/app/NVContext;Lcom/narvii/model/Blog;)V
    .locals 0

    return-void
.end method

.method public static reportVoting(Lcom/narvii/app/NVContext;Lcom/narvii/model/NVObject;I)V
    .locals 0

    return-void
.end method
