.class public Lcom/narvii/share/elements/RedditElement;
.super Lcom/narvii/share/elements/BaseElement;
.source "RedditElement.java"


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/narvii/share/elements/BaseElement;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method public color()I
    .locals 1

    const v0, -0xbb1c1

    return v0
.end method

.method public icon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/narvii/share/elements/BaseElement;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/narvii/lib/R$drawable;->ic_share_reddit:I

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public label()Ljava/lang/String;
    .locals 2

    .line 47
    iget-object v0, p0, Lcom/narvii/share/elements/BaseElement;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/narvii/lib/R$string;->share_reddit:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public needDownloadImage()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public packageName()Ljava/lang/String;
    .locals 1

    const-string v0, "com.reddit.frontpage"

    return-object v0
.end method

.method public priority()I
    .locals 1

    const/4 v0, 0x6

    return v0
.end method

.method public share(Lcom/narvii/share/SharePayload;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 53
    :cond_0
    iget-object v0, p1, Lcom/narvii/share/SharePayload;->text:Ljava/lang/String;

    iget-object v1, p1, Lcom/narvii/share/SharePayload;->url:Ljava/lang/String;

    const-string v2, "\n"

    invoke-virtual {p0, v0, v1, v2}, Lcom/narvii/share/elements/BaseElement;->joinTextWithUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 54
    invoke-virtual {p0, v0}, Lcom/narvii/share/elements/BaseElement;->copyText(Ljava/lang/String;)V

    .line 55
    iget-object p1, p1, Lcom/narvii/share/SharePayload;->object:Lcom/narvii/model/NVObject;

    instance-of p1, p1, Lcom/narvii/model/Community;

    .line 56
    new-instance v0, Lcom/narvii/share/elements/RedditElement$1;

    invoke-direct {v0, p0}, Lcom/narvii/share/elements/RedditElement$1;-><init>(Lcom/narvii/share/elements/RedditElement;)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/narvii/share/elements/BaseElement;->context:Lcom/narvii/app/NVContext;

    .line 88
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v3, Lcom/narvii/lib/R$string;->share_reddit_hint_community:I

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/narvii/share/elements/BaseElement;->context:Lcom/narvii/app/NVContext;

    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v3, Lcom/narvii/lib/R$string;->share_reddit_hint1:I

    :goto_0
    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    const/4 p1, 0x1

    iget-object v2, p0, Lcom/narvii/share/elements/BaseElement;->context:Lcom/narvii/app/NVContext;

    .line 89
    invoke-interface {v2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/narvii/lib/R$string;->share_reddit_hint2:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, p1

    .line 56
    invoke-virtual {p0, v0, v1}, Lcom/narvii/share/elements/BaseElement;->showTutorialDialog(Landroid/view/View$OnClickListener;[Ljava/lang/String;)V

    return-void
.end method

.method public targetName()Ljava/lang/String;
    .locals 1

    const-string v0, "Reddit"

    return-object v0
.end method
