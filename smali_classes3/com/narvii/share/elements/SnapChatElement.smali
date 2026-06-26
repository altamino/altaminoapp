.class public Lcom/narvii/share/elements/SnapChatElement;
.super Lcom/narvii/share/elements/BaseElement;
.source "SnapChatElement.java"


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/narvii/share/elements/BaseElement;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method public color()I
    .locals 1

    const/16 v0, -0x200

    return v0
.end method

.method public icon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/narvii/share/elements/BaseElement;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/narvii/lib/R$drawable;->ic_share_snapchat:I

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public label()Ljava/lang/String;
    .locals 2

    .line 42
    iget-object v0, p0, Lcom/narvii/share/elements/BaseElement;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/narvii/lib/R$string;->share_snapchat:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public packageName()Ljava/lang/String;
    .locals 1

    const-string v0, "com.snapchat.android"

    return-object v0
.end method

.method public priority()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public share(Lcom/narvii/share/SharePayload;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/narvii/share/elements/BaseElement;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 49
    iget-object v1, p1, Lcom/narvii/share/SharePayload;->text:Ljava/lang/String;

    iget-object v2, p1, Lcom/narvii/share/SharePayload;->url:Ljava/lang/String;

    const-string v3, "\n"

    invoke-virtual {p0, v1, v2, v3}, Lcom/narvii/share/elements/BaseElement;->joinTextWithUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 50
    iget-object v2, p1, Lcom/narvii/share/SharePayload;->uri:Landroid/net/Uri;

    .line 51
    invoke-virtual {p0, v1}, Lcom/narvii/share/elements/BaseElement;->copyText(Ljava/lang/String;)V

    .line 54
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.SEND"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "android.intent.extra.TEXT"

    .line 55
    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 56
    iget-object v1, p1, Lcom/narvii/share/SharePayload;->subject:Ljava/lang/String;

    const-string v4, "android.intent.extra.SUBJECT"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-nez v2, :cond_2

    const-string p1, "text/plain"

    .line 59
    invoke-virtual {v3, p1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    invoke-virtual {p0, v3}, Lcom/narvii/share/elements/BaseElement;->containActivityCanHanleIntent(Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 61
    invoke-virtual {p0, v3}, Lcom/narvii/share/elements/BaseElement;->startShare(Landroid/content/Intent;)V

    goto :goto_0

    .line 63
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/share/elements/BaseElement;->showNotFoundPakage()V

    goto :goto_0

    .line 66
    :cond_2
    new-instance v1, Lcom/narvii/share/elements/SnapChatElement$1;

    invoke-direct {v1, p0, v3, p1, v2}, Lcom/narvii/share/elements/SnapChatElement$1;-><init>(Lcom/narvii/share/elements/SnapChatElement;Landroid/content/Intent;Lcom/narvii/share/SharePayload;Landroid/net/Uri;)V

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/String;

    const/4 v2, 0x0

    sget v3, Lcom/narvii/lib/R$string;->share_snapchat_hint1:I

    .line 77
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v2

    .line 66
    invoke-virtual {p0, v1, p1}, Lcom/narvii/share/elements/BaseElement;->showTutorialDialog(Landroid/view/View$OnClickListener;[Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public targetName()Ljava/lang/String;
    .locals 1

    const-string v0, "Snapchat"

    return-object v0
.end method

.method public textColor()I
    .locals 1

    const/high16 v0, -0x1000000

    return v0
.end method
