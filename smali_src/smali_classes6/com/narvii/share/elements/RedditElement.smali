.class public Lcom/narvii/share/elements/RedditElement;
.super Lcom/narvii/share/elements/BaseElement;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/share/elements/BaseElement;-><init>(Lcom/narvii/app/NVContext;)V

    .line 4
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

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/share/elements/BaseElement;->context:Lcom/narvii/app/NVContext;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    sget v1, Lcom/narvii/lib/R$drawable;->ic_share_reddit:I

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public label()Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/share/elements/BaseElement;->context:Lcom/narvii/app/NVContext;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    sget v1, Lcom/narvii/lib/R$string;->share_reddit:I

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
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
    .locals 3

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    :cond_0
    iget-object v0, p1, Lcom/narvii/share/SharePayload;->text:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v1, p1, Lcom/narvii/share/SharePayload;->url:Ljava/lang/String;

    .line 8
    .line 9
    const-string v2, "\n"

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0, v1, v2}, Lcom/narvii/share/elements/BaseElement;->joinTextWithUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v0}, Lcom/narvii/share/elements/BaseElement;->copyText(Ljava/lang/String;)V

    .line 17
    .line 18
    iget-object p1, p1, Lcom/narvii/share/SharePayload;->object:Lcom/narvii/model/NVObject;

    .line 19
    .line 20
    instance-of p1, p1, Lcom/narvii/model/Community;

    .line 21
    .line 22
    new-instance v0, Lcom/narvii/share/elements/RedditElement$1;

    .line 23
    .line 24
    .line 25
    invoke-direct {v0, p0}, Lcom/narvii/share/elements/RedditElement$1;-><init>(Lcom/narvii/share/elements/RedditElement;)V

    .line 26
    const/4 v1, 0x2

    .line 27
    .line 28
    new-array v1, v1, [Ljava/lang/String;

    .line 29
    .line 30
    if-eqz p1, :cond_1

    .line 31
    .line 32
    iget-object p1, p0, Lcom/narvii/share/elements/BaseElement;->context:Lcom/narvii/app/NVContext;

    .line 33
    .line 34
    .line 35
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 36
    move-result-object p1

    .line 37
    .line 38
    sget v2, Lcom/narvii/lib/R$string;->share_reddit_hint_community:I

    .line 39
    .line 40
    .line 41
    :goto_0
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 42
    move-result-object p1

    .line 43
    goto :goto_1

    .line 44
    .line 45
    :cond_1
    iget-object p1, p0, Lcom/narvii/share/elements/BaseElement;->context:Lcom/narvii/app/NVContext;

    .line 46
    .line 47
    .line 48
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 49
    move-result-object p1

    .line 50
    .line 51
    sget v2, Lcom/narvii/lib/R$string;->share_reddit_hint1:I

    .line 52
    goto :goto_0

    .line 53
    :goto_1
    const/4 v2, 0x0

    .line 54
    .line 55
    aput-object p1, v1, v2

    .line 56
    .line 57
    iget-object p1, p0, Lcom/narvii/share/elements/BaseElement;->context:Lcom/narvii/app/NVContext;

    .line 58
    .line 59
    .line 60
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 61
    move-result-object p1

    .line 62
    .line 63
    sget v2, Lcom/narvii/lib/R$string;->share_reddit_hint2:I

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 67
    move-result-object p1

    .line 68
    const/4 v2, 0x1

    .line 69
    .line 70
    aput-object p1, v1, v2

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0, v0, v1}, Lcom/narvii/share/elements/BaseElement;->showTutorialDialog(Landroid/view/View$OnClickListener;[Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method public targetName()Ljava/lang/String;
    .locals 1

    const-string v0, "Reddit"

    return-object v0
.end method
