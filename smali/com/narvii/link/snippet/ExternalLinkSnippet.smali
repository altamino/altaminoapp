.class public Lcom/narvii/link/snippet/ExternalLinkSnippet;
.super Lcom/narvii/link/snippet/LinkSnippet;
.source "ExternalLinkSnippet.java"


# instance fields
.field linkSummary:Lcom/narvii/model/LinkSummary;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;Lcom/narvii/model/LinkSummary;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/narvii/link/snippet/LinkSnippet;-><init>(Lcom/narvii/app/NVContext;)V

    .line 17
    iput-object p2, p0, Lcom/narvii/link/snippet/ExternalLinkSnippet;->linkSummary:Lcom/narvii/model/LinkSummary;

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

    .line 29
    invoke-virtual {p0, p1}, Lcom/narvii/link/snippet/LinkSnippet;->getBitmapByObject(Lcom/narvii/util/Callback;)V

    return-void
.end method

.method protected getView()Landroid/view/View;
    .locals 2

    .line 22
    new-instance v0, Lcom/narvii/link/view/ExternalLinkSnippetView;

    iget-object v1, p0, Lcom/narvii/link/snippet/LinkSnippet;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/narvii/link/view/ExternalLinkSnippetView;-><init>(Landroid/content/Context;)V

    .line 23
    iget-object v1, p0, Lcom/narvii/link/snippet/ExternalLinkSnippet;->linkSummary:Lcom/narvii/model/LinkSummary;

    invoke-virtual {v0, v1}, Lcom/narvii/link/view/ExternalLinkSnippetView;->setLinkSummary(Lcom/narvii/model/LinkSummary;)V

    return-object v0
.end method
