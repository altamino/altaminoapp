.class public Lcom/narvii/link/snippet/ChatThreadLinkSnippet;
.super Lcom/narvii/link/snippet/NVBaseLinkSnippet;
.source "ChatThreadLinkSnippet.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/link/snippet/NVBaseLinkSnippet<",
        "Lcom/narvii/model/ChatThread;",
        "Lcom/narvii/chat/ThreadResponse;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;Lcom/narvii/share/LinkInfo;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/narvii/link/snippet/NVBaseLinkSnippet;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/share/LinkInfo;)V

    return-void
.end method


# virtual methods
.method protected getSnippetView()Lcom/narvii/link/view/NVLinkSnippetView;
    .locals 2

    .line 23
    new-instance v0, Lcom/narvii/link/view/ChatThreadSnippetView;

    iget-object v1, p0, Lcom/narvii/link/snippet/LinkSnippet;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/narvii/link/view/ChatThreadSnippetView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected responseType()Ljava/lang/Class;
    .locals 1

    .line 18
    const-class v0, Lcom/narvii/chat/ThreadResponse;

    return-object v0
.end method
