.class Lcom/narvii/blog/post/LinkPostActivity$6;
.super Ljava/lang/Object;
.source "LinkPostActivity.java"

# interfaces
.implements Lcom/narvii/util/crawler/LinkPreviewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/blog/post/LinkPostActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/blog/post/LinkPostActivity;


# direct methods
.method constructor <init>(Lcom/narvii/blog/post/LinkPostActivity;)V
    .locals 0

    .line 280
    iput-object p1, p0, Lcom/narvii/blog/post/LinkPostActivity$6;->this$0:Lcom/narvii/blog/post/LinkPostActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPos(Lcom/narvii/util/crawler/SourceContent;Z)V
    .locals 2

    .line 291
    iget-object v0, p0, Lcom/narvii/blog/post/LinkPostActivity$6;->this$0:Lcom/narvii/blog/post/LinkPostActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/narvii/blog/post/LinkPostActivity$6;->this$0:Lcom/narvii/blog/post/LinkPostActivity;

    invoke-virtual {v0}, Lcom/narvii/app/NVActivity;->isDestoryed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 294
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/util/crawler/SourceContent;->getFinalUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    if-eqz p2, :cond_1

    goto :goto_0

    .line 300
    :cond_1
    iget-object p2, p0, Lcom/narvii/blog/post/LinkPostActivity$6;->this$0:Lcom/narvii/blog/post/LinkPostActivity;

    new-instance v0, Lcom/narvii/model/LinkSummary;

    invoke-direct {v0, p1}, Lcom/narvii/model/LinkSummary;-><init>(Lcom/narvii/util/crawler/SourceContent;)V

    iput-object v0, p2, Lcom/narvii/blog/post/LinkPostActivity;->linkSummary:Lcom/narvii/model/LinkSummary;

    .line 301
    iget-object p1, p0, Lcom/narvii/blog/post/LinkPostActivity$6;->this$0:Lcom/narvii/blog/post/LinkPostActivity;

    iget-object p2, p1, Lcom/narvii/blog/post/LinkPostActivity;->linkUrl:Ljava/lang/String;

    if-eqz p2, :cond_2

    .line 302
    iget-object p1, p1, Lcom/narvii/blog/post/LinkPostActivity;->linkSummary:Lcom/narvii/model/LinkSummary;

    invoke-static {p2}, Lcom/narvii/util/crawler/TextCrawler;->extendedTrim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/narvii/model/LinkSummary;->setLink(Ljava/lang/String;)V

    .line 304
    :cond_2
    iget-object p1, p0, Lcom/narvii/blog/post/LinkPostActivity$6;->this$0:Lcom/narvii/blog/post/LinkPostActivity;

    invoke-virtual {p1}, Lcom/narvii/blog/post/LinkPostActivity;->savePost()Lcom/narvii/blog/post/BlogPost;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/narvii/blog/post/LinkPostActivity;->updateView(Lcom/narvii/blog/post/BlogPost;)V

    .line 306
    iget-object p1, p0, Lcom/narvii/blog/post/LinkPostActivity$6;->this$0:Lcom/narvii/blog/post/LinkPostActivity;

    iget-object p1, p1, Lcom/narvii/blog/post/LinkPostActivity;->linkSummary:Lcom/narvii/model/LinkSummary;

    invoke-virtual {p1}, Lcom/narvii/model/LinkSummary;->getFirstMedia()Lcom/narvii/model/Media;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/narvii/blog/post/LinkPostActivity$6;->this$0:Lcom/narvii/blog/post/LinkPostActivity;

    iget-object p1, p1, Lcom/narvii/blog/post/LinkPostActivity;->linkSummary:Lcom/narvii/model/LinkSummary;

    .line 307
    invoke-virtual {p1}, Lcom/narvii/model/LinkSummary;->getFirstMedia()Lcom/narvii/model/Media;

    move-result-object p1

    iget-object p1, p1, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/narvii/blog/post/LinkPostActivity$6;->this$0:Lcom/narvii/blog/post/LinkPostActivity;

    iget-object p1, p1, Lcom/narvii/blog/post/LinkPostActivity;->linkSummary:Lcom/narvii/model/LinkSummary;

    invoke-virtual {p1}, Lcom/narvii/model/LinkSummary;->getFirstMedia()Lcom/narvii/model/Media;

    move-result-object p1

    iget-object p1, p1, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    const-string/jumbo p2, "ytv://"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 308
    iget-object p1, p0, Lcom/narvii/blog/post/LinkPostActivity$6;->this$0:Lcom/narvii/blog/post/LinkPostActivity;

    iget-object p2, p1, Lcom/narvii/blog/post/LinkPostActivity;->linkSummary:Lcom/narvii/model/LinkSummary;

    invoke-virtual {p2}, Lcom/narvii/model/LinkSummary;->getFirstMediaUrl()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lcom/narvii/blog/post/LinkPostActivity$6$1;

    invoke-direct {v0, p0}, Lcom/narvii/blog/post/LinkPostActivity$6$1;-><init>(Lcom/narvii/blog/post/LinkPostActivity$6;)V

    invoke-virtual {p1, p2, v0}, Lcom/narvii/blog/post/LinkPostActivity;->saveImage(Ljava/lang/String;Lcom/narvii/blog/post/LinkPostActivity$SaveImageCallBack;)V

    goto :goto_1

    .line 344
    :cond_3
    iget-object p1, p0, Lcom/narvii/blog/post/LinkPostActivity$6;->this$0:Lcom/narvii/blog/post/LinkPostActivity;

    iget-object p2, p1, Lcom/narvii/blog/post/BlogPostActivity;->editTitle:Landroid/widget/EditText;

    iget-object p1, p1, Lcom/narvii/blog/post/LinkPostActivity;->linkSummary:Lcom/narvii/model/LinkSummary;

    invoke-virtual {p1}, Lcom/narvii/model/LinkSummary;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 345
    iget-object p1, p0, Lcom/narvii/blog/post/LinkPostActivity$6;->this$0:Lcom/narvii/blog/post/LinkPostActivity;

    invoke-static {p1}, Lcom/narvii/blog/post/LinkPostActivity;->access$000(Lcom/narvii/blog/post/LinkPostActivity;)V

    goto :goto_1

    .line 295
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/narvii/blog/post/LinkPostActivity$6;->this$0:Lcom/narvii/blog/post/LinkPostActivity;

    iget-object p1, p1, Lcom/narvii/blog/post/LinkPostActivity;->postPreviewLayout:Lcom/narvii/blog/post/LinkPostPreviewLayout;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/narvii/blog/post/LinkPostPreviewLayout;->showFail(Z)V

    .line 296
    iget-object p1, p0, Lcom/narvii/blog/post/LinkPostActivity$6;->this$0:Lcom/narvii/blog/post/LinkPostActivity;

    invoke-virtual {p1}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/blog/post/LinkPostActivity$6;->this$0:Lcom/narvii/blog/post/LinkPostActivity;

    const v1, 0x7f0f0ae8

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 297
    iget-object p1, p0, Lcom/narvii/blog/post/LinkPostActivity$6;->this$0:Lcom/narvii/blog/post/LinkPostActivity;

    invoke-static {p1}, Lcom/narvii/blog/post/LinkPostActivity;->access$000(Lcom/narvii/blog/post/LinkPostActivity;)V

    .line 298
    iget-object p1, p0, Lcom/narvii/blog/post/LinkPostActivity$6;->this$0:Lcom/narvii/blog/post/LinkPostActivity;

    invoke-virtual {p1}, Lcom/narvii/blog/post/LinkPostActivity;->showLinkPasteDialog()V

    .line 348
    :goto_1
    iget-object p1, p0, Lcom/narvii/blog/post/LinkPostActivity$6;->this$0:Lcom/narvii/blog/post/LinkPostActivity;

    const/4 p2, 0x0

    iput-boolean p2, p1, Lcom/narvii/blog/post/LinkPostActivity;->isHandingUrl:Z

    :cond_5
    :goto_2
    return-void
.end method

.method public onPre()V
    .locals 2

    .line 283
    iget-object v0, p0, Lcom/narvii/blog/post/LinkPostActivity$6;->this$0:Lcom/narvii/blog/post/LinkPostActivity;

    iget-object v0, v0, Lcom/narvii/blog/post/LinkPostActivity;->parseLoadingDialog:Lcom/narvii/util/dialog/ProgressDialog;

    if-eqz v0, :cond_0

    .line 284
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 286
    :cond_0
    iget-object v0, p0, Lcom/narvii/blog/post/LinkPostActivity$6;->this$0:Lcom/narvii/blog/post/LinkPostActivity;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/narvii/blog/post/LinkPostActivity;->isHandingUrl:Z

    return-void
.end method
