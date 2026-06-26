.class public Lcom/narvii/blog/post/LinkPostActivity;
.super Lcom/narvii/blog/post/BlogPostActivity;
.source "LinkPostActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/blog/post/LinkPostActivity$DownloadTask;,
        Lcom/narvii/blog/post/LinkPostActivity$SaveImageCallBack;
    }
.end annotation


# static fields
.field static runningTask:Lcom/narvii/blog/post/LinkPostActivity$DownloadTask;


# instance fields
.field callback:Lcom/narvii/util/crawler/LinkPreviewCallback;

.field fromShare:Z

.field isHandingUrl:Z

.field linkDialog:Lcom/narvii/util/dialog/AlertDialog;

.field linkSummary:Lcom/narvii/model/LinkSummary;

.field linkUrl:Ljava/lang/String;

.field parseLoadingDialog:Lcom/narvii/util/dialog/ProgressDialog;

.field photo:Lcom/narvii/photos/PhotoManager;

.field postPreviewLayout:Lcom/narvii/blog/post/LinkPostPreviewLayout;

.field textCrawler:Lcom/narvii/util/crawler/TextCrawler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Lcom/narvii/blog/post/BlogPostActivity;-><init>()V

    .line 280
    new-instance v0, Lcom/narvii/blog/post/LinkPostActivity$6;

    invoke-direct {v0, p0}, Lcom/narvii/blog/post/LinkPostActivity$6;-><init>(Lcom/narvii/blog/post/LinkPostActivity;)V

    iput-object v0, p0, Lcom/narvii/blog/post/LinkPostActivity;->callback:Lcom/narvii/util/crawler/LinkPreviewCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/blog/post/LinkPostActivity;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/narvii/blog/post/LinkPostActivity;->hideProgressDialog()V

    return-void
.end method

.method static synthetic access$100(Lcom/narvii/blog/post/LinkPostActivity;)Ljava/lang/String;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/narvii/post/DraftPostActivity;->draftId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/narvii/blog/post/LinkPostActivity;)Lcom/narvii/post/DraftManager;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/narvii/post/DraftPostActivity;->draftManager:Lcom/narvii/post/DraftManager;

    return-object p0
.end method

.method static downloadUrl(Ljava/lang/String;Ljava/io/File;Ljava/io/File;Lcom/narvii/blog/post/LinkPostActivity$SaveImageCallBack;)V
    .locals 5

    .line 389
    sget-object v0, Lcom/narvii/blog/post/LinkPostActivity;->runningTask:Lcom/narvii/blog/post/LinkPostActivity$DownloadTask;

    if-eqz v0, :cond_0

    .line 390
    iget-object v0, v0, Lcom/narvii/blog/post/LinkPostActivity$DownloadTask;->url:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 393
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    invoke-static {p2}, Lcom/narvii/util/Utils;->readStringFromFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 396
    :cond_1
    new-instance v0, Lcom/narvii/blog/post/LinkPostActivity$DownloadTask;

    invoke-direct {v0, p3}, Lcom/narvii/blog/post/LinkPostActivity$DownloadTask;-><init>(Lcom/narvii/blog/post/LinkPostActivity$SaveImageCallBack;)V

    .line 397
    iput-object p0, v0, Lcom/narvii/blog/post/LinkPostActivity$DownloadTask;->url:Ljava/lang/String;

    .line 398
    iput-object p1, v0, Lcom/narvii/blog/post/LinkPostActivity$DownloadTask;->file:Ljava/io/File;

    .line 399
    iput-object p2, v0, Lcom/narvii/blog/post/LinkPostActivity$DownloadTask;->fileD:Ljava/io/File;

    .line 400
    sput-object v0, Lcom/narvii/blog/post/LinkPostActivity;->runningTask:Lcom/narvii/blog/post/LinkPostActivity$DownloadTask;

    .line 401
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private hideProgressDialog()V
    .locals 1

    .line 353
    iget-object v0, p0, Lcom/narvii/blog/post/LinkPostActivity;->parseLoadingDialog:Lcom/narvii/util/dialog/ProgressDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->isDestoryed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 354
    iget-object v0, p0, Lcom/narvii/blog/post/LinkPostActivity;->parseLoadingDialog:Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    :cond_0
    return-void
.end method


# virtual methods
.method protected checkEligible()V
    .locals 2

    const-string v0, "blog"

    const-string v1, "link"

    .line 152
    invoke-virtual {p0, v0, v1}, Lcom/narvii/post/BasePostActivity;->checkEligible(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method disableView(Landroid/widget/TextView;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 270
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0800f0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x0

    .line 271
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setClickable(Z)V

    return-void
.end method

.method public draftType()Ljava/lang/String;
    .locals 1

    const-string v0, "link"

    return-object v0
.end method

.method enableView(Landroid/widget/TextView;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 276
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0800f1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x1

    .line 277
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setClickable(Z)V

    return-void
.end method

.method protected layoutId()I
    .locals 1

    const v0, 0x7f0b0590

    return v0
.end method

.method public onBackPressed()V
    .locals 1

    .line 141
    iget-boolean v0, p0, Lcom/narvii/blog/post/LinkPostActivity;->isHandingUrl:Z

    if-eqz v0, :cond_0

    .line 142
    invoke-virtual {p0}, Lcom/narvii/blog/post/LinkPostActivity;->showLinkPasteDialog()V

    goto :goto_0

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/narvii/blog/post/LinkPostActivity;->linkDialog:Lcom/narvii/util/dialog/AlertDialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 144
    invoke-virtual {p0}, Lcom/narvii/post/DraftPostActivity;->finish()V

    goto :goto_0

    .line 146
    :cond_1
    invoke-super {p0}, Lcom/narvii/app/NVActivity;->onBackPressed()V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 79
    invoke-super {p0, p1}, Lcom/narvii/blog/post/BlogPostActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f09066c

    .line 80
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/blog/post/LinkPostPreviewLayout;

    iput-object v0, p0, Lcom/narvii/blog/post/LinkPostActivity;->postPreviewLayout:Lcom/narvii/blog/post/LinkPostPreviewLayout;

    .line 82
    new-instance v0, Lcom/narvii/util/crawler/TextCrawler;

    invoke-direct {v0, p0}, Lcom/narvii/util/crawler/TextCrawler;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/blog/post/LinkPostActivity;->textCrawler:Lcom/narvii/util/crawler/TextCrawler;

    .line 83
    new-instance v0, Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/narvii/blog/post/LinkPostActivity;->parseLoadingDialog:Lcom/narvii/util/dialog/ProgressDialog;

    .line 84
    iget-object v0, p0, Lcom/narvii/blog/post/LinkPostActivity;->parseLoadingDialog:Lcom/narvii/util/dialog/ProgressDialog;

    new-instance v1, Lcom/narvii/blog/post/LinkPostActivity$1;

    invoke-direct {v1, p0}, Lcom/narvii/blog/post/LinkPostActivity$1;-><init>(Lcom/narvii/blog/post/LinkPostActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 93
    new-instance v0, Lcom/narvii/util/dialog/AlertDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/narvii/blog/post/LinkPostActivity;->linkDialog:Lcom/narvii/util/dialog/AlertDialog;

    .line 94
    iget-object v0, p0, Lcom/narvii/blog/post/LinkPostActivity;->linkDialog:Lcom/narvii/util/dialog/AlertDialog;

    new-instance v1, Lcom/narvii/blog/post/LinkPostActivity$2;

    invoke-direct {v1, p0}, Lcom/narvii/blog/post/LinkPostActivity$2;-><init>(Lcom/narvii/blog/post/LinkPostActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    const-string v0, "photo"

    .line 102
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/photos/PhotoManager;

    iput-object v0, p0, Lcom/narvii/blog/post/LinkPostActivity;->photo:Lcom/narvii/photos/PhotoManager;

    .line 104
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "android.intent.extra.TEXT"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 107
    iput-boolean v1, p0, Lcom/narvii/blog/post/LinkPostActivity;->fromShare:Z

    .line 108
    iput-object v0, p0, Lcom/narvii/blog/post/LinkPostActivity;->linkUrl:Ljava/lang/String;

    .line 112
    :cond_0
    iget-boolean v0, p0, Lcom/narvii/blog/post/LinkPostActivity;->fromShare:Z

    if-nez v0, :cond_3

    .line 113
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 114
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 115
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    .line 116
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    .line 117
    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    .line 118
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "://"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/narvii/blog/post/LinkPostActivity;->linkUrl:Ljava/lang/String;

    .line 119
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 120
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/narvii/blog/post/LinkPostActivity;->linkUrl:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/narvii/blog/post/LinkPostActivity;->linkUrl:Ljava/lang/String;

    goto :goto_0

    .line 122
    :cond_1
    invoke-virtual {v0}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 123
    iget-object v2, p0, Lcom/narvii/blog/post/LinkPostActivity;->linkUrl:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v1

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/narvii/blog/post/LinkPostActivity;->linkUrl:Ljava/lang/String;

    .line 124
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/narvii/blog/post/LinkPostActivity;->linkUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/blog/post/LinkPostActivity;->linkUrl:Ljava/lang/String;

    .line 126
    :cond_2
    iput-boolean v1, p0, Lcom/narvii/blog/post/LinkPostActivity;->fromShare:Z

    .line 130
    :cond_3
    iget-boolean v0, p0, Lcom/narvii/blog/post/LinkPostActivity;->fromShare:Z

    if-eqz v0, :cond_4

    if-nez p1, :cond_4

    .line 131
    new-instance p1, Lcom/narvii/blog/post/BlogPost;

    invoke-direct {p1}, Lcom/narvii/blog/post/BlogPost;-><init>()V

    const/4 v0, 0x5

    .line 132
    iput v0, p1, Lcom/narvii/blog/post/BlogPost;->type:I

    .line 133
    iput-object p1, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    .line 135
    iget-object p1, p0, Lcom/narvii/blog/post/LinkPostActivity;->textCrawler:Lcom/narvii/util/crawler/TextCrawler;

    iget-object v0, p0, Lcom/narvii/blog/post/LinkPostActivity;->callback:Lcom/narvii/util/crawler/LinkPreviewCallback;

    iget-object v1, p0, Lcom/narvii/blog/post/LinkPostActivity;->linkUrl:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/narvii/util/crawler/TextCrawler;->makePreview(Lcom/narvii/util/crawler/LinkPreviewCallback;Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method protected onPostLoaded(Lcom/narvii/blog/post/BlogPost;)V
    .locals 1

    .line 157
    invoke-super {p0, p1}, Lcom/narvii/blog/post/BlogPostActivity;->onPostLoaded(Lcom/narvii/blog/post/BlogPost;)V

    .line 158
    invoke-virtual {p0}, Lcom/narvii/blog/post/BlogPostActivity;->isEdit()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0f03cd

    .line 159
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(I)V

    goto :goto_0

    :cond_0
    const v0, 0x7f0f0dc0

    .line 161
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(I)V

    .line 163
    :goto_0
    invoke-virtual {p0}, Lcom/narvii/blog/post/BlogPostActivity;->isEdit()Z

    move-result v0

    if-nez v0, :cond_6

    if-eqz p1, :cond_4

    .line 164
    invoke-virtual {p1}, Lcom/narvii/blog/post/BlogPost;->title()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/narvii/blog/post/BlogPost;->title()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    .line 165
    :cond_1
    invoke-virtual {p1}, Lcom/narvii/blog/post/BlogPost;->icon()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/narvii/blog/post/BlogPost;->icon()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    .line 166
    :cond_2
    invoke-virtual {p1}, Lcom/narvii/blog/post/BlogPost;->content()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/narvii/blog/post/BlogPost;->content()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v0, 0x1

    :goto_2
    if-nez v0, :cond_5

    .line 168
    iget-object v0, p1, Lcom/narvii/feed/BackgroundPost;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/narvii/blog/post/BlogPost;->getLinkSummary()Lcom/narvii/model/LinkSummary;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 169
    invoke-virtual {p1}, Lcom/narvii/blog/post/BlogPost;->getLinkSummary()Lcom/narvii/model/LinkSummary;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/blog/post/LinkPostActivity;->linkSummary:Lcom/narvii/model/LinkSummary;

    goto :goto_3

    .line 171
    :cond_5
    iget-object p1, p0, Lcom/narvii/blog/post/LinkPostActivity;->linkUrl:Ljava/lang/String;

    if-nez p1, :cond_6

    .line 172
    invoke-virtual {p0}, Lcom/narvii/blog/post/LinkPostActivity;->showLinkPasteDialog()V

    :cond_6
    :goto_3
    return-void
.end method

.method protected bridge synthetic onPostLoaded(Lcom/narvii/post/PostObject;)V
    .locals 0

    .line 45
    check-cast p1, Lcom/narvii/blog/post/BlogPost;

    invoke-virtual {p0, p1}, Lcom/narvii/blog/post/LinkPostActivity;->onPostLoaded(Lcom/narvii/blog/post/BlogPost;)V

    return-void
.end method

.method saveImage(Ljava/lang/String;Lcom/narvii/blog/post/LinkPostActivity$SaveImageCallBack;)V
    .locals 3

    .line 359
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->isDestoryed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 360
    :cond_0
    iget-object v0, p0, Lcom/narvii/post/DraftPostActivity;->draftManager:Lcom/narvii/post/DraftManager;

    iget-object v1, p0, Lcom/narvii/post/DraftPostActivity;->draftId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/narvii/post/DraftManager;->getDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 361
    new-instance v1, Ljava/io/File;

    const-string v2, "thumb.tmp"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 362
    invoke-static {p1, v1, v0, p2}, Lcom/narvii/blog/post/LinkPostActivity;->downloadUrl(Ljava/lang/String;Ljava/io/File;Ljava/io/File;Lcom/narvii/blog/post/LinkPostActivity$SaveImageCallBack;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected savePost()Lcom/narvii/blog/post/BlogPost;
    .locals 4

    .line 186
    invoke-super {p0}, Lcom/narvii/blog/post/BlogPostActivity;->savePost()Lcom/narvii/blog/post/BlogPost;

    move-result-object v0

    .line 187
    iget-object v1, p0, Lcom/narvii/blog/post/LinkPostActivity;->linkSummary:Lcom/narvii/model/LinkSummary;

    if-eqz v1, :cond_4

    .line 188
    iget-object v1, v0, Lcom/narvii/feed/BackgroundPost;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    if-nez v1, :cond_0

    .line 189
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v1

    iput-object v1, v0, Lcom/narvii/feed/BackgroundPost;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 191
    :cond_0
    sget-object v1, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    iget-object v2, p0, Lcom/narvii/blog/post/LinkPostActivity;->linkSummary:Lcom/narvii/model/LinkSummary;

    const-class v3, Lcom/fasterxml/jackson/databind/JsonNode;

    invoke-virtual {v1, v2, v3}, Lcom/fasterxml/jackson/databind/ObjectMapper;->convertValue(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fasterxml/jackson/databind/JsonNode;

    .line 192
    iget-object v2, v0, Lcom/narvii/feed/BackgroundPost;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const-string v3, "pageSnippet"

    invoke-virtual {v2, v3, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 193
    iget-object v1, p0, Lcom/narvii/blog/post/LinkPostActivity;->linkSummary:Lcom/narvii/model/LinkSummary;

    if-eqz v1, :cond_2

    iget-object v1, v1, Lcom/narvii/model/LinkSummary;->mediaList:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 194
    iget-object v1, v0, Lcom/narvii/blog/post/BlogPost;->extensionMediaList:Ljava/util/List;

    if-nez v1, :cond_1

    .line 195
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/narvii/blog/post/BlogPost;->extensionMediaList:Ljava/util/List;

    .line 197
    :cond_1
    iget-object v1, p0, Lcom/narvii/blog/post/LinkPostActivity;->linkSummary:Lcom/narvii/model/LinkSummary;

    iget-object v1, v1, Lcom/narvii/model/LinkSummary;->mediaList:Ljava/util/List;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    iget-object v1, v0, Lcom/narvii/blog/post/BlogPost;->extensionMediaList:Ljava/util/List;

    iget-object v2, p0, Lcom/narvii/blog/post/LinkPostActivity;->linkSummary:Lcom/narvii/model/LinkSummary;

    iget-object v2, v2, Lcom/narvii/model/LinkSummary;->mediaList:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 198
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/narvii/blog/post/BlogPost;->extensionMediaList:Ljava/util/List;

    .line 199
    iget-object v1, v0, Lcom/narvii/blog/post/BlogPost;->extensionMediaList:Ljava/util/List;

    iget-object v2, p0, Lcom/narvii/blog/post/LinkPostActivity;->linkSummary:Lcom/narvii/model/LinkSummary;

    iget-object v2, v2, Lcom/narvii/model/LinkSummary;->mediaList:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 202
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/narvii/blog/post/BlogPost;->extensionMediaList:Ljava/util/List;

    .line 204
    :cond_3
    :goto_0
    iput-object v0, p0, Lcom/narvii/post/DraftPostActivity;->post:Lcom/narvii/post/PostObject;

    :cond_4
    return-object v0
.end method

.method protected bridge synthetic savePost()Lcom/narvii/post/PostObject;
    .locals 1

    .line 45
    invoke-virtual {p0}, Lcom/narvii/blog/post/LinkPostActivity;->savePost()Lcom/narvii/blog/post/BlogPost;

    move-result-object v0

    return-object v0
.end method

.method showLinkPasteDialog()V
    .locals 5

    .line 210
    iget-object v0, p0, Lcom/narvii/blog/post/LinkPostActivity;->linkDialog:Lcom/narvii/util/dialog/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->isDestoryed()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 213
    :cond_1
    iget-object v0, p0, Lcom/narvii/blog/post/LinkPostActivity;->linkDialog:Lcom/narvii/util/dialog/AlertDialog;

    const v1, 0x7f0f0ae9

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/util/dialog/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 214
    iget-object v0, p0, Lcom/narvii/blog/post/LinkPostActivity;->linkDialog:Lcom/narvii/util/dialog/AlertDialog;

    invoke-virtual {v0}, Lcom/narvii/util/dialog/AlertDialog;->setEditText()Landroid/widget/EditText;

    move-result-object v0

    const v1, 0x7f0f0aea

    .line 215
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 216
    iget-object v1, p0, Lcom/narvii/blog/post/LinkPostActivity;->linkDialog:Lcom/narvii/util/dialog/AlertDialog;

    invoke-virtual {v1}, Lcom/narvii/util/dialog/AlertDialog;->clearButtons()V

    .line 217
    iget-object v1, p0, Lcom/narvii/blog/post/LinkPostActivity;->linkDialog:Lcom/narvii/util/dialog/AlertDialog;

    const v2, 0x7f0f0193

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-instance v4, Lcom/narvii/blog/post/LinkPostActivity$3;

    invoke-direct {v4, p0}, Lcom/narvii/blog/post/LinkPostActivity$3;-><init>(Lcom/narvii/blog/post/LinkPostActivity;)V

    invoke-virtual {v1, v2, v3, v4}, Lcom/narvii/util/dialog/AlertDialog;->addButton(Ljava/lang/CharSequence;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 225
    iget-object v1, p0, Lcom/narvii/blog/post/LinkPostActivity;->linkDialog:Lcom/narvii/util/dialog/AlertDialog;

    const v2, 0x7f0f03aa

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x20

    new-instance v4, Lcom/narvii/blog/post/LinkPostActivity$4;

    invoke-direct {v4, p0, v0}, Lcom/narvii/blog/post/LinkPostActivity$4;-><init>(Lcom/narvii/blog/post/LinkPostActivity;Landroid/widget/EditText;)V

    invoke-virtual {v1, v2, v3, v4}, Lcom/narvii/util/dialog/AlertDialog;->addButton(Ljava/lang/CharSequence;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 238
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 239
    invoke-virtual {p0, v1}, Lcom/narvii/blog/post/LinkPostActivity;->enableView(Landroid/widget/TextView;)V

    goto :goto_0

    .line 241
    :cond_2
    invoke-virtual {p0, v1}, Lcom/narvii/blog/post/LinkPostActivity;->disableView(Landroid/widget/TextView;)V

    .line 243
    :goto_0
    new-instance v2, Lcom/narvii/blog/post/LinkPostActivity$5;

    invoke-direct {v2, p0, v1}, Lcom/narvii/blog/post/LinkPostActivity$5;-><init>(Lcom/narvii/blog/post/LinkPostActivity;Landroid/widget/TextView;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 265
    iget-object v0, p0, Lcom/narvii/blog/post/LinkPostActivity;->linkDialog:Lcom/narvii/util/dialog/AlertDialog;

    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    :cond_3
    :goto_1
    return-void
.end method

.method protected updateView(Lcom/narvii/blog/post/BlogPost;)V
    .locals 1

    .line 179
    invoke-super {p0, p1}, Lcom/narvii/blog/post/BlogPostActivity;->updateView(Lcom/narvii/blog/post/BlogPost;)V

    .line 180
    invoke-virtual {p1}, Lcom/narvii/blog/post/BlogPost;->getLinkSummary()Lcom/narvii/model/LinkSummary;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/blog/post/LinkPostActivity;->linkSummary:Lcom/narvii/model/LinkSummary;

    .line 181
    iget-object p1, p0, Lcom/narvii/blog/post/LinkPostActivity;->postPreviewLayout:Lcom/narvii/blog/post/LinkPostPreviewLayout;

    iget-object v0, p0, Lcom/narvii/blog/post/LinkPostActivity;->linkSummary:Lcom/narvii/model/LinkSummary;

    invoke-virtual {p1, v0}, Lcom/narvii/blog/post/LinkPostPreviewLayout;->setLinkSummary(Lcom/narvii/model/LinkSummary;)V

    return-void
.end method

.method protected bridge synthetic updateView(Lcom/narvii/feed/BackgroundPost;)V
    .locals 0

    .line 45
    check-cast p1, Lcom/narvii/blog/post/BlogPost;

    invoke-virtual {p0, p1}, Lcom/narvii/blog/post/LinkPostActivity;->updateView(Lcom/narvii/blog/post/BlogPost;)V

    return-void
.end method

.method protected bridge synthetic updateView(Lcom/narvii/post/PostObject;)V
    .locals 0

    .line 45
    check-cast p1, Lcom/narvii/blog/post/BlogPost;

    invoke-virtual {p0, p1}, Lcom/narvii/blog/post/LinkPostActivity;->updateView(Lcom/narvii/blog/post/BlogPost;)V

    return-void
.end method

.method protected validateUpload(Lcom/narvii/blog/post/BlogPost;)Z
    .locals 4

    .line 367
    iget-object v0, p0, Lcom/narvii/blog/post/BlogPostActivity;->editTitle:Landroid/widget/EditText;

    const v1, 0x7f0f0daf

    invoke-virtual {p0, v0, v1}, Lcom/narvii/post/BasePostActivity;->validateEditTextNotEmpty(Landroid/widget/EditText;I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 370
    :cond_0
    iget-object v0, p0, Lcom/narvii/blog/post/BlogPostActivity;->editContent:Lcom/narvii/widget/EditTextIMG;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    iget-object v2, p1, Lcom/narvii/blog/post/BlogPost;->mediaList:Ljava/util/List;

    invoke-static {v0, v2}, Lcom/narvii/util/text/IMGUtils;->filterRefIds(Landroid/text/Editable;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 371
    invoke-virtual {p0}, Lcom/narvii/blog/post/LinkPostActivity;->savePost()Lcom/narvii/blog/post/BlogPost;

    .line 375
    :cond_1
    invoke-virtual {p1}, Lcom/narvii/blog/post/BlogPost;->getLinkSummary()Lcom/narvii/model/LinkSummary;

    move-result-object v0

    if-nez v0, :cond_2

    return v1

    .line 378
    :cond_2
    iget-object v0, p1, Lcom/narvii/blog/post/BlogPost;->mediaList:Ljava/util/List;

    const/16 v2, 0x19

    const v3, 0x7f0f0dc5

    invoke-virtual {p0, v0, v2, v3}, Lcom/narvii/post/BasePostActivity;->validateMediaListMax(Ljava/util/List;II)Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    .line 381
    :cond_3
    iget-object v0, p1, Lcom/narvii/feed/BackgroundPost;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/narvii/blog/post/BlogPost;->getLinkSummary()Lcom/narvii/model/LinkSummary;

    move-result-object p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 p1, 0x1

    return p1

    :cond_5
    :goto_0
    return v1
.end method

.method protected bridge synthetic validateUpload(Lcom/narvii/post/PostObject;)Z
    .locals 0

    .line 45
    check-cast p1, Lcom/narvii/blog/post/BlogPost;

    invoke-virtual {p0, p1}, Lcom/narvii/blog/post/LinkPostActivity;->validateUpload(Lcom/narvii/blog/post/BlogPost;)Z

    move-result p1

    return p1
.end method
