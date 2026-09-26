.class public Lcom/narvii/share/elements/InstagramElement;
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

    const v0, -0x42f01f

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
    sget v1, Lcom/narvii/lib/R$drawable;->ic_share_instagram:I

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
    sget v1, Lcom/narvii/lib/R$string;->share_instagram:I

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public packageName()Ljava/lang/String;
    .locals 1

    const-string v0, "com.instagram.android"

    return-object v0
.end method

.method public priority()I
    .locals 1

    const/4 v0, 0x7

    return v0
.end method

.method public share(Lcom/narvii/share/SharePayload;)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p1, Lcom/narvii/share/SharePayload;->text:Ljava/lang/String;

    .line 3
    .line 4
    iget-object v1, p1, Lcom/narvii/share/SharePayload;->url:Ljava/lang/String;

    .line 5
    .line 6
    const-string v2, "\n"

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0, v1, v2}, Lcom/narvii/share/elements/BaseElement;->joinTextWithUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    iget-object v1, p1, Lcom/narvii/share/SharePayload;->object:Lcom/narvii/model/NVObject;

    .line 13
    .line 14
    instance-of v2, v1, Lcom/narvii/model/Blog;

    .line 15
    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    check-cast v1, Lcom/narvii/model/Blog;

    .line 19
    .line 20
    iget v1, v1, Lcom/narvii/model/Blog;->type:I

    .line 21
    const/4 v2, 0x6

    .line 22
    .line 23
    if-ne v1, v2, :cond_0

    .line 24
    .line 25
    iget-object v0, p0, Lcom/narvii/share/elements/BaseElement;->context:Lcom/narvii/app/NVContext;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, p1, v0}, Lcom/narvii/share/elements/BaseElement;->generateShareStringWithTag(Lcom/narvii/share/SharePayload;Lcom/narvii/app/NVContext;)Ljava/lang/String;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    :cond_0
    iget-object v1, p1, Lcom/narvii/share/SharePayload;->uri:Landroid/net/Uri;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, v0}, Lcom/narvii/share/elements/BaseElement;->copyText(Ljava/lang/String;)V

    .line 35
    .line 36
    new-instance v2, Lcom/narvii/share/elements/InstagramElement$1;

    .line 37
    .line 38
    .line 39
    invoke-direct {v2, p0, v0, p1, v1}, Lcom/narvii/share/elements/InstagramElement$1;-><init>(Lcom/narvii/share/elements/InstagramElement;Ljava/lang/String;Lcom/narvii/share/SharePayload;Landroid/net/Uri;)V

    .line 40
    .line 41
    iget-object p1, p0, Lcom/narvii/share/elements/BaseElement;->context:Lcom/narvii/app/NVContext;

    .line 42
    .line 43
    .line 44
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 45
    move-result-object p1

    .line 46
    .line 47
    sget v0, Lcom/narvii/lib/R$string;->share_instagram_hint1:I

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 51
    move-result-object p1

    .line 52
    .line 53
    .line 54
    filled-new-array {p1}, [Ljava/lang/String;

    .line 55
    move-result-object p1

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, v2, p1}, Lcom/narvii/share/elements/BaseElement;->showTutorialDialog(Landroid/view/View$OnClickListener;[Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public targetName()Ljava/lang/String;
    .locals 1

    const-string v0, "Instagram"

    return-object v0
.end method
