.class public Lcom/narvii/share/elements/OthersElement;
.super Lcom/narvii/share/elements/BaseElement;
.source "OthersElement.java"


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/narvii/share/elements/BaseElement;-><init>(Lcom/narvii/app/NVContext;)V

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

    .line 70
    iget-object v0, p0, Lcom/narvii/share/elements/BaseElement;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/narvii/lib/R$drawable;->share_others_icon:I

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public label()Ljava/lang/String;
    .locals 2

    .line 45
    iget-object v0, p0, Lcom/narvii/share/elements/BaseElement;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/narvii/lib/R$string;->share_others:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

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

    .line 50
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "text/plain"

    .line 51
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 52
    iget-object v1, p1, Lcom/narvii/share/SharePayload;->subject:Ljava/lang/String;

    .line 53
    iget-object v2, p1, Lcom/narvii/share/SharePayload;->text:Ljava/lang/String;

    iget-object v3, p1, Lcom/narvii/share/SharePayload;->url:Ljava/lang/String;

    const-string v4, ": "

    invoke-virtual {p0, v2, v3, v4}, Lcom/narvii/share/elements/BaseElement;->joinTextWithUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.extra.SUBJECT"

    .line 54
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.TEXT"

    .line 55
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 56
    iget-object v1, p1, Lcom/narvii/share/SharePayload;->uri:Landroid/net/Uri;

    if-eqz v1, :cond_0

    .line 57
    invoke-virtual {p1}, Lcom/narvii/share/SharePayload;->mimeType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    iget-object p1, p1, Lcom/narvii/share/SharePayload;->uri:Landroid/net/Uri;

    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 60
    :cond_0
    invoke-virtual {p0, v0}, Lcom/narvii/share/elements/BaseElement;->startShare(Landroid/content/Intent;)V

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
