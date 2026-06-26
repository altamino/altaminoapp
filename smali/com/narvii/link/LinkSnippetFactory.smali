.class public Lcom/narvii/link/LinkSnippetFactory;
.super Ljava/lang/Object;
.source "LinkSnippetFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLinkSnippet(Lcom/narvii/app/NVContext;Lcom/narvii/share/LinkInfo;)Lcom/narvii/link/snippet/NVLinkSnippet;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 32
    :cond_0
    iget v1, p1, Lcom/narvii/share/LinkInfo;->objectType:I

    if-eqz v1, :cond_7

    const/4 v2, 0x1

    if-eq v1, v2, :cond_6

    const/4 v2, 0x2

    if-eq v1, v2, :cond_6

    const/16 v2, 0xc

    if-eq v1, v2, :cond_5

    const/16 v2, 0x10

    if-eq v1, v2, :cond_4

    const/16 v2, 0x6a

    if-eq v1, v2, :cond_3

    const/16 v2, 0x6d

    if-eq v1, v2, :cond_2

    const/16 v2, 0x72

    if-eq v1, v2, :cond_1

    const/16 v2, 0x74

    if-eq v1, v2, :cond_1

    const/16 v2, 0x7a

    if-eq v1, v2, :cond_1

    const/16 v2, 0x83

    if-eq v1, v2, :cond_6

    return-object v0

    .line 50
    :cond_1
    new-instance v0, Lcom/narvii/link/snippet/StoreItemLinkSnippet;

    invoke-direct {v0, p0, p1}, Lcom/narvii/link/snippet/StoreItemLinkSnippet;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/share/LinkInfo;)V

    return-object v0

    .line 46
    :cond_2
    new-instance v0, Lcom/narvii/link/snippet/SharedPhotoLinkSnippet;

    invoke-direct {v0, p0, p1}, Lcom/narvii/link/snippet/SharedPhotoLinkSnippet;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/share/LinkInfo;)V

    return-object v0

    .line 44
    :cond_3
    new-instance v0, Lcom/narvii/link/snippet/SharedAlbumLinkSnippet;

    invoke-direct {v0, p0, p1}, Lcom/narvii/link/snippet/SharedAlbumLinkSnippet;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/share/LinkInfo;)V

    return-object v0

    .line 42
    :cond_4
    new-instance v0, Lcom/narvii/link/snippet/CommunityLinkSnippet;

    invoke-direct {v0, p0, p1}, Lcom/narvii/link/snippet/CommunityLinkSnippet;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/share/LinkInfo;)V

    return-object v0

    .line 34
    :cond_5
    new-instance v0, Lcom/narvii/link/snippet/ChatThreadLinkSnippet;

    invoke-direct {v0, p0, p1}, Lcom/narvii/link/snippet/ChatThreadLinkSnippet;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/share/LinkInfo;)V

    return-object v0

    .line 40
    :cond_6
    new-instance v0, Lcom/narvii/link/snippet/FeedLinkSnippet;

    invoke-direct {v0, p0, p1}, Lcom/narvii/link/snippet/FeedLinkSnippet;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/share/LinkInfo;)V

    return-object v0

    .line 36
    :cond_7
    new-instance v0, Lcom/narvii/link/snippet/UserLinkSnippet;

    invoke-direct {v0, p0, p1}, Lcom/narvii/link/snippet/UserLinkSnippet;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/share/LinkInfo;)V

    return-object v0
.end method
