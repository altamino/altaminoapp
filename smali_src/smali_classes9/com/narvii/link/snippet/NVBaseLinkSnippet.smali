.class public abstract Lcom/narvii/link/snippet/NVBaseLinkSnippet;
.super Lcom/narvii/link/snippet/NVLinkSnippet;
.source "SourceFile"


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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/narvii/link/snippet/NVLinkSnippet;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/share/LinkInfo;)V

    .line 4
    return-void
.end method


# virtual methods
.method protected getDetailView()Landroid/view/View;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/link/snippet/NVBaseLinkSnippet;->getSnippetView()Lcom/narvii/link/view/NVLinkSnippetView;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    const/4 v0, 0x0

    .line 8
    return-object v0

    .line 9
    .line 10
    :cond_0
    iget-object v1, p0, Lcom/narvii/link/snippet/LinkSnippet;->nvContext:Lcom/narvii/app/NVContext;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/narvii/link/view/NVLinkSnippetView;->setNvContext(Lcom/narvii/app/NVContext;)V

    .line 14
    .line 15
    iget-object v1, p0, Lcom/narvii/link/snippet/NVLinkSnippet;->otherCommunity:Lcom/narvii/model/Community;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/narvii/link/view/NVLinkSnippetView;->setOtherCommunity(Lcom/narvii/model/Community;)V

    .line 19
    .line 20
    iget-object v1, p0, Lcom/narvii/link/snippet/NVLinkSnippet;->shareObject:Lcom/narvii/model/NVObject;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lcom/narvii/link/view/NVLinkSnippetView;->setObject(Lcom/narvii/model/NVObject;)V

    .line 24
    return-object v0
.end method

.method protected abstract getSnippetView()Lcom/narvii/link/view/NVLinkSnippetView;
.end method
