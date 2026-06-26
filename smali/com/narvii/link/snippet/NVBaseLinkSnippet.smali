.class public abstract Lcom/narvii/link/snippet/NVBaseLinkSnippet;
.super Lcom/narvii/link/snippet/NVLinkSnippet;
.source "NVBaseLinkSnippet.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/narvii/model/NVObject;",
        "E:",
        "Lcom/narvii/model/api/ObjectResponse<",
        "+TT;>;>",
        "Lcom/narvii/link/snippet/NVLinkSnippet;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;Lcom/narvii/share/LinkInfo;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1, p2}, Lcom/narvii/link/snippet/NVLinkSnippet;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/share/LinkInfo;)V

    return-void
.end method


# virtual methods
.method protected getDetailView()Landroid/view/View;
    .locals 2

    .line 19
    invoke-virtual {p0}, Lcom/narvii/link/snippet/NVBaseLinkSnippet;->getSnippetView()Lcom/narvii/link/view/NVLinkSnippetView;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 23
    :cond_0
    iget-object v1, p0, Lcom/narvii/link/snippet/LinkSnippet;->nvContext:Lcom/narvii/app/NVContext;

    invoke-virtual {v0, v1}, Lcom/narvii/link/view/NVLinkSnippetView;->setNvContext(Lcom/narvii/app/NVContext;)V

    .line 24
    iget-object v1, p0, Lcom/narvii/link/snippet/NVLinkSnippet;->otherCommunity:Lcom/narvii/model/Community;

    invoke-virtual {v0, v1}, Lcom/narvii/link/view/NVLinkSnippetView;->setOtherCommunity(Lcom/narvii/model/Community;)V

    .line 25
    iget-object v1, p0, Lcom/narvii/link/snippet/NVLinkSnippet;->shareObject:Lcom/narvii/model/NVObject;

    invoke-virtual {v0, v1}, Lcom/narvii/link/view/NVLinkSnippetView;->setObject(Lcom/narvii/model/NVObject;)V

    return-object v0
.end method

.method protected abstract getSnippetView()Lcom/narvii/link/view/NVLinkSnippetView;
.end method
