.class public Lcom/narvii/media/YoutubePlaylistLayout$YoutubePlaylistResponse;
.super Lcom/narvii/model/api/ListResponse;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/media/YoutubePlaylistLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "YoutubePlaylistResponse"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/model/api/ListResponse<",
        "Lcom/narvii/media/YoutubePlaylistLayout$YoutubePlaylistItem;",
        ">;"
    }
.end annotation


# instance fields
.field public items:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        contentUsing = Lcom/narvii/media/YoutubePlaylistLayout$YoutubePlaylistItem$YoutubePlaylistItemDeserializer;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/media/YoutubePlaylistLayout$YoutubePlaylistItem;",
            ">;"
        }
    .end annotation
.end field

.field public nextPageToken:Ljava/lang/String;

.field public prevPageToken:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/model/api/ListResponse;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public getPaging()Lcom/narvii/model/api/Pagination;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/model/api/Pagination;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/narvii/model/api/Pagination;-><init>()V

    .line 6
    .line 7
    iget-object v1, p0, Lcom/narvii/media/YoutubePlaylistLayout$YoutubePlaylistResponse;->nextPageToken:Ljava/lang/String;

    .line 8
    .line 9
    iput-object v1, v0, Lcom/narvii/model/api/Pagination;->nextPageToken:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/narvii/media/YoutubePlaylistLayout$YoutubePlaylistResponse;->prevPageToken:Ljava/lang/String;

    .line 12
    .line 13
    iput-object v1, v0, Lcom/narvii/model/api/Pagination;->prevPageToken:Ljava/lang/String;

    .line 14
    return-object v0
.end method

.method public list()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/narvii/media/YoutubePlaylistLayout$YoutubePlaylistItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/narvii/media/YoutubePlaylistLayout$YoutubePlaylistResponse;->items:Ljava/util/List;

    return-object v0
.end method
