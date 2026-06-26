.class public Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;
.super Lcom/narvii/list/DragSortListFragment;
.source "PlaylistFragment.java"

# interfaces
.implements Lcom/narvii/media/MediaPickerFragment$OnResultListener;
.implements Lcom/narvii/chat/screenroom/playlist/PlayListChangeListener;
.implements Lcom/narvii/media/MediaPickerFragment$OnCustomOptionSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter;,
        Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$ThumbnailUploadListener;,
        Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$PlaylistDismissListener;,
        Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$VideoPickCallback;
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

    .line 82
    invoke-direct {p0}, Lcom/narvii/list/DragSortListFragment;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [Landroid/view/View;

    .line 95
    iput-object v0, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->addVideoItems:[Landroid/view/View;

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->prePickPlaylist:Ljava/util/List;

    const/4 v0, -0x1

    .line 111
    iput v0, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->prepickNdcid:I

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;)Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$PlaylistDismissListener;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->onDismissListener:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$PlaylistDismissListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;)Lcom/narvii/widget/SwipeableLayout;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->swipeableLayout:Lcom/narvii/widget/SwipeableLayout;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;)Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$VideoPickCallback;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->videoPickCallback:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$VideoPickCallback;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;Ljava/util/List;)V
    .locals 0

    .line 82
    invoke-direct {p0, p1}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->setPlayItemList(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;)V
    .locals 0

    .line 82
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->updatePlayListView()V

    return-void
.end method

.method static synthetic access$1300(Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;)Lcom/narvii/chat/screenroom/ScreenRoomService;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->screenRoomService:Lcom/narvii/chat/screenroom/ScreenRoomService;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;)Z
    .locals 0

    .line 82
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->isHost()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1500(Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;)Z
    .locals 0

    .line 82
    iget-boolean p0, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->isPrePickMode:Z

    return p0
.end method

.method static synthetic access$1602(Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;Lcom/narvii/model/PlayListItem;)Lcom/narvii/model/PlayListItem;
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->pendingPlayItem:Lcom/narvii/model/PlayListItem;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;)Ljava/io/File;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->photoDir:Ljava/io/File;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;)Lcom/narvii/media/MediaPickerFragment;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;Lcom/narvii/model/PlayListItem;)V
    .locals 0

    .line 82
    invoke-direct {p0, p1}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->deletePlayItemList(Lcom/narvii/model/PlayListItem;)V

    return-void
.end method

.method static synthetic access$200(Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;)Landroid/view/View;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->backgroundMaskView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$300(Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;)Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->mainListAdapter:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter;

    return-object p0
.end method

.method static synthetic access$400(Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;)V
    .locals 0

    .line 82
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->clearPlayItemList()V

    return-void
.end method

.method static synthetic access$500(Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;)V
    .locals 0

    .line 82
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->onLocalListChanged()V

    return-void
.end method

.method static synthetic access$600(Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;)V
    .locals 0

    .line 82
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->startPick()V

    return-void
.end method

.method static synthetic access$700(Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;)Ljava/util/List;
    .locals 0

    .line 82
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->getPlayItemList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;)I
    .locals 0

    .line 82
    iget p0, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->prepickNdcid:I

    return p0
.end method

.method static synthetic access$900(Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;)Lcom/narvii/chat/screenroom/utils/PlayListSharedPreference;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->playListSharedPreference:Lcom/narvii/chat/screenroom/utils/PlayListSharedPreference;

    return-object p0
.end method

.method private clearPlayItemList()V
    .locals 1

    .line 486
    iget-boolean v0, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->isPrePickMode:Z

    if-eqz v0, :cond_0

    .line 487
    iget-object v0, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->prePickPlaylist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 488
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->updateStartButton()V

    goto :goto_0

    .line 490
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->screenRoomService:Lcom/narvii/chat/screenroom/ScreenRoomService;

    invoke-virtual {v0}, Lcom/narvii/chat/screenroom/ScreenRoomService;->onPlayItemClear()V

    :goto_0
    return-void
.end method

.method private deletePlayItemList(Lcom/narvii/model/PlayListItem;)V
    .locals 1

    .line 496
    iget-boolean v0, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->isPrePickMode:Z

    if-eqz v0, :cond_0

    .line 497
    iget-object v0, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->prePickPlaylist:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 498
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->updateStartButton()V

    goto :goto_0

    .line 500
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->screenRoomService:Lcom/narvii/chat/screenroom/ScreenRoomService;

    invoke-virtual {v0, p1}, Lcom/narvii/chat/screenroom/ScreenRoomService;->onPlayItemDeleted(Lcom/narvii/model/PlayListItem;)V

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

    .line 459
    iget-boolean v0, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->isPrePickMode:Z

    if-eqz v0, :cond_2

    .line 460
    iget-boolean v0, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->isLoadPlaylistForPrePick:Z

    if-nez v0, :cond_1

    .line 461
    iget-object v0, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->prePickPlaylist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 462
    iget-object v0, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->playListSharedPreference:Lcom/narvii/chat/screenroom/utils/PlayListSharedPreference;

    iget v1, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->prepickNdcid:I

    invoke-virtual {v0, v1}, Lcom/narvii/chat/screenroom/utils/PlayListSharedPreference;->loadPlayListItem(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 464
    iget-object v1, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->prePickPlaylist:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    const/4 v0, 0x1

    .line 466
    iput-boolean v0, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->isLoadPlaylistForPrePick:Z

    .line 468
    :cond_1
    iget-object v0, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->prePickPlaylist:Ljava/util/List;

    return-object v0

    .line 470
    :cond_2
    iget-object v0, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->screenRoomService:Lcom/narvii/chat/screenroom/ScreenRoomService;

    invoke-virtual {v0}, Lcom/narvii/chat/screenroom/ScreenRoomService;->getPlayItemList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private isHost()Z
    .locals 1

    .line 750
    iget-boolean v0, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->isPrePickMode:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->screenRoomService:Lcom/narvii/chat/screenroom/ScreenRoomService;

    invoke-virtual {v0}, Lcom/narvii/chat/screenroom/ScreenRoomService;->isHostInSRChannel()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private onLocalListChanged()V
    .locals 8

    .line 624
    iget-object v0, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->mainListAdapter:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter;

    invoke-virtual {v0}, Lcom/narvii/list/NVArrayAdapter;->getList()Ljava/util/List;

    move-result-object v0

    .line 625
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/model/PlayListItem;

    .line 626
    iget-object v3, v2, Lcom/narvii/model/PlayListItem;->thumbnailUrl:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-boolean v4, v2, Lcom/narvii/model/PlayListItem;->needUploadThumbnail:Z

    if-eqz v4, :cond_1

    .line 627
    iget-object v4, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->photo:Lcom/narvii/photos/PhotoManager;

    new-instance v5, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$ThumbnailUploadListener;

    invoke-direct {v5, p0, v2}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$ThumbnailUploadListener;-><init>(Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;Lcom/narvii/model/PlayListItem;)V

    invoke-virtual {v4, v3, v5}, Lcom/narvii/photos/PhotoManager;->upload(Ljava/lang/String;Lcom/narvii/photos/PhotoUploadListener;)V

    goto :goto_0

    .line 628
    :cond_1
    iget v3, v2, Lcom/narvii/model/PlayListItem;->type:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    iget-boolean v3, v2, Lcom/narvii/model/PlayListItem;->needUploadThumbnail:Z

    if-eqz v3, :cond_0

    .line 630
    :try_start_0
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v4, v2, Lcom/narvii/model/PlayListItem;->songId:I

    int-to-long v4, v4

    iget v6, v2, Lcom/narvii/model/PlayListItem;->albumId:I

    int-to-long v6, v6

    invoke-static {v3, v4, v5, v6, v7}, Lcom/narvii/chat/screenroom/playlist/PlaylistUtils;->getArtwork(Landroid/content/Context;JJ)Landroid/graphics/Bitmap;

    move-result-object v3

    if-nez v3, :cond_2

    const/4 v3, 0x0

    .line 632
    iput-boolean v3, v2, Lcom/narvii/model/PlayListItem;->needUploadThumbnail:Z

    goto :goto_0

    .line 634
    :cond_2
    iget-object v4, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->photo:Lcom/narvii/photos/PhotoManager;

    new-instance v5, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$ThumbnailUploadListener;

    invoke-direct {v5, p0, v2}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$ThumbnailUploadListener;-><init>(Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;Lcom/narvii/model/PlayListItem;)V

    const/4 v2, 0x0

    invoke-virtual {v4, v2, v3, v2, v5}, Lcom/narvii/photos/PhotoManager;->upload(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Lcom/narvii/photos/PhotoUploadListener;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    goto :goto_0

    .line 640
    :cond_3
    invoke-direct {p0, v0}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->setPlayItemList(Ljava/util/List;)V

    .line 641
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->updatePlayListView()V

    return-void
.end method

.method private onRemoteListChanged()V
    .locals 0

    .line 685
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->updatePlayListView()V

    return-void
.end method

.method private queryAudioUri(Landroid/net/Uri;)V
    .locals 11

    if-nez p1, :cond_0

    return-void

    .line 528
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v0, 0x5

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v2, "_id"

    aput-object v2, v3, v0

    const/4 v7, 0x1

    const-string v2, "_data"

    aput-object v2, v3, v7

    const/4 v8, 0x2

    const-string v2, "_display_name"

    aput-object v2, v3, v8

    const/4 v9, 0x3

    const-string v2, "duration"

    aput-object v2, v3, v9

    const/4 v10, 0x4

    const-string v2, "album_id"

    aput-object v2, v3, v10

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 529
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 530
    new-instance v1, Lcom/narvii/model/PlayListItem;

    invoke-direct {v1}, Lcom/narvii/model/PlayListItem;-><init>()V

    .line 531
    iput v9, v1, Lcom/narvii/model/PlayListItem;->type:I

    .line 532
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v1, Lcom/narvii/model/PlayListItem;->songId:I

    .line 534
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 536
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/narvii/model/PlayListItem;->localMediaUrl:Ljava/lang/String;

    .line 539
    :cond_1
    iget-object v0, v1, Lcom/narvii/model/PlayListItem;->localMediaUrl:Ljava/lang/String;

    iput-object v0, v1, Lcom/narvii/model/PlayListItem;->url:Ljava/lang/String;

    .line 540
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/narvii/model/PlayListItem;->title:Ljava/lang/String;

    .line 544
    invoke-interface {p1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-double v2, v0

    const-wide v4, 0x408f400000000000L    # 1000.0

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, v4

    iput-wide v2, v1, Lcom/narvii/model/PlayListItem;->duration:D

    .line 545
    invoke-interface {p1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v1, Lcom/narvii/model/PlayListItem;->albumId:I

    .line 546
    iput-boolean v7, v1, Lcom/narvii/model/PlayListItem;->needUploadThumbnail:Z

    .line 547
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_3

    .line 550
    iget-object p1, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->mainListAdapter:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter;

    invoke-virtual {p1, v1}, Lcom/narvii/list/NVArrayAdapter;->add(Ljava/lang/Object;)V

    .line 551
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->onLocalListChanged()V

    :cond_3
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

    .line 475
    iget-boolean v0, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->isPrePickMode:Z

    if-eqz v0, :cond_0

    .line 476
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->prePickPlaylist:Ljava/util/List;

    .line 477
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->updateStartButton()V

    goto :goto_0

    .line 479
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->screenRoomService:Lcom/narvii/chat/screenroom/ScreenRoomService;

    invoke-virtual {v0, p1}, Lcom/narvii/chat/screenroom/ScreenRoomService;->setPlayListItems(Ljava/util/List;)V

    :goto_0
    return-void
.end method

.method private startPick()V
    .locals 5

    .line 422
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->getPlayItemList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 423
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sget v3, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->MAX_PLAYLIST_LENGTH:I

    if-lt v0, v3, :cond_0

    .line 424
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v3, 0x7f0f0f40

    new-array v1, v1, [Ljava/lang/Object;

    sget v4, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->MAX_PLAYLIST_LENGTH:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-virtual {p0, v3, v1}, Landroid/support/v4/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/NVToast;->show()V

    goto :goto_0

    :cond_0
    new-array v0, v1, [Ljava/lang/String;

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v1, v0, v2

    .line 427
    invoke-static {p0}, Lcom/narvii/permisson/NVPermission;->builder(Landroid/support/v4/app/Fragment;)Lcom/narvii/permisson/NVPermission$Builder;

    move-result-object v1

    .line 428
    invoke-virtual {v1, v0}, Lcom/narvii/permisson/NVPermission$Builder;->permissions([Ljava/lang/String;)Lcom/narvii/permisson/NVPermission$Builder;

    move-result-object v0

    .line 429
    invoke-virtual {v0, p0}, Lcom/narvii/permisson/NVPermission$Builder;->permissionListener(Lcom/narvii/permisson/PermissionListener;)Lcom/narvii/permisson/NVPermission$Builder;

    move-result-object v0

    const/16 v1, 0x6b

    .line 430
    invoke-virtual {v0, v1}, Lcom/narvii/permisson/NVPermission$Builder;->requestCode(I)Lcom/narvii/permisson/NVPermission$Builder;

    move-result-object v0

    .line 431
    invoke-virtual {v0}, Lcom/narvii/permisson/NVPermission$Builder;->request()V

    :goto_0
    return-void
.end method

.method private updateBottomViews()V
    .locals 4

    .line 335
    iget-object v0, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->startFrame:Landroid/view/View;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_1

    .line 336
    iget-boolean v3, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->isPrePickMode:Z

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/16 v3, 0x8

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 338
    :cond_1
    iget-object v0, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->selectFrame:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 339
    iget-boolean v3, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->isPrePickMode:Z

    if-eqz v3, :cond_2

    const/16 v1, 0x8

    :cond_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 341
    :cond_3
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->updateStartButton()V

    return-void
.end method

.method private updateLayout()V
    .locals 4

    .line 760
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/Utils;->isLandscape(Landroid/content/Context;)Z

    move-result v0

    .line 761
    iget-object v1, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->swipeableLayout:Lcom/narvii/widget/SwipeableLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getStatusBarOverlaySize()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/Utils;->getOverlayPlaceholderHeight(Landroid/app/Activity;)I

    move-result v0

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f070314

    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->getDimenPixelSize(Landroid/content/Context;I)I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0702aa

    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->getDimenPixelSize(Landroid/content/Context;I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    :goto_0
    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    return-void
.end method

.method private updatePlayListView()V
    .locals 12

    .line 694
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/narvii/app/NVActivity;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/narvii/app/NVActivity;

    invoke-virtual {v0}, Lcom/narvii/app/NVActivity;->isDestoryed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_6

    .line 697
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->getPlayItemList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 698
    iget-object v1, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->mainListAdapter:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter;

    invoke-virtual {v1, v0}, Lcom/narvii/list/NVArrayAdapter;->setList(Ljava/util/ArrayList;)V

    .line 700
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->isHost()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 701
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    rsub-int/lit8 v4, v4, 0x3

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    .line 703
    :goto_0
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v5

    if-le v5, v4, :cond_2

    .line 704
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v5

    iget-object v6, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->addVideoItems:[Landroid/view/View;

    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v7

    sub-int/2addr v7, v3

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    goto :goto_0

    .line 706
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v5

    if-ge v5, v4, :cond_3

    .line 707
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v5

    iget-object v6, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->addVideoItems:[Landroid/view/View;

    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v7

    aget-object v6, v6, v7

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7, v3}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    goto :goto_1

    .line 711
    :cond_3
    iget-object v4, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->videoStaticsLayout:Landroid/widget/LinearLayout;

    if-eqz v4, :cond_5

    if-eqz v1, :cond_4

    const v5, 0x800003

    goto :goto_2

    :cond_4
    const/4 v5, 0x1

    .line 712
    :goto_2
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 714
    :cond_5
    iget-object v4, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->addVideoButton:Landroid/widget/FrameLayout;

    const/16 v5, 0x8

    if-eqz v4, :cond_7

    if-eqz v1, :cond_6

    const/4 v6, 0x0

    goto :goto_3

    :cond_6
    const/16 v6, 0x8

    .line 715
    :goto_3
    invoke-virtual {v4, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 717
    :cond_7
    iget-object v4, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->clearAllButton:Landroid/widget/Button;

    if-eqz v4, :cond_9

    if-eqz v1, :cond_8

    .line 718
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    const/4 v5, 0x0

    :cond_8
    invoke-virtual {v4, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 721
    :cond_9
    iget-object v1, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->videoCounter:Landroid/widget/TextView;

    if-eqz v1, :cond_a

    .line 722
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 723
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0f0f42

    const v6, 0x7f0f0f43

    invoke-static {v4, v1, v5, v6}, Lcom/narvii/util/text/TextUtils;->getCountText(Landroid/content/Context;III)Ljava/lang/String;

    move-result-object v1

    .line 724
    iget-object v4, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->videoCounter:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 727
    :cond_a
    iget-object v1, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->videoTotalTime:Landroid/widget/TextView;

    if-eqz v1, :cond_f

    .line 729
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v4, 0x0

    move-wide v6, v4

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/PlayListItem;

    long-to-double v6, v6

    .line 730
    iget-wide v8, v1, Lcom/narvii/model/PlayListItem;->duration:D

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v6, v8

    double-to-long v6, v6

    goto :goto_4

    :cond_b
    cmp-long v0, v6, v4

    if-nez v0, :cond_c

    const v0, 0x7f0f03bd

    .line 735
    invoke-virtual {p0, v0}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_c
    const-wide/16 v0, 0x3c

    cmp-long v4, v6, v0

    if-gez v4, :cond_d

    const v0, 0x7f0f03ba

    .line 737
    invoke-virtual {p0, v0}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 739
    :cond_d
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    const-wide/16 v8, 0xe10

    rem-long v10, v6, v8

    div-long/2addr v10, v0

    long-to-int v0, v10

    const v1, 0x7f0f03be

    const v5, 0x7f0f03bc

    invoke-static {v4, v0, v1, v5}, Lcom/narvii/util/text/TextUtils;->getCountText(Landroid/content/Context;III)Ljava/lang/String;

    move-result-object v0

    cmp-long v1, v6, v8

    if-lez v1, :cond_e

    const v1, 0x7f0f03bb

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 741
    div-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v2

    aput-object v0, v4, v3

    invoke-virtual {p0, v1, v4}, Landroid/support/v4/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 744
    :cond_e
    :goto_5
    iget-object v1, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->videoTotalTime:Landroid/widget/TextView;

    const v4, 0x7f0f0f44

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v2

    invoke-virtual {p0, v4, v3}, Landroid/support/v4/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_f
    :goto_6
    return-void
.end method

.method private updateStartButton()V
    .locals 2

    .line 345
    iget-object v0, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->btnStart:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 346
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->getPlayItemList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 347
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 348
    :goto_0
    iget-object v1, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->btnStart:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected autoAddBottomPadding()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected bridge synthetic createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 0

    .line 82
    invoke-virtual {p0, p1}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->createAdapter(Landroid/os/Bundle;)Lcom/narvii/list/NVArrayAdapter;

    move-result-object p1

    return-object p1
.end method

.method protected createAdapter(Landroid/os/Bundle;)Lcom/narvii/list/NVArrayAdapter;
    .locals 0

    .line 371
    new-instance p1, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter;

    invoke-direct {p1, p0, p0}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter;-><init>(Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->mainListAdapter:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter;

    .line 372
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->updatePlayListView()V

    .line 373
    iget-object p1, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->mainListAdapter:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter;

    return-object p1
.end method

.method public dismiss()V
    .locals 2

    .line 401
    iget-object v0, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->swipeableLayout:Lcom/narvii/widget/SwipeableLayout;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    .line 402
    invoke-virtual {v0, v1}, Lcom/narvii/widget/SwipeableLayout;->dismiss(I)V

    :cond_0
    return-void
.end method

.method public drop(II)V
    .locals 0

    .line 389
    invoke-super {p0, p1, p2}, Lcom/narvii/list/DragSortListFragment;->drop(II)V

    .line 390
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->onLocalListChanged()V

    return-void
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "ScreeningRoomPlaylist"

    return-object v0
.end method

.method public hasPostEntry()Ljava/lang/Boolean;
    .locals 1

    const/4 v0, 0x0

    .line 383
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

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

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    .line 515
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    .line 516
    invoke-direct {p0, p1}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->queryAudioUri(Landroid/net/Uri;)V

    goto :goto_0

    .line 518
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/app/NVFragment;->onActivityResult(IILandroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 755
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 756
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->updateLayout()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 129
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 134
    new-instance p1, Ljava/io/File;

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "photo"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v1, "screenroomPlaylistItemCover"

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->photoDir:Ljava/io/File;

    .line 136
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    const-string v0, "playListMediaPicker"

    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/narvii/media/MediaPickerFragment;

    iput-object p1, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    .line 137
    iget-object p1, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    if-nez p1, :cond_0

    .line 138
    new-instance p1, Lcom/narvii/media/MediaPickerFragment;

    invoke-direct {p1}, Lcom/narvii/media/MediaPickerFragment;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    .line 139
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    iget-object v1, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    invoke-virtual {p1, v1, v0}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 141
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    invoke-virtual {p1, p0}, Lcom/narvii/media/MediaPickerFragment;->addOnResultListener(Lcom/narvii/media/MediaPickerFragment$OnResultListener;)V

    .line 142
    iget-object p1, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    invoke-virtual {p1, p0}, Lcom/narvii/media/MediaPickerFragment;->setOnCustomOptionSelectedListener(Lcom/narvii/media/MediaPickerFragment$OnCustomOptionSelectedListener;)V

    const-string p1, "screenRoom"

    .line 144
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/chat/screenroom/ScreenRoomService;

    iput-object p1, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->screenRoomService:Lcom/narvii/chat/screenroom/ScreenRoomService;

    .line 145
    iget-object p1, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->screenRoomService:Lcom/narvii/chat/screenroom/ScreenRoomService;

    invoke-virtual {p1, p0}, Lcom/narvii/chat/screenroom/ScreenRoomService;->addPlayListChangeListenter(Lcom/narvii/chat/screenroom/playlist/PlayListChangeListener;)V

    .line 146
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/photos/PhotoManager;

    iput-object p1, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->photo:Lcom/narvii/photos/PhotoManager;

    .line 148
    new-instance p1, Lcom/narvii/chat/screenroom/utils/PlayListSharedPreference;

    invoke-direct {p1, p0}, Lcom/narvii/chat/screenroom/utils/PlayListSharedPreference;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->playListSharedPreference:Lcom/narvii/chat/screenroom/utils/PlayListSharedPreference;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b02db

    const/4 v0, 0x0

    .line 170
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onCustomOptionSelected(Lcom/narvii/media/MediaPickerFragment$Option;Landroid/os/Bundle;)V
    .locals 1

    .line 506
    new-instance p1, Landroid/content/Intent;

    sget-object p2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v0, "android.intent.action.PICK"

    invoke-direct {p1, v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const p2, 0x7f0f0b44

    .line 507
    invoke-virtual {p0, p2}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    const/16 p2, 0x64

    .line 508
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->screenRoomService:Lcom/narvii/chat/screenroom/ScreenRoomService;

    invoke-virtual {v0, p0}, Lcom/narvii/chat/screenroom/ScreenRoomService;->removePlayListChangeListener(Lcom/narvii/chat/screenroom/playlist/PlayListChangeListener;)V

    const/4 v0, 0x0

    .line 160
    iput-object v0, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->onDismissListener:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$PlaylistDismissListener;

    .line 161
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onDestroy()V

    .line 162
    iget-object v0, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    if-eqz v0, :cond_0

    .line 163
    invoke-virtual {v0, p0}, Lcom/narvii/media/MediaPickerFragment;->removeOnResultListener(Lcom/narvii/media/MediaPickerFragment$OnResultListener;)V

    :cond_0
    return-void
.end method

.method protected onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 4

    .line 361
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V

    .line 362
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object p1

    new-instance p2, Landroid/graphics/drawable/ColorDrawable;

    const v0, -0x771f211d

    invoke-direct {p2, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 363
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p2, v0}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDividerHeight(I)V

    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 364
    :goto_0
    iget-object v0, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->addVideoItems:[Landroid/view/View;

    array-length v1, v0

    if-ge p2, v1, :cond_0

    const/4 v1, 0x0

    .line 365
    invoke-virtual {p0, v1}, Landroid/support/v4/app/Fragment;->getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0b05fd

    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v1, v2, v3, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    aput-object v1, v0, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onPermissionGranted(I)V
    .locals 8

    .line 438
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onPermissionGranted(I)V

    const v0, 0x7f0f0b44

    const/16 v1, 0x6b

    if-ne p1, v1, :cond_0

    .line 440
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 441
    new-instance p1, Lcom/narvii/media/MediaPickerFragment$Option;

    invoke-virtual {p0, v0}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p1, v2, v0, v1, v2}, Lcom/narvii/media/MediaPickerFragment$Option;-><init>(ILjava/lang/String;II)V

    invoke-interface {v7, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 442
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo p1, "type"

    const-string/jumbo v0, "video"

    .line 443
    invoke-virtual {v4, p1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "needDuration"

    .line 444
    invoke-virtual {v4, p1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 445
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->getPlayItemList()Ljava/util/List;

    move-result-object p1

    .line 446
    iget-object v2, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    const/4 v3, 0x0

    const v5, 0x40200

    sget v0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->MAX_PLAYLIST_LENGTH:I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    sub-int v6, v0, p1

    invoke-virtual/range {v2 .. v7}, Lcom/narvii/media/MediaPickerFragment;->pickMedia(Ljava/io/File;Landroid/os/Bundle;IILjava/util/List;)V

    goto :goto_0

    :cond_0
    const/16 v1, 0x12f

    if-ne p1, v1, :cond_1

    .line 448
    new-instance p1, Landroid/content/Intent;

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v2, "android.intent.action.PICK"

    invoke-direct {p1, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 449
    invoke-virtual {p0, v0}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    const/16 v0, 0x64

    .line 450
    invoke-virtual {p0, p1, v0}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x133

    if-ne p1, v0, :cond_2

    .line 452
    iget-object p1, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->pendingPlayItem:Lcom/narvii/model/PlayListItem;

    if-eqz p1, :cond_2

    iget-boolean v0, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->isPrePickMode:Z

    if-nez v0, :cond_2

    .line 453
    iget-object v0, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->screenRoomService:Lcom/narvii/chat/screenroom/ScreenRoomService;

    invoke-virtual {v0, p1}, Lcom/narvii/chat/screenroom/ScreenRoomService;->playItem(Lcom/narvii/model/PlayListItem;)V

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

    if-nez p2, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, "type"

    .line 562
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "video"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_4

    .line 563
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 565
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/Media;

    .line 566
    new-instance v1, Lcom/narvii/model/PlayListItem;

    invoke-direct {v1}, Lcom/narvii/model/PlayListItem;-><init>()V

    .line 568
    iget v4, v0, Lcom/narvii/model/Media;->type:I

    const/16 v5, 0x67

    if-eq v4, v5, :cond_2

    const/16 v5, 0x7b

    if-eq v4, v5, :cond_1

    goto :goto_1

    .line 577
    :cond_1
    iput v3, v1, Lcom/narvii/model/PlayListItem;->type:I

    .line 578
    iget-object v4, v0, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    iput-object v4, v1, Lcom/narvii/model/PlayListItem;->localMediaUrl:Ljava/lang/String;

    .line 579
    iput-boolean v3, v1, Lcom/narvii/model/PlayListItem;->needUploadThumbnail:Z

    goto :goto_1

    :cond_2
    const/4 v4, 0x2

    .line 570
    iput v4, v1, Lcom/narvii/model/PlayListItem;->type:I

    .line 571
    iget-object v4, v0, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    iput-object v4, v1, Lcom/narvii/model/PlayListItem;->url:Ljava/lang/String;

    .line 572
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v1, Lcom/narvii/model/PlayListItem;->mediaList:Ljava/util/List;

    .line 573
    iget-object v4, v1, Lcom/narvii/model/PlayListItem;->mediaList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 574
    iput-boolean v2, v1, Lcom/narvii/model/PlayListItem;->needUploadThumbnail:Z

    .line 585
    :goto_1
    iget-object v4, v0, Lcom/narvii/model/Media;->fileName:Ljava/lang/String;

    iput-object v4, v1, Lcom/narvii/model/PlayListItem;->title:Ljava/lang/String;

    .line 586
    iget-object v4, v0, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    iput-object v4, v1, Lcom/narvii/model/PlayListItem;->url:Ljava/lang/String;

    .line 587
    iget-object v4, v0, Lcom/narvii/model/Media;->coverImage:Ljava/lang/String;

    iput-object v4, v1, Lcom/narvii/model/PlayListItem;->thumbnailUrl:Ljava/lang/String;

    .line 588
    iget-object v4, v0, Lcom/narvii/model/Media;->author:Ljava/lang/String;

    iput-object v4, v1, Lcom/narvii/model/PlayListItem;->author:Ljava/lang/String;

    .line 589
    iget-wide v4, v0, Lcom/narvii/model/Media;->duration:J

    long-to-double v4, v4

    const-wide v6, 0x408f400000000000L    # 1000.0

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v4, v6

    iput-wide v4, v1, Lcom/narvii/model/PlayListItem;->duration:D

    .line 590
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 594
    :cond_3
    iget-object p1, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->mainListAdapter:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter;

    invoke-virtual {p1, p2}, Lcom/narvii/list/NVArrayAdapter;->addAll(Ljava/util/Collection;)V

    .line 595
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->onLocalListChanged()V

    goto :goto_3

    .line 596
    :cond_4
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "cover"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 597
    iget-object v0, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->mainListAdapter:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter;

    invoke-virtual {v0}, Lcom/narvii/list/NVArrayAdapter;->getList()Ljava/util/List;

    move-result-object v0

    const-string v1, "item"

    .line 598
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-class v1, Lcom/narvii/model/PlayListItem;

    invoke-static {p2, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/model/PlayListItem;

    .line 599
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/narvii/model/PlayListItem;

    if-eq v4, p2, :cond_6

    .line 600
    iget-object v5, v4, Lcom/narvii/model/PlayListItem;->url:Ljava/lang/String;

    iget-object v6, p2, Lcom/narvii/model/PlayListItem;->url:Ljava/lang/String;

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 601
    :cond_6
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/narvii/model/Media;

    iget-object v5, v5, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    iput-object v5, v4, Lcom/narvii/model/PlayListItem;->thumbnailUrl:Ljava/lang/String;

    .line 602
    iput-boolean v3, v4, Lcom/narvii/model/PlayListItem;->needUploadThumbnail:Z

    goto :goto_2

    .line 605
    :cond_7
    iget-object p1, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->mainListAdapter:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, p2}, Lcom/narvii/list/NVArrayAdapter;->setList(Ljava/util/ArrayList;)V

    .line 606
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->onLocalListChanged()V

    :cond_8
    :goto_3
    return-void
.end method

.method public onPlayListChanged(Lcom/narvii/model/PlayList;)V
    .locals 0

    .line 619
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->onRemoteListChanged()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    .line 180
    invoke-super {p0, p1, p2}, Lcom/narvii/list/DragSortListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const v0, 0x7f0904ba

    .line 182
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/SwipeableLayout;

    iput-object v0, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->swipeableLayout:Lcom/narvii/widget/SwipeableLayout;

    .line 184
    iget-object v0, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->swipeableLayout:Lcom/narvii/widget/SwipeableLayout;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/narvii/widget/SwipeableLayout;->setAllowDirection(I)V

    .line 185
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0702c1

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 186
    iget-object v2, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->swipeableLayout:Lcom/narvii/widget/SwipeableLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v0, v3, v3}, Lcom/narvii/widget/SwipeableLayout;->setRadius(IIII)V

    .line 187
    iget-object v0, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->swipeableLayout:Lcom/narvii/widget/SwipeableLayout;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/narvii/widget/SwipeableLayout;->setAppearAnimation(I)V

    .line 188
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 189
    :goto_0
    iget-object v0, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->swipeableLayout:Lcom/narvii/widget/SwipeableLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getStatusBarOverlaySize()I

    move-result v1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x43480000    # 200.0f

    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v1

    float-to-int v1, v1

    :goto_1
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    const/4 v0, 0x0

    .line 191
    iput-object v0, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->backgroundMaskView:Landroid/view/View;

    .line 192
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/narvii/chat/ChatActivity;

    if-eqz v0, :cond_2

    .line 193
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0909b3

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->backgroundMaskView:Landroid/view/View;

    .line 197
    :cond_2
    iget-object v0, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->swipeableLayout:Lcom/narvii/widget/SwipeableLayout;

    new-instance v1, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$1;

    invoke-direct {v1, p0}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$1;-><init>(Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;)V

    invoke-virtual {v0, v1}, Lcom/narvii/widget/SwipeableLayout;->setSwipeListener(Lcom/narvii/widget/SwipeableLayout$SwipeListener;)V

    .line 213
    iget-object v0, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->swipeableLayout:Lcom/narvii/widget/SwipeableLayout;

    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/widget/SwipeableLayout;->bindListView(Landroid/widget/AbsListView;)V

    const v0, 0x7f090255

    .line 215
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$2;

    invoke-direct {v1, p0}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$2;-><init>(Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09024d

    .line 225
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->clearAllButton:Landroid/widget/Button;

    .line 226
    iget-object v0, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->clearAllButton:Landroid/widget/Button;

    new-instance v1, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$3;

    invoke-direct {v1, p0}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$3;-><init>(Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090719

    .line 245
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$4;

    invoke-direct {v1, p0}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$4;-><init>(Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0909bb

    .line 255
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->videoCounter:Landroid/widget/TextView;

    const v0, 0x7f0909bd

    .line 256
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->videoTotalTime:Landroid/widget/TextView;

    const v0, 0x7f0909bc

    .line 257
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->videoStaticsLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f0909b1

    .line 258
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->addVideoButton:Landroid/widget/FrameLayout;

    .line 259
    iget-object v0, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->addVideoButton:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$5;

    invoke-direct {v1, p0}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$5;-><init>(Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 270
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->updateLayout()V

    .line 271
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->updatePlayListView()V

    if-nez p2, :cond_3

    .line 273
    iget-object p2, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->screenRoomService:Lcom/narvii/chat/screenroom/ScreenRoomService;

    invoke-virtual {p2}, Lcom/narvii/chat/screenroom/ScreenRoomService;->getPlayList()Lcom/narvii/model/PlayList;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 274
    iget v0, p2, Lcom/narvii/model/PlayList;->currentItemIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    const v0, 0x102000a

    .line 275
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    if-eqz v0, :cond_3

    .line 277
    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 278
    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    iget v2, p2, Lcom/narvii/model/PlayList;->currentItemIndex:I

    if-le v1, v2, :cond_3

    iget-object v1, p2, Lcom/narvii/model/PlayList;->items:Ljava/util/List;

    invoke-static {v1}, Lcom/narvii/util/CollectionUtils;->getSize(Ljava/util/List;)I

    move-result v1

    iget p2, p2, Lcom/narvii/model/PlayList;->currentItemIndex:I

    if-le v1, p2, :cond_3

    .line 280
    :try_start_0
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41f00000    # 30.0f

    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, p2, v1}, Landroid/widget/ListView;->setSelectionFromTop(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p2

    const-string v0, "playlist"

    .line 282
    invoke-static {v0, p2}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    const p2, 0x7f090a90

    .line 289
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->startFrame:Landroid/view/View;

    const p2, 0x7f090a05

    .line 290
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->selectFrame:Landroid/view/View;

    const p2, 0x7f090174

    .line 291
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->btnStart:Landroid/view/View;

    .line 292
    iget-object p1, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->btnStart:Landroid/view/View;

    new-instance p2, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$6;

    invoke-direct {p2, p0}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$6;-><init>(Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 323
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->updateBottomViews()V

    return-void
.end method

.method public registerPlaylistDismissListener(Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$PlaylistDismissListener;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 411
    :cond_0
    iput-object p1, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->onDismissListener:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$PlaylistDismissListener;

    return-void
.end method

.method public remove()V
    .locals 1

    .line 394
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 396
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_0
    return-void
.end method

.method public removeSelfAndBg()V
    .locals 2

    .line 353
    invoke-virtual {p0}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->remove()V

    .line 354
    iget-object v0, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->backgroundMaskView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 355
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    return-void
.end method

.method public setIsPrePickMode(ZLcom/narvii/model/ChatThread;)V
    .locals 0

    .line 327
    iput-boolean p1, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->isPrePickMode:Z

    const/4 p1, 0x0

    .line 328
    iput-boolean p1, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->isLoadPlaylistForPrePick:Z

    .line 329
    iget p1, p2, Lcom/narvii/model/ChatThread;->ndcId:I

    iput p1, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->prepickNdcid:I

    .line 330
    iget-object p1, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->prePickPlaylist:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 331
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->updateBottomViews()V

    return-void
.end method

.method public setVideoPickCallback(Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$VideoPickCallback;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->videoPickCallback:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$VideoPickCallback;

    return-void
.end method

.method public unregisterPlaylistDismissListener()V
    .locals 1

    const/4 v0, 0x0

    .line 415
    iput-object v0, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->onDismissListener:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$PlaylistDismissListener;

    return-void
.end method
