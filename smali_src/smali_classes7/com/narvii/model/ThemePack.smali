.class public Lcom/narvii/model/ThemePack;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public themeColor:Ljava/lang/String;

.field public themePackHash:Ljava/lang/String;

.field public themePackRevision:I

.field public themePackUrl:Ljava/lang/String;


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


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-eqz p1, :cond_2

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 7
    move-result v1

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/narvii/model/ThemePack;->hashCode()I

    .line 11
    move-result v2

    .line 12
    .line 13
    if-eq v1, v2, :cond_0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v1, 0x1

    .line 16
    .line 17
    if-ne p1, p0, :cond_1

    .line 18
    return v1

    .line 19
    .line 20
    :cond_1
    instance-of v2, p1, Lcom/narvii/model/ThemePack;

    .line 21
    .line 22
    if-eqz v2, :cond_2

    .line 23
    .line 24
    check-cast p1, Lcom/narvii/model/ThemePack;

    .line 25
    .line 26
    iget v2, p1, Lcom/narvii/model/ThemePack;->themePackRevision:I

    .line 27
    .line 28
    iget v3, p0, Lcom/narvii/model/ThemePack;->themePackRevision:I

    .line 29
    .line 30
    if-ne v2, v3, :cond_2

    .line 31
    .line 32
    iget-object v2, p1, Lcom/narvii/model/ThemePack;->themePackUrl:Ljava/lang/String;

    .line 33
    .line 34
    iget-object v3, p0, Lcom/narvii/model/ThemePack;->themePackUrl:Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 38
    move-result v2

    .line 39
    .line 40
    if-eqz v2, :cond_2

    .line 41
    .line 42
    iget-object v2, p1, Lcom/narvii/model/ThemePack;->themePackHash:Ljava/lang/String;

    .line 43
    .line 44
    iget-object v3, p0, Lcom/narvii/model/ThemePack;->themePackHash:Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 48
    move-result v2

    .line 49
    .line 50
    if-eqz v2, :cond_2

    .line 51
    .line 52
    iget-object p1, p1, Lcom/narvii/model/ThemePack;->themeColor:Ljava/lang/String;

    .line 53
    .line 54
    iget-object v2, p0, Lcom/narvii/model/ThemePack;->themeColor:Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    invoke-static {p1, v2}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 58
    move-result p1

    .line 59
    .line 60
    if-eqz p1, :cond_2

    .line 61
    move v0, v1

    .line 62
    :cond_2
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/model/ThemePack;->themePackUrl:Ljava/lang/String;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 10
    move-result v0

    .line 11
    .line 12
    :goto_0
    iget v1, p0, Lcom/narvii/model/ThemePack;->themePackRevision:I

    .line 13
    xor-int/2addr v0, v1

    .line 14
    return v0
.end method
