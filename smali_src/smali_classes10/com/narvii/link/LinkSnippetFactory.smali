.class public Lcom/narvii/link/LinkSnippetFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static getLinkSnippet(Lcom/narvii/app/NVContext;Lcom/narvii/share/LinkInfo;)Lcom/narvii/link/snippet/NVLinkSnippet;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    return-object v0

    .line 5
    .line 6
    :cond_0
    iget v1, p1, Lcom/narvii/share/LinkInfo;->objectType:I

    .line 7
    .line 8
    if-eqz v1, :cond_7

    .line 9
    const/4 v2, 0x1

    .line 10
    .line 11
    if-eq v1, v2, :cond_6

    .line 12
    const/4 v2, 0x2

    .line 13
    .line 14
    if-eq v1, v2, :cond_6

    .line 15
    .line 16
    const/16 v2, 0xc

    .line 17
    .line 18
    if-eq v1, v2, :cond_5

    .line 19
    .line 20
    const/16 v2, 0x10

    .line 21
    .line 22
    if-eq v1, v2, :cond_4

    .line 23
    .line 24
    const/16 v2, 0x6a

    .line 25
    .line 26
    if-eq v1, v2, :cond_3

    .line 27
    .line 28
    const/16 v2, 0x6d

    .line 29
    .line 30
    if-eq v1, v2, :cond_2

    .line 31
    .line 32
    const/16 v2, 0x72

    .line 33
    .line 34
    if-eq v1, v2, :cond_1

    .line 35
    .line 36
    const/16 v2, 0x74

    .line 37
    .line 38
    if-eq v1, v2, :cond_1

    .line 39
    .line 40
    const/16 v2, 0x7a

    .line 41
    .line 42
    if-eq v1, v2, :cond_1

    .line 43
    .line 44
    const/16 v2, 0x83

    .line 45
    .line 46
    if-eq v1, v2, :cond_6

    .line 47
    return-object v0

    .line 48
    .line 49
    :cond_1
    new-instance v0, Lcom/narvii/link/snippet/StoreItemLinkSnippet;

    .line 50
    .line 51
    .line 52
    invoke-direct {v0, p0, p1}, Lcom/narvii/link/snippet/StoreItemLinkSnippet;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/share/LinkInfo;)V

    .line 53
    return-object v0

    .line 54
    .line 55
    :cond_2
    new-instance v0, Lcom/narvii/link/snippet/SharedPhotoLinkSnippet;

    .line 56
    .line 57
    .line 58
    invoke-direct {v0, p0, p1}, Lcom/narvii/link/snippet/SharedPhotoLinkSnippet;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/share/LinkInfo;)V

    .line 59
    return-object v0

    .line 60
    .line 61
    :cond_3
    new-instance v0, Lcom/narvii/link/snippet/SharedAlbumLinkSnippet;

    .line 62
    .line 63
    .line 64
    invoke-direct {v0, p0, p1}, Lcom/narvii/link/snippet/SharedAlbumLinkSnippet;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/share/LinkInfo;)V

    .line 65
    return-object v0

    .line 66
    .line 67
    :cond_4
    new-instance v0, Lcom/narvii/link/snippet/CommunityLinkSnippet;

    .line 68
    .line 69
    .line 70
    invoke-direct {v0, p0, p1}, Lcom/narvii/link/snippet/CommunityLinkSnippet;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/share/LinkInfo;)V

    .line 71
    return-object v0

    .line 72
    .line 73
    :cond_5
    new-instance v0, Lcom/narvii/link/snippet/ChatThreadLinkSnippet;

    .line 74
    .line 75
    .line 76
    invoke-direct {v0, p0, p1}, Lcom/narvii/link/snippet/ChatThreadLinkSnippet;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/share/LinkInfo;)V

    .line 77
    return-object v0

    .line 78
    .line 79
    :cond_6
    new-instance v0, Lcom/narvii/link/snippet/FeedLinkSnippet;

    .line 80
    .line 81
    .line 82
    invoke-direct {v0, p0, p1}, Lcom/narvii/link/snippet/FeedLinkSnippet;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/share/LinkInfo;)V

    .line 83
    return-object v0

    .line 84
    .line 85
    :cond_7
    new-instance v0, Lcom/narvii/link/snippet/UserLinkSnippet;

    .line 86
    .line 87
    .line 88
    invoke-direct {v0, p0, p1}, Lcom/narvii/link/snippet/UserLinkSnippet;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/share/LinkInfo;)V

    .line 89
    return-object v0
.end method
