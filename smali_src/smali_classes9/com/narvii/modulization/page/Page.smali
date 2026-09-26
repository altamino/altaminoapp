.class public Lcom/narvii/modulization/page/Page;
.super Lcom/narvii/model/NVObject;
.source "SourceFile"


# static fields
.field public static final HOME:Ljava/lang/String; = "home"


# instance fields
.field public alias:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public originalTitle:Ljava/lang/String;

.field public parentId:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/model/NVObject;-><init>()V

    .line 4
    return-void
.end method

.method private getLinkDisplayText(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/modulization/page/Page;->url:Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    const-string/jumbo v1, "ndc://"

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 9
    move-result v0

    .line 10
    .line 11
    if-eqz v0, :cond_2

    .line 12
    .line 13
    iget-object v0, p0, Lcom/narvii/modulization/page/Page;->url:Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    invoke-static {v0}, Lcom/narvii/modulization/page/PageManager;->getPageItemByUrl(Ljava/lang/String;)Lcom/narvii/modulization/page/PageItem;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p1}, Lcom/narvii/modulization/page/PageItem;->getName(Landroid/content/Context;)Ljava/lang/String;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    .line 24
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 25
    move-result v1

    .line 26
    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    if-eqz p2, :cond_0

    .line 30
    .line 31
    sget p2, Lcom/narvii/lib/R$string;->custom_page:I

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 35
    move-result-object p1

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const/4 p1, 0x0

    .line 38
    :goto_0
    return-object p1

    .line 39
    :cond_1
    return-object v0

    .line 40
    .line 41
    :cond_2
    iget-object p1, p0, Lcom/narvii/modulization/page/Page;->url:Ljava/lang/String;

    .line 42
    return-object p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    if-ne p1, p0, :cond_0

    .line 4
    return v0

    .line 5
    .line 6
    :cond_0
    instance-of v1, p1, Lcom/narvii/modulization/page/Page;

    .line 7
    .line 8
    if-eqz v1, :cond_2

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 12
    move-result v1

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/narvii/modulization/page/Page;->hashCode()I

    .line 16
    move-result v2

    .line 17
    .line 18
    if-ne v1, v2, :cond_2

    .line 19
    .line 20
    check-cast p1, Lcom/narvii/modulization/page/Page;

    .line 21
    .line 22
    iget-object v1, p0, Lcom/narvii/modulization/page/Page;->id:Ljava/lang/String;

    .line 23
    .line 24
    iget-object v2, p1, Lcom/narvii/modulization/page/Page;->id:Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 28
    move-result v1

    .line 29
    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    iget-object v1, p0, Lcom/narvii/modulization/page/Page;->url:Ljava/lang/String;

    .line 33
    .line 34
    iget-object v2, p1, Lcom/narvii/modulization/page/Page;->url:Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 38
    move-result v1

    .line 39
    .line 40
    if-eqz v1, :cond_1

    .line 41
    .line 42
    iget-object v1, p0, Lcom/narvii/modulization/page/Page;->alias:Ljava/lang/String;

    .line 43
    .line 44
    iget-object v2, p1, Lcom/narvii/modulization/page/Page;->alias:Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 48
    move-result v1

    .line 49
    .line 50
    if-eqz v1, :cond_1

    .line 51
    .line 52
    iget-object v1, p0, Lcom/narvii/modulization/page/Page;->parentId:Ljava/lang/String;

    .line 53
    .line 54
    iget-object p1, p1, Lcom/narvii/modulization/page/Page;->parentId:Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    invoke-static {v1, p1}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 58
    move-result p1

    .line 59
    .line 60
    if-eqz p1, :cond_1

    .line 61
    goto :goto_0

    .line 62
    :cond_1
    const/4 v0, 0x0

    .line 63
    :goto_0
    return v0

    .line 64
    .line 65
    .line 66
    :cond_2
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 67
    move-result p1

    .line 68
    return p1
.end method

.method public getDisplayName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/modulization/page/Page;->url:Ljava/lang/String;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    const/4 p1, 0x0

    .line 6
    return-object p1

    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/narvii/modulization/page/Page;->alias:Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    iget-object p1, p0, Lcom/narvii/modulization/page/Page;->alias:Ljava/lang/String;

    .line 17
    return-object p1

    .line 18
    .line 19
    :cond_1
    iget-object v0, p0, Lcom/narvii/modulization/page/Page;->originalTitle:Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 23
    move-result v0

    .line 24
    .line 25
    if-nez v0, :cond_2

    .line 26
    .line 27
    iget-object p1, p0, Lcom/narvii/modulization/page/Page;->originalTitle:Ljava/lang/String;

    .line 28
    return-object p1

    .line 29
    :cond_2
    const/4 v0, 0x1

    .line 30
    .line 31
    .line 32
    invoke-direct {p0, p1, v0}, Lcom/narvii/modulization/page/Page;->getLinkDisplayText(Landroid/content/Context;Z)Ljava/lang/String;

    .line 33
    move-result-object p1

    .line 34
    return-object p1
.end method

.method public getIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/modulization/page/Page;->url:Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/modulization/page/PageManager;->getPageItemByUrl(Ljava/lang/String;)Lcom/narvii/modulization/page/PageItem;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lcom/narvii/modulization/page/PageItem;->getIconDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method public getIconBackgroundDrawable(Lcom/narvii/app/NVContext;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/modulization/CommunityConfigHelper;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p1}, Lcom/narvii/modulization/CommunityConfigHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/narvii/modulization/CommunityConfigHelper;->getLeftSideColor()I

    .line 9
    move-result v0

    .line 10
    .line 11
    iget-object v1, p0, Lcom/narvii/modulization/page/Page;->url:Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    invoke-static {v1}, Lcom/narvii/modulization/page/PageManager;->getPageItemByUrl(Ljava/lang/String;)Lcom/narvii/modulization/page/PageItem;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    .line 18
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, p1, v0}, Lcom/narvii/modulization/page/PageItem;->getIconBackgroundDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 23
    move-result-object p1

    .line 24
    return-object p1
.end method

.method public getIconColor(Landroid/content/Context;)I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/modulization/page/Page;->url:Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/modulization/page/PageManager;->getPageItemByUrl(Ljava/lang/String;)Lcom/narvii/modulization/page/PageItem;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lcom/narvii/modulization/page/PageItem;->getIconColor(Landroid/content/Context;)I

    .line 10
    move-result p1

    .line 11
    return p1
.end method

.method public getIconColorInLeftSidePanel(Lcom/narvii/app/NVContext;I)I
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/modulization/CommunityConfigHelper;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p1, p2}, Lcom/narvii/modulization/CommunityConfigHelper;-><init>(Lcom/narvii/app/NVContext;I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/narvii/modulization/CommunityConfigHelper;->getLeftSideColor()I

    .line 9
    move-result p2

    .line 10
    .line 11
    if-nez p2, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, p1}, Lcom/narvii/modulization/page/Page;->getIconColor(Landroid/content/Context;)I

    .line 19
    move-result p2

    .line 20
    :cond_0
    return p2
.end method

.method public getOriginalTitleOrDefaultName(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/modulization/page/Page;->originalTitle:Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    move-result v1

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/modulization/page/Page;->url:Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lcom/narvii/modulization/page/PageManager;->getPageItemByUrl(Ljava/lang/String;)Lcom/narvii/modulization/page/PageItem;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1}, Lcom/narvii/modulization/page/PageItem;->getName(Landroid/content/Context;)Ljava/lang/String;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    .line 21
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 22
    move-result v1

    .line 23
    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    sget v0, Lcom/narvii/lib/R$string;->custom_page:I

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 30
    move-result-object v0

    .line 31
    :cond_0
    return-object v0
.end method

.method public getSubtitle(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/modulization/page/Page;->url:Ljava/lang/String;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    return-object v1

    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/narvii/modulization/page/Page;->alias:Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-nez v0, :cond_2

    .line 15
    .line 16
    iget-object v0, p0, Lcom/narvii/modulization/page/Page;->originalTitle:Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 20
    move-result v0

    .line 21
    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    iget-object p1, p0, Lcom/narvii/modulization/page/Page;->originalTitle:Ljava/lang/String;

    .line 25
    return-object p1

    .line 26
    :cond_1
    const/4 v0, 0x0

    .line 27
    .line 28
    .line 29
    invoke-direct {p0, p1, v0}, Lcom/narvii/modulization/page/Page;->getLinkDisplayText(Landroid/content/Context;Z)Ljava/lang/String;

    .line 30
    move-result-object p1

    .line 31
    return-object p1

    .line 32
    .line 33
    :cond_2
    iget-object p1, p0, Lcom/narvii/modulization/page/Page;->originalTitle:Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 37
    move-result p1

    .line 38
    .line 39
    if-nez p1, :cond_3

    .line 40
    .line 41
    iget-object p1, p0, Lcom/narvii/modulization/page/Page;->url:Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    const-string/jumbo v0, "ndc://"

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 48
    move-result p1

    .line 49
    .line 50
    if-nez p1, :cond_3

    .line 51
    .line 52
    iget-object p1, p0, Lcom/narvii/modulization/page/Page;->url:Ljava/lang/String;

    .line 53
    return-object p1

    .line 54
    :cond_3
    return-object v1
.end method

.method public hashCode()I
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/modulization/page/Page;->url:Ljava/lang/String;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    move v0, v1

    .line 7
    goto :goto_0

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 11
    move-result v0

    .line 12
    .line 13
    .line 14
    :goto_0
    const v2, 0x6f3c891a

    .line 15
    xor-int/2addr v0, v2

    .line 16
    .line 17
    iget-object v2, p0, Lcom/narvii/modulization/page/Page;->alias:Ljava/lang/String;

    .line 18
    .line 19
    if-nez v2, :cond_1

    .line 20
    move v2, v1

    .line 21
    goto :goto_1

    .line 22
    .line 23
    .line 24
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 25
    move-result v2

    .line 26
    :goto_1
    xor-int/2addr v0, v2

    .line 27
    .line 28
    iget-object v2, p0, Lcom/narvii/modulization/page/Page;->id:Ljava/lang/String;

    .line 29
    .line 30
    if-nez v2, :cond_2

    .line 31
    move v2, v1

    .line 32
    goto :goto_2

    .line 33
    .line 34
    .line 35
    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 36
    move-result v2

    .line 37
    :goto_2
    xor-int/2addr v0, v2

    .line 38
    .line 39
    iget-object v2, p0, Lcom/narvii/modulization/page/Page;->parentId:Ljava/lang/String;

    .line 40
    .line 41
    if-nez v2, :cond_3

    .line 42
    goto :goto_3

    .line 43
    .line 44
    .line 45
    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 46
    move-result v1

    .line 47
    :goto_3
    xor-int/2addr v0, v1

    .line 48
    return v0
.end method

.method public id()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/narvii/modulization/page/Page;->id:Ljava/lang/String;

    return-object v0
.end method

.method public isMyChatPage()Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/modulization/page/Page;->url:Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    const-string/jumbo v1, "ndc://my-chats"

    .line 6
    .line 7
    .line 8
    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 9
    move-result v0

    .line 10
    return v0
.end method

.method public needSession()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/modulization/page/Page;->url:Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/modulization/page/PageManager;->needSession(Ljava/lang/String;)Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public objectType()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public parentId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public status()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    iget-object v1, p0, Lcom/narvii/modulization/page/Page;->alias:Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 11
    move-result v1

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    iget-object v1, p0, Lcom/narvii/modulization/page/Page;->id:Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    goto :goto_0

    .line 20
    .line 21
    :cond_0
    iget-object v1, p0, Lcom/narvii/modulization/page/Page;->alias:Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    const-string v1, "("

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    iget-object v1, p0, Lcom/narvii/modulization/page/Page;->id:Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    const-string v1, ")"

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    :goto_0
    const-string v1, ": "

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    iget-object v1, p0, Lcom/narvii/modulization/page/Page;->url:Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    move-result-object v0

    .line 54
    return-object v0
.end method

.method public uid()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
