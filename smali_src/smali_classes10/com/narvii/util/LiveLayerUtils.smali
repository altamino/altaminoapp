.class public Lcom/narvii/util/LiveLayerUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final REPORT_ACTIVE:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method private static getBaseCoverMedia(Lcom/narvii/model/Feed;)Lcom/narvii/model/Media;
    .locals 1

    .line 1
    .line 2
    if-nez p0, :cond_0

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    .line 6
    .line 7
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/model/Feed;->firstMedia()Lcom/narvii/model/Media;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/narvii/model/Feed;->getBackgroundMedia()Lcom/narvii/model/Media;

    .line 14
    move-result-object p0

    .line 15
    return-object p0

    .line 16
    :cond_1
    return-object v0
.end method

.method public static getCoverMedia(Lcom/narvii/model/Feed;)Lcom/narvii/model/Media;
    .locals 3

    .line 1
    .line 2
    instance-of v0, p0, Lcom/narvii/model/Blog;

    .line 3
    .line 4
    if-eqz v0, :cond_3

    .line 5
    .line 6
    .line 7
    invoke-static {p0}, Lcom/narvii/util/LiveLayerUtils;->getBaseCoverMedia(Lcom/narvii/model/Feed;)Lcom/narvii/model/Media;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    check-cast p0, Lcom/narvii/model/Blog;

    .line 11
    .line 12
    if-nez v0, :cond_2

    .line 13
    .line 14
    iget v1, p0, Lcom/narvii/model/Blog;->type:I

    .line 15
    const/4 v2, 0x4

    .line 16
    .line 17
    if-ne v1, v2, :cond_2

    .line 18
    .line 19
    iget-object p0, p0, Lcom/narvii/model/Blog;->polloptList:Ljava/util/List;

    .line 20
    .line 21
    if-eqz p0, :cond_2

    .line 22
    .line 23
    .line 24
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 25
    move-result-object p0

    .line 26
    .line 27
    .line 28
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    move-result v1

    .line 30
    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    .line 34
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    move-result-object v1

    .line 36
    .line 37
    check-cast v1, Lcom/narvii/model/PollOption;

    .line 38
    .line 39
    if-eqz v1, :cond_0

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Lcom/narvii/model/PollOption;->firstMedia()Lcom/narvii/model/Media;

    .line 43
    move-result-object v2

    .line 44
    .line 45
    if-eqz v2, :cond_1

    .line 46
    return-object v2

    .line 47
    .line 48
    :cond_1
    iget-object v1, v1, Lcom/narvii/model/PollOption;->refObject:Lcom/narvii/model/Feed;

    .line 49
    .line 50
    if-eqz v1, :cond_0

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1}, Lcom/narvii/model/Feed;->firstMedia()Lcom/narvii/model/Media;

    .line 54
    move-result-object v1

    .line 55
    .line 56
    if-eqz v1, :cond_0

    .line 57
    return-object v1

    .line 58
    :cond_2
    return-object v0

    .line 59
    .line 60
    :cond_3
    instance-of v0, p0, Lcom/narvii/model/Item;

    .line 61
    .line 62
    if-eqz v0, :cond_4

    .line 63
    .line 64
    .line 65
    invoke-static {p0}, Lcom/narvii/util/LiveLayerUtils;->getBaseCoverMedia(Lcom/narvii/model/Feed;)Lcom/narvii/model/Media;

    .line 66
    move-result-object p0

    .line 67
    return-object p0

    .line 68
    :cond_4
    const/4 p0, 0x0

    .line 69
    return-object p0
.end method

.method public static isStatusOk(Lcom/narvii/model/NVObject;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    return v0

    .line 5
    .line 6
    .line 7
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/model/NVObject;->status()I

    .line 8
    move-result p0

    .line 9
    .line 10
    const/16 v1, 0x9

    .line 11
    .line 12
    if-eq p0, v1, :cond_1

    .line 13
    const/4 v0, 0x1

    .line 14
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
