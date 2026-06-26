.class public abstract Lcom/narvii/link/snippet/NVLinkSnippet;
.super Lcom/narvii/link/snippet/LinkSnippet;
.source "NVLinkSnippet.java"


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

    .line 32
    invoke-direct {p0, p1}, Lcom/narvii/link/snippet/LinkSnippet;-><init>(Lcom/narvii/app/NVContext;)V

    .line 33
    iget-object p1, p0, Lcom/narvii/link/snippet/LinkSnippet;->context:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/link/snippet/NVLinkSnippet;->inflater:Landroid/view/LayoutInflater;

    .line 34
    iput-object p2, p0, Lcom/narvii/link/snippet/NVLinkSnippet;->linkInfo:Lcom/narvii/share/LinkInfo;

    return-void
.end method


# virtual methods
.method protected createObjectDetailRequest()Lcom/narvii/util/http/ApiRequest;
    .locals 4

    .line 101
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    .line 102
    iget-object v1, p0, Lcom/narvii/link/snippet/NVLinkSnippet;->linkInfo:Lcom/narvii/share/LinkInfo;

    iget v1, v1, Lcom/narvii/share/LinkInfo;->ndcId:I

    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->communityId(I)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/narvii/link/snippet/NVLinkSnippet;->linkInfo:Lcom/narvii/share/LinkInfo;

    iget v3, v3, Lcom/narvii/share/LinkInfo;->objectType:I

    invoke-static {v3}, Lcom/narvii/model/NVObject;->apiTypeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/narvii/link/snippet/NVLinkSnippet;->linkInfo:Lcom/narvii/share/LinkInfo;

    iget-object v3, v3, Lcom/narvii/share/LinkInfo;->objectId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 103
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

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

    .line 42
    iget-object v0, p0, Lcom/narvii/link/snippet/NVLinkSnippet;->shareObject:Lcom/narvii/model/NVObject;

    const-string v1, "linkSnippet"

    const/4 v2, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/narvii/link/snippet/NVLinkSnippet;->linkInfo:Lcom/narvii/share/LinkInfo;

    if-nez v0, :cond_1

    const-string v0, "link info and object both are null"

    .line 43
    invoke-static {v1, v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 45
    invoke-interface {p1, v2}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    :cond_0
    return-void

    .line 49
    :cond_1
    iget-object v0, p0, Lcom/narvii/link/snippet/NVLinkSnippet;->shareObject:Lcom/narvii/model/NVObject;

    if-nez v0, :cond_5

    .line 50
    invoke-virtual {p0}, Lcom/narvii/link/snippet/NVLinkSnippet;->createObjectDetailRequest()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    .line 51
    iget-object v1, p0, Lcom/narvii/link/snippet/LinkSnippet;->nvContext:Lcom/narvii/app/NVContext;

    const-string v3, "api"

    invoke-interface {v1, v3}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 52
    invoke-virtual {p0}, Lcom/narvii/link/snippet/NVLinkSnippet;->responseType()Ljava/lang/Class;

    move-result-object v3

    if-eqz v0, :cond_3

    if-nez v3, :cond_2

    goto :goto_0

    .line 61
    :cond_2
    new-instance v2, Lcom/narvii/link/snippet/NVLinkSnippet$1;

    invoke-direct {v2, p0, v3, p1}, Lcom/narvii/link/snippet/NVLinkSnippet$1;-><init>(Lcom/narvii/link/snippet/NVLinkSnippet;Ljava/lang/Class;Lcom/narvii/util/Callback;)V

    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    goto :goto_1

    :cond_3
    :goto_0
    if-eqz p1, :cond_4

    .line 56
    invoke-interface {p1, v2}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    :cond_4
    return-void

    .line 87
    :cond_5
    invoke-virtual {v0, v2}, Lcom/narvii/model/NVObject;->isAccessibleByUser(Lcom/narvii/model/User;)Z

    move-result v0

    if-nez v0, :cond_7

    if-eqz p1, :cond_6

    .line 89
    invoke-interface {p1, v2}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    return-void

    :cond_6
    const-string v0, "6"

    .line 92
    invoke-static {v1, v0}, Lcom/narvii/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    :cond_7
    invoke-virtual {p0, p1}, Lcom/narvii/link/snippet/LinkSnippet;->getBitmapByObject(Lcom/narvii/util/Callback;)V

    :goto_1
    return-void
.end method

.method protected final getView()Landroid/view/View;
    .locals 3

    .line 108
    invoke-virtual {p0}, Lcom/narvii/link/snippet/NVLinkSnippet;->getDetailView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 112
    :cond_0
    iget-object v1, p0, Lcom/narvii/link/snippet/NVLinkSnippet;->otherCommunity:Lcom/narvii/model/Community;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/narvii/link/snippet/LinkSnippet;->useOtherCommunityFrame()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 113
    new-instance v1, Lcom/narvii/link/view/CommunityFrame;

    iget-object v2, p0, Lcom/narvii/link/snippet/LinkSnippet;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/narvii/link/view/CommunityFrame;-><init>(Landroid/content/Context;)V

    .line 114
    iget-object v2, p0, Lcom/narvii/link/snippet/NVLinkSnippet;->otherCommunity:Lcom/narvii/model/Community;

    invoke-virtual {v1, v0, v2}, Lcom/narvii/link/view/CommunityFrame;->addContentView(Landroid/view/View;Lcom/narvii/model/Community;)V

    return-object v1

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

    .line 38
    iput-object p1, p0, Lcom/narvii/link/snippet/NVLinkSnippet;->otherCommunity:Lcom/narvii/model/Community;

    return-void
.end method
