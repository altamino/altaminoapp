.class public Lcom/narvii/link/snippet/CommunityLinkSnippet;
.super Lcom/narvii/link/snippet/NVBaseLinkSnippet;
.source "CommunityLinkSnippet.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/link/snippet/NVBaseLinkSnippet<",
        "Lcom/narvii/model/Community;",
        "Lcom/narvii/model/api/CommunityResponse;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;Lcom/narvii/model/Community;)V
    .locals 1

    const/4 v0, 0x0

    .line 13
    invoke-direct {p0, p1, v0}, Lcom/narvii/link/snippet/NVBaseLinkSnippet;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/share/LinkInfo;)V

    .line 14
    iput-object p2, p0, Lcom/narvii/link/snippet/NVLinkSnippet;->shareObject:Lcom/narvii/model/NVObject;

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;Lcom/narvii/share/LinkInfo;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/narvii/link/snippet/NVBaseLinkSnippet;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/share/LinkInfo;)V

    return-void
.end method


# virtual methods
.method protected getSnippetView()Lcom/narvii/link/view/NVLinkSnippetView;
    .locals 2

    .line 28
    new-instance v0, Lcom/narvii/link/view/CommunitySnippetView;

    iget-object v1, p0, Lcom/narvii/link/snippet/LinkSnippet;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/narvii/link/view/CommunitySnippetView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected responseType()Ljava/lang/Class;
    .locals 1

    .line 23
    const-class v0, Lcom/narvii/model/api/CommunityResponse;

    return-object v0
.end method
