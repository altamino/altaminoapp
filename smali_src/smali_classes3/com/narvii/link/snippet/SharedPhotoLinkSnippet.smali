.class public Lcom/narvii/link/snippet/SharedPhotoLinkSnippet;
.super Lcom/narvii/link/snippet/NVBaseLinkSnippet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/link/snippet/NVBaseLinkSnippet<",
        "Lcom/narvii/model/SharedFile;",
        "Lcom/narvii/sharedfolder/SharedFileResponse;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;Lcom/narvii/share/LinkInfo;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/narvii/link/snippet/NVBaseLinkSnippet;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/share/LinkInfo;)V

    .line 4
    return-void
.end method


# virtual methods
.method protected getSnippetView()Lcom/narvii/link/view/NVLinkSnippetView;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/link/view/SharedPhotoSnippetView;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/link/snippet/LinkSnippet;->context:Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1}, Lcom/narvii/link/view/SharedPhotoSnippetView;-><init>(Landroid/content/Context;)V

    .line 8
    return-object v0
.end method

.method protected responseType()Ljava/lang/Class;
    .locals 1

    const-class v0, Lcom/narvii/sharedfolder/SharedFileResponse;

    return-object v0
.end method
