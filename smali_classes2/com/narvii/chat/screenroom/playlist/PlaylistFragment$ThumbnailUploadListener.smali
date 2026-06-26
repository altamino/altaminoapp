.class Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$ThumbnailUploadListener;
.super Ljava/lang/Object;
.source "PlaylistFragment.java"

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

    .line 647
    iput-object p1, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$ThumbnailUploadListener;->this$0:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 648
    iput-object p2, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$ThumbnailUploadListener;->item:Lcom/narvii/model/PlayListItem;

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public onFinish(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 653
    new-instance p1, Lcom/narvii/model/Media;

    invoke-direct {p1}, Lcom/narvii/model/Media;-><init>()V

    .line 654
    iput-object p2, p1, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    const/16 p2, 0x64

    .line 655
    iput p2, p1, Lcom/narvii/model/Media;->type:I

    .line 657
    iget-object p2, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$ThumbnailUploadListener;->this$0:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;

    invoke-static {p2}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->access$700(Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;)Ljava/util/List;

    move-result-object p2

    .line 658
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/PlayListItem;

    .line 659
    iget-object v2, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$ThumbnailUploadListener;->item:Lcom/narvii/model/PlayListItem;

    if-eq v1, v2, :cond_1

    iget-object v3, v1, Lcom/narvii/model/PlayListItem;->url:Ljava/lang/String;

    iget-object v2, v2, Lcom/narvii/model/PlayListItem;->url:Ljava/lang/String;

    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/narvii/model/PlayListItem;->thumbnailUrl:Ljava/lang/String;

    if-nez v2, :cond_1

    iget-boolean v2, v1, Lcom/narvii/model/PlayListItem;->needUploadThumbnail:Z

    if-eqz v2, :cond_0

    .line 660
    :cond_1
    iget-object v2, v1, Lcom/narvii/model/PlayListItem;->mediaList:Ljava/util/List;

    if-nez v2, :cond_2

    .line 661
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/narvii/model/PlayListItem;->mediaList:Ljava/util/List;

    goto :goto_1

    .line 663
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 665
    :goto_1
    iget-object v2, v1, Lcom/narvii/model/PlayListItem;->mediaList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    .line 666
    iput-object v2, v1, Lcom/narvii/model/PlayListItem;->thumbnailUrl:Ljava/lang/String;

    const/4 v2, 0x0

    .line 667
    iput-boolean v2, v1, Lcom/narvii/model/PlayListItem;->needUploadThumbnail:Z

    goto :goto_0

    .line 670
    :cond_3
    iget-object p1, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$ThumbnailUploadListener;->this$0:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;

    invoke-static {p1, p2}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->access$1100(Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;Ljava/util/List;)V

    .line 671
    iget-object p1, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$ThumbnailUploadListener;->this$0:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;

    invoke-static {p1}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->access$1200(Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;)V

    return-void
.end method

.method public onProgress(Ljava/lang/String;II)V
    .locals 0

    return-void
.end method
