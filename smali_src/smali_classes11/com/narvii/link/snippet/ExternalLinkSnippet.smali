.class public Lcom/narvii/link/snippet/ExternalLinkSnippet;
.super Lcom/narvii/link/snippet/LinkSnippet;
.source "SourceFile"


# instance fields
.field linkSummary:Lcom/narvii/model/LinkSummary;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;Lcom/narvii/model/LinkSummary;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/link/snippet/LinkSnippet;-><init>(Lcom/narvii/app/NVContext;)V

    .line 4
    .line 5
    iput-object p2, p0, Lcom/narvii/link/snippet/ExternalLinkSnippet;->linkSummary:Lcom/narvii/model/LinkSummary;

    .line 6
    return-void
.end method


# virtual methods
.method public getSnippetBitmap(Lcom/narvii/util/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/util/Callback<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/link/snippet/LinkSnippet;->getBitmapByObject(Lcom/narvii/util/Callback;)V

    .line 4
    return-void
.end method

.method protected getView()Landroid/view/View;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/link/view/ExternalLinkSnippetView;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/link/snippet/LinkSnippet;->context:Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1}, Lcom/narvii/link/view/ExternalLinkSnippetView;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    iget-object v1, p0, Lcom/narvii/link/snippet/ExternalLinkSnippet;->linkSummary:Lcom/narvii/model/LinkSummary;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/narvii/link/view/ExternalLinkSnippetView;->setLinkSummary(Lcom/narvii/model/LinkSummary;)V

    .line 13
    return-object v0
.end method
