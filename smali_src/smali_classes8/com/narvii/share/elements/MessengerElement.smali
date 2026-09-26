.class public Lcom/narvii/share/elements/MessengerElement;
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

.method public static safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(Lcom/narvii/app/NVContext;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Lcom/narvii/app/NVContext;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p0, p1}, Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public color()I
    .locals 1

    const v0, -0xff7b01

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
    sget v1, Lcom/narvii/lib/R$drawable;->ic_share_messenger:I

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
    sget v1, Lcom/narvii/lib/R$string;->share_messenger:I

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

    const-string v0, "com.facebook.orca"

    return-object v0
.end method

.method public priority()I
    .locals 1

    const/4 v0, 0x4

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
    iget-object v1, p1, Lcom/narvii/share/SharePayload;->uri:Landroid/net/Uri;

    .line 19
    .line 20
    if-nez v1, :cond_2

    .line 21
    .line 22
    new-instance v1, Landroid/content/Intent;

    .line 23
    .line 24
    const-string v2, "android.intent.action.SEND"

    .line 25
    .line 26
    .line 27
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const-string/jumbo v2, "text/plain"

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 34
    .line 35
    const-string v2, "android.intent.extra.TEXT"

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 39
    .line 40
    const-string v0, "android.intent.extra.SUBJECT"

    .line 41
    .line 42
    iget-object p1, p1, Lcom/narvii/share/SharePayload;->subject:Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, v1}, Lcom/narvii/share/elements/BaseElement;->containActivityCanHanleIntent(Landroid/content/Intent;)Z

    .line 49
    move-result p1

    .line 50
    .line 51
    if-eqz p1, :cond_1

    .line 52
    .line 53
    iget-object p1, p0, Lcom/narvii/share/elements/BaseElement;->context:Lcom/narvii/app/NVContext;

    .line 54
    .line 55
    .line 56
    invoke-static {p1, v1}, Lcom/narvii/share/elements/MessengerElement;->safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(Lcom/narvii/app/NVContext;Landroid/content/Intent;)V

    .line 57
    goto :goto_0

    .line 58
    .line 59
    .line 60
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/share/elements/BaseElement;->showNotFoundPakage()V

    .line 61
    goto :goto_0

    .line 62
    .line 63
    :cond_2
    new-instance v1, Lcom/narvii/share/elements/MessengerElement$1;

    .line 64
    .line 65
    .line 66
    invoke-direct {v1, p0, p1, v0}, Lcom/narvii/share/elements/MessengerElement$1;-><init>(Lcom/narvii/share/elements/MessengerElement;Lcom/narvii/share/SharePayload;Ljava/lang/String;)V

    .line 67
    .line 68
    iget-object p1, p0, Lcom/narvii/share/elements/BaseElement;->context:Lcom/narvii/app/NVContext;

    .line 69
    .line 70
    .line 71
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 72
    move-result-object p1

    .line 73
    .line 74
    sget v0, Lcom/narvii/lib/R$string;->share_snapchat_hint1:I

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 78
    move-result-object p1

    .line 79
    .line 80
    .line 81
    filled-new-array {p1}, [Ljava/lang/String;

    .line 82
    move-result-object p1

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0, v1, p1}, Lcom/narvii/share/elements/BaseElement;->showTutorialDialog(Landroid/view/View$OnClickListener;[Ljava/lang/String;)V

    .line 86
    :goto_0
    return-void
.end method

.method public targetName()Ljava/lang/String;
    .locals 1

    const-string v0, "Messenger"

    return-object v0
.end method

.method public textColor()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method
