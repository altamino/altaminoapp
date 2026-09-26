.class public Lcom/narvii/share/elements/SnapChatElement;
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

    const/16 v0, -0x200

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
    sget v1, Lcom/narvii/lib/R$drawable;->ic_share_snapchat:I

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
    sget v1, Lcom/narvii/lib/R$string;->share_snapchat:I

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

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    :cond_0
    iget-object v0, p0, Lcom/narvii/share/elements/BaseElement;->context:Lcom/narvii/app/NVContext;

    .line 6
    .line 7
    .line 8
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    iget-object v1, p1, Lcom/narvii/share/SharePayload;->text:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v2, p1, Lcom/narvii/share/SharePayload;->url:Ljava/lang/String;

    .line 14
    .line 15
    const-string v3, "\n"

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v1, v2, v3}, Lcom/narvii/share/elements/BaseElement;->joinTextWithUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    iget-object v2, p1, Lcom/narvii/share/SharePayload;->uri:Landroid/net/Uri;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v1}, Lcom/narvii/share/elements/BaseElement;->copyText(Ljava/lang/String;)V

    .line 25
    .line 26
    new-instance v3, Landroid/content/Intent;

    .line 27
    .line 28
    const-string v4, "android.intent.action.SEND"

    .line 29
    .line 30
    .line 31
    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    const-string v4, "android.intent.extra.TEXT"

    .line 34
    .line 35
    .line 36
    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 37
    .line 38
    const-string v1, "android.intent.extra.SUBJECT"

    .line 39
    .line 40
    iget-object v4, p1, Lcom/narvii/share/SharePayload;->subject:Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v3, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 44
    .line 45
    if-nez v2, :cond_2

    .line 46
    .line 47
    .line 48
    const-string/jumbo p1, "text/plain"

    .line 49
    .line 50
    .line 51
    invoke-virtual {v3, p1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, v3}, Lcom/narvii/share/elements/BaseElement;->containActivityCanHanleIntent(Landroid/content/Intent;)Z

    .line 55
    move-result p1

    .line 56
    .line 57
    if-eqz p1, :cond_1

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0, v3}, Lcom/narvii/share/elements/BaseElement;->startShare(Landroid/content/Intent;)V

    .line 61
    goto :goto_0

    .line 62
    .line 63
    .line 64
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/share/elements/BaseElement;->showNotFoundPakage()V

    .line 65
    goto :goto_0

    .line 66
    .line 67
    :cond_2
    new-instance v1, Lcom/narvii/share/elements/SnapChatElement$1;

    .line 68
    .line 69
    .line 70
    invoke-direct {v1, p0, v3, p1, v2}, Lcom/narvii/share/elements/SnapChatElement$1;-><init>(Lcom/narvii/share/elements/SnapChatElement;Landroid/content/Intent;Lcom/narvii/share/SharePayload;Landroid/net/Uri;)V

    .line 71
    .line 72
    sget p1, Lcom/narvii/lib/R$string;->share_snapchat_hint1:I

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 76
    move-result-object p1

    .line 77
    .line 78
    .line 79
    filled-new-array {p1}, [Ljava/lang/String;

    .line 80
    move-result-object p1

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0, v1, p1}, Lcom/narvii/share/elements/BaseElement;->showTutorialDialog(Landroid/view/View$OnClickListener;[Ljava/lang/String;)V

    .line 84
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
