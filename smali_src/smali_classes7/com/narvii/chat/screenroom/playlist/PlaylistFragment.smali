.class public Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;
.super Lcom/narvii/list/DragSortListFragment;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/media/MediaPickerFragment$OnResultListener;
.implements Lcom/narvii/chat/screenroom/playlist/PlayListChangeListener;
.implements Lcom/narvii/media/MediaPickerFragment$OnCustomOptionSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$VideoPickCallback;,
        Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$PlaylistDismissListener;,
        Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter;,
        Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$ThumbnailUploadListener;
    }
.end annotation


# static fields
.field private static final ADD_VIDEO_PLACEHOLDER_NUM:I = 0x3

.field private static MAX_PLAYLIST_LENGTH:I = 0x1f4


# instance fields
.field private addVideoButton:Landroid/widget/FrameLayout;

.field private addVideoItems:[Landroid/view/View;

.field private backgroundMaskView:Landroid/view/View;

.field private btnStart:Landroid/view/View;

.field private clearAllButton:Landroid/widget/Button;

.field private isLoadPlaylistForPrePick:Z

.field private isPrePickMode:Z

.field private mainListAdapter:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter;

.field private mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

.field private onDismissListener:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$PlaylistDismissListener;

.field private pendingPlayItem:Lcom/narvii/model/PlayListItem;

.field private photo:Lcom/narvii/photos/PhotoManager;

.field private photoDir:Ljava/io/File;

.field private playListSharedPreference:Lcom/narvii/chat/screenroom/utils/PlayListSharedPreference;

.field private prePickPlaylist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/model/PlayListItem;",
            ">;"
        }
    .end annotation
.end field

.field private prepickNdcid:I

.field private screenRoomService:Lcom/narvii/chat/screenroom/ScreenRoomService;

.field private selectFrame:Landroid/view/View;

.field private startFrame:Landroid/view/View;

.field private swipeableLayout:Lcom/narvii/widget/SwipeableLayout;

.field private videoCounter:Landroid/widget/TextView;

.field private videoPickCallback:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$VideoPickCallback;

.field private videoStaticsLayout:Landroid/widget/LinearLayout;

.field private videoTotalTime:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/list/DragSortListFragment;-><init>()V

    .line 4
    const/4 v0, 0x3

    .line 5
    .line 6
    new-array v0, v0, [Landroid/view/View;

    .line 7
    .line 8
    iput-object v0, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->addVideoItems:[Landroid/view/View;

    .line 9
    .line 10
    new-instance v0, Ljava/util/ArrayList;

    .line 11
    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    iput-object v0, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->prePickPlaylist:Ljava/util/List;

    .line 16
    const/4 v0, -0x1

    .line 17
    .line 18
    iput v0, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->prepickNdcid:I

    .line 19
    return-void
.end method

.method static bridge synthetic A(Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;)Lcom/narvii/chat/screenroom/utils/PlayListSharedPreference;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->playListSharedPreference:Lcom/narvii/chat/screenroom/utils/PlayListSharedPreference;

    return-object p0
.end method

.method static bridge synthetic B(Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->prepickNdcid:I

    return p0
.end method

.method static bridge synthetic C(Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;)Lcom/narvii/chat/screenroom/ScreenRoomService;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->screenRoomService:Lcom/narvii/chat/screenroom/ScreenRoomService;

    return-object p0
.end method

.method static bridge synthetic D(Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;)Lcom/narvii/widget/SwipeableLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->swipeableLayout:Lcom/narvii/widget/SwipeableLayout;

    return-object p0
.end method

.method static bridge synthetic E(Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;)Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$VideoPickCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->videoPickCallback:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$VideoPickCallback;

    return-object p0
.end method

.method static bridge synthetic F(Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;Lcom/narvii/model/PlayListItem;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->pendingPlayItem:Lcom/narvii/model/PlayListItem;

    return-void
.end method

.method static bridge synthetic G(Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->clearPlayItemList()V

    return-void
.end method

.method static bridge synthetic H(Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;Lcom/narvii/model/PlayListItem;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->deletePlayItemList(Lcom/narvii/model/PlayListItem;)V

    return-void
.end method

.method static bridge synthetic I(Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->getPlayItemList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic J(Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->isHost()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic K(Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->onLocalListChanged()V

    return-void
.end method

.method static bridge synthetic L(Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->setPlayItemList(Ljava/util/List;)V

    return-void
.end method

.method static bridge synthetic M(Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->startPick()V

    return-void
.end method

.method static bridge synthetic N(Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->updatePlayListView()V

    return-void
.end method

.method private clearPlayItemList()V
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->isPrePickMode:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->prePickPlaylist:Ljava/util/List;

    .line 7
    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->updateStartButton()V

    .line 13
    goto :goto_0

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->screenRoomService:Lcom/narvii/chat/screenroom/ScreenRoomService;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/narvii/chat/screenroom/ScreenRoomService;->onPlayItemClear()V

    .line 19
    :goto_0
    return-void
.end method

.method private deletePlayItemList(Lcom/narvii/model/PlayListItem;)V
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->isPrePickMode:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->prePickPlaylist:Ljava/util/List;

    .line 7
    .line 8
    .line 9
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->updateStartButton()V

    .line 13
    goto :goto_0

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->screenRoomService:Lcom/narvii/chat/screenroom/ScreenRoomService;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1}, Lcom/narvii/chat/screenroom/ScreenRoomService;->onPlayItemDeleted(Lcom/narvii/model/PlayListItem;)V

    .line 19
    :goto_0
    return-void
.end method

.method private getPlayItemList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/narvii/model/PlayListItem;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->isPrePickMode:Z

    .line 3
    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    iget-boolean v0, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->isLoadPlaylistForPrePick:Z

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->prePickPlaylist:Ljava/util/List;

    .line 11
    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 14
    .line 15
    iget-object v0, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->playListSharedPreference:Lcom/narvii/chat/screenroom/utils/PlayListSharedPreference;

    .line 16
    .line 17
    iget v1, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->prepickNdcid:I

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lcom/narvii/chat/screenroom/utils/PlayListSharedPreference;->loadPlayListItem(I)Ljava/util/List;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    iget-object v1, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->prePickPlaylist:Ljava/util/List;

    .line 26
    .line 27
    .line 28
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 29
    :cond_0
    const/4 v0, 0x1

    .line 30
    .line 31
    iput-boolean v0, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->isLoadPlaylistForPrePick:Z

    .line 32
    .line 33
    :cond_1
    iget-object v0, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->prePickPlaylist:Ljava/util/List;

    .line 34
    return-object v0

    .line 35
    .line 36
    :cond_2
    iget-object v0, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->screenRoomService:Lcom/narvii/chat/screenroom/ScreenRoomService;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/narvii/chat/screenroom/ScreenRoomService;->getPlayItemList()Ljava/util/List;

    .line 40
    move-result-object v0

    .line 41
    return-object v0
.end method

.method private isHost()Z
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->isPrePickMode:Z

    .line 3
    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->screenRoomService:Lcom/narvii/chat/screenroom/ScreenRoomService;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/narvii/chat/screenroom/ScreenRoomService;->isHostInSRChannel()Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 17
    :goto_1
    return v0
.end method

.method private onLocalListChanged()V
    .locals 8

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->mainListAdapter:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/list/NVArrayAdapter;->getList()Ljava/util/List;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    .line 13
    :catch_0
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    move-result v2

    .line 15
    .line 16
    if-eqz v2, :cond_3

    .line 17
    .line 18
    .line 19
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    move-result-object v2

    .line 21
    .line 22
    check-cast v2, Lcom/narvii/model/PlayListItem;

    .line 23
    .line 24
    iget-object v3, v2, Lcom/narvii/model/PlayListItem;->thumbnailUrl:Ljava/lang/String;

    .line 25
    .line 26
    if-eqz v3, :cond_1

    .line 27
    .line 28
    iget-boolean v4, v2, Lcom/narvii/model/PlayListItem;->needUploadThumbnail:Z

    .line 29
    .line 30
    if-eqz v4, :cond_1

    .line 31
    .line 32
    iget-object v4, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->photo:Lcom/narvii/photos/PhotoManager;

    .line 33
    .line 34
    new-instance v5, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$ThumbnailUploadListener;

    .line 35
    .line 36
    .line 37
    invoke-direct {v5, p0, v2}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$ThumbnailUploadListener;-><init>(Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;Lcom/narvii/model/PlayListItem;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v4, v3, v5}, Lcom/narvii/photos/PhotoManager;->upload(Ljava/lang/String;Lcom/narvii/photos/PhotoUploadListener;)V

    .line 41
    goto :goto_0

    .line 42
    .line 43
    :cond_1
    iget v3, v2, Lcom/narvii/model/PlayListItem;->type:I

    .line 44
    const/4 v4, 0x3

    .line 45
    .line 46
    if-ne v3, v4, :cond_0

    .line 47
    .line 48
    iget-boolean v3, v2, Lcom/narvii/model/PlayListItem;->needUploadThumbnail:Z

    .line 49
    .line 50
    if-eqz v3, :cond_0

    .line 51
    .line 52
    .line 53
    :try_start_0
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 54
    move-result-object v3

    .line 55
    .line 56
    iget v4, v2, Lcom/narvii/model/PlayListItem;->songId:I

    .line 57
    int-to-long v4, v4

    .line 58
    .line 59
    iget v6, v2, Lcom/narvii/model/PlayListItem;->albumId:I

    .line 60
    int-to-long v6, v6

    .line 61
    .line 62
    .line 63
    invoke-static {v3, v4, v5, v6, v7}, Lcom/narvii/chat/screenroom/playlist/PlaylistUtils;->getArtwork(Landroid/content/Context;JJ)Landroid/graphics/Bitmap;

    .line 64
    move-result-object v3

    .line 65
    .line 66
    if-nez v3, :cond_2

    .line 67
    const/4 v3, 0x0

    .line 68
    .line 69
    iput-boolean v3, v2, Lcom/narvii/model/PlayListItem;->needUploadThumbnail:Z

    .line 70
    goto :goto_0

    .line 71
    .line 72
    :cond_2
    iget-object v4, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->photo:Lcom/narvii/photos/PhotoManager;

    .line 73
    .line 74
    new-instance v5, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$ThumbnailUploadListener;

    .line 75
    .line 76
    .line 77
    invoke-direct {v5, p0, v2}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$ThumbnailUploadListener;-><init>(Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;Lcom/narvii/model/PlayListItem;)V

    .line 78
    const/4 v2, 0x0

    .line 79
    .line 80
    .line 81
    invoke-virtual {v4, v2, v3, v2, v5}, Lcom/narvii/photos/PhotoManager;->upload(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Lcom/narvii/photos/PhotoUploadListener;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    goto :goto_0

    .line 83
    .line 84
    .line 85
    :cond_3
    invoke-direct {p0, v0}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->setPlayItemList(Ljava/util/List;)V

    .line 86
    .line 87
    .line 88
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->updatePlayListView()V

    .line 89
    return-void
.end method

.method private onRemoteListChanged()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->updatePlayListView()V

    .line 4
    return-void
.end method

.method private queryAudioUri(Landroid/net/Uri;)V
    .locals 7

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    const-string v0, "duration"

    .line 14
    .line 15
    const-string v2, "album_id"

    .line 16
    .line 17
    const-string v3, "_id"

    .line 18
    .line 19
    const-string v4, "_data"

    .line 20
    .line 21
    const-string v5, "_display_name"

    .line 22
    .line 23
    .line 24
    filled-new-array {v3, v4, v5, v0, v2}, [Ljava/lang/String;

    .line 25
    move-result-object v3

    .line 26
    const/4 v4, 0x0

    .line 27
    const/4 v5, 0x0

    .line 28
    const/4 v6, 0x0

    .line 29
    move-object v2, p1

    .line 30
    .line 31
    .line 32
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 33
    move-result-object p1

    .line 34
    .line 35
    if-eqz p1, :cond_2

    .line 36
    .line 37
    .line 38
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 39
    move-result v0

    .line 40
    .line 41
    if-eqz v0, :cond_2

    .line 42
    .line 43
    new-instance v0, Lcom/narvii/model/PlayListItem;

    .line 44
    .line 45
    .line 46
    invoke-direct {v0}, Lcom/narvii/model/PlayListItem;-><init>()V

    .line 47
    const/4 v1, 0x3

    .line 48
    .line 49
    iput v1, v0, Lcom/narvii/model/PlayListItem;->type:I

    .line 50
    const/4 v2, 0x0

    .line 51
    .line 52
    .line 53
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    .line 54
    move-result v2

    .line 55
    .line 56
    iput v2, v0, Lcom/narvii/model/PlayListItem;->songId:I

    .line 57
    const/4 v2, 0x1

    .line 58
    .line 59
    .line 60
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 61
    move-result-object v3

    .line 62
    .line 63
    if-eqz v3, :cond_1

    .line 64
    .line 65
    new-instance v4, Ljava/io/File;

    .line 66
    .line 67
    .line 68
    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    .line 72
    move-result-object v3

    .line 73
    .line 74
    .line 75
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 76
    move-result-object v3

    .line 77
    .line 78
    iput-object v3, v0, Lcom/narvii/model/PlayListItem;->localMediaUrl:Ljava/lang/String;

    .line 79
    .line 80
    :cond_1
    iget-object v3, v0, Lcom/narvii/model/PlayListItem;->localMediaUrl:Ljava/lang/String;

    .line 81
    .line 82
    iput-object v3, v0, Lcom/narvii/model/PlayListItem;->url:Ljava/lang/String;

    .line 83
    const/4 v3, 0x2

    .line 84
    .line 85
    .line 86
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 87
    move-result-object v3

    .line 88
    .line 89
    iput-object v3, v0, Lcom/narvii/model/PlayListItem;->title:Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    .line 93
    move-result v1

    .line 94
    int-to-double v3, v1

    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    const-wide v5, 0x408f400000000000L    # 1000.0

    .line 100
    div-double/2addr v3, v5

    .line 101
    .line 102
    iput-wide v3, v0, Lcom/narvii/model/PlayListItem;->duration:D

    .line 103
    const/4 v1, 0x4

    .line 104
    .line 105
    .line 106
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    .line 107
    move-result v1

    .line 108
    .line 109
    iput v1, v0, Lcom/narvii/model/PlayListItem;->albumId:I

    .line 110
    .line 111
    iput-boolean v2, v0, Lcom/narvii/model/PlayListItem;->needUploadThumbnail:Z

    .line 112
    .line 113
    .line 114
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 115
    goto :goto_0

    .line 116
    :cond_2
    const/4 v0, 0x0

    .line 117
    .line 118
    :goto_0
    if-eqz v0, :cond_3

    .line 119
    .line 120
    iget-object p1, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->mainListAdapter:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter;

    .line 121
    .line 122
    .line 123
    invoke-virtual {p1, v0}, Lcom/narvii/list/NVArrayAdapter;->add(Ljava/lang/Object;)V

    .line 124
    .line 125
    .line 126
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->onLocalListChanged()V

    .line 127
    :cond_3
    return-void
.end method

.method public static safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V
    .locals 1
    .param p0, "p0"    # Landroidx/fragment/app/Fragment;
    .param p1, "p1"    # Landroid/content/Intent;
    .param p2, "p2"    # I

    const-string v0, "SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private setPlayItemList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/PlayListItem;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->isPrePickMode:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 10
    .line 11
    iput-object v0, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->prePickPlaylist:Ljava/util/List;

    .line 12
    .line 13
    .line 14
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->updateStartButton()V

    .line 15
    goto :goto_0

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->screenRoomService:Lcom/narvii/chat/screenroom/ScreenRoomService;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p1}, Lcom/narvii/chat/screenroom/ScreenRoomService;->setPlayListItems(Ljava/util/List;)V

    .line 21
    :goto_0
    return-void
.end method

.method private startPick()V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->getPlayItemList()Ljava/util/List;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 10
    move-result v0

    .line 11
    .line 12
    sget v1, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->MAX_PLAYLIST_LENGTH:I

    .line 13
    .line 14
    if-lt v0, v1, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 18
    move-result-object v0

    .line 19
    const/4 v1, 0x1

    .line 20
    .line 21
    new-array v1, v1, [Ljava/lang/Object;

    .line 22
    .line 23
    sget v2, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->MAX_PLAYLIST_LENGTH:I

    .line 24
    .line 25
    .line 26
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    move-result-object v2

    .line 28
    const/4 v3, 0x0

    .line 29
    .line 30
    aput-object v2, v1, v3

    .line 31
    .line 32
    .line 33
    const v2, 0x7f12104f

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, v2, v1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 37
    move-result-object v1

    .line 38
    .line 39
    .line 40
    invoke-static {v0, v1, v3}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    .line 41
    move-result-object v0

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/narvii/util/NVToast;->show()V

    .line 45
    goto :goto_0

    .line 46
    .line 47
    :cond_0
    sget-object v0, Lcom/narvii/permisson/PermissionUtilsV2;->INSTANCE:Lcom/narvii/permisson/PermissionUtilsV2;

    .line 48
    .line 49
    sget-object v1, Lcom/narvii/permisson/GranularMediaPermissions;->READ_MEDIA_VIDEO:Lcom/narvii/permisson/GranularMediaPermissions;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v1}, Lcom/narvii/permisson/PermissionUtilsV2;->obtainPermissionName(Lcom/narvii/permisson/GranularMediaPermissions;)Ljava/lang/String;

    .line 53
    move-result-object v0

    .line 54
    .line 55
    .line 56
    invoke-static {p0}, Lcom/narvii/permisson/NVPermission;->builder(Landroidx/fragment/app/Fragment;)Lcom/narvii/permisson/NVPermission$Builder;

    .line 57
    move-result-object v1

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, p0}, Lcom/narvii/permisson/NVPermission$Builder;->permissionListener(Lcom/narvii/permisson/PermissionListener;)Lcom/narvii/permisson/NVPermission$Builder;

    .line 61
    move-result-object v1

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1, v0}, Lcom/narvii/permisson/NVPermission$Builder;->permission(Ljava/lang/String;)Lcom/narvii/permisson/NVPermission$Builder;

    .line 65
    move-result-object v0

    .line 66
    .line 67
    const/16 v1, 0x6b

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v1}, Lcom/narvii/permisson/NVPermission$Builder;->requestCode(I)Lcom/narvii/permisson/NVPermission$Builder;

    .line 71
    move-result-object v0

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0}, Lcom/narvii/permisson/NVPermission$Builder;->request()V

    .line 75
    :goto_0
    return-void
.end method

.method static bridge synthetic u(Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->backgroundMaskView:Landroid/view/View;

    return-object p0
.end method

.method private updateBottomViews()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->startFrame:Landroid/view/View;

    .line 3
    .line 4
    const/16 v1, 0x8

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-boolean v3, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->isPrePickMode:Z

    .line 10
    .line 11
    if-eqz v3, :cond_0

    .line 12
    move v3, v2

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move v3, v1

    .line 15
    .line 16
    .line 17
    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 18
    .line 19
    :cond_1
    iget-object v0, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->selectFrame:Landroid/view/View;

    .line 20
    .line 21
    if-eqz v0, :cond_3

    .line 22
    .line 23
    iget-boolean v3, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->isPrePickMode:Z

    .line 24
    .line 25
    if-eqz v3, :cond_2

    .line 26
    goto :goto_1

    .line 27
    :cond_2
    move v1, v2

    .line 28
    .line 29
    .line 30
    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 31
    .line 32
    .line 33
    :cond_3
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->updateStartButton()V

    .line 34
    return-void
.end method

.method private updateLayout()V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Lcom/narvii/util/Utils;->isLandscape(Landroid/content/Context;)Z

    .line 8
    move-result v0

    .line 9
    .line 10
    iget-object v1, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->swipeableLayout:Lcom/narvii/widget/SwipeableLayout;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getStatusBarOverlaySize()I

    .line 22
    move-result v0

    .line 23
    goto :goto_0

    .line 24
    .line 25
    .line 26
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    .line 30
    invoke-static {v0}, Lcom/narvii/util/Utils;->getOverlayPlaceholderHeight(Landroid/app/Activity;)I

    .line 31
    move-result v0

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 35
    move-result-object v2

    .line 36
    .line 37
    .line 38
    const v3, 0x7f07054c

    .line 39
    .line 40
    .line 41
    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->getDimenPixelSize(Landroid/content/Context;I)I

    .line 42
    move-result v2

    .line 43
    add-int/2addr v0, v2

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 47
    move-result-object v2

    .line 48
    .line 49
    .line 50
    const v3, 0x7f0704de

    .line 51
    .line 52
    .line 53
    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->getDimenPixelSize(Landroid/content/Context;I)I

    .line 54
    move-result v2

    .line 55
    .line 56
    mul-int/lit8 v2, v2, 0x2

    .line 57
    add-int/2addr v0, v2

    .line 58
    .line 59
    :goto_0
    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 60
    return-void
.end method

.method private updatePlayListView()V
    .locals 12

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_f

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    instance-of v0, v0, Lcom/narvii/app/NVActivity;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    check-cast v0, Lcom/narvii/app/NVActivity;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/narvii/app/NVActivity;->isDestoryed()Z

    .line 24
    move-result v0

    .line 25
    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    goto/16 :goto_6

    .line 29
    .line 30
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 31
    .line 32
    .line 33
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->getPlayItemList()Ljava/util/List;

    .line 34
    move-result-object v1

    .line 35
    .line 36
    .line 37
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 38
    .line 39
    iget-object v1, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->mainListAdapter:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, v0}, Lcom/narvii/list/NVArrayAdapter;->setList(Ljava/util/ArrayList;)V

    .line 43
    .line 44
    .line 45
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->isHost()Z

    .line 46
    move-result v1

    .line 47
    const/4 v2, 0x0

    .line 48
    const/4 v3, 0x1

    .line 49
    .line 50
    if-eqz v1, :cond_1

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 54
    move-result v4

    .line 55
    .line 56
    rsub-int/lit8 v4, v4, 0x3

    .line 57
    .line 58
    .line 59
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    .line 60
    move-result v4

    .line 61
    goto :goto_0

    .line 62
    :cond_1
    move v4, v2

    .line 63
    .line 64
    .line 65
    :goto_0
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 66
    move-result-object v5

    .line 67
    .line 68
    .line 69
    invoke-virtual {v5}, Landroid/widget/ListView;->getFooterViewsCount()I

    .line 70
    move-result v5

    .line 71
    .line 72
    if-le v5, v4, :cond_2

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 76
    move-result-object v5

    .line 77
    .line 78
    iget-object v6, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->addVideoItems:[Landroid/view/View;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 82
    move-result-object v7

    .line 83
    .line 84
    .line 85
    invoke-virtual {v7}, Landroid/widget/ListView;->getFooterViewsCount()I

    .line 86
    move-result v7

    .line 87
    sub-int/2addr v7, v3

    .line 88
    .line 89
    aget-object v6, v6, v7

    .line 90
    .line 91
    .line 92
    invoke-virtual {v5, v6}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    .line 93
    goto :goto_0

    .line 94
    .line 95
    .line 96
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 97
    move-result-object v5

    .line 98
    .line 99
    .line 100
    invoke-virtual {v5}, Landroid/widget/ListView;->getFooterViewsCount()I

    .line 101
    move-result v5

    .line 102
    .line 103
    if-ge v5, v4, :cond_3

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 107
    move-result-object v5

    .line 108
    .line 109
    iget-object v6, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->addVideoItems:[Landroid/view/View;

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 113
    move-result-object v7

    .line 114
    .line 115
    .line 116
    invoke-virtual {v7}, Landroid/widget/ListView;->getFooterViewsCount()I

    .line 117
    move-result v7

    .line 118
    .line 119
    aget-object v6, v6, v7

    .line 120
    const/4 v7, 0x0

    .line 121
    .line 122
    .line 123
    invoke-virtual {v5, v6, v7, v3}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 124
    goto :goto_1

    .line 125
    .line 126
    :cond_3
    iget-object v4, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->videoStaticsLayout:Landroid/widget/LinearLayout;

    .line 127
    .line 128
    if-eqz v4, :cond_5

    .line 129
    .line 130
    if-eqz v1, :cond_4

    .line 131
    .line 132
    .line 133
    const v5, 0x800003

    .line 134
    goto :goto_2

    .line 135
    :cond_4
    move v5, v3

    .line 136
    .line 137
    .line 138
    :goto_2
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 139
    .line 140
    :cond_5
    iget-object v4, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->addVideoButton:Landroid/widget/FrameLayout;

    .line 141
    .line 142
    const/16 v5, 0x8

    .line 143
    .line 144
    if-eqz v4, :cond_7

    .line 145
    .line 146
    if-eqz v1, :cond_6

    .line 147
    move v6, v2

    .line 148
    goto :goto_3

    .line 149
    :cond_6
    move v6, v5

    .line 150
    .line 151
    .line 152
    :goto_3
    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 153
    .line 154
    :cond_7
    iget-object v4, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->clearAllButton:Landroid/widget/Button;

    .line 155
    .line 156
    if-eqz v4, :cond_9

    .line 157
    .line 158
    if-eqz v1, :cond_8

    .line 159
    .line 160
    .line 161
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 162
    move-result v1

    .line 163
    .line 164
    if-nez v1, :cond_8

    .line 165
    move v5, v2

    .line 166
    .line 167
    .line 168
    :cond_8
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 169
    .line 170
    :cond_9
    iget-object v1, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->videoCounter:Landroid/widget/TextView;

    .line 171
    .line 172
    if-eqz v1, :cond_a

    .line 173
    .line 174
    .line 175
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 176
    move-result v1

    .line 177
    .line 178
    .line 179
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 180
    move-result-object v4

    .line 181
    .line 182
    .line 183
    const v5, 0x7f121051

    .line 184
    .line 185
    .line 186
    const v6, 0x7f121052

    .line 187
    .line 188
    .line 189
    invoke-static {v4, v1, v5, v6}, Lcom/narvii/util/text/TextUtils;->getCountText(Landroid/content/Context;III)Ljava/lang/String;

    .line 190
    move-result-object v1

    .line 191
    .line 192
    iget-object v4, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->videoCounter:Landroid/widget/TextView;

    .line 193
    .line 194
    .line 195
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    .line 197
    :cond_a
    iget-object v1, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->videoTotalTime:Landroid/widget/TextView;

    .line 198
    .line 199
    if-eqz v1, :cond_f

    .line 200
    .line 201
    .line 202
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 203
    move-result-object v0

    .line 204
    .line 205
    const-wide/16 v4, 0x0

    .line 206
    move-wide v6, v4

    .line 207
    .line 208
    .line 209
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 210
    move-result v1

    .line 211
    .line 212
    if-eqz v1, :cond_b

    .line 213
    .line 214
    .line 215
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 216
    move-result-object v1

    .line 217
    .line 218
    check-cast v1, Lcom/narvii/model/PlayListItem;

    .line 219
    long-to-double v6, v6

    .line 220
    .line 221
    iget-wide v8, v1, Lcom/narvii/model/PlayListItem;->duration:D

    .line 222
    add-double/2addr v6, v8

    .line 223
    double-to-long v6, v6

    .line 224
    goto :goto_4

    .line 225
    .line 226
    :cond_b
    cmp-long v0, v6, v4

    .line 227
    .line 228
    if-nez v0, :cond_c

    .line 229
    .line 230
    .line 231
    const v0, 0x7f120418

    .line 232
    .line 233
    .line 234
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 235
    move-result-object v0

    .line 236
    goto :goto_5

    .line 237
    .line 238
    :cond_c
    const-wide/16 v0, 0x3c

    .line 239
    .line 240
    cmp-long v4, v6, v0

    .line 241
    .line 242
    if-gez v4, :cond_d

    .line 243
    .line 244
    .line 245
    const v0, 0x7f120415

    .line 246
    .line 247
    .line 248
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 249
    move-result-object v0

    .line 250
    goto :goto_5

    .line 251
    .line 252
    .line 253
    :cond_d
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 254
    move-result-object v4

    .line 255
    .line 256
    const-wide/16 v8, 0xe10

    .line 257
    .line 258
    rem-long v10, v6, v8

    .line 259
    div-long/2addr v10, v0

    .line 260
    long-to-int v0, v10

    .line 261
    .line 262
    .line 263
    const v1, 0x7f120419

    .line 264
    .line 265
    .line 266
    const v5, 0x7f120417

    .line 267
    .line 268
    .line 269
    invoke-static {v4, v0, v1, v5}, Lcom/narvii/util/text/TextUtils;->getCountText(Landroid/content/Context;III)Ljava/lang/String;

    .line 270
    move-result-object v0

    .line 271
    .line 272
    cmp-long v1, v6, v8

    .line 273
    .line 274
    if-lez v1, :cond_e

    .line 275
    const/4 v1, 0x2

    .line 276
    .line 277
    new-array v1, v1, [Ljava/lang/Object;

    .line 278
    div-long/2addr v6, v8

    .line 279
    .line 280
    .line 281
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 282
    move-result-object v4

    .line 283
    .line 284
    aput-object v4, v1, v2

    .line 285
    .line 286
    aput-object v0, v1, v3

    .line 287
    .line 288
    .line 289
    const v0, 0x7f120416

    .line 290
    .line 291
    .line 292
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 293
    move-result-object v0

    .line 294
    .line 295
    :cond_e
    :goto_5
    iget-object v1, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->videoTotalTime:Landroid/widget/TextView;

    .line 296
    .line 297
    new-array v3, v3, [Ljava/lang/Object;

    .line 298
    .line 299
    aput-object v0, v3, v2

    .line 300
    .line 301
    .line 302
    const v0, 0x7f121053

    .line 303
    .line 304
    .line 305
    invoke-virtual {p0, v0, v3}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 306
    move-result-object v0

    .line 307
    .line 308
    .line 309
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 310
    :cond_f
    :goto_6
    return-void
.end method

.method private updateStartButton()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->btnStart:Landroid/view/View;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->getPlayItemList()Ljava/util/List;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    const/4 v0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    .line 21
    :goto_0
    iget-object v1, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->btnStart:Landroid/view/View;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 25
    :cond_1
    return-void
.end method

.method static bridge synthetic v(Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->isPrePickMode:Z

    return p0
.end method

.method static bridge synthetic w(Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;)Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->mainListAdapter:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter;

    return-object p0
.end method

.method static bridge synthetic x(Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;)Lcom/narvii/media/MediaPickerFragment;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    return-object p0
.end method

.method static bridge synthetic y(Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;)Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$PlaylistDismissListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->onDismissListener:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$PlaylistDismissListener;

    return-object p0
.end method

.method static bridge synthetic z(Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;)Ljava/io/File;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->photoDir:Ljava/io/File;

    return-object p0
.end method


# virtual methods
.method protected autoAddBottomPadding()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected bridge synthetic createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->createAdapter(Landroid/os/Bundle;)Lcom/narvii/list/NVArrayAdapter;

    move-result-object p1

    return-object p1
.end method

.method protected createAdapter(Landroid/os/Bundle;)Lcom/narvii/list/NVArrayAdapter;
    .locals 0

    .line 2
    new-instance p1, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter;

    invoke-direct {p1, p0, p0}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter;-><init>(Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->mainListAdapter:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter;

    .line 3
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->updatePlayListView()V

    iget-object p1, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->mainListAdapter:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter;

    return-object p1
.end method

.method public dismiss()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->swipeableLayout:Lcom/narvii/widget/SwipeableLayout;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    const/4 v1, 0x2

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/narvii/widget/SwipeableLayout;->dismiss(I)V

    .line 9
    :cond_0
    return-void
.end method

.method public drop(II)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/list/DragSortListFragment;->drop(II)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->onLocalListChanged()V

    .line 7
    return-void
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-string v0, "screening_room_playlist"

    return-object v0
.end method

.method public hasPostEntry()Ljava/lang/Boolean;
    .locals 1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isDarkTheme()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isFinalPage()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isValidPage()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    .line 3
    if-ne p2, v0, :cond_0

    .line 4
    .line 5
    const/16 v0, 0x64

    .line 6
    .line 7
    if-ne p1, v0, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    .line 14
    invoke-direct {p0, p1}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->queryAudioUri(Landroid/net/Uri;)V

    .line 15
    goto :goto_0

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/app/NVFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 19
    :goto_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->updateLayout()V

    .line 7
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    .line 10
    invoke-static {p1}, Lcom/narvii/util/SoftKeyboard;->hideSoftKeyboard(Landroid/content/Context;)V

    .line 11
    .line 12
    new-instance p1, Ljava/io/File;

    .line 13
    .line 14
    new-instance v0, Ljava/io/File;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    const-string v2, "photo"

    .line 25
    .line 26
    .line 27
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 28
    .line 29
    const-string v1, "screenroomPlaylistItemCover"

    .line 30
    .line 31
    .line 32
    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 33
    .line 34
    iput-object p1, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->photoDir:Ljava/io/File;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 38
    move-result-object p1

    .line 39
    .line 40
    const-string v0, "playListMediaPicker"

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->m0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 44
    move-result-object p1

    .line 45
    .line 46
    check-cast p1, Lcom/narvii/media/MediaPickerFragment;

    .line 47
    .line 48
    iput-object p1, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    .line 49
    .line 50
    if-nez p1, :cond_0

    .line 51
    .line 52
    new-instance p1, Lcom/narvii/media/MediaPickerFragment;

    .line 53
    .line 54
    .line 55
    invoke-direct {p1}, Lcom/narvii/media/MediaPickerFragment;-><init>()V

    .line 56
    .line 57
    iput-object p1, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 61
    move-result-object p1

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->q()Landroidx/fragment/app/FragmentTransaction;

    .line 65
    move-result-object p1

    .line 66
    .line 67
    iget-object v1, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1, v1, v0}, Landroidx/fragment/app/FragmentTransaction;->e(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 71
    move-result-object p1

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->k()I

    .line 75
    .line 76
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1, p0}, Lcom/narvii/media/MediaPickerFragment;->addOnResultListener(Lcom/narvii/media/MediaPickerFragment$OnResultListener;)V

    .line 80
    .line 81
    iget-object p1, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1, p0}, Lcom/narvii/media/MediaPickerFragment;->setOnCustomOptionSelectedListener(Lcom/narvii/media/MediaPickerFragment$OnCustomOptionSelectedListener;)V

    .line 85
    .line 86
    const-string p1, "screenRoom"

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 90
    move-result-object p1

    .line 91
    .line 92
    check-cast p1, Lcom/narvii/chat/screenroom/ScreenRoomService;

    .line 93
    .line 94
    iput-object p1, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->screenRoomService:Lcom/narvii/chat/screenroom/ScreenRoomService;

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1, p0}, Lcom/narvii/chat/screenroom/ScreenRoomService;->addPlayListChangeListenter(Lcom/narvii/chat/screenroom/playlist/PlayListChangeListener;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 101
    move-result-object p1

    .line 102
    .line 103
    check-cast p1, Lcom/narvii/photos/PhotoManager;

    .line 104
    .line 105
    iput-object p1, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->photo:Lcom/narvii/photos/PhotoManager;

    .line 106
    .line 107
    new-instance p1, Lcom/narvii/chat/screenroom/utils/PlayListSharedPreference;

    .line 108
    .line 109
    .line 110
    invoke-direct {p1, p0}, Lcom/narvii/chat/screenroom/utils/PlayListSharedPreference;-><init>(Lcom/narvii/app/NVContext;)V

    .line 111
    .line 112
    iput-object p1, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->playListSharedPreference:Lcom/narvii/chat/screenroom/utils/PlayListSharedPreference;

    .line 113
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 1
    .line 2
    .line 3
    const p3, 0x7f0d030d

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public onCustomOptionSelected(Lcom/narvii/media/MediaPickerFragment$Option;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    .line 2
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    .line 4
    const/16 p2, 0x21

    .line 5
    .line 6
    if-lt p1, p2, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-static {p0}, Lcom/narvii/permisson/NVPermission;->builder(Landroidx/fragment/app/Fragment;)Lcom/narvii/permisson/NVPermission$Builder;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    const-string p2, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, p2}, Lcom/narvii/permisson/NVPermission$Builder;->permission(Ljava/lang/String;)Lcom/narvii/permisson/NVPermission$Builder;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    const/16 p2, 0x12f

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, p2}, Lcom/narvii/permisson/NVPermission$Builder;->requestCode(I)Lcom/narvii/permisson/NVPermission$Builder;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, p0}, Lcom/narvii/permisson/NVPermission$Builder;->permissionListener(Lcom/narvii/permisson/PermissionListener;)Lcom/narvii/permisson/NVPermission$Builder;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/narvii/permisson/NVPermission$Builder;->request()V

    .line 30
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->screenRoomService:Lcom/narvii/chat/screenroom/ScreenRoomService;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p0}, Lcom/narvii/chat/screenroom/ScreenRoomService;->removePlayListChangeListener(Lcom/narvii/chat/screenroom/playlist/PlayListChangeListener;)V

    .line 6
    const/4 v0, 0x0

    .line 7
    .line 8
    iput-object v0, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->onDismissListener:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$PlaylistDismissListener;

    .line 9
    .line 10
    .line 11
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onDestroy()V

    .line 12
    .line 13
    iget-object v0, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p0}, Lcom/narvii/media/MediaPickerFragment;->removeOnResultListener(Lcom/narvii/media/MediaPickerFragment$OnResultListener;)V

    .line 19
    :cond_0
    return-void
.end method

.method protected onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    new-instance p2, Landroid/graphics/drawable/ColorDrawable;

    .line 10
    .line 11
    .line 12
    const v0, -0x771f211d

    .line 13
    .line 14
    .line 15
    invoke-direct {p2, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 26
    move-result-object p2

    .line 27
    .line 28
    const/high16 v0, 0x3f800000    # 1.0f

    .line 29
    .line 30
    .line 31
    invoke-static {p2, v0}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 32
    move-result p2

    .line 33
    float-to-int p2, p2

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 37
    const/4 p1, 0x0

    .line 38
    move p2, p1

    .line 39
    .line 40
    :goto_0
    iget-object v0, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->addVideoItems:[Landroid/view/View;

    .line 41
    array-length v1, v0

    .line 42
    .line 43
    if-ge p2, v1, :cond_0

    .line 44
    const/4 v1, 0x0

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    .line 48
    move-result-object v1

    .line 49
    .line 50
    .line 51
    const v2, 0x7f0d06b1

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 55
    move-result-object v3

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, v2, v3, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 59
    move-result-object v1

    .line 60
    .line 61
    aput-object v1, v0, p2

    .line 62
    .line 63
    add-int/lit8 p2, p2, 0x1

    .line 64
    goto :goto_0

    .line 65
    :cond_0
    return-void
.end method

.method public onPermissionGranted(I)V
    .locals 8

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onPermissionGranted(I)V

    .line 4
    .line 5
    const/16 v0, 0x6b

    .line 6
    .line 7
    .line 8
    const v1, 0x7f120c45

    .line 9
    .line 10
    if-ne p1, v0, :cond_0

    .line 11
    .line 12
    new-instance v7, Ljava/util/ArrayList;

    .line 13
    .line 14
    .line 15
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    new-instance p1, Lcom/narvii/media/MediaPickerFragment$Option;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 21
    move-result-object v0

    .line 22
    const/4 v1, 0x0

    .line 23
    const/4 v2, 0x1

    .line 24
    .line 25
    .line 26
    invoke-direct {p1, v2, v0, v1, v2}, Lcom/narvii/media/MediaPickerFragment$Option;-><init>(ILjava/lang/String;II)V

    .line 27
    .line 28
    .line 29
    invoke-interface {v7, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    .line 31
    new-instance v4, Landroid/os/Bundle;

    .line 32
    .line 33
    .line 34
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 35
    .line 36
    const-string p1, "type"

    .line 37
    .line 38
    const-string v0, "video"

    .line 39
    .line 40
    .line 41
    invoke-virtual {v4, p1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    const-string p1, "needDuration"

    .line 44
    .line 45
    .line 46
    invoke-virtual {v4, p1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 47
    .line 48
    .line 49
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->getPlayItemList()Ljava/util/List;

    .line 50
    move-result-object p1

    .line 51
    .line 52
    iget-object v2, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    .line 53
    const/4 v3, 0x0

    .line 54
    .line 55
    .line 56
    const v5, 0x40200

    .line 57
    .line 58
    sget v0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->MAX_PLAYLIST_LENGTH:I

    .line 59
    .line 60
    .line 61
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 62
    move-result p1

    .line 63
    .line 64
    sub-int v6, v0, p1

    .line 65
    .line 66
    .line 67
    invoke-virtual/range {v2 .. v7}, Lcom/narvii/media/MediaPickerFragment;->pickMedia(Ljava/io/File;Landroid/os/Bundle;IILjava/util/List;)V

    .line 68
    goto :goto_0

    .line 69
    .line 70
    :cond_0
    const/16 v0, 0x12f

    .line 71
    .line 72
    if-ne p1, v0, :cond_1

    .line 73
    .line 74
    new-instance p1, Landroid/content/Intent;

    .line 75
    .line 76
    const-string v0, "android.intent.action.PICK"

    .line 77
    .line 78
    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 79
    .line 80
    .line 81
    invoke-direct {p1, v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 85
    move-result-object v0

    .line 86
    .line 87
    .line 88
    invoke-static {p1, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 89
    move-result-object p1

    .line 90
    .line 91
    const/16 v0, 0x64

    .line 92
    .line 93
    .line 94
    invoke-static {p0, p1, v0}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V

    .line 95
    goto :goto_0

    .line 96
    .line 97
    :cond_1
    const/16 v0, 0x133

    .line 98
    .line 99
    if-ne p1, v0, :cond_2

    .line 100
    .line 101
    iget-object p1, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->pendingPlayItem:Lcom/narvii/model/PlayListItem;

    .line 102
    .line 103
    if-eqz p1, :cond_2

    .line 104
    .line 105
    iget-boolean v0, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->isPrePickMode:Z

    .line 106
    .line 107
    if-nez v0, :cond_2

    .line 108
    .line 109
    iget-object v0, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->screenRoomService:Lcom/narvii/chat/screenroom/ScreenRoomService;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0, p1}, Lcom/narvii/chat/screenroom/ScreenRoomService;->playItem(Lcom/narvii/model/PlayListItem;)V

    .line 113
    :cond_2
    :goto_0
    return-void
.end method

.method public onPickMediaResult(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/Media;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    if-nez p2, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    :cond_0
    const-string v0, "video"

    .line 6
    .line 7
    const-string v1, "type"

    .line 8
    .line 9
    .line 10
    invoke-virtual {p2, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    move-result-object v2

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 15
    move-result v0

    .line 16
    const/4 v2, 0x0

    .line 17
    const/4 v3, 0x1

    .line 18
    .line 19
    if-eqz v0, :cond_4

    .line 20
    .line 21
    new-instance p2, Ljava/util/ArrayList;

    .line 22
    .line 23
    .line 24
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 28
    move-result-object p1

    .line 29
    .line 30
    .line 31
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    move-result v0

    .line 33
    .line 34
    if-eqz v0, :cond_3

    .line 35
    .line 36
    .line 37
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    move-result-object v0

    .line 39
    .line 40
    check-cast v0, Lcom/narvii/model/Media;

    .line 41
    .line 42
    new-instance v1, Lcom/narvii/model/PlayListItem;

    .line 43
    .line 44
    .line 45
    invoke-direct {v1}, Lcom/narvii/model/PlayListItem;-><init>()V

    .line 46
    .line 47
    iget v4, v0, Lcom/narvii/model/Media;->type:I

    .line 48
    .line 49
    const/16 v5, 0x67

    .line 50
    .line 51
    if-eq v4, v5, :cond_2

    .line 52
    .line 53
    const/16 v5, 0x7b

    .line 54
    .line 55
    if-eq v4, v5, :cond_1

    .line 56
    goto :goto_1

    .line 57
    .line 58
    :cond_1
    iput v3, v1, Lcom/narvii/model/PlayListItem;->type:I

    .line 59
    .line 60
    iget-object v4, v0, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 61
    .line 62
    iput-object v4, v1, Lcom/narvii/model/PlayListItem;->localMediaUrl:Ljava/lang/String;

    .line 63
    .line 64
    iput-boolean v3, v1, Lcom/narvii/model/PlayListItem;->needUploadThumbnail:Z

    .line 65
    goto :goto_1

    .line 66
    :cond_2
    const/4 v4, 0x2

    .line 67
    .line 68
    iput v4, v1, Lcom/narvii/model/PlayListItem;->type:I

    .line 69
    .line 70
    iget-object v4, v0, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 71
    .line 72
    iput-object v4, v1, Lcom/narvii/model/PlayListItem;->url:Ljava/lang/String;

    .line 73
    .line 74
    new-instance v4, Ljava/util/ArrayList;

    .line 75
    .line 76
    .line 77
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 78
    .line 79
    iput-object v4, v1, Lcom/narvii/model/PlayListItem;->mediaList:Ljava/util/List;

    .line 80
    .line 81
    .line 82
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    .line 84
    iput-boolean v2, v1, Lcom/narvii/model/PlayListItem;->needUploadThumbnail:Z

    .line 85
    .line 86
    :goto_1
    iget-object v4, v0, Lcom/narvii/model/Media;->fileName:Ljava/lang/String;

    .line 87
    .line 88
    iput-object v4, v1, Lcom/narvii/model/PlayListItem;->title:Ljava/lang/String;

    .line 89
    .line 90
    iget-object v4, v0, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 91
    .line 92
    iput-object v4, v1, Lcom/narvii/model/PlayListItem;->url:Ljava/lang/String;

    .line 93
    .line 94
    iget-object v4, v0, Lcom/narvii/model/Media;->coverImage:Ljava/lang/String;

    .line 95
    .line 96
    iput-object v4, v1, Lcom/narvii/model/PlayListItem;->thumbnailUrl:Ljava/lang/String;

    .line 97
    .line 98
    iget-object v4, v0, Lcom/narvii/model/Media;->author:Ljava/lang/String;

    .line 99
    .line 100
    iput-object v4, v1, Lcom/narvii/model/PlayListItem;->author:Ljava/lang/String;

    .line 101
    .line 102
    iget-wide v4, v0, Lcom/narvii/model/Media;->duration:J

    .line 103
    long-to-double v4, v4

    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    const-wide v6, 0x408f400000000000L    # 1000.0

    .line 109
    div-double/2addr v4, v6

    .line 110
    .line 111
    iput-wide v4, v1, Lcom/narvii/model/PlayListItem;->duration:D

    .line 112
    .line 113
    .line 114
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    goto :goto_0

    .line 116
    .line 117
    :cond_3
    iget-object p1, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->mainListAdapter:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter;

    .line 118
    .line 119
    .line 120
    invoke-virtual {p1, p2}, Lcom/narvii/list/NVArrayAdapter;->addAll(Ljava/util/Collection;)V

    .line 121
    .line 122
    .line 123
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->onLocalListChanged()V

    .line 124
    goto :goto_3

    .line 125
    .line 126
    :cond_4
    const-string v0, "cover"

    .line 127
    .line 128
    .line 129
    invoke-virtual {p2, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 130
    move-result-object v1

    .line 131
    .line 132
    .line 133
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 134
    move-result v0

    .line 135
    .line 136
    if-eqz v0, :cond_8

    .line 137
    .line 138
    iget-object v0, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->mainListAdapter:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0}, Lcom/narvii/list/NVArrayAdapter;->getList()Ljava/util/List;

    .line 142
    move-result-object v0

    .line 143
    .line 144
    const-string v1, "item"

    .line 145
    .line 146
    .line 147
    invoke-virtual {p2, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 148
    move-result-object p2

    .line 149
    .line 150
    const-class v1, Lcom/narvii/model/PlayListItem;

    .line 151
    .line 152
    .line 153
    invoke-static {p2, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 154
    move-result-object p2

    .line 155
    .line 156
    check-cast p2, Lcom/narvii/model/PlayListItem;

    .line 157
    .line 158
    .line 159
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 160
    move-result-object v1

    .line 161
    .line 162
    .line 163
    :cond_5
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 164
    move-result v4

    .line 165
    .line 166
    if-eqz v4, :cond_7

    .line 167
    .line 168
    .line 169
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 170
    move-result-object v4

    .line 171
    .line 172
    check-cast v4, Lcom/narvii/model/PlayListItem;

    .line 173
    .line 174
    if-eq v4, p2, :cond_6

    .line 175
    .line 176
    iget-object v5, v4, Lcom/narvii/model/PlayListItem;->url:Ljava/lang/String;

    .line 177
    .line 178
    iget-object v6, p2, Lcom/narvii/model/PlayListItem;->url:Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 182
    move-result v5

    .line 183
    .line 184
    if-eqz v5, :cond_5

    .line 185
    .line 186
    .line 187
    :cond_6
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 188
    move-result-object v5

    .line 189
    .line 190
    check-cast v5, Lcom/narvii/model/Media;

    .line 191
    .line 192
    iget-object v5, v5, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 193
    .line 194
    iput-object v5, v4, Lcom/narvii/model/PlayListItem;->thumbnailUrl:Ljava/lang/String;

    .line 195
    .line 196
    iput-boolean v3, v4, Lcom/narvii/model/PlayListItem;->needUploadThumbnail:Z

    .line 197
    goto :goto_2

    .line 198
    .line 199
    :cond_7
    iget-object p1, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->mainListAdapter:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter;

    .line 200
    .line 201
    new-instance p2, Ljava/util/ArrayList;

    .line 202
    .line 203
    .line 204
    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {p1, p2}, Lcom/narvii/list/NVArrayAdapter;->setList(Ljava/util/ArrayList;)V

    .line 208
    .line 209
    .line 210
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->onLocalListChanged()V

    .line 211
    :cond_8
    :goto_3
    return-void
.end method

.method public onPlayListChanged(Lcom/narvii/model/PlayList;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->onRemoteListChanged()V

    .line 4
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/list/DragSortListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    const v0, 0x7f0a05ff

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    check-cast v0, Lcom/narvii/widget/SwipeableLayout;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->swipeableLayout:Lcom/narvii/widget/SwipeableLayout;

    .line 15
    const/4 v1, 0x2

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/narvii/widget/SwipeableLayout;->setAllowDirection(I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    .line 29
    const v2, 0x7f0704f6

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 33
    move-result v0

    .line 34
    .line 35
    iget-object v2, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->swipeableLayout:Lcom/narvii/widget/SwipeableLayout;

    .line 36
    const/4 v3, 0x0

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2, v0, v0, v3, v3}, Lcom/narvii/widget/SwipeableLayout;->setRadius(IIII)V

    .line 40
    .line 41
    iget-object v0, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->swipeableLayout:Lcom/narvii/widget/SwipeableLayout;

    .line 42
    const/4 v2, 0x1

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v2}, Lcom/narvii/widget/SwipeableLayout;->setAppearAnimation(I)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 49
    move-result-object v0

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 53
    move-result-object v0

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 57
    move-result-object v0

    .line 58
    .line 59
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 60
    .line 61
    if-ne v0, v1, :cond_0

    .line 62
    move v3, v2

    .line 63
    .line 64
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->swipeableLayout:Lcom/narvii/widget/SwipeableLayout;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 68
    move-result-object v0

    .line 69
    .line 70
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 71
    .line 72
    if-eqz v3, :cond_1

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getStatusBarOverlaySize()I

    .line 76
    move-result v1

    .line 77
    goto :goto_0

    .line 78
    .line 79
    .line 80
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 81
    move-result-object v1

    .line 82
    .line 83
    const/high16 v2, 0x43480000    # 200.0f

    .line 84
    .line 85
    .line 86
    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 87
    move-result v1

    .line 88
    float-to-int v1, v1

    .line 89
    .line 90
    :goto_0
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 91
    const/4 v0, 0x0

    .line 92
    .line 93
    iput-object v0, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->backgroundMaskView:Landroid/view/View;

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 97
    move-result-object v0

    .line 98
    .line 99
    instance-of v0, v0, Lcom/narvii/chat/ChatActivity;

    .line 100
    .line 101
    if-eqz v0, :cond_2

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 105
    move-result-object v0

    .line 106
    .line 107
    .line 108
    const v1, 0x7f0a0c7c

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 112
    move-result-object v0

    .line 113
    .line 114
    iput-object v0, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->backgroundMaskView:Landroid/view/View;

    .line 115
    .line 116
    :cond_2
    iget-object v0, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->swipeableLayout:Lcom/narvii/widget/SwipeableLayout;

    .line 117
    .line 118
    new-instance v1, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$1;

    .line 119
    .line 120
    .line 121
    invoke-direct {v1, p0}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$1;-><init>(Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0, v1}, Lcom/narvii/widget/SwipeableLayout;->setSwipeListener(Lcom/narvii/widget/SwipeableLayout$SwipeListener;)V

    .line 125
    .line 126
    iget-object v0, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->swipeableLayout:Lcom/narvii/widget/SwipeableLayout;

    .line 127
    .line 128
    .line 129
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 130
    move-result-object v1

    .line 131
    .line 132
    .line 133
    invoke-virtual {v0, v1}, Lcom/narvii/widget/SwipeableLayout;->bindListView(Landroid/widget/AbsListView;)V

    .line 134
    .line 135
    .line 136
    const v0, 0x7f0a0316

    .line 137
    .line 138
    .line 139
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 140
    move-result-object v0

    .line 141
    .line 142
    new-instance v1, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$2;

    .line 143
    .line 144
    .line 145
    invoke-direct {v1, p0}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$2;-><init>(Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    .line 150
    .line 151
    const v0, 0x7f0a030d

    .line 152
    .line 153
    .line 154
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 155
    move-result-object v0

    .line 156
    .line 157
    check-cast v0, Landroid/widget/Button;

    .line 158
    .line 159
    iput-object v0, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->clearAllButton:Landroid/widget/Button;

    .line 160
    .line 161
    new-instance v1, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$3;

    .line 162
    .line 163
    .line 164
    invoke-direct {v1, p0}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$3;-><init>(Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    .line 169
    .line 170
    const v0, 0x7f0a097b

    .line 171
    .line 172
    .line 173
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 174
    move-result-object v0

    .line 175
    .line 176
    new-instance v1, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$4;

    .line 177
    .line 178
    .line 179
    invoke-direct {v1, p0}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$4;-><init>(Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    .line 184
    .line 185
    const v0, 0x7f0a0c84

    .line 186
    .line 187
    .line 188
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 189
    move-result-object v0

    .line 190
    .line 191
    check-cast v0, Landroid/widget/TextView;

    .line 192
    .line 193
    iput-object v0, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->videoCounter:Landroid/widget/TextView;

    .line 194
    .line 195
    .line 196
    const v0, 0x7f0a0c86

    .line 197
    .line 198
    .line 199
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 200
    move-result-object v0

    .line 201
    .line 202
    check-cast v0, Landroid/widget/TextView;

    .line 203
    .line 204
    iput-object v0, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->videoTotalTime:Landroid/widget/TextView;

    .line 205
    .line 206
    .line 207
    const v0, 0x7f0a0c85

    .line 208
    .line 209
    .line 210
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 211
    move-result-object v0

    .line 212
    .line 213
    check-cast v0, Landroid/widget/LinearLayout;

    .line 214
    .line 215
    iput-object v0, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->videoStaticsLayout:Landroid/widget/LinearLayout;

    .line 216
    .line 217
    .line 218
    const v0, 0x7f0a0c7a

    .line 219
    .line 220
    .line 221
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 222
    move-result-object v0

    .line 223
    .line 224
    check-cast v0, Landroid/widget/FrameLayout;

    .line 225
    .line 226
    iput-object v0, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->addVideoButton:Landroid/widget/FrameLayout;

    .line 227
    .line 228
    new-instance v1, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$5;

    .line 229
    .line 230
    .line 231
    invoke-direct {v1, p0}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$5;-><init>(Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;)V

    .line 232
    .line 233
    .line 234
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 235
    .line 236
    .line 237
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->updateLayout()V

    .line 238
    .line 239
    .line 240
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->updatePlayListView()V

    .line 241
    .line 242
    if-nez p2, :cond_3

    .line 243
    .line 244
    iget-object p2, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->screenRoomService:Lcom/narvii/chat/screenroom/ScreenRoomService;

    .line 245
    .line 246
    .line 247
    invoke-virtual {p2}, Lcom/narvii/chat/screenroom/ScreenRoomService;->getPlayList()Lcom/narvii/model/PlayList;

    .line 248
    move-result-object p2

    .line 249
    .line 250
    if-eqz p2, :cond_3

    .line 251
    .line 252
    iget v0, p2, Lcom/narvii/model/PlayList;->currentItemIndex:I

    .line 253
    const/4 v1, -0x1

    .line 254
    .line 255
    if-eq v0, v1, :cond_3

    .line 256
    .line 257
    .line 258
    const v0, 0x102000a

    .line 259
    .line 260
    .line 261
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 262
    move-result-object v0

    .line 263
    .line 264
    check-cast v0, Landroid/widget/ListView;

    .line 265
    .line 266
    if-eqz v0, :cond_3

    .line 267
    .line 268
    .line 269
    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    .line 270
    move-result-object v1

    .line 271
    .line 272
    if-eqz v1, :cond_3

    .line 273
    .line 274
    .line 275
    invoke-interface {v1}, Landroid/widget/Adapter;->getCount()I

    .line 276
    move-result v1

    .line 277
    .line 278
    iget v2, p2, Lcom/narvii/model/PlayList;->currentItemIndex:I

    .line 279
    .line 280
    if-le v1, v2, :cond_3

    .line 281
    .line 282
    iget-object v1, p2, Lcom/narvii/model/PlayList;->items:Ljava/util/List;

    .line 283
    .line 284
    .line 285
    invoke-static {v1}, Lcom/narvii/util/CollectionUtils;->getSize(Ljava/util/List;)I

    .line 286
    move-result v1

    .line 287
    .line 288
    iget p2, p2, Lcom/narvii/model/PlayList;->currentItemIndex:I

    .line 289
    .line 290
    if-le v1, p2, :cond_3

    .line 291
    .line 292
    .line 293
    :try_start_0
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 294
    move-result-object v1

    .line 295
    .line 296
    const/high16 v2, 0x41f00000    # 30.0f

    .line 297
    .line 298
    .line 299
    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    .line 300
    move-result v1

    .line 301
    .line 302
    .line 303
    invoke-virtual {v0, p2, v1}, Landroid/widget/AbsListView;->setSelectionFromTop(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 304
    goto :goto_1

    .line 305
    :catch_0
    move-exception p2

    .line 306
    .line 307
    const-string v0, "playlist"

    .line 308
    .line 309
    .line 310
    invoke-static {v0, p2}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 311
    .line 312
    .line 313
    :cond_3
    :goto_1
    const p2, 0x7f0a0d87

    .line 314
    .line 315
    .line 316
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 317
    move-result-object p2

    .line 318
    .line 319
    iput-object p2, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->startFrame:Landroid/view/View;

    .line 320
    .line 321
    .line 322
    const p2, 0x7f0a0ccc

    .line 323
    .line 324
    .line 325
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 326
    move-result-object p2

    .line 327
    .line 328
    iput-object p2, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->selectFrame:Landroid/view/View;

    .line 329
    .line 330
    .line 331
    const p2, 0x7f0a021e

    .line 332
    .line 333
    .line 334
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 335
    move-result-object p1

    .line 336
    .line 337
    iput-object p1, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->btnStart:Landroid/view/View;

    .line 338
    .line 339
    new-instance p2, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$6;

    .line 340
    .line 341
    .line 342
    invoke-direct {p2, p0}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$6;-><init>(Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;)V

    .line 343
    .line 344
    .line 345
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 346
    .line 347
    .line 348
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->updateBottomViews()V

    .line 349
    return-void
.end method

.method public registerPlaylistDismissListener(Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$PlaylistDismissListener;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->onDismissListener:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$PlaylistDismissListener;

    return-void
.end method

.method public remove()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->q()Landroidx/fragment/app/FragmentTransaction;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p0}, Landroidx/fragment/app/FragmentTransaction;->t(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->k()I

    .line 18
    :cond_0
    return-void
.end method

.method public removeSelfAndBg()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->remove()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->backgroundMaskView:Landroid/view/View;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    const/4 v1, 0x0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 12
    :cond_0
    return-void
.end method

.method public setIsPrePickMode(ZLcom/narvii/model/ChatThread;)V
    .locals 0

    .line 1
    .line 2
    iput-boolean p1, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->isPrePickMode:Z

    .line 3
    const/4 p1, 0x0

    .line 4
    .line 5
    iput-boolean p1, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->isLoadPlaylistForPrePick:Z

    .line 6
    .line 7
    iget p1, p2, Lcom/narvii/model/ChatThread;->ndcId:I

    .line 8
    .line 9
    iput p1, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->prepickNdcid:I

    .line 10
    .line 11
    iget-object p1, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->prePickPlaylist:Ljava/util/List;

    .line 12
    .line 13
    .line 14
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 15
    .line 16
    .line 17
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->updateBottomViews()V

    .line 18
    return-void
.end method

.method public setVideoPickCallback(Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$VideoPickCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->videoPickCallback:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$VideoPickCallback;

    return-void
.end method

.method public unregisterPlaylistDismissListener()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->onDismissListener:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$PlaylistDismissListener;

    return-void
.end method
