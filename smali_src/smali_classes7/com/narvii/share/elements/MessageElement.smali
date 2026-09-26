.class public Lcom/narvii/share/elements/MessageElement;
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

    const v0, -0xff3abb

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
    sget v1, Lcom/narvii/lib/R$drawable;->ic_share_message:I

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
    sget v1, Lcom/narvii/lib/R$string;->share_sms:I

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

    const/4 v0, 0x0

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
    :try_start_0
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
    iget-object v1, p0, Lcom/narvii/share/elements/BaseElement;->context:Lcom/narvii/app/NVContext;

    .line 16
    .line 17
    .line 18
    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    .line 22
    invoke-static {v1}, Landroid/provider/Telephony$Sms;->getDefaultSmsPackage(Landroid/content/Context;)Ljava/lang/String;

    .line 23
    move-result-object v1

    .line 24
    .line 25
    new-instance v2, Landroid/content/Intent;

    .line 26
    .line 27
    const-string v3, "android.intent.action.SEND"

    .line 28
    .line 29
    .line 30
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    iget-object v3, p1, Lcom/narvii/share/SharePayload;->uri:Landroid/net/Uri;

    .line 33
    .line 34
    if-eqz v3, :cond_1

    .line 35
    .line 36
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 37
    .line 38
    const-string v4, "XT1064"

    .line 39
    .line 40
    .line 41
    invoke-static {v3, v4}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 42
    move-result v3

    .line 43
    .line 44
    if-nez v3, :cond_1

    .line 45
    .line 46
    const-string v3, "android.intent.extra.STREAM"

    .line 47
    .line 48
    iget-object v4, p1, Lcom/narvii/share/SharePayload;->uri:Landroid/net/Uri;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 52
    .line 53
    .line 54
    :cond_1
    invoke-virtual {p1}, Lcom/narvii/share/SharePayload;->mimeType()Ljava/lang/String;

    .line 55
    move-result-object p1

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2, p1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    .line 60
    const-string p1, "android.intent.extra.TEXT"

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 64
    .line 65
    const-string p1, "sms_body"

    .line 66
    .line 67
    .line 68
    invoke-virtual {v2, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 69
    .line 70
    if-eqz v1, :cond_2

    .line 71
    .line 72
    .line 73
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 74
    .line 75
    .line 76
    :cond_2
    invoke-virtual {p0, v2}, Lcom/narvii/share/elements/BaseElement;->startShare(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :catch_0
    return-void
.end method

.method public targetName()Ljava/lang/String;
    .locals 1

    const-string v0, "Message"

    return-object v0
.end method
