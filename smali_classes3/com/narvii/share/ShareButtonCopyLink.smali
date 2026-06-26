.class public Lcom/narvii/share/ShareButtonCopyLink;
.super Lcom/narvii/share/ShareButtonCustomInfo;
.source "ShareButtonCopyLink.java"


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/narvii/share/ShareButtonCustomInfo;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/share/ShareButtonCopyLink;Ljava/lang/String;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/narvii/share/ShareButtonCopyLink;->copyLink(Ljava/lang/String;)V

    return-void
.end method

.method private copyLink(Ljava/lang/String;)V
    .locals 3

    .line 67
    iget-object v0, p0, Lcom/narvii/share/ShareButtonCustomInfo;->nvContext:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "clipboard"

    .line 69
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ClipboardManager;

    .line 70
    invoke-virtual {v2, p1}, Landroid/content/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 71
    sget p1, Lcom/narvii/lib/R$string;->share_copy_to_clipboard_success:I

    invoke-static {v0, p1, v1}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 73
    :catch_0
    sget p1, Lcom/narvii/lib/R$string;->share_copy_to_clipboard_fail:I

    invoke-static {v0, p1, v1}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    :goto_0
    return-void
.end method

.method private shareToClipboard(Lcom/narvii/share/SharePayload;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 43
    iget-boolean v0, p1, Lcom/narvii/share/SharePayload;->needTranslateLink:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/narvii/share/SharePayload;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    new-instance v0, Lcom/narvii/share/ShareLinkHelper;

    iget-object v1, p0, Lcom/narvii/share/ShareButtonCustomInfo;->nvContext:Lcom/narvii/app/NVContext;

    invoke-direct {v0, v1}, Lcom/narvii/share/ShareLinkHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iget-object v1, p1, Lcom/narvii/share/SharePayload;->object:Lcom/narvii/model/NVObject;

    new-instance v2, Lcom/narvii/share/ShareButtonCopyLink$1;

    invoke-direct {v2, p0, p1}, Lcom/narvii/share/ShareButtonCopyLink$1;-><init>(Lcom/narvii/share/ShareButtonCopyLink;Lcom/narvii/share/SharePayload;)V

    iget p1, p1, Lcom/narvii/share/SharePayload;->translationTarget:I

    invoke-virtual {v0, v1, v2, p1}, Lcom/narvii/share/ShareLinkHelper;->startLinkTranslation(Lcom/narvii/model/NVObject;Lcom/narvii/util/Callback;I)V

    goto :goto_0

    .line 61
    :cond_0
    iget-object p1, p1, Lcom/narvii/share/SharePayload;->url:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/narvii/share/ShareButtonCopyLink;->copyLink(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public getIcon()I
    .locals 1

    .line 28
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

    .line 23
    sget v0, Lcom/narvii/lib/R$string;->share_copy_link:I

    return v0
.end method

.method public onClick(Lcom/narvii/share/SharePayload;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/narvii/share/ShareButtonCopyLink;->shareToClipboard(Lcom/narvii/share/SharePayload;)V

    return-void
.end method
