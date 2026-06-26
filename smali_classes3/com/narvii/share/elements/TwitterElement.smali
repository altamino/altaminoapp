.class public Lcom/narvii/share/elements/TwitterElement;
.super Lcom/narvii/share/elements/BaseElement;
.source "TwitterElement.java"


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/narvii/share/elements/BaseElement;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method public color()I
    .locals 1

    const v0, -0xe9600e

    return v0
.end method

.method public icon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 65
    iget-object v0, p0, Lcom/narvii/share/elements/BaseElement;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/narvii/lib/R$drawable;->ic_share_twitter:I

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public label()Ljava/lang/String;
    .locals 2

    .line 38
    iget-object v0, p0, Lcom/narvii/share/elements/BaseElement;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/narvii/lib/R$string;->share_twitter:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public packageName()Ljava/lang/String;
    .locals 1

    const-string v0, "com.twitter.android"

    return-object v0
.end method

.method public priority()I
    .locals 1

    const/16 v0, 0x9

    return v0
.end method

.method public share(Lcom/narvii/share/SharePayload;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 44
    :cond_0
    iget-object v0, p1, Lcom/narvii/share/SharePayload;->text:Ljava/lang/String;

    iget-object v1, p1, Lcom/narvii/share/SharePayload;->url:Ljava/lang/String;

    const-string v2, "\n"

    invoke-virtual {p0, v0, v1, v2}, Lcom/narvii/share/elements/BaseElement;->joinTextWithUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 45
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "*/*"

    .line 46
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.intent.extra.TEXT"

    .line 47
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 48
    iget-object p1, p1, Lcom/narvii/share/SharePayload;->uri:Landroid/net/Uri;

    if-eqz p1, :cond_1

    const-string v0, "android.intent.extra.STREAM"

    .line 49
    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 51
    :cond_1
    invoke-virtual {p0, v1}, Lcom/narvii/share/elements/BaseElement;->containActivityCanHanleIntent(Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 52
    invoke-virtual {p0, v1}, Lcom/narvii/share/elements/BaseElement;->startShare(Landroid/content/Intent;)V

    goto :goto_0

    .line 54
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/share/elements/BaseElement;->showNotFoundPakage()V

    :goto_0
    return-void
.end method

.method public targetName()Ljava/lang/String;
    .locals 1

    const-string v0, "Twitter"

    return-object v0
.end method
