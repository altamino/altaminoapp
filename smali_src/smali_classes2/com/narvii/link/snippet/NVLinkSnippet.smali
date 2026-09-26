.class public abstract Lcom/narvii/link/snippet/NVLinkSnippet;
.super Lcom/narvii/link/snippet/LinkSnippet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/narvii/model/NVObject;",
        "E:",
        "Lcom/narvii/model/api/ObjectResponse<",
        "+TT;>;>",
        "Lcom/narvii/link/snippet/LinkSnippet;"
    }
.end annotation


# instance fields
.field protected inflater:Landroid/view/LayoutInflater;

.field linkInfo:Lcom/narvii/share/LinkInfo;

.field otherCommunity:Lcom/narvii/model/Community;

.field protected shareObject:Lcom/narvii/model/NVObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;Lcom/narvii/share/LinkInfo;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/link/snippet/LinkSnippet;-><init>(Lcom/narvii/app/NVContext;)V

    .line 4
    .line 5
    iget-object p1, p0, Lcom/narvii/link/snippet/LinkSnippet;->context:Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    iput-object p1, p0, Lcom/narvii/link/snippet/NVLinkSnippet;->inflater:Landroid/view/LayoutInflater;

    .line 12
    .line 13
    iput-object p2, p0, Lcom/narvii/link/snippet/NVLinkSnippet;->linkInfo:Lcom/narvii/share/LinkInfo;

    .line 14
    return-void
.end method


# virtual methods
.method protected createObjectDetailRequest()Lcom/narvii/util/http/ApiRequest;
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    iget-object v1, p0, Lcom/narvii/link/snippet/NVLinkSnippet;->linkInfo:Lcom/narvii/share/LinkInfo;

    .line 7
    .line 8
    iget v1, v1, Lcom/narvii/share/LinkInfo;->ndcId:I

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->communityId(I)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    new-instance v2, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    iget-object v3, p0, Lcom/narvii/link/snippet/NVLinkSnippet;->linkInfo:Lcom/narvii/share/LinkInfo;

    .line 20
    .line 21
    iget v3, v3, Lcom/narvii/share/LinkInfo;->objectType:I

    .line 22
    .line 23
    .line 24
    invoke-static {v3}, Lcom/narvii/model/NVObject;->apiTypeName(I)Ljava/lang/String;

    .line 25
    move-result-object v3

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string v3, "/"

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    iget-object v3, p0, Lcom/narvii/link/snippet/NVLinkSnippet;->linkInfo:Lcom/narvii/share/LinkInfo;

    .line 36
    .line 37
    iget-object v3, v3, Lcom/narvii/share/LinkInfo;->objectId:Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    move-result-object v2

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 51
    move-result-object v0

    .line 52
    return-object v0
.end method

.method protected abstract getDetailView()Landroid/view/View;
.end method

.method public final getSnippetBitmap(Lcom/narvii/util/Callback;)V
    .locals 4
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
    iget-object v0, p0, Lcom/narvii/link/snippet/NVLinkSnippet;->shareObject:Lcom/narvii/model/NVObject;

    .line 3
    .line 4
    const-string v1, "linkSnippet"

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget-object v3, p0, Lcom/narvii/link/snippet/NVLinkSnippet;->linkInfo:Lcom/narvii/share/LinkInfo;

    .line 10
    .line 11
    if-nez v3, :cond_1

    .line 12
    .line 13
    const-string v0, "link info and object both are null"

    .line 14
    .line 15
    .line 16
    invoke-static {v1, v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    .line 21
    invoke-interface {p1, v2}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 22
    :cond_0
    return-void

    .line 23
    .line 24
    :cond_1
    if-nez v0, :cond_5

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/narvii/link/snippet/NVLinkSnippet;->createObjectDetailRequest()Lcom/narvii/util/http/ApiRequest;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    iget-object v1, p0, Lcom/narvii/link/snippet/LinkSnippet;->nvContext:Lcom/narvii/app/NVContext;

    .line 31
    .line 32
    const-string v3, "api"

    .line 33
    .line 34
    .line 35
    invoke-interface {v1, v3}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 36
    move-result-object v1

    .line 37
    .line 38
    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/narvii/link/snippet/NVLinkSnippet;->responseType()Ljava/lang/Class;

    .line 42
    move-result-object v3

    .line 43
    .line 44
    if-eqz v0, :cond_3

    .line 45
    .line 46
    if-nez v3, :cond_2

    .line 47
    goto :goto_0

    .line 48
    .line 49
    :cond_2
    new-instance v2, Lcom/narvii/link/snippet/NVLinkSnippet$1;

    .line 50
    .line 51
    .line 52
    invoke-direct {v2, p0, v3, p1}, Lcom/narvii/link/snippet/NVLinkSnippet$1;-><init>(Lcom/narvii/link/snippet/NVLinkSnippet;Ljava/lang/Class;Lcom/narvii/util/Callback;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 56
    goto :goto_1

    .line 57
    .line 58
    :cond_3
    :goto_0
    if-eqz p1, :cond_4

    .line 59
    .line 60
    .line 61
    invoke-interface {p1, v2}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 62
    :cond_4
    return-void

    .line 63
    .line 64
    .line 65
    :cond_5
    invoke-virtual {v0, v2}, Lcom/narvii/model/NVObject;->isAccessibleByUser(Lcom/narvii/model/User;)Z

    .line 66
    move-result v0

    .line 67
    .line 68
    if-nez v0, :cond_7

    .line 69
    .line 70
    if-eqz p1, :cond_6

    .line 71
    .line 72
    .line 73
    invoke-interface {p1, v2}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 74
    return-void

    .line 75
    .line 76
    :cond_6
    const-string v0, "6"

    .line 77
    .line 78
    .line 79
    invoke-static {v1, v0}, Lcom/narvii/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    :cond_7
    invoke-virtual {p0, p1}, Lcom/narvii/link/snippet/LinkSnippet;->getBitmapByObject(Lcom/narvii/util/Callback;)V

    .line 83
    :goto_1
    return-void
.end method

.method protected final getView()Landroid/view/View;
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/link/snippet/NVLinkSnippet;->getDetailView()Landroid/view/View;

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
    iget-object v1, p0, Lcom/narvii/link/snippet/NVLinkSnippet;->otherCommunity:Lcom/narvii/model/Community;

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/narvii/link/snippet/LinkSnippet;->useOtherCommunityFrame()Z

    .line 16
    move-result v1

    .line 17
    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    new-instance v1, Lcom/narvii/link/view/CommunityFrame;

    .line 21
    .line 22
    iget-object v2, p0, Lcom/narvii/link/snippet/LinkSnippet;->context:Landroid/content/Context;

    .line 23
    .line 24
    .line 25
    invoke-direct {v1, v2}, Lcom/narvii/link/view/CommunityFrame;-><init>(Landroid/content/Context;)V

    .line 26
    .line 27
    iget-object v2, p0, Lcom/narvii/link/snippet/NVLinkSnippet;->otherCommunity:Lcom/narvii/model/Community;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, v0, v2}, Lcom/narvii/link/view/CommunityFrame;->addContentView(Landroid/view/View;Lcom/narvii/model/Community;)V

    .line 31
    return-object v1

    .line 32
    :cond_1
    return-object v0
.end method

.method protected abstract responseType()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+TE;>;"
        }
    .end annotation
.end method

.method public setOtherCommunity(Lcom/narvii/model/Community;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/link/snippet/NVLinkSnippet;->otherCommunity:Lcom/narvii/model/Community;

    return-void
.end method
