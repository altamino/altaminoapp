.class public Lcom/narvii/link/snippet/UserLinkSnippet;
.super Lcom/narvii/link/snippet/NVBaseLinkSnippet;
.source "UserLinkSnippet.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/link/snippet/NVBaseLinkSnippet<",
        "Lcom/narvii/model/User;",
        "Lcom/narvii/model/api/UserResponse;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;Lcom/narvii/share/LinkInfo;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1, p2}, Lcom/narvii/link/snippet/NVBaseLinkSnippet;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/share/LinkInfo;)V

    return-void
.end method


# virtual methods
.method protected getSnippetView()Lcom/narvii/link/view/NVLinkSnippetView;
    .locals 2

    .line 24
    new-instance v0, Lcom/narvii/link/view/UserSnippetView;

    iget-object v1, p0, Lcom/narvii/link/snippet/LinkSnippet;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/narvii/link/view/UserSnippetView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected responseType()Ljava/lang/Class;
    .locals 1

    .line 19
    const-class v0, Lcom/narvii/model/api/UserResponse;

    return-object v0
.end method
