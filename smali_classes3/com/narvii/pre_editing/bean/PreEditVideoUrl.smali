.class public final Lcom/narvii/pre_editing/bean/PreEditVideoUrl;
.super Ljava/lang/Object;
.source "PreEditVideoUrl.kt"


# instance fields
.field private downloadUrl:Lkotlin/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private thumbnailVideoUrl:Ljava/lang/String;

.field private videoUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/narvii/youtube/YoutubeVideoList;)V
    .locals 2

    const-string v0, "videoList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/narvii/youtube/YoutubeVideoList;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "videoList.url"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/narvii/pre_editing/bean/PreEditVideoUrl;->videoUrl:Ljava/lang/String;

    .line 22
    invoke-virtual {p1}, Lcom/narvii/youtube/YoutubeVideoList;->getDownloadMp4Url()Lkotlin/Pair;

    move-result-object v0

    const-string v1, "videoList.downloadMp4Url"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/narvii/pre_editing/bean/PreEditVideoUrl;->downloadUrl:Lkotlin/Pair;

    .line 23
    invoke-virtual {p1}, Lcom/narvii/youtube/YoutubeVideoList;->getThumbnailMp4Url()Ljava/lang/String;

    move-result-object p1

    const-string v0, "videoList.thumbnailMp4Url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/pre_editing/bean/PreEditVideoUrl;->thumbnailVideoUrl:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/pre_editing/bean/PreEditVideoUrl;->videoUrl:Ljava/lang/String;

    .line 16
    new-instance v0, Lkotlin/Pair;

    invoke-direct {v0, p1, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/narvii/pre_editing/bean/PreEditVideoUrl;->downloadUrl:Lkotlin/Pair;

    .line 17
    iput-object p1, p0, Lcom/narvii/pre_editing/bean/PreEditVideoUrl;->thumbnailVideoUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getDownloadUrl()Lkotlin/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 11
    iget-object v0, p0, Lcom/narvii/pre_editing/bean/PreEditVideoUrl;->downloadUrl:Lkotlin/Pair;

    return-object v0
.end method

.method public final getThumbnailVideoUrl()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/narvii/pre_editing/bean/PreEditVideoUrl;->thumbnailVideoUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getVideoUrl()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/narvii/pre_editing/bean/PreEditVideoUrl;->videoUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final setDownloadUrl(Lkotlin/Pair;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iput-object p1, p0, Lcom/narvii/pre_editing/bean/PreEditVideoUrl;->downloadUrl:Lkotlin/Pair;

    return-void
.end method

.method public final setThumbnailVideoUrl(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    iput-object p1, p0, Lcom/narvii/pre_editing/bean/PreEditVideoUrl;->thumbnailVideoUrl:Ljava/lang/String;

    return-void
.end method

.method public final setVideoUrl(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iput-object p1, p0, Lcom/narvii/pre_editing/bean/PreEditVideoUrl;->videoUrl:Ljava/lang/String;

    return-void
.end method
