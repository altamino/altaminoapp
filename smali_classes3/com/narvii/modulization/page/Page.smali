.class public Lcom/narvii/modulization/page/Page;
.super Lcom/narvii/model/NVObject;
.source "Page.java"


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

    .line 17
    invoke-direct {p0}, Lcom/narvii/model/NVObject;-><init>()V

    return-void
.end method

.method private getLinkDisplayText(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 2

    .line 41
    iget-object v0, p0, Lcom/narvii/modulization/page/Page;->url:Ljava/lang/String;

    const-string v1, "ndc://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 42
    iget-object v0, p0, Lcom/narvii/modulization/page/Page;->url:Ljava/lang/String;

    invoke-static {v0}, Lcom/narvii/modulization/page/PageManager;->getPageItemByUrl(Ljava/lang/String;)Lcom/narvii/modulization/page/PageItem;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/narvii/modulization/page/PageItem;->getName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 43
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p2, :cond_0

    .line 44
    sget p2, Lcom/narvii/lib/R$string;->custom_page:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1

    :cond_1
    return-object v0

    .line 49
    :cond_2
    iget-object p1, p0, Lcom/narvii/modulization/page/Page;->url:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 155
    :cond_0
    instance-of v1, p1, Lcom/narvii/modulization/page/Page;

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {p0}, Lcom/narvii/modulization/page/Page;->hashCode()I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 156
    check-cast p1, Lcom/narvii/modulization/page/Page;

    .line 157
    iget-object v1, p0, Lcom/narvii/modulization/page/Page;->id:Ljava/lang/String;

    iget-object v2, p1, Lcom/narvii/modulization/page/Page;->id:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/narvii/modulization/page/Page;->url:Ljava/lang/String;

    iget-object v2, p1, Lcom/narvii/modulization/page/Page;->url:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/narvii/modulization/page/Page;->alias:Ljava/lang/String;

    iget-object v2, p1, Lcom/narvii/modulization/page/Page;->alias:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/narvii/modulization/page/Page;->parentId:Ljava/lang/String;

    iget-object p1, p1, Lcom/narvii/modulization/page/Page;->parentId:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 159
    :cond_2
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getDisplayName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/narvii/modulization/page/Page;->url:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/narvii/modulization/page/Page;->alias:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 32
    iget-object p1, p0, Lcom/narvii/modulization/page/Page;->alias:Ljava/lang/String;

    return-object p1

    .line 34
    :cond_1
    iget-object v0, p0, Lcom/narvii/modulization/page/Page;->originalTitle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 35
    iget-object p1, p0, Lcom/narvii/modulization/page/Page;->originalTitle:Ljava/lang/String;

    return-object p1

    :cond_2
    const/4 v0, 0x1

    .line 37
    invoke-direct {p0, p1, v0}, Lcom/narvii/modulization/page/Page;->getLinkDisplayText(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/narvii/modulization/page/Page;->url:Ljava/lang/String;

    invoke-static {v0}, Lcom/narvii/modulization/page/PageManager;->getPageItemByUrl(Ljava/lang/String;)Lcom/narvii/modulization/page/PageItem;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/narvii/modulization/page/PageItem;->getIconDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public getIconBackgroundDrawable(Lcom/narvii/app/NVContext;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 98
    new-instance v0, Lcom/narvii/modulization/CommunityConfigHelper;

    invoke-direct {v0, p1}, Lcom/narvii/modulization/CommunityConfigHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 99
    invoke-virtual {v0}, Lcom/narvii/modulization/CommunityConfigHelper;->getLeftSideColor()I

    move-result v0

    .line 100
    iget-object v1, p0, Lcom/narvii/modulization/page/Page;->url:Ljava/lang/String;

    invoke-static {v1}, Lcom/narvii/modulization/page/PageManager;->getPageItemByUrl(Ljava/lang/String;)Lcom/narvii/modulization/page/PageItem;

    move-result-object v1

    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Lcom/narvii/modulization/page/PageItem;->getIconBackgroundDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public getIconColor(Landroid/content/Context;)I
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/narvii/modulization/page/Page;->url:Ljava/lang/String;

    invoke-static {v0}, Lcom/narvii/modulization/page/PageManager;->getPageItemByUrl(Ljava/lang/String;)Lcom/narvii/modulization/page/PageItem;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/narvii/modulization/page/PageItem;->getIconColor(Landroid/content/Context;)I

    move-result p1

    return p1
.end method

.method public getIconColorInLeftSidePanel(Lcom/narvii/app/NVContext;I)I
    .locals 1

    .line 89
    new-instance v0, Lcom/narvii/modulization/CommunityConfigHelper;

    invoke-direct {v0, p1, p2}, Lcom/narvii/modulization/CommunityConfigHelper;-><init>(Lcom/narvii/app/NVContext;I)V

    .line 90
    invoke-virtual {v0}, Lcom/narvii/modulization/CommunityConfigHelper;->getLeftSideColor()I

    move-result p2

    if-nez p2, :cond_0

    .line 92
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/narvii/modulization/page/Page;->getIconColor(Landroid/content/Context;)I

    move-result p2

    :cond_0
    return p2
.end method

.method public getOriginalTitleOrDefaultName(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 54
    iget-object v0, p0, Lcom/narvii/modulization/page/Page;->originalTitle:Ljava/lang/String;

    .line 55
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 56
    iget-object v0, p0, Lcom/narvii/modulization/page/Page;->url:Ljava/lang/String;

    invoke-static {v0}, Lcom/narvii/modulization/page/PageManager;->getPageItemByUrl(Ljava/lang/String;)Lcom/narvii/modulization/page/PageItem;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/narvii/modulization/page/PageItem;->getName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 57
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 58
    sget v0, Lcom/narvii/lib/R$string;->custom_page:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getSubtitle(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/narvii/modulization/page/Page;->url:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/narvii/modulization/page/Page;->alias:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 72
    iget-object v0, p0, Lcom/narvii/modulization/page/Page;->originalTitle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 73
    iget-object p1, p0, Lcom/narvii/modulization/page/Page;->originalTitle:Ljava/lang/String;

    return-object p1

    :cond_1
    const/4 v0, 0x0

    .line 75
    invoke-direct {p0, p1, v0}, Lcom/narvii/modulization/page/Page;->getLinkDisplayText(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 77
    :cond_2
    iget-object p1, p0, Lcom/narvii/modulization/page/Page;->originalTitle:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/narvii/modulization/page/Page;->url:Ljava/lang/String;

    const-string v0, "ndc://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 78
    iget-object p1, p0, Lcom/narvii/modulization/page/Page;->url:Ljava/lang/String;

    return-object p1

    :cond_3
    return-object v1
.end method

.method public hashCode()I
    .locals 3

    .line 123
    iget-object v0, p0, Lcom/narvii/modulization/page/Page;->url:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    const v2, 0x6f3c891a

    xor-int/2addr v0, v2

    .line 124
    iget-object v2, p0, Lcom/narvii/modulization/page/Page;->alias:Ljava/lang/String;

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    xor-int/2addr v0, v2

    .line 125
    iget-object v2, p0, Lcom/narvii/modulization/page/Page;->id:Ljava/lang/String;

    if-nez v2, :cond_2

    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    xor-int/2addr v0, v2

    .line 126
    iget-object v2, p0, Lcom/narvii/modulization/page/Page;->parentId:Ljava/lang/String;

    if-nez v2, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_3
    xor-int/2addr v0, v1

    return v0
.end method

.method public id()Ljava/lang/String;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/narvii/modulization/page/Page;->id:Ljava/lang/String;

    return-object v0
.end method

.method public isMyChatPage()Z
    .locals 2

    .line 108
    iget-object v0, p0, Lcom/narvii/modulization/page/Page;->url:Ljava/lang/String;

    const-string v1, "ndc://my-chats"

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public needSession()Z
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/narvii/modulization/page/Page;->url:Ljava/lang/String;

    invoke-static {v0}, Lcom/narvii/modulization/page/PageManager;->needSession(Ljava/lang/String;)Z

    move-result v0

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

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 165
    iget-object v1, p0, Lcom/narvii/modulization/page/Page;->alias:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 166
    iget-object v1, p0, Lcom/narvii/modulization/page/Page;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 168
    :cond_0
    iget-object v1, p0, Lcom/narvii/modulization/page/Page;->alias:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/narvii/modulization/page/Page;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string v1, ": "

    .line 170
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/narvii/modulization/page/Page;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public uid()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
