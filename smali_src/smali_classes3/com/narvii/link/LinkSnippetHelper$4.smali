.class Lcom/narvii/link/LinkSnippetHelper$4;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/link/LinkSnippetHelper$4;->this$0:Lcom/narvii/link/LinkSnippetHelper;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/link/LinkSnippetHelper$4;->val$url:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/link/LinkSnippetHelper$4;->val$snippetListener:Lcom/narvii/link/LinkSnippetListener;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public onPos(Lcom/narvii/util/crawler/SourceContent;Z)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/narvii/util/crawler/SourceContent;->getFinalUrl()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-nez v0, :cond_2

    .line 11
    .line 12
    if-eqz p2, :cond_0

    .line 13
    goto :goto_0

    .line 14
    .line 15
    :cond_0
    new-instance p2, Lcom/narvii/model/LinkSummary;

    .line 16
    .line 17
    .line 18
    invoke-direct {p2, p1}, Lcom/narvii/model/LinkSummary;-><init>(Lcom/narvii/util/crawler/SourceContent;)V

    .line 19
    .line 20
    iget-object p1, p0, Lcom/narvii/link/LinkSnippetHelper$4;->val$url:Ljava/lang/String;

    .line 21
    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    .line 25
    invoke-static {p1}, Lcom/narvii/util/crawler/TextCrawler;->extendedTrim(Ljava/lang/String;)Ljava/lang/String;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2, p1}, Lcom/narvii/model/LinkSummary;->setLink(Ljava/lang/String;)V

    .line 30
    .line 31
    :cond_1
    iget-object p1, p0, Lcom/narvii/link/LinkSnippetHelper$4;->this$0:Lcom/narvii/link/LinkSnippetHelper;

    .line 32
    .line 33
    new-instance v0, Lcom/narvii/link/snippet/ExternalLinkSnippet;

    .line 34
    .line 35
    iget-object v1, p1, Lcom/narvii/link/LinkSnippetHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 36
    .line 37
    .line 38
    invoke-direct {v0, v1, p2}, Lcom/narvii/link/snippet/ExternalLinkSnippet;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/model/LinkSummary;)V

    .line 39
    .line 40
    iput-object v0, p1, Lcom/narvii/link/LinkSnippetHelper;->linkSnippet:Lcom/narvii/link/snippet/LinkSnippet;

    .line 41
    .line 42
    iget-object p1, p0, Lcom/narvii/link/LinkSnippetHelper$4;->this$0:Lcom/narvii/link/LinkSnippetHelper;

    .line 43
    .line 44
    iget-object p1, p1, Lcom/narvii/link/LinkSnippetHelper;->linkSnippet:Lcom/narvii/link/snippet/LinkSnippet;

    .line 45
    .line 46
    new-instance p2, Lcom/narvii/link/LinkSnippetHelper$4$1;

    .line 47
    .line 48
    .line 49
    invoke-direct {p2, p0}, Lcom/narvii/link/LinkSnippetHelper$4$1;-><init>(Lcom/narvii/link/LinkSnippetHelper$4;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, p2}, Lcom/narvii/link/snippet/LinkSnippet;->getSnippetMedia(Lcom/narvii/util/Callback;)V

    .line 53
    return-void

    .line 54
    .line 55
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/narvii/link/LinkSnippetHelper$4;->this$0:Lcom/narvii/link/LinkSnippetHelper;

    .line 56
    const/4 p2, 0x4

    .line 57
    .line 58
    .line 59
    invoke-static {p1, p2}, Lcom/narvii/link/LinkSnippetHelper;->b(Lcom/narvii/link/LinkSnippetHelper;I)V

    .line 60
    return-void
.end method

.method public onPre()V
    .locals 0

    return-void
.end method
