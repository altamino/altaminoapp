.class public Lcom/narvii/scene/model/SceneCoverImageInfo;
.super Ljava/lang/Object;
.source "SourceFile"


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

    .line 1
    invoke-direct {p0, v0, v1}, Lcom/narvii/scene/model/SceneCoverImageInfo;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/narvii/scene/model/SceneCoverImageInfo;->from:I

    const-string v0, ""

    iput-object v0, p0, Lcom/narvii/scene/model/SceneCoverImageInfo;->defaultUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/narvii/scene/model/SceneCoverImageInfo;->screenshotUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/narvii/scene/model/SceneCoverImageInfo;->customUrl:Ljava/lang/String;

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

    :cond_0
    iput-object p1, p0, Lcom/narvii/scene/model/SceneCoverImageInfo;->netUrl:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iput-object p1, p0, Lcom/narvii/scene/model/SceneCoverImageInfo;->customUrl:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iput-object p1, p0, Lcom/narvii/scene/model/SceneCoverImageInfo;->screenshotUrl:Ljava/lang/String;

    goto :goto_0

    :cond_3
    iput-object p1, p0, Lcom/narvii/scene/model/SceneCoverImageInfo;->defaultUrl:Ljava/lang/String;

    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    if-ne p0, p1, :cond_0

    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    .line 7
    if-eqz p1, :cond_b

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    move-result-object v2

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    move-result-object v3

    .line 16
    .line 17
    if-eq v2, v3, :cond_1

    .line 18
    goto :goto_5

    .line 19
    .line 20
    :cond_1
    check-cast p1, Lcom/narvii/scene/model/SceneCoverImageInfo;

    .line 21
    .line 22
    iget-object v2, p0, Lcom/narvii/scene/model/SceneCoverImageInfo;->defaultUrl:Ljava/lang/String;

    .line 23
    .line 24
    if-eqz v2, :cond_2

    .line 25
    .line 26
    iget-object v3, p1, Lcom/narvii/scene/model/SceneCoverImageInfo;->defaultUrl:Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    move-result v2

    .line 31
    .line 32
    if-nez v2, :cond_3

    .line 33
    goto :goto_0

    .line 34
    .line 35
    :cond_2
    iget-object v2, p1, Lcom/narvii/scene/model/SceneCoverImageInfo;->defaultUrl:Ljava/lang/String;

    .line 36
    .line 37
    if-eqz v2, :cond_3

    .line 38
    :goto_0
    return v1

    .line 39
    .line 40
    :cond_3
    iget-object v2, p0, Lcom/narvii/scene/model/SceneCoverImageInfo;->screenshotUrl:Ljava/lang/String;

    .line 41
    .line 42
    if-eqz v2, :cond_4

    .line 43
    .line 44
    iget-object v3, p1, Lcom/narvii/scene/model/SceneCoverImageInfo;->screenshotUrl:Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    move-result v2

    .line 49
    .line 50
    if-nez v2, :cond_5

    .line 51
    goto :goto_1

    .line 52
    .line 53
    :cond_4
    iget-object v2, p1, Lcom/narvii/scene/model/SceneCoverImageInfo;->screenshotUrl:Ljava/lang/String;

    .line 54
    .line 55
    if-eqz v2, :cond_5

    .line 56
    :goto_1
    return v1

    .line 57
    .line 58
    :cond_5
    iget-object v2, p0, Lcom/narvii/scene/model/SceneCoverImageInfo;->customUrl:Ljava/lang/String;

    .line 59
    .line 60
    if-eqz v2, :cond_6

    .line 61
    .line 62
    iget-object v3, p1, Lcom/narvii/scene/model/SceneCoverImageInfo;->customUrl:Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 66
    move-result v2

    .line 67
    .line 68
    if-nez v2, :cond_7

    .line 69
    goto :goto_2

    .line 70
    .line 71
    :cond_6
    iget-object v2, p1, Lcom/narvii/scene/model/SceneCoverImageInfo;->customUrl:Ljava/lang/String;

    .line 72
    .line 73
    if-eqz v2, :cond_7

    .line 74
    :goto_2
    return v1

    .line 75
    .line 76
    :cond_7
    iget-object v2, p0, Lcom/narvii/scene/model/SceneCoverImageInfo;->netUrl:Ljava/lang/String;

    .line 77
    .line 78
    if-eqz v2, :cond_8

    .line 79
    .line 80
    iget-object v3, p1, Lcom/narvii/scene/model/SceneCoverImageInfo;->netUrl:Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 84
    move-result v2

    .line 85
    .line 86
    if-nez v2, :cond_9

    .line 87
    goto :goto_3

    .line 88
    .line 89
    :cond_8
    iget-object v2, p1, Lcom/narvii/scene/model/SceneCoverImageInfo;->netUrl:Ljava/lang/String;

    .line 90
    .line 91
    if-eqz v2, :cond_9

    .line 92
    :goto_3
    return v1

    .line 93
    .line 94
    :cond_9
    iget v2, p0, Lcom/narvii/scene/model/SceneCoverImageInfo;->from:I

    .line 95
    .line 96
    iget p1, p1, Lcom/narvii/scene/model/SceneCoverImageInfo;->from:I

    .line 97
    .line 98
    if-ne v2, p1, :cond_a

    .line 99
    goto :goto_4

    .line 100
    :cond_a
    move v0, v1

    .line 101
    :goto_4
    return v0

    .line 102
    :cond_b
    :goto_5
    return v1
.end method

.method public getCoverImage()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/narvii/scene/model/SceneCoverImageInfo;->from:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/narvii/scene/model/SceneCoverImageInfo;->defaultUrl:Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/narvii/scene/model/SceneCoverImageInfo;->screenshotUrl:Ljava/lang/String;

    return-object v0

    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/narvii/scene/model/SceneCoverImageInfo;->customUrl:Ljava/lang/String;

    return-object v0

    :cond_2
    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/narvii/scene/model/SceneCoverImageInfo;->netUrl:Ljava/lang/String;

    return-object v0

    :cond_3
    const-string v0, ""

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/scene/model/SceneCoverImageInfo;->from:I

    .line 3
    .line 4
    mul-int/lit8 v0, v0, 0x1f

    .line 5
    .line 6
    iget-object v1, p0, Lcom/narvii/scene/model/SceneCoverImageInfo;->defaultUrl:Ljava/lang/String;

    .line 7
    const/4 v2, 0x0

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 13
    move-result v1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move v1, v2

    .line 16
    :goto_0
    add-int/2addr v0, v1

    .line 17
    .line 18
    mul-int/lit8 v0, v0, 0x1f

    .line 19
    .line 20
    iget-object v1, p0, Lcom/narvii/scene/model/SceneCoverImageInfo;->screenshotUrl:Ljava/lang/String;

    .line 21
    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 26
    move-result v1

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    move v1, v2

    .line 29
    :goto_1
    add-int/2addr v0, v1

    .line 30
    .line 31
    mul-int/lit8 v0, v0, 0x1f

    .line 32
    .line 33
    iget-object v1, p0, Lcom/narvii/scene/model/SceneCoverImageInfo;->customUrl:Ljava/lang/String;

    .line 34
    .line 35
    if-eqz v1, :cond_2

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 39
    move-result v1

    .line 40
    goto :goto_2

    .line 41
    :cond_2
    move v1, v2

    .line 42
    :goto_2
    add-int/2addr v0, v1

    .line 43
    .line 44
    mul-int/lit8 v0, v0, 0x1f

    .line 45
    .line 46
    iget-object v1, p0, Lcom/narvii/scene/model/SceneCoverImageInfo;->netUrl:Ljava/lang/String;

    .line 47
    .line 48
    if-eqz v1, :cond_3

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 52
    move-result v2

    .line 53
    :cond_3
    add-int/2addr v0, v2

    .line 54
    return v0
.end method
