.class public Lcom/narvii/share/ShareButtonCopyLink;
.super Lcom/narvii/share/ShareButtonCustomInfo;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/share/ShareButtonCustomInfo;-><init>(Lcom/narvii/app/NVContext;)V

    .line 4
    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/share/ShareButtonCopyLink;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/share/ShareButtonCopyLink;->copyLink(Ljava/lang/String;)V

    return-void
.end method

.method private copyLink(Ljava/lang/String;)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/share/ShareButtonCustomInfo;->nvContext:Lcom/narvii/app/NVContext;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    .line 9
    :try_start_0
    const-string v2, "clipboard"

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    move-result-object v2

    .line 14
    .line 15
    check-cast v2, Landroid/content/ClipboardManager;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2, p1}, Landroid/content/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 19
    .line 20
    sget p1, Lcom/narvii/lib/R$string;->share_copy_to_clipboard_success:I

    .line 21
    .line 22
    .line 23
    invoke-static {v0, p1, v1}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    .line 24
    move-result-object p1

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    goto :goto_0

    .line 29
    .line 30
    :catch_0
    sget p1, Lcom/narvii/lib/R$string;->share_copy_to_clipboard_fail:I

    .line 31
    .line 32
    .line 33
    invoke-static {v0, p1, v1}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    .line 34
    move-result-object p1

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 38
    :goto_0
    return-void
.end method

.method private shareToClipboard(Lcom/narvii/share/SharePayload;)V
    .locals 3

    .line 1
    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    iget-boolean v0, p1, Lcom/narvii/share/SharePayload;->needTranslateLink:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p1, Lcom/narvii/share/SharePayload;->url:Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    new-instance v0, Lcom/narvii/share/ShareLinkHelper;

    .line 17
    .line 18
    iget-object v1, p0, Lcom/narvii/share/ShareButtonCustomInfo;->nvContext:Lcom/narvii/app/NVContext;

    .line 19
    .line 20
    .line 21
    invoke-direct {v0, v1}, Lcom/narvii/share/ShareLinkHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 22
    .line 23
    iget-object v1, p1, Lcom/narvii/share/SharePayload;->object:Lcom/narvii/model/NVObject;

    .line 24
    .line 25
    new-instance v2, Lcom/narvii/share/ShareButtonCopyLink$1;

    .line 26
    .line 27
    .line 28
    invoke-direct {v2, p0, p1}, Lcom/narvii/share/ShareButtonCopyLink$1;-><init>(Lcom/narvii/share/ShareButtonCopyLink;Lcom/narvii/share/SharePayload;)V

    .line 29
    .line 30
    iget p1, p1, Lcom/narvii/share/SharePayload;->translationTarget:I

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1, v2, p1}, Lcom/narvii/share/ShareLinkHelper;->startLinkTranslation(Lcom/narvii/model/NVObject;Lcom/narvii/util/Callback;I)V

    .line 34
    goto :goto_0

    .line 35
    .line 36
    :cond_0
    iget-object p1, p1, Lcom/narvii/share/SharePayload;->url:Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    invoke-direct {p0, p1}, Lcom/narvii/share/ShareButtonCopyLink;->copyLink(Ljava/lang/String;)V

    .line 40
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public getIcon()I
    .locals 1

    sget v0, Lcom/narvii/lib/R$drawable;->ic_share_link:I

    return v0
.end method

.method public getStatSelectionForShare()Ljava/lang/String;
    .locals 1

    const-string v0, "Link"

    return-object v0
.end method

.method public getTextString()I
    .locals 1

    sget v0, Lcom/narvii/lib/R$string;->share_copy_link:I

    return v0
.end method

.method public onClick(Lcom/narvii/share/SharePayload;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/share/ShareButtonCopyLink;->shareToClipboard(Lcom/narvii/share/SharePayload;)V

    .line 4
    return-void
.end method
