.class public Lcom/narvii/share/elements/FaceBookElement;
.super Lcom/narvii/share/elements/BaseElement;
.source "FaceBookElement.java"


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/narvii/share/elements/BaseElement;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method public color()I
    .locals 1

    const v0, -0xb99c59

    return v0
.end method

.method public icon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 98
    iget-object v0, p0, Lcom/narvii/share/elements/BaseElement;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/narvii/lib/R$drawable;->ic_share_facebook:I

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public label()Ljava/lang/String;
    .locals 2

    .line 39
    iget-object v0, p0, Lcom/narvii/share/elements/BaseElement;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/narvii/lib/R$string;->share_facebook:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public packageName()Ljava/lang/String;
    .locals 1

    const-string v0, "com.facebook.katana"

    return-object v0
.end method

.method public priority()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public share(Lcom/narvii/share/SharePayload;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 45
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 47
    iget-object v1, p1, Lcom/narvii/share/SharePayload;->text:Ljava/lang/String;

    iget-object v2, p1, Lcom/narvii/share/SharePayload;->url:Ljava/lang/String;

    const-string v3, "\n"

    invoke-virtual {p0, v1, v2, v3}, Lcom/narvii/share/elements/BaseElement;->joinTextWithUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 48
    invoke-virtual {p0, v1}, Lcom/narvii/share/elements/BaseElement;->copyText(Ljava/lang/String;)V

    .line 50
    iget-object v2, p1, Lcom/narvii/share/SharePayload;->uri:Landroid/net/Uri;

    if-eqz v2, :cond_1

    .line 51
    new-instance v1, Lcom/narvii/share/elements/FaceBookElement$1;

    invoke-direct {v1, p0, v0, p1}, Lcom/narvii/share/elements/FaceBookElement$1;-><init>(Lcom/narvii/share/elements/FaceBookElement;Landroid/content/Intent;Lcom/narvii/share/SharePayload;)V

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/String;

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/narvii/share/elements/BaseElement;->context:Lcom/narvii/app/NVContext;

    .line 63
    invoke-interface {v2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/narvii/lib/R$string;->share_facebook_hint1:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, v0

    .line 51
    invoke-virtual {p0, v1, p1}, Lcom/narvii/share/elements/BaseElement;->showTutorialDialog(Landroid/view/View$OnClickListener;[Ljava/lang/String;)V

    goto :goto_0

    .line 65
    :cond_1
    iget-object v2, p1, Lcom/narvii/share/SharePayload;->url:Ljava/lang/String;

    const-string v3, "android.intent.extra.TEXT"

    const-string v4, "text/plain"

    if-eqz v2, :cond_3

    .line 66
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    iget-object p1, p1, Lcom/narvii/share/SharePayload;->url:Ljava/lang/String;

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 69
    invoke-virtual {p0, v0}, Lcom/narvii/share/elements/BaseElement;->containActivityCanHanleIntent(Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 70
    invoke-virtual {p0, v0}, Lcom/narvii/share/elements/BaseElement;->startShare(Landroid/content/Intent;)V

    goto :goto_0

    .line 72
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/share/elements/BaseElement;->showNotFoundPakage()V

    goto :goto_0

    .line 77
    :cond_3
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 79
    iget-object p1, p1, Lcom/narvii/share/SharePayload;->subject:Ljava/lang/String;

    const-string v1, "android.intent.extra.SUBJECT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 81
    invoke-virtual {p0, v0}, Lcom/narvii/share/elements/BaseElement;->containActivityCanHanleIntent(Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 82
    iget-object p1, p0, Lcom/narvii/share/elements/BaseElement;->context:Lcom/narvii/app/NVContext;

    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 84
    :cond_4
    invoke-virtual {p0}, Lcom/narvii/share/elements/BaseElement;->showNotFoundPakage()V

    :goto_0
    return-void
.end method

.method public targetName()Ljava/lang/String;
    .locals 1

    const-string v0, "Facebook"

    return-object v0
.end method
