.class public Lcom/narvii/scene/model/SceneCoverImageInfo;
.super Ljava/lang/Object;
.source "SceneCoverImageInfo.java"


# static fields
.field public static final FROM_CUSTOM:I = 0x2

.field public static final FROM_NET:I = 0x3

.field public static final FROM_SCENE:I = 0x0

.field public static final FROM_SCREEN_SHOT:I = 0x1


# instance fields
.field public customUrl:Ljava/lang/String;

.field public defaultUrl:Ljava/lang/String;

.field public from:I

.field public netUrl:Ljava/lang/String;

.field public screenshotUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, ""

    const/4 v1, 0x0

    .line 21
    invoke-direct {p0, v0, v1}, Lcom/narvii/scene/model/SceneCoverImageInfo;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput p2, p0, Lcom/narvii/scene/model/SceneCoverImageInfo;->from:I

    const-string v0, ""

    .line 26
    iput-object v0, p0, Lcom/narvii/scene/model/SceneCoverImageInfo;->defaultUrl:Ljava/lang/String;

    .line 27
    iput-object v0, p0, Lcom/narvii/scene/model/SceneCoverImageInfo;->screenshotUrl:Ljava/lang/String;

    .line 28
    iput-object v0, p0, Lcom/narvii/scene/model/SceneCoverImageInfo;->customUrl:Ljava/lang/String;

    .line 29
    iput-object v0, p0, Lcom/narvii/scene/model/SceneCoverImageInfo;->netUrl:Ljava/lang/String;

    if-eqz p1, :cond_4

    if-eqz p2, :cond_3

    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 42
    :cond_0
    iput-object p1, p0, Lcom/narvii/scene/model/SceneCoverImageInfo;->netUrl:Ljava/lang/String;

    goto :goto_0

    .line 39
    :cond_1
    iput-object p1, p0, Lcom/narvii/scene/model/SceneCoverImageInfo;->customUrl:Ljava/lang/String;

    goto :goto_0

    .line 36
    :cond_2
    iput-object p1, p0, Lcom/narvii/scene/model/SceneCoverImageInfo;->screenshotUrl:Ljava/lang/String;

    goto :goto_0

    .line 33
    :cond_3
    iput-object p1, p0, Lcom/narvii/scene/model/SceneCoverImageInfo;->defaultUrl:Ljava/lang/String;

    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_b

    .line 64
    const-class v2, Lcom/narvii/scene/model/SceneCoverImageInfo;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_5

    .line 66
    :cond_1
    check-cast p1, Lcom/narvii/scene/model/SceneCoverImageInfo;

    .line 67
    iget-object v2, p0, Lcom/narvii/scene/model/SceneCoverImageInfo;->defaultUrl:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v3, p1, Lcom/narvii/scene/model/SceneCoverImageInfo;->defaultUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_2
    iget-object v2, p1, Lcom/narvii/scene/model/SceneCoverImageInfo;->defaultUrl:Ljava/lang/String;

    if-eqz v2, :cond_3

    :goto_0
    return v1

    .line 68
    :cond_3
    iget-object v2, p0, Lcom/narvii/scene/model/SceneCoverImageInfo;->screenshotUrl:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v3, p1, Lcom/narvii/scene/model/SceneCoverImageInfo;->screenshotUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_1

    :cond_4
    iget-object v2, p1, Lcom/narvii/scene/model/SceneCoverImageInfo;->screenshotUrl:Ljava/lang/String;

    if-eqz v2, :cond_5

    :goto_1
    return v1

    .line 69
    :cond_5
    iget-object v2, p0, Lcom/narvii/scene/model/SceneCoverImageInfo;->customUrl:Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v3, p1, Lcom/narvii/scene/model/SceneCoverImageInfo;->customUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_2

    :cond_6
    iget-object v2, p1, Lcom/narvii/scene/model/SceneCoverImageInfo;->customUrl:Ljava/lang/String;

    if-eqz v2, :cond_7

    :goto_2
    return v1

    .line 70
    :cond_7
    iget-object v2, p0, Lcom/narvii/scene/model/SceneCoverImageInfo;->netUrl:Ljava/lang/String;

    if-eqz v2, :cond_8

    iget-object v3, p1, Lcom/narvii/scene/model/SceneCoverImageInfo;->netUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    goto :goto_3

    :cond_8
    iget-object v2, p1, Lcom/narvii/scene/model/SceneCoverImageInfo;->netUrl:Ljava/lang/String;

    if-eqz v2, :cond_9

    :goto_3
    return v1

    .line 71
    :cond_9
    iget v2, p0, Lcom/narvii/scene/model/SceneCoverImageInfo;->from:I

    iget p1, p1, Lcom/narvii/scene/model/SceneCoverImageInfo;->from:I

    if-ne v2, p1, :cond_a

    goto :goto_4

    :cond_a
    const/4 v0, 0x0

    :goto_4
    return v0

    :cond_b
    :goto_5
    return v1
.end method

.method public getCoverImage()Ljava/lang/String;
    .locals 2

    .line 49
    iget v0, p0, Lcom/narvii/scene/model/SceneCoverImageInfo;->from:I

    if-nez v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/narvii/scene/model/SceneCoverImageInfo;->defaultUrl:Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 52
    iget-object v0, p0, Lcom/narvii/scene/model/SceneCoverImageInfo;->screenshotUrl:Ljava/lang/String;

    return-object v0

    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 54
    iget-object v0, p0, Lcom/narvii/scene/model/SceneCoverImageInfo;->customUrl:Ljava/lang/String;

    return-object v0

    :cond_2
    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 56
    iget-object v0, p0, Lcom/narvii/scene/model/SceneCoverImageInfo;->netUrl:Ljava/lang/String;

    return-object v0

    :cond_3
    const-string v0, ""

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 76
    iget v0, p0, Lcom/narvii/scene/model/SceneCoverImageInfo;->from:I

    mul-int/lit8 v0, v0, 0x1f

    .line 77
    iget-object v1, p0, Lcom/narvii/scene/model/SceneCoverImageInfo;->defaultUrl:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 78
    iget-object v1, p0, Lcom/narvii/scene/model/SceneCoverImageInfo;->screenshotUrl:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 79
    iget-object v1, p0, Lcom/narvii/scene/model/SceneCoverImageInfo;->customUrl:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 80
    iget-object v1, p0, Lcom/narvii/scene/model/SceneCoverImageInfo;->netUrl:Ljava/lang/String;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_3
    add-int/2addr v0, v2

    return v0
.end method
