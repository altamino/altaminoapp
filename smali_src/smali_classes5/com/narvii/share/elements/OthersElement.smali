.class public Lcom/narvii/share/elements/OthersElement;
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

    const v0, -0x535354

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
    sget v1, Lcom/narvii/lib/R$drawable;->share_others_icon:I

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
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
    sget v1, Lcom/narvii/lib/R$string;->share_others:I

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

    const/4 v0, 0x0

    return-object v0
.end method

.method public priority()I
    .locals 1

    const/16 v0, 0x64

    return v0
.end method

.method public share(Lcom/narvii/share/SharePayload;)V
    .locals 5

    .line 1
    .line 2
    new-instance v0, Landroid/content/Intent;

    .line 3
    .line 4
    const-string v1, "android.intent.action.SEND"

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string/jumbo v1, "text/plain"

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 14
    .line 15
    iget-object v1, p1, Lcom/narvii/share/SharePayload;->subject:Ljava/lang/String;

    .line 16
    .line 17
    iget-object v2, p1, Lcom/narvii/share/SharePayload;->text:Ljava/lang/String;

    .line 18
    .line 19
    iget-object v3, p1, Lcom/narvii/share/SharePayload;->url:Ljava/lang/String;

    .line 20
    .line 21
    const-string v4, ": "

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v2, v3, v4}, Lcom/narvii/share/elements/BaseElement;->joinTextWithUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 25
    move-result-object v2

    .line 26
    .line 27
    const-string v3, "android.intent.extra.SUBJECT"

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 31
    .line 32
    const-string v1, "android.intent.extra.TEXT"

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 36
    .line 37
    iget-object v1, p1, Lcom/narvii/share/SharePayload;->uri:Landroid/net/Uri;

    .line 38
    .line 39
    if-eqz v1, :cond_0

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Lcom/narvii/share/SharePayload;->mimeType()Ljava/lang/String;

    .line 43
    move-result-object v1

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 47
    .line 48
    const-string v1, "android.intent.extra.STREAM"

    .line 49
    .line 50
    iget-object p1, p1, Lcom/narvii/share/SharePayload;->uri:Landroid/net/Uri;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 54
    .line 55
    .line 56
    :cond_0
    invoke-virtual {p0, v0}, Lcom/narvii/share/elements/BaseElement;->startShare(Landroid/content/Intent;)V

    .line 57
    return-void
.end method

.method public targetName()Ljava/lang/String;
    .locals 1

    const-string v0, "Others"

    return-object v0
.end method

.method public textColor()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method
