.class Lcom/narvii/link/LinkSnippetHelper$4;
.super Ljava/lang/Object;
.source "LinkSnippetHelper.java"

# interfaces
.implements Lcom/narvii/util/crawler/LinkPreviewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/link/LinkSnippetHelper;->getLinkSnippet(Ljava/lang/String;Lcom/narvii/link/LinkSnippetListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/link/LinkSnippetHelper;

.field final synthetic val$snippetListener:Lcom/narvii/link/LinkSnippetListener;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/narvii/link/LinkSnippetHelper;Ljava/lang/String;Lcom/narvii/link/LinkSnippetListener;)V
    .locals 0

    .line 231
    iput-object p1, p0, Lcom/narvii/link/LinkSnippetHelper$4;->this$0:Lcom/narvii/link/LinkSnippetHelper;

    iput-object p2, p0, Lcom/narvii/link/LinkSnippetHelper$4;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/narvii/link/LinkSnippetHelper$4;->val$snippetListener:Lcom/narvii/link/LinkSnippetListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPos(Lcom/narvii/util/crawler/SourceContent;Z)V
    .locals 2

    .line 239
    invoke-virtual {p1}, Lcom/narvii/util/crawler/SourceContent;->getFinalUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 244
    :cond_0
    new-instance p2, Lcom/narvii/model/LinkSummary;

    invoke-direct {p2, p1}, Lcom/narvii/model/LinkSummary;-><init>(Lcom/narvii/util/crawler/SourceContent;)V

    .line 245
    iget-object p1, p0, Lcom/narvii/link/LinkSnippetHelper$4;->val$url:Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 246
    invoke-static {p1}, Lcom/narvii/util/crawler/TextCrawler;->extendedTrim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/narvii/model/LinkSummary;->setLink(Ljava/lang/String;)V

    .line 248
    :cond_1
    iget-object p1, p0, Lcom/narvii/link/LinkSnippetHelper$4;->this$0:Lcom/narvii/link/LinkSnippetHelper;

    new-instance v0, Lcom/narvii/link/snippet/ExternalLinkSnippet;

    iget-object v1, p1, Lcom/narvii/link/LinkSnippetHelper;->nvContext:Lcom/narvii/app/NVContext;

    invoke-direct {v0, v1, p2}, Lcom/narvii/link/snippet/ExternalLinkSnippet;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/model/LinkSummary;)V

    iput-object v0, p1, Lcom/narvii/link/LinkSnippetHelper;->linkSnippet:Lcom/narvii/link/snippet/LinkSnippet;

    .line 249
    iget-object p1, p0, Lcom/narvii/link/LinkSnippetHelper$4;->this$0:Lcom/narvii/link/LinkSnippetHelper;

    iget-object p1, p1, Lcom/narvii/link/LinkSnippetHelper;->linkSnippet:Lcom/narvii/link/snippet/LinkSnippet;

    new-instance p2, Lcom/narvii/link/LinkSnippetHelper$4$1;

    invoke-direct {p2, p0}, Lcom/narvii/link/LinkSnippetHelper$4$1;-><init>(Lcom/narvii/link/LinkSnippetHelper$4;)V

    invoke-virtual {p1, p2}, Lcom/narvii/link/snippet/LinkSnippet;->getSnippetMedia(Lcom/narvii/util/Callback;)V

    return-void

    .line 240
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/narvii/link/LinkSnippetHelper$4;->this$0:Lcom/narvii/link/LinkSnippetHelper;

    const/4 p2, 0x4

    invoke-static {p1, p2}, Lcom/narvii/link/LinkSnippetHelper;->access$100(Lcom/narvii/link/LinkSnippetHelper;I)V

    return-void
.end method

.method public onPre()V
    .locals 0

    return-void
.end method
