.class public Lcom/narvii/model/ThemePack;
.super Ljava/lang/Object;
.source "ThemePack.java"


# instance fields
.field public themeColor:Ljava/lang/String;

.field public themePackHash:Ljava/lang/String;

.field public themePackRevision:I

.field public themePackUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 22
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {p0}, Lcom/narvii/model/ThemePack;->hashCode()I

    move-result v2

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne p1, p0, :cond_1

    return v1

    .line 26
    :cond_1
    instance-of v2, p1, Lcom/narvii/model/ThemePack;

    if-eqz v2, :cond_2

    .line 27
    check-cast p1, Lcom/narvii/model/ThemePack;

    .line 28
    iget v2, p1, Lcom/narvii/model/ThemePack;->themePackRevision:I

    iget v3, p0, Lcom/narvii/model/ThemePack;->themePackRevision:I

    if-ne v2, v3, :cond_2

    iget-object v2, p1, Lcom/narvii/model/ThemePack;->themePackUrl:Ljava/lang/String;

    iget-object v3, p0, Lcom/narvii/model/ThemePack;->themePackUrl:Ljava/lang/String;

    .line 29
    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p1, Lcom/narvii/model/ThemePack;->themePackHash:Ljava/lang/String;

    iget-object v3, p0, Lcom/narvii/model/ThemePack;->themePackHash:Ljava/lang/String;

    .line 30
    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p1, p1, Lcom/narvii/model/ThemePack;->themeColor:Ljava/lang/String;

    iget-object v2, p0, Lcom/narvii/model/ThemePack;->themeColor:Ljava/lang/String;

    invoke-static {p1, v2}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    :cond_2
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 17
    iget-object v0, p0, Lcom/narvii/model/ThemePack;->themePackUrl:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    iget v1, p0, Lcom/narvii/model/ThemePack;->themePackRevision:I

    xor-int/2addr v0, v1

    return v0
.end method
