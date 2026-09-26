.class Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$ThumbnailUploadListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/photos/PhotoUploadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ThumbnailUploadListener"
.end annotation


# instance fields
.field private item:Lcom/narvii/model/PlayListItem;

.field final synthetic this$0:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;Lcom/narvii/model/PlayListItem;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$ThumbnailUploadListener;->this$0:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    iput-object p2, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$ThumbnailUploadListener;->item:Lcom/narvii/model/PlayListItem;

    .line 8
    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public onFinish(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    .line 2
    new-instance p1, Lcom/narvii/model/Media;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1}, Lcom/narvii/model/Media;-><init>()V

    .line 6
    .line 7
    iput-object p2, p1, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 8
    .line 9
    const/16 p2, 0x64

    .line 10
    .line 11
    iput p2, p1, Lcom/narvii/model/Media;->type:I

    .line 12
    .line 13
    iget-object p2, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$ThumbnailUploadListener;->this$0:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;

    .line 14
    .line 15
    .line 16
    invoke-static {p2}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->I(Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;)Ljava/util/List;

    .line 17
    move-result-object p2

    .line 18
    .line 19
    .line 20
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    .line 24
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    move-result v1

    .line 26
    .line 27
    if-eqz v1, :cond_3

    .line 28
    .line 29
    .line 30
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    move-result-object v1

    .line 32
    .line 33
    check-cast v1, Lcom/narvii/model/PlayListItem;

    .line 34
    .line 35
    iget-object v2, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$ThumbnailUploadListener;->item:Lcom/narvii/model/PlayListItem;

    .line 36
    .line 37
    if-eq v1, v2, :cond_1

    .line 38
    .line 39
    iget-object v3, v1, Lcom/narvii/model/PlayListItem;->url:Ljava/lang/String;

    .line 40
    .line 41
    iget-object v2, v2, Lcom/narvii/model/PlayListItem;->url:Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 45
    move-result v2

    .line 46
    .line 47
    if-eqz v2, :cond_0

    .line 48
    .line 49
    iget-object v2, v1, Lcom/narvii/model/PlayListItem;->thumbnailUrl:Ljava/lang/String;

    .line 50
    .line 51
    if-nez v2, :cond_1

    .line 52
    .line 53
    iget-boolean v2, v1, Lcom/narvii/model/PlayListItem;->needUploadThumbnail:Z

    .line 54
    .line 55
    if-eqz v2, :cond_0

    .line 56
    .line 57
    :cond_1
    iget-object v2, v1, Lcom/narvii/model/PlayListItem;->mediaList:Ljava/util/List;

    .line 58
    .line 59
    if-nez v2, :cond_2

    .line 60
    .line 61
    new-instance v2, Ljava/util/ArrayList;

    .line 62
    .line 63
    .line 64
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 65
    .line 66
    iput-object v2, v1, Lcom/narvii/model/PlayListItem;->mediaList:Ljava/util/List;

    .line 67
    goto :goto_1

    .line 68
    .line 69
    .line 70
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 71
    .line 72
    :goto_1
    iget-object v2, v1, Lcom/narvii/model/PlayListItem;->mediaList:Ljava/util/List;

    .line 73
    .line 74
    .line 75
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    const/4 v2, 0x0

    .line 77
    .line 78
    iput-object v2, v1, Lcom/narvii/model/PlayListItem;->thumbnailUrl:Ljava/lang/String;

    .line 79
    const/4 v2, 0x0

    .line 80
    .line 81
    iput-boolean v2, v1, Lcom/narvii/model/PlayListItem;->needUploadThumbnail:Z

    .line 82
    goto :goto_0

    .line 83
    .line 84
    :cond_3
    iget-object p1, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$ThumbnailUploadListener;->this$0:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;

    .line 85
    .line 86
    .line 87
    invoke-static {p1, p2}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->L(Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;Ljava/util/List;)V

    .line 88
    .line 89
    iget-object p1, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$ThumbnailUploadListener;->this$0:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;

    .line 90
    .line 91
    .line 92
    invoke-static {p1}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->N(Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;)V

    .line 93
    return-void
.end method

.method public onProgress(Ljava/lang/String;II)V
    .locals 0

    return-void
.end method
