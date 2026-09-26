.class public final Lcom/narvii/pre_editing/bean/PreEditVideoUrl;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private downloadUrl:Lw7/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw7/u<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private thumbnailVideoUrl:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private videoUrl:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/narvii/youtube/YoutubeVideoList;)V
    .locals 2
    .param p1    # Lcom/narvii/youtube/YoutubeVideoList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "videoList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-virtual {p1}, Lcom/narvii/youtube/YoutubeVideoList;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getUrl(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/narvii/pre_editing/bean/PreEditVideoUrl;->videoUrl:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Lcom/narvii/youtube/YoutubeVideoList;->getDownloadMp4Url()Lw7/u;

    move-result-object v0

    const-string v1, "getDownloadMp4Url(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/narvii/pre_editing/bean/PreEditVideoUrl;->downloadUrl:Lw7/u;

    .line 6
    invoke-virtual {p1}, Lcom/narvii/youtube/YoutubeVideoList;->getThumbnailMp4Url()Ljava/lang/String;

    move-result-object p1

    const-string v0, "getThumbnailMp4Url(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/pre_editing/bean/PreEditVideoUrl;->thumbnailVideoUrl:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/pre_editing/bean/PreEditVideoUrl;->videoUrl:Ljava/lang/String;

    .line 2
    new-instance v0, Lw7/u;

    invoke-direct {v0, p1, p1}, Lw7/u;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/narvii/pre_editing/bean/PreEditVideoUrl;->downloadUrl:Lw7/u;

    iput-object p1, p0, Lcom/narvii/pre_editing/bean/PreEditVideoUrl;->thumbnailVideoUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getDownloadUrl()Lw7/u;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lw7/u<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/narvii/pre_editing/bean/PreEditVideoUrl;->downloadUrl:Lw7/u;

    return-object v0
.end method

.method public final getThumbnailVideoUrl()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/pre_editing/bean/PreEditVideoUrl;->thumbnailVideoUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getVideoUrl()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/pre_editing/bean/PreEditVideoUrl;->videoUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final setDownloadUrl(Lw7/u;)V
    .locals 1
    .param p1    # Lw7/u;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw7/u<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/pre_editing/bean/PreEditVideoUrl;->downloadUrl:Lw7/u;

    return-void
.end method

.method public final setThumbnailVideoUrl(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/pre_editing/bean/PreEditVideoUrl;->thumbnailVideoUrl:Ljava/lang/String;

    return-void
.end method

.method public final setVideoUrl(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/pre_editing/bean/PreEditVideoUrl;->videoUrl:Ljava/lang/String;

    return-void
.end method
