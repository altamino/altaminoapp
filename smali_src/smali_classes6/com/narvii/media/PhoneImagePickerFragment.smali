.class public Lcom/narvii/media/PhoneImagePickerFragment;
.super Lcom/narvii/app/NVFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/media/PhoneImagePickerFragment$LoadTask;,
        Lcom/narvii/media/PhoneImagePickerFragment$Adapter;,
        Lcom/narvii/media/PhoneImagePickerFragment$AlbumAdapter;,
        Lcom/narvii/media/PhoneImagePickerFragment$Entry;
    }
.end annotation


# static fields
.field public static final MEDIA_TYPE_IMAGE:I = 0x1

.field public static final MEDIA_TYPE_VIDEO:I = 0x2

.field public static final MIN_EDIT_VIDEO_DURATION_SECOND:I = 0xbb8

.field private static final ORDER_BY:Ljava/lang/String; = "date_added"

.field public static final REQUEST_MEDIA_EDITOR:I = 0x63

.field private static final SELECTION_ALL:Ljava/lang/String; = "(media_type=? OR media_type=?) AND _size>0"

.field private static final SELECTION_ALL_ARGS:[Ljava/lang/String;

.field private static final SELECTION_ALL_FOR_SINGLE_MEDIA_TYPE:Ljava/lang/String; = "media_type=? AND _size>0"

.field public static final VIDEO_MULTI_SELECT_WITH_IMAGE_AND_NO_EDITOR:I = 0x3

.field public static final VIDEO_MULTI_SELECT_WITH_NO_EDITOR:I = 0x2

.field public static final VIDEO_SELECT_WITH_EDITOR:I = 0x0

.field public static final VIDEO_SELECT_WITH_NO_EDITOR:I = 0x1

.field public static ffmpegInstalled:Z = true

.field public static isSupportMeishe:Z = true

.field private static loadExecutor:Ljava/util/concurrent/ExecutorService;


# instance fields
.field adapter:Lcom/narvii/media/PhoneImagePickerFragment$Adapter;

.field albumList:Landroid/widget/ListView;

.field private bannerClickListener:Lcom/narvii/media/HQBannerClickListener;

.field checkBoxHQ:Landroid/widget/CheckBox;

.field communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

.field entries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/narvii/media/PhoneImagePickerFragment$Entry;",
            ">;"
        }
    .end annotation
.end field

.field fentries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/narvii/media/PhoneImagePickerFragment$Entry;",
            ">;"
        }
    .end annotation
.end field

.field grid:Landroid/widget/GridView;

.field private imageSelected:Z

.field private loadTask:Lcom/narvii/media/PhoneImagePickerFragment$LoadTask;

.field private mediaType:I

.field private membershipForVideo:Z

.field private minVideoDuration:I

.field private noFileCopy:Z

.field pickButton:Landroid/widget/Button;

.field private receiver:Landroid/content/BroadcastReceiver;

.field private selectionStrList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private selections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/narvii/media/PhoneImagePickerFragment$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private showHQImage:Z

.field titleButton:Landroid/view/View;

.field touchArea:Landroid/view/View;

.field private videoSelectMode:I

.field private videoSelected:Z

.field width:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    const-string v0, "galley media loader"

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    .line 6
    invoke-static {v1, v0}, Lcom/narvii/util/Utils;->createThreadPoolExecutor(ILjava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    sput-object v0, Lcom/narvii/media/PhoneImagePickerFragment;->loadExecutor:Ljava/util/concurrent/ExecutorService;

    .line 10
    .line 11
    .line 12
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 13
    move-result-object v0

    .line 14
    const/4 v1, 0x3

    .line 15
    .line 16
    .line 17
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    .line 21
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    sput-object v0, Lcom/narvii/media/PhoneImagePickerFragment;->SELECTION_ALL_ARGS:[Ljava/lang/String;

    .line 25
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/app/NVFragment;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    iput v0, p0, Lcom/narvii/media/PhoneImagePickerFragment;->minVideoDuration:I

    .line 7
    .line 8
    new-instance v0, Lcom/narvii/media/PhoneImagePickerFragment$1;

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, p0}, Lcom/narvii/media/PhoneImagePickerFragment$1;-><init>(Lcom/narvii/media/PhoneImagePickerFragment;)V

    .line 12
    .line 13
    iput-object v0, p0, Lcom/narvii/media/PhoneImagePickerFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 14
    return-void
.end method

.method static bridge synthetic A(Lcom/narvii/media/PhoneImagePickerFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/media/PhoneImagePickerFragment;->hideAlbum()V

    return-void
.end method

.method static bridge synthetic B(Lcom/narvii/media/PhoneImagePickerFragment;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/media/PhoneImagePickerFragment;->isVideo()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic C(Lcom/narvii/media/PhoneImagePickerFragment;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/media/PhoneImagePickerFragment;->isVideoMultiSelect()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic D(Lcom/narvii/media/PhoneImagePickerFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/media/PhoneImagePickerFragment;->pick()V

    return-void
.end method

.method static bridge synthetic E(Lcom/narvii/media/PhoneImagePickerFragment;Ljava/util/List;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/media/PhoneImagePickerFragment;->resumeSelectedEntries(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic F(Lcom/narvii/media/PhoneImagePickerFragment;Lcom/narvii/widget/NVImageView;Lcom/narvii/media/PhoneImagePickerFragment$Entry;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/narvii/media/PhoneImagePickerFragment;->setImageView(Lcom/narvii/widget/NVImageView;Lcom/narvii/media/PhoneImagePickerFragment$Entry;)V

    return-void
.end method

.method static bridge synthetic G(Lcom/narvii/media/PhoneImagePickerFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/media/PhoneImagePickerFragment;->switchAlbum()V

    return-void
.end method

.method static bridge synthetic H(Lcom/narvii/media/PhoneImagePickerFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/media/PhoneImagePickerFragment;->updateItemSelected()V

    return-void
.end method

.method static bridge synthetic I(Lcom/narvii/media/PhoneImagePickerFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/media/PhoneImagePickerFragment;->updatePickButton()V

    return-void
.end method

.method static bridge synthetic J(Lcom/narvii/media/PhoneImagePickerFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/media/PhoneImagePickerFragment;->updateViews()V

    return-void
.end method

.method private containsImage()Z
    .locals 2

    iget v0, p0, Lcom/narvii/media/PhoneImagePickerFragment;->mediaType:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private containsVideo()Z
    .locals 1

    iget v0, p0, Lcom/narvii/media/PhoneImagePickerFragment;->mediaType:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private convertSelectedEntriesToStrings(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/media/PhoneImagePickerFragment$Entry;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    return-object v0

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    .line 15
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    move-result v1

    .line 17
    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    .line 21
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    check-cast v1, Lcom/narvii/media/PhoneImagePickerFragment$Entry;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/narvii/media/PhoneImagePickerFragment$Entry;->getUniqueKey()Ljava/lang/String;

    .line 28
    move-result-object v1

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    return-object v0
.end method

.method private filterAlbum(Lcom/narvii/media/PhoneImagePickerFragment$Entry;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/media/PhoneImagePickerFragment$Entry;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/media/PhoneImagePickerFragment$Entry;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "noGif"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    new-instance v1, Ljava/util/ArrayList;

    .line 9
    .line 10
    .line 11
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    iget-object v2, p0, Lcom/narvii/media/PhoneImagePickerFragment;->entries:Ljava/util/ArrayList;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 17
    move-result-object v2

    .line 18
    .line 19
    .line 20
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    move-result v3

    .line 22
    .line 23
    if-eqz v3, :cond_3

    .line 24
    .line 25
    .line 26
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    move-result-object v3

    .line 28
    .line 29
    check-cast v3, Lcom/narvii/media/PhoneImagePickerFragment$Entry;

    .line 30
    .line 31
    if-eqz p1, :cond_1

    .line 32
    .line 33
    iget v4, v3, Lcom/narvii/media/PhoneImagePickerFragment$Entry;->folderId:I

    .line 34
    .line 35
    iget v5, p1, Lcom/narvii/media/PhoneImagePickerFragment$Entry;->folderId:I

    .line 36
    .line 37
    if-ne v4, v5, :cond_0

    .line 38
    .line 39
    :cond_1
    if-eqz v0, :cond_2

    .line 40
    .line 41
    .line 42
    invoke-virtual {v3}, Lcom/narvii/media/PhoneImagePickerFragment$Entry;->isGif()Z

    .line 43
    move-result v4

    .line 44
    .line 45
    if-eqz v4, :cond_2

    .line 46
    goto :goto_0

    .line 47
    .line 48
    .line 49
    :cond_2
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    goto :goto_0

    .line 51
    :cond_3
    return-object v1
.end method

.method private getMediaSelectArgs()[Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/media/PhoneImagePickerFragment;->containsVideo()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lcom/narvii/media/PhoneImagePickerFragment;->containsImage()Z

    .line 8
    move-result v1

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    sget-object v0, Lcom/narvii/media/PhoneImagePickerFragment;->SELECTION_ALL_ARGS:[Ljava/lang/String;

    .line 15
    return-object v0

    .line 16
    .line 17
    :cond_0
    if-eqz v0, :cond_1

    .line 18
    const/4 v0, 0x3

    .line 19
    .line 20
    .line 21
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    .line 25
    filled-new-array {v0}, [Ljava/lang/String;

    .line 26
    move-result-object v0

    .line 27
    return-object v0

    .line 28
    :cond_1
    const/4 v0, 0x1

    .line 29
    .line 30
    .line 31
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    .line 35
    filled-new-array {v0}, [Ljava/lang/String;

    .line 36
    move-result-object v0

    .line 37
    return-object v0
.end method

.method private getMediaSelection()Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/media/PhoneImagePickerFragment;->containsImage()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/narvii/media/PhoneImagePickerFragment;->containsVideo()Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    const-string v0, "(media_type=? OR media_type=?) AND _size>0"

    .line 15
    return-object v0

    .line 16
    .line 17
    :cond_0
    const-string v0, "media_type=? AND _size>0"

    .line 18
    return-object v0
.end method

.method private getVideoThumbnail(J)Ljava/io/File;
    .locals 7

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    sget-object v2, Landroid/provider/MediaStore$Video$Thumbnails;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 11
    .line 12
    const-string v0, "_data"

    .line 13
    .line 14
    const-string v3, "video_id"

    .line 15
    .line 16
    .line 17
    filled-new-array {v0, v3}, [Ljava/lang/String;

    .line 18
    move-result-object v3

    .line 19
    .line 20
    const-string v4, "video_id=?"

    .line 21
    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string p1, ""

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    move-result-object p1

    .line 38
    .line 39
    .line 40
    filled-new-array {p1}, [Ljava/lang/String;

    .line 41
    move-result-object v5

    .line 42
    const/4 v6, 0x0

    .line 43
    .line 44
    .line 45
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 46
    move-result-object p1

    .line 47
    .line 48
    if-eqz p1, :cond_0

    .line 49
    .line 50
    .line 51
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 52
    move-result p2

    .line 53
    .line 54
    if-eqz p2, :cond_0

    .line 55
    .line 56
    new-instance p2, Ljava/io/File;

    .line 57
    const/4 v0, 0x0

    .line 58
    .line 59
    .line 60
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 61
    move-result-object p1

    .line 62
    .line 63
    .line 64
    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    .line 68
    move-result p1

    .line 69
    .line 70
    if-eqz p1, :cond_0

    .line 71
    return-object p2

    .line 72
    :cond_0
    const/4 p1, 0x0

    .line 73
    return-object p1
.end method

.method private hasVideoEditor()Z
    .locals 2

    iget v0, p0, Lcom/narvii/media/PhoneImagePickerFragment;->videoSelectMode:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private hideAlbum()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/media/PhoneImagePickerFragment;->albumList:Landroid/widget/ListView;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/media/PhoneImagePickerFragment;->albumList:Landroid/widget/ListView;

    .line 11
    .line 12
    const/16 v1, 0x8

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    sget v2, Lcom/narvii/lib/R$anim;->slide_out_top:I

    .line 22
    .line 23
    .line 24
    invoke-static {v0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    iget-object v2, p0, Lcom/narvii/media/PhoneImagePickerFragment;->albumList:Landroid/widget/ListView;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 31
    .line 32
    iget-object v0, p0, Lcom/narvii/media/PhoneImagePickerFragment;->touchArea:Landroid/view/View;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    sget v1, Lcom/narvii/lib/R$anim;->fade_out:I

    .line 42
    .line 43
    .line 44
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 45
    move-result-object v0

    .line 46
    .line 47
    iget-object v1, p0, Lcom/narvii/media/PhoneImagePickerFragment;->touchArea:Landroid/view/View;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 51
    :cond_0
    return-void
.end method

.method private isVideo()Z
    .locals 1

    iget v0, p0, Lcom/narvii/media/PhoneImagePickerFragment;->mediaType:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isVideoMultiSelect()Z
    .locals 2

    iget v0, p0, Lcom/narvii/media/PhoneImagePickerFragment;->videoSelectMode:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method static bridge synthetic n(Lcom/narvii/media/PhoneImagePickerFragment;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/narvii/media/PhoneImagePickerFragment;->imageSelected:Z

    return p0
.end method

.method static bridge synthetic o(Lcom/narvii/media/PhoneImagePickerFragment;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/narvii/media/PhoneImagePickerFragment;->membershipForVideo:Z

    return p0
.end method

.method static bridge synthetic p(Lcom/narvii/media/PhoneImagePickerFragment;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/narvii/media/PhoneImagePickerFragment;->minVideoDuration:I

    return p0
.end method

.method private pick()V
    .locals 9

    .line 1
    .line 2
    const-string v0, "photo"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/photos/PhotoManager;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/narvii/media/PhoneImagePickerFragment;->selections:Ljava/util/ArrayList;

    .line 11
    .line 12
    if-eqz v1, :cond_d

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 16
    move-result v1

    .line 17
    .line 18
    if-lez v1, :cond_d

    .line 19
    .line 20
    new-instance v1, Ljava/util/ArrayList;

    .line 21
    .line 22
    .line 23
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 24
    .line 25
    iget-object v2, p0, Lcom/narvii/media/PhoneImagePickerFragment;->selections:Ljava/util/ArrayList;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 29
    move-result-object v2

    .line 30
    .line 31
    .line 32
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    move-result v3

    .line 34
    const/4 v4, 0x0

    .line 35
    .line 36
    if-eqz v3, :cond_7

    .line 37
    .line 38
    .line 39
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    move-result-object v3

    .line 41
    .line 42
    check-cast v3, Lcom/narvii/media/PhoneImagePickerFragment$Entry;

    .line 43
    .line 44
    .line 45
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 46
    move-result-object v5

    .line 47
    .line 48
    .line 49
    invoke-virtual {v5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 50
    move-result-object v5

    .line 51
    .line 52
    .line 53
    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 54
    move-result-object v5

    .line 55
    .line 56
    const-string v6, "dir"

    .line 57
    .line 58
    .line 59
    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    .line 60
    move-result-object v5

    .line 61
    .line 62
    check-cast v5, Ljava/io/File;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v3}, Lcom/narvii/media/PhoneImagePickerFragment$Entry;->getMediaType()I

    .line 66
    move-result v6

    .line 67
    .line 68
    const/16 v7, 0x64

    .line 69
    .line 70
    const/16 v8, 0x7b

    .line 71
    .line 72
    if-ne v6, v7, :cond_1

    .line 73
    .line 74
    if-eqz v5, :cond_0

    .line 75
    .line 76
    iget-boolean v6, p0, Lcom/narvii/media/PhoneImagePickerFragment;->noFileCopy:Z

    .line 77
    .line 78
    if-nez v6, :cond_0

    .line 79
    .line 80
    .line 81
    invoke-virtual {v3}, Lcom/narvii/media/PhoneImagePickerFragment$Entry;->getMediaUrl()Ljava/lang/String;

    .line 82
    move-result-object v6

    .line 83
    .line 84
    .line 85
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 86
    move-result-object v6

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0, v5, v6}, Lcom/narvii/photos/PhotoManager;->importPhoto(Ljava/io/File;Landroid/net/Uri;)Ljava/lang/String;

    .line 90
    move-result-object v5

    .line 91
    goto :goto_1

    .line 92
    :catch_0
    move-exception v4

    .line 93
    .line 94
    goto/16 :goto_4

    .line 95
    .line 96
    .line 97
    :cond_0
    invoke-virtual {v3}, Lcom/narvii/media/PhoneImagePickerFragment$Entry;->getMediaUrl()Ljava/lang/String;

    .line 98
    move-result-object v5

    .line 99
    .line 100
    .line 101
    invoke-static {v5}, Lcom/narvii/util/Utils;->uriToFile(Ljava/lang/String;)Ljava/io/File;

    .line 102
    move-result-object v5

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0, v5}, Lcom/narvii/photos/PhotoManager;->getUri(Ljava/io/File;)Ljava/lang/String;

    .line 106
    move-result-object v5

    .line 107
    goto :goto_1

    .line 108
    .line 109
    .line 110
    :cond_1
    invoke-virtual {v3}, Lcom/narvii/media/PhoneImagePickerFragment$Entry;->getMediaType()I

    .line 111
    move-result v6

    .line 112
    .line 113
    if-ne v6, v8, :cond_3

    .line 114
    .line 115
    if-eqz v5, :cond_2

    .line 116
    .line 117
    .line 118
    invoke-direct {p0}, Lcom/narvii/media/PhoneImagePickerFragment;->hasVideoEditor()Z

    .line 119
    move-result v5

    .line 120
    .line 121
    if-eqz v5, :cond_2

    .line 122
    .line 123
    new-instance v5, Ljava/io/File;

    .line 124
    .line 125
    iget-object v6, v3, Lcom/narvii/media/PhoneImagePickerFragment$Entry;->mediaPath:Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0, v5}, Lcom/narvii/photos/PhotoManager;->getUri(Ljava/io/File;)Ljava/lang/String;

    .line 132
    move-result-object v5

    .line 133
    goto :goto_1

    .line 134
    .line 135
    .line 136
    :cond_2
    invoke-virtual {v3}, Lcom/narvii/media/PhoneImagePickerFragment$Entry;->getMediaUrl()Ljava/lang/String;

    .line 137
    move-result-object v5

    .line 138
    goto :goto_1

    .line 139
    :cond_3
    move-object v5, v4

    .line 140
    .line 141
    :goto_1
    new-instance v6, Lcom/narvii/model/Media;

    .line 142
    .line 143
    .line 144
    invoke-direct {v6}, Lcom/narvii/model/Media;-><init>()V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v3}, Lcom/narvii/media/PhoneImagePickerFragment$Entry;->getMediaType()I

    .line 148
    move-result v7

    .line 149
    .line 150
    iput v7, v6, Lcom/narvii/model/Media;->type:I

    .line 151
    .line 152
    iput-object v5, v6, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 153
    .line 154
    iget-object v7, v3, Lcom/narvii/media/PhoneImagePickerFragment$Entry;->name:Ljava/lang/String;

    .line 155
    .line 156
    iput-object v7, v6, Lcom/narvii/model/Media;->fileName:Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v3}, Lcom/narvii/media/PhoneImagePickerFragment$Entry;->getMediaType()I

    .line 160
    move-result v7

    .line 161
    .line 162
    if-ne v7, v8, :cond_6

    .line 163
    .line 164
    .line 165
    invoke-virtual {v0, v5}, Lcom/narvii/photos/PhotoManager;->isVideo(Ljava/lang/String;)Z

    .line 166
    move-result v5

    .line 167
    .line 168
    if-eqz v5, :cond_4

    .line 169
    .line 170
    .line 171
    invoke-direct {p0}, Lcom/narvii/media/PhoneImagePickerFragment;->hasVideoEditor()Z

    .line 172
    move-result v5

    .line 173
    .line 174
    if-eqz v5, :cond_4

    .line 175
    .line 176
    iget-object v4, v6, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v0, v4}, Lcom/narvii/photos/PhotoManager;->getVideoCoverUrl(Ljava/lang/String;)Ljava/lang/String;

    .line 180
    move-result-object v4

    .line 181
    .line 182
    iput-object v4, v6, Lcom/narvii/model/Media;->coverImage:Ljava/lang/String;

    .line 183
    goto :goto_3

    .line 184
    .line 185
    :cond_4
    iget-wide v7, v3, Lcom/narvii/media/PhoneImagePickerFragment$Entry;->imageId:J

    .line 186
    .line 187
    .line 188
    invoke-direct {p0, v7, v8}, Lcom/narvii/media/PhoneImagePickerFragment;->getVideoThumbnail(J)Ljava/io/File;

    .line 189
    move-result-object v5

    .line 190
    .line 191
    if-nez v5, :cond_5

    .line 192
    goto :goto_2

    .line 193
    .line 194
    .line 195
    :cond_5
    invoke-virtual {v0, v5}, Lcom/narvii/photos/PhotoManager;->getUri(Ljava/io/File;)Ljava/lang/String;

    .line 196
    move-result-object v4

    .line 197
    .line 198
    :goto_2
    iput-object v4, v6, Lcom/narvii/model/Media;->coverImage:Ljava/lang/String;

    .line 199
    .line 200
    :cond_6
    :goto_3
    iget v4, v3, Lcom/narvii/media/PhoneImagePickerFragment$Entry;->duration:I

    .line 201
    int-to-long v4, v4

    .line 202
    .line 203
    iput-wide v4, v6, Lcom/narvii/model/Media;->duration:J

    .line 204
    .line 205
    .line 206
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    .line 208
    goto/16 :goto_0

    .line 209
    .line 210
    :goto_4
    new-instance v5, Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 214
    .line 215
    const-string v6, "fail to import image from "

    .line 216
    .line 217
    .line 218
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 225
    move-result-object v3

    .line 226
    .line 227
    .line 228
    invoke-static {v3, v4}, Lcom/narvii/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 229
    .line 230
    goto/16 :goto_0

    .line 231
    .line 232
    .line 233
    :cond_7
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 234
    move-result v0

    .line 235
    .line 236
    if-lez v0, :cond_d

    .line 237
    .line 238
    const-string v0, "pickCallback"

    .line 239
    .line 240
    .line 241
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 242
    move-result-object v0

    .line 243
    .line 244
    const-string v2, "mediaList"

    .line 245
    .line 246
    if-eqz v0, :cond_b

    .line 247
    .line 248
    const-string v3, "mediaPickCallback"

    .line 249
    .line 250
    .line 251
    invoke-virtual {p0, v3}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 252
    move-result-object v3

    .line 253
    .line 254
    check-cast v3, Lcom/narvii/media/MediaPickCallbackManager;

    .line 255
    .line 256
    if-nez v3, :cond_8

    .line 257
    goto :goto_5

    .line 258
    .line 259
    .line 260
    :cond_8
    invoke-virtual {v3, v0}, Lcom/narvii/media/MediaPickCallbackManager;->getCallback(Ljava/lang/String;)Lcom/narvii/media/MediaPickCallback;

    .line 261
    move-result-object v4

    .line 262
    .line 263
    :goto_5
    if-nez v4, :cond_9

    .line 264
    return-void

    .line 265
    .line 266
    .line 267
    :cond_9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 268
    move-result-object v0

    .line 269
    .line 270
    .line 271
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 272
    move-result-object v0

    .line 273
    .line 274
    .line 275
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 276
    move-result-object v0

    .line 277
    .line 278
    const-string v3, "pickCallbackParams"

    .line 279
    .line 280
    .line 281
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    .line 282
    move-result-object v0

    .line 283
    .line 284
    check-cast v0, Ljava/util/HashMap;

    .line 285
    .line 286
    if-nez v0, :cond_a

    .line 287
    .line 288
    new-instance v0, Ljava/util/HashMap;

    .line 289
    .line 290
    .line 291
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 292
    .line 293
    .line 294
    :cond_a
    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 295
    move-result-object v1

    .line 296
    .line 297
    .line 298
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    .line 300
    const-string v1, "pickSource"

    .line 301
    .line 302
    const-string v2, "Photo Library"

    .line 303
    .line 304
    .line 305
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    .line 307
    .line 308
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 309
    move-result-object v1

    .line 310
    .line 311
    check-cast v1, Lcom/narvii/app/NVActivity;

    .line 312
    const/4 v2, 0x1

    .line 313
    .line 314
    .line 315
    invoke-interface {v4, v0, v1, v2}, Lcom/narvii/media/MediaPickCallback;->onPick(Ljava/util/HashMap;Lcom/narvii/app/NVActivity;Z)V

    .line 316
    goto :goto_7

    .line 317
    .line 318
    :cond_b
    new-instance v0, Landroid/content/Intent;

    .line 319
    .line 320
    .line 321
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 322
    .line 323
    .line 324
    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 325
    move-result-object v1

    .line 326
    .line 327
    .line 328
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 329
    .line 330
    iget-object v1, p0, Lcom/narvii/media/PhoneImagePickerFragment;->checkBoxHQ:Landroid/widget/CheckBox;

    .line 331
    .line 332
    if-nez v1, :cond_c

    .line 333
    const/4 v1, 0x0

    .line 334
    goto :goto_6

    .line 335
    .line 336
    .line 337
    :cond_c
    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 338
    move-result v1

    .line 339
    .line 340
    :goto_6
    const-string v2, "isUHQ"

    .line 341
    .line 342
    .line 343
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 344
    const/4 v1, -0x1

    .line 345
    .line 346
    .line 347
    invoke-virtual {p0, v1, v0}, Lcom/narvii/app/NVFragment;->setResult(ILandroid/content/Intent;)V

    .line 348
    .line 349
    .line 350
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    .line 351
    :cond_d
    :goto_7
    return-void
.end method

.method static bridge synthetic q(Lcom/narvii/media/PhoneImagePickerFragment;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/media/PhoneImagePickerFragment;->selectionStrList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic r(Lcom/narvii/media/PhoneImagePickerFragment;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/media/PhoneImagePickerFragment;->selections:Ljava/util/ArrayList;

    return-object p0
.end method

.method private resumeSelectedEntries(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/media/PhoneImagePickerFragment$Entry;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    if-eqz p1, :cond_3

    .line 8
    .line 9
    iget-object v1, p0, Lcom/narvii/media/PhoneImagePickerFragment;->fentries:Ljava/util/ArrayList;

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    goto :goto_2

    .line 13
    .line 14
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    .line 15
    .line 16
    .line 17
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 18
    .line 19
    iget-object v2, p0, Lcom/narvii/media/PhoneImagePickerFragment;->entries:Ljava/util/ArrayList;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 23
    move-result-object v2

    .line 24
    .line 25
    .line 26
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    move-result v3

    .line 28
    .line 29
    if-eqz v3, :cond_1

    .line 30
    .line 31
    .line 32
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    move-result-object v3

    .line 34
    .line 35
    check-cast v3, Lcom/narvii/media/PhoneImagePickerFragment$Entry;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3}, Lcom/narvii/media/PhoneImagePickerFragment$Entry;->getUniqueKey()Ljava/lang/String;

    .line 39
    move-result-object v4

    .line 40
    .line 41
    .line 42
    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    goto :goto_0

    .line 44
    .line 45
    .line 46
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 47
    move-result-object p1

    .line 48
    .line 49
    .line 50
    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 51
    move-result v2

    .line 52
    .line 53
    if-eqz v2, :cond_3

    .line 54
    .line 55
    .line 56
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 57
    move-result-object v2

    .line 58
    .line 59
    check-cast v2, Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    move-result-object v2

    .line 64
    .line 65
    check-cast v2, Lcom/narvii/media/PhoneImagePickerFragment$Entry;

    .line 66
    .line 67
    if-eqz v2, :cond_2

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    goto :goto_1

    .line 72
    :cond_3
    :goto_2
    return-object v0
.end method

.method static bridge synthetic s(Lcom/narvii/media/PhoneImagePickerFragment;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/narvii/media/PhoneImagePickerFragment;->videoSelectMode:I

    return p0
.end method

.method private setImageView(Lcom/narvii/widget/NVImageView;Lcom/narvii/media/PhoneImagePickerFragment$Entry;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p2}, Lcom/narvii/media/PhoneImagePickerFragment$Entry;->getMediaStorageUrl()Ljava/lang/String;

    .line 4
    move-result-object p2

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, p2}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 8
    return-void
.end method

.method private showAlbum()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/media/PhoneImagePickerFragment;->entries:Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    return-void

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/narvii/media/PhoneImagePickerFragment;->albumList:Landroid/widget/ListView;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 15
    move-result v0

    .line 16
    .line 17
    const/16 v1, 0x8

    .line 18
    .line 19
    if-ne v0, v1, :cond_1

    .line 20
    .line 21
    iget-object v0, p0, Lcom/narvii/media/PhoneImagePickerFragment;->albumList:Landroid/widget/ListView;

    .line 22
    const/4 v1, 0x0

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    sget v2, Lcom/narvii/lib/R$anim;->slide_in_top:I

    .line 32
    .line 33
    .line 34
    invoke-static {v0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 35
    move-result-object v0

    .line 36
    .line 37
    iget-object v2, p0, Lcom/narvii/media/PhoneImagePickerFragment;->albumList:Landroid/widget/ListView;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 41
    .line 42
    iget-object v0, p0, Lcom/narvii/media/PhoneImagePickerFragment;->touchArea:Landroid/view/View;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 49
    move-result-object v0

    .line 50
    .line 51
    sget v1, Lcom/narvii/lib/R$anim;->fade_in:I

    .line 52
    .line 53
    .line 54
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 55
    move-result-object v0

    .line 56
    .line 57
    iget-object v1, p0, Lcom/narvii/media/PhoneImagePickerFragment;->touchArea:Landroid/view/View;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 61
    :cond_1
    return-void
.end method

.method private switchAlbum()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/media/PhoneImagePickerFragment;->albumList:Landroid/widget/ListView;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 9
    move-result v0

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    .line 14
    invoke-direct {p0}, Lcom/narvii/media/PhoneImagePickerFragment;->hideAlbum()V

    .line 15
    goto :goto_0

    .line 16
    .line 17
    .line 18
    :cond_1
    invoke-direct {p0}, Lcom/narvii/media/PhoneImagePickerFragment;->showAlbum()V

    .line 19
    :goto_0
    return-void
.end method

.method static bridge synthetic t(Lcom/narvii/media/PhoneImagePickerFragment;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/narvii/media/PhoneImagePickerFragment;->videoSelected:Z

    return p0
.end method

.method static bridge synthetic u(Lcom/narvii/media/PhoneImagePickerFragment;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/media/PhoneImagePickerFragment;->selections:Ljava/util/ArrayList;

    return-void
.end method

.method private updateItemSelected()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    iput-boolean v0, p0, Lcom/narvii/media/PhoneImagePickerFragment;->imageSelected:Z

    .line 4
    .line 5
    iput-boolean v0, p0, Lcom/narvii/media/PhoneImagePickerFragment;->videoSelected:Z

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/media/PhoneImagePickerFragment;->selections:Ljava/util/ArrayList;

    .line 8
    .line 9
    if-eqz v0, :cond_4

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 13
    move-result v0

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    goto :goto_0

    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lcom/narvii/media/PhoneImagePickerFragment;->selections:Ljava/util/ArrayList;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    .line 25
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    move-result v1

    .line 27
    .line 28
    if-eqz v1, :cond_4

    .line 29
    .line 30
    .line 31
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    move-result-object v1

    .line 33
    .line 34
    check-cast v1, Lcom/narvii/media/PhoneImagePickerFragment$Entry;

    .line 35
    .line 36
    iget v1, v1, Lcom/narvii/media/PhoneImagePickerFragment$Entry;->mediaType:I

    .line 37
    .line 38
    const/16 v2, 0x64

    .line 39
    const/4 v3, 0x1

    .line 40
    .line 41
    if-ne v1, v2, :cond_2

    .line 42
    .line 43
    iput-boolean v3, p0, Lcom/narvii/media/PhoneImagePickerFragment;->imageSelected:Z

    .line 44
    .line 45
    :cond_2
    const/16 v2, 0x7b

    .line 46
    .line 47
    if-ne v1, v2, :cond_3

    .line 48
    .line 49
    iput-boolean v3, p0, Lcom/narvii/media/PhoneImagePickerFragment;->videoSelected:Z

    .line 50
    .line 51
    :cond_3
    iget-boolean v1, p0, Lcom/narvii/media/PhoneImagePickerFragment;->imageSelected:Z

    .line 52
    .line 53
    if-eqz v1, :cond_1

    .line 54
    .line 55
    iget-boolean v1, p0, Lcom/narvii/media/PhoneImagePickerFragment;->videoSelected:Z

    .line 56
    .line 57
    if-eqz v1, :cond_1

    .line 58
    :cond_4
    :goto_0
    return-void
.end method

.method private updatePickButton()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/media/PhoneImagePickerFragment;->pickButton:Landroid/widget/Button;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    const-string v0, "single"

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 11
    move-result v0

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    iget-object v0, p0, Lcom/narvii/media/PhoneImagePickerFragment;->pickButton:Landroid/widget/Button;

    .line 16
    .line 17
    const/16 v1, 0x8

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 21
    goto :goto_1

    .line 22
    .line 23
    :cond_1
    iget-object v0, p0, Lcom/narvii/media/PhoneImagePickerFragment;->selections:Ljava/util/ArrayList;

    .line 24
    const/4 v1, 0x0

    .line 25
    .line 26
    if-nez v0, :cond_2

    .line 27
    move v0, v1

    .line 28
    goto :goto_0

    .line 29
    .line 30
    .line 31
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 32
    move-result v0

    .line 33
    .line 34
    :goto_0
    iget-object v2, p0, Lcom/narvii/media/PhoneImagePickerFragment;->pickButton:Landroid/widget/Button;

    .line 35
    .line 36
    if-lez v0, :cond_3

    .line 37
    const/4 v1, 0x1

    .line 38
    .line 39
    .line 40
    :cond_3
    invoke-virtual {v2, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 41
    .line 42
    sget v1, Lcom/narvii/lib/R$string;->pick:I

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 46
    move-result-object v1

    .line 47
    .line 48
    if-lez v0, :cond_4

    .line 49
    .line 50
    new-instance v2, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    const-string v1, " ("

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    const-string v0, ")"

    .line 67
    .line 68
    .line 69
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    move-result-object v1

    .line 74
    .line 75
    :cond_4
    iget-object v0, p0, Lcom/narvii/media/PhoneImagePickerFragment;->pickButton:Landroid/widget/Button;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    :goto_1
    return-void
.end method

.method private updateViews()V
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_3

    .line 7
    .line 8
    iget-object v1, p0, Lcom/narvii/media/PhoneImagePickerFragment;->entries:Ljava/util/ArrayList;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    goto/16 :goto_1

    .line 13
    .line 14
    :cond_0
    sget v1, Lcom/narvii/lib/R$id;->loading:I

    .line 15
    const/4 v2, 0x0

    .line 16
    .line 17
    .line 18
    invoke-static {v0, v1, v2}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;IZ)V

    .line 19
    .line 20
    sget v1, Lcom/narvii/lib/R$id;->grid:I

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 24
    move-result-object v1

    .line 25
    .line 26
    check-cast v1, Landroid/widget/GridView;

    .line 27
    .line 28
    iput-object v1, p0, Lcom/narvii/media/PhoneImagePickerFragment;->grid:Landroid/widget/GridView;

    .line 29
    .line 30
    new-instance v3, Lcom/narvii/media/PhoneImagePickerFragment$Adapter;

    .line 31
    .line 32
    .line 33
    invoke-direct {v3, p0}, Lcom/narvii/media/PhoneImagePickerFragment$Adapter;-><init>(Lcom/narvii/media/PhoneImagePickerFragment;)V

    .line 34
    .line 35
    iput-object v3, p0, Lcom/narvii/media/PhoneImagePickerFragment;->adapter:Lcom/narvii/media/PhoneImagePickerFragment$Adapter;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v3}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 39
    .line 40
    iget-object v1, p0, Lcom/narvii/media/PhoneImagePickerFragment;->grid:Landroid/widget/GridView;

    .line 41
    .line 42
    iget-object v3, p0, Lcom/narvii/media/PhoneImagePickerFragment;->adapter:Lcom/narvii/media/PhoneImagePickerFragment$Adapter;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v3}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 46
    .line 47
    sget v1, Lcom/narvii/lib/R$id;->media_image_gallery_list:I

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 51
    move-result-object v1

    .line 52
    .line 53
    check-cast v1, Landroid/widget/ListView;

    .line 54
    .line 55
    iput-object v1, p0, Lcom/narvii/media/PhoneImagePickerFragment;->albumList:Landroid/widget/ListView;

    .line 56
    .line 57
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    .line 58
    .line 59
    .line 60
    const v4, -0x777778

    .line 61
    .line 62
    .line 63
    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 67
    .line 68
    iget-object v1, p0, Lcom/narvii/media/PhoneImagePickerFragment;->albumList:Landroid/widget/ListView;

    .line 69
    const/4 v3, 0x1

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 73
    .line 74
    iget-object v1, p0, Lcom/narvii/media/PhoneImagePickerFragment;->albumList:Landroid/widget/ListView;

    .line 75
    .line 76
    const/16 v4, 0x8

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 80
    .line 81
    new-instance v1, Lcom/narvii/media/PhoneImagePickerFragment$AlbumAdapter;

    .line 82
    .line 83
    iget-object v5, p0, Lcom/narvii/media/PhoneImagePickerFragment;->entries:Ljava/util/ArrayList;

    .line 84
    .line 85
    .line 86
    invoke-direct {v1, p0, v5}, Lcom/narvii/media/PhoneImagePickerFragment$AlbumAdapter;-><init>(Lcom/narvii/media/PhoneImagePickerFragment;Ljava/util/ArrayList;)V

    .line 87
    .line 88
    iget-object v5, p0, Lcom/narvii/media/PhoneImagePickerFragment;->albumList:Landroid/widget/ListView;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v5, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 92
    .line 93
    iget-object v5, p0, Lcom/narvii/media/PhoneImagePickerFragment;->albumList:Landroid/widget/ListView;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v5, v1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 97
    .line 98
    sget v1, Lcom/narvii/lib/R$id;->media_image_gallery_mask:I

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 102
    move-result-object v1

    .line 103
    .line 104
    iput-object v1, p0, Lcom/narvii/media/PhoneImagePickerFragment;->touchArea:Landroid/view/View;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 108
    .line 109
    iget-object v1, p0, Lcom/narvii/media/PhoneImagePickerFragment;->touchArea:Landroid/view/View;

    .line 110
    .line 111
    new-instance v5, Lcom/narvii/media/PhoneImagePickerFragment$2;

    .line 112
    .line 113
    .line 114
    invoke-direct {v5, p0}, Lcom/narvii/media/PhoneImagePickerFragment$2;-><init>(Lcom/narvii/media/PhoneImagePickerFragment;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v1, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    .line 119
    iget-object v1, p0, Lcom/narvii/media/PhoneImagePickerFragment;->entries:Ljava/util/ArrayList;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 123
    move-result v1

    .line 124
    .line 125
    if-eqz v1, :cond_1

    .line 126
    .line 127
    sget v1, Lcom/narvii/lib/R$id;->empty:I

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 131
    move-result-object v1

    .line 132
    .line 133
    .line 134
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 135
    .line 136
    iget-object v1, p0, Lcom/narvii/media/PhoneImagePickerFragment;->grid:Landroid/widget/GridView;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 140
    .line 141
    :cond_1
    sget v1, Lcom/narvii/lib/R$id;->hq_banner_root:I

    .line 142
    .line 143
    .line 144
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 145
    move-result-object v0

    .line 146
    .line 147
    const-string v1, "membership"

    .line 148
    .line 149
    .line 150
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 151
    move-result-object v1

    .line 152
    .line 153
    check-cast v1, Lcom/narvii/wallet/MembershipService;

    .line 154
    .line 155
    sget v5, Lcom/narvii/lib/R$id;->hq_selected:I

    .line 156
    .line 157
    .line 158
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 159
    move-result-object v5

    .line 160
    .line 161
    check-cast v5, Landroid/widget/CheckBox;

    .line 162
    .line 163
    iput-object v5, p0, Lcom/narvii/media/PhoneImagePickerFragment;->checkBoxHQ:Landroid/widget/CheckBox;

    .line 164
    .line 165
    iget v5, p0, Lcom/narvii/media/PhoneImagePickerFragment;->mediaType:I

    .line 166
    and-int/2addr v3, v5

    .line 167
    .line 168
    if-eqz v3, :cond_2

    .line 169
    .line 170
    iget-boolean v3, p0, Lcom/narvii/media/PhoneImagePickerFragment;->showHQImage:Z

    .line 171
    .line 172
    if-eqz v3, :cond_2

    .line 173
    .line 174
    iget-object v3, p0, Lcom/narvii/media/PhoneImagePickerFragment;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v3}, Lcom/narvii/modulization/CommunityConfigHelper;->isPremiumFeatureEnabled()Z

    .line 178
    move-result v3

    .line 179
    .line 180
    if-eqz v3, :cond_2

    .line 181
    goto :goto_0

    .line 182
    :cond_2
    move v2, v4

    .line 183
    .line 184
    .line 185
    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 186
    const/4 v2, 0x0

    .line 187
    .line 188
    .line 189
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    .line 191
    iget-object v0, p0, Lcom/narvii/media/PhoneImagePickerFragment;->checkBoxHQ:Landroid/widget/CheckBox;

    .line 192
    .line 193
    new-instance v2, Lcom/narvii/media/PhoneImagePickerFragment$3;

    .line 194
    .line 195
    .line 196
    invoke-direct {v2, p0, v1}, Lcom/narvii/media/PhoneImagePickerFragment$3;-><init>(Lcom/narvii/media/PhoneImagePickerFragment;Lcom/narvii/wallet/MembershipService;)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    :cond_3
    :goto_1
    return-void
.end method

.method static bridge synthetic v(Lcom/narvii/media/PhoneImagePickerFragment;Ljava/util/List;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/media/PhoneImagePickerFragment;->convertSelectedEntriesToStrings(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic w(Lcom/narvii/media/PhoneImagePickerFragment;Lcom/narvii/media/PhoneImagePickerFragment$Entry;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/media/PhoneImagePickerFragment;->filterAlbum(Lcom/narvii/media/PhoneImagePickerFragment$Entry;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic x(Lcom/narvii/media/PhoneImagePickerFragment;)[Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/media/PhoneImagePickerFragment;->getMediaSelectArgs()[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic y(Lcom/narvii/media/PhoneImagePickerFragment;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/media/PhoneImagePickerFragment;->getMediaSelection()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic z(Lcom/narvii/media/PhoneImagePickerFragment;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/media/PhoneImagePickerFragment;->hasVideoEditor()Z

    move-result p0

    return p0
.end method


# virtual methods
.method protected getActionBarCustomDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    sget v1, Lcom/narvii/lib/R$drawable;->media_actionbar:I

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "media_picker"

    return-object v0
.end method

.method public isModel()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 4
    const/4 p1, 0x0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    sget v1, Lcom/narvii/lib/R$layout;->media_image_picker_title:I

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    iput-object v0, p0, Lcom/narvii/media/PhoneImagePickerFragment;->titleButton:Landroid/view/View;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setActionBarTitleView(Landroid/view/View;)V

    .line 20
    .line 21
    iget-object v0, p0, Lcom/narvii/media/PhoneImagePickerFragment;->titleButton:Landroid/view/View;

    .line 22
    .line 23
    new-instance v1, Lcom/narvii/media/PhoneImagePickerFragment$4;

    .line 24
    .line 25
    .line 26
    invoke-direct {v1, p0}, Lcom/narvii/media/PhoneImagePickerFragment$4;-><init>(Lcom/narvii/media/PhoneImagePickerFragment;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    .line 31
    iget-object v0, p0, Lcom/narvii/media/PhoneImagePickerFragment;->titleButton:Landroid/view/View;

    .line 32
    .line 33
    sget v1, Lcom/narvii/lib/R$id;->title:I

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 37
    move-result-object v0

    .line 38
    .line 39
    check-cast v0, Landroid/widget/TextView;

    .line 40
    .line 41
    .line 42
    invoke-direct {p0}, Lcom/narvii/media/PhoneImagePickerFragment;->isVideo()Z

    .line 43
    move-result v1

    .line 44
    .line 45
    if-eqz v1, :cond_0

    .line 46
    .line 47
    sget v1, Lcom/narvii/lib/R$string;->media_image_picker_all_media:I

    .line 48
    goto :goto_0

    .line 49
    .line 50
    :cond_0
    sget v1, Lcom/narvii/lib/R$string;->media_image_picker_all_images:I

    .line 51
    .line 52
    .line 53
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    .line 57
    move-result-object v0

    .line 58
    .line 59
    sget v1, Lcom/narvii/lib/R$layout;->media_image_picker_button:I

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v1, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 63
    move-result-object p1

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setActionBarRightView(Landroid/view/View;)V

    .line 67
    .line 68
    sget v0, Lcom/narvii/lib/R$id;->pick_image:I

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 72
    move-result-object p1

    .line 73
    .line 74
    check-cast p1, Landroid/widget/Button;

    .line 75
    .line 76
    iput-object p1, p0, Lcom/narvii/media/PhoneImagePickerFragment;->pickButton:Landroid/widget/Button;

    .line 77
    .line 78
    new-instance v0, Lcom/narvii/util/OnPreventRepeatedClickListener;

    .line 79
    .line 80
    new-instance v1, Lcom/narvii/media/PhoneImagePickerFragment$5;

    .line 81
    .line 82
    .line 83
    invoke-direct {v1, p0}, Lcom/narvii/media/PhoneImagePickerFragment$5;-><init>(Lcom/narvii/media/PhoneImagePickerFragment;)V

    .line 84
    .line 85
    .line 86
    invoke-direct {v0, v1}, Lcom/narvii/util/OnPreventRepeatedClickListener;-><init>(Landroid/view/View$OnClickListener;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    .line 91
    .line 92
    invoke-direct {p0}, Lcom/narvii/media/PhoneImagePickerFragment;->updatePickButton()V

    .line 93
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    .line 1
    .line 2
    const-class v0, Lcom/narvii/media/PhoneImagePickerFragment$Entry;

    .line 3
    .line 4
    const/16 v1, 0x58

    .line 5
    const/4 v2, -0x1

    .line 6
    .line 7
    if-ne p2, v2, :cond_4

    .line 8
    .line 9
    if-ne p1, v1, :cond_4

    .line 10
    .line 11
    if-eqz p3, :cond_4

    .line 12
    .line 13
    const-string v3, "single"

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v3}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 17
    move-result v3

    .line 18
    .line 19
    if-eqz v3, :cond_2

    .line 20
    .line 21
    const-string v3, "mediaItem"

    .line 22
    .line 23
    .line 24
    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    move-result-object v3

    .line 26
    .line 27
    .line 28
    invoke-static {v3, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 29
    move-result-object v3

    .line 30
    .line 31
    check-cast v3, Lcom/narvii/media/PhoneImagePickerFragment$Entry;

    .line 32
    .line 33
    if-nez v3, :cond_0

    .line 34
    return-void

    .line 35
    .line 36
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    .line 37
    .line 38
    .line 39
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 40
    .line 41
    iput-object v4, p0, Lcom/narvii/media/PhoneImagePickerFragment;->selections:Ljava/util/ArrayList;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    .line 46
    iget-object v3, p0, Lcom/narvii/media/PhoneImagePickerFragment;->adapter:Lcom/narvii/media/PhoneImagePickerFragment$Adapter;

    .line 47
    .line 48
    if-eqz v3, :cond_1

    .line 49
    .line 50
    .line 51
    invoke-virtual {v3}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 52
    .line 53
    .line 54
    :cond_1
    invoke-direct {p0}, Lcom/narvii/media/PhoneImagePickerFragment;->pick()V

    .line 55
    goto :goto_0

    .line 56
    .line 57
    :cond_2
    const-string v3, "selected"

    .line 58
    .line 59
    .line 60
    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 61
    move-result-object v3

    .line 62
    .line 63
    const-class v4, Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    invoke-static {v3, v4}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    .line 67
    move-result-object v3

    .line 68
    .line 69
    iput-object v3, p0, Lcom/narvii/media/PhoneImagePickerFragment;->selectionStrList:Ljava/util/ArrayList;

    .line 70
    .line 71
    .line 72
    invoke-direct {p0, v3}, Lcom/narvii/media/PhoneImagePickerFragment;->resumeSelectedEntries(Ljava/util/List;)Ljava/util/ArrayList;

    .line 73
    move-result-object v3

    .line 74
    .line 75
    iput-object v3, p0, Lcom/narvii/media/PhoneImagePickerFragment;->selections:Ljava/util/ArrayList;

    .line 76
    .line 77
    .line 78
    invoke-direct {p0}, Lcom/narvii/media/PhoneImagePickerFragment;->updateItemSelected()V

    .line 79
    .line 80
    iget-object v3, p0, Lcom/narvii/media/PhoneImagePickerFragment;->adapter:Lcom/narvii/media/PhoneImagePickerFragment$Adapter;

    .line 81
    .line 82
    if-eqz v3, :cond_3

    .line 83
    .line 84
    .line 85
    invoke-virtual {v3}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 86
    .line 87
    .line 88
    :cond_3
    invoke-direct {p0}, Lcom/narvii/media/PhoneImagePickerFragment;->updatePickButton()V

    .line 89
    :cond_4
    :goto_0
    const/4 v3, 0x0

    .line 90
    .line 91
    if-ne p1, v1, :cond_5

    .line 92
    .line 93
    if-eqz p3, :cond_5

    .line 94
    .line 95
    const-string v1, "isHQChecked"

    .line 96
    .line 97
    .line 98
    invoke-virtual {p3, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 99
    move-result v1

    .line 100
    .line 101
    iget-object v4, p0, Lcom/narvii/media/PhoneImagePickerFragment;->checkBoxHQ:Landroid/widget/CheckBox;

    .line 102
    .line 103
    if-eqz v4, :cond_5

    .line 104
    .line 105
    .line 106
    invoke-virtual {v4, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 107
    .line 108
    :cond_5
    const/16 v1, 0x63

    .line 109
    .line 110
    if-ne p1, v1, :cond_7

    .line 111
    .line 112
    if-ne p2, v2, :cond_7

    .line 113
    .line 114
    const-string p1, "entryInfo"

    .line 115
    .line 116
    .line 117
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 118
    move-result-object p1

    .line 119
    .line 120
    .line 121
    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 122
    move-result-object p1

    .line 123
    .line 124
    check-cast p1, Lcom/narvii/media/PhoneImagePickerFragment$Entry;

    .line 125
    .line 126
    const-string p2, "outputVideoPath"

    .line 127
    .line 128
    .line 129
    invoke-virtual {p3, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 130
    move-result-object p2

    .line 131
    .line 132
    iput-object p2, p1, Lcom/narvii/media/PhoneImagePickerFragment$Entry;->mediaPath:Ljava/lang/String;

    .line 133
    .line 134
    const-string p2, "outputVideoHeight"

    .line 135
    .line 136
    iget v0, p1, Lcom/narvii/media/PhoneImagePickerFragment$Entry;->height:I

    .line 137
    .line 138
    .line 139
    invoke-virtual {p3, p2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 140
    move-result p2

    .line 141
    .line 142
    iput p2, p1, Lcom/narvii/media/PhoneImagePickerFragment$Entry;->height:I

    .line 143
    .line 144
    const-string p2, "outputVideoWidth"

    .line 145
    .line 146
    iget v0, p1, Lcom/narvii/media/PhoneImagePickerFragment$Entry;->width:I

    .line 147
    .line 148
    .line 149
    invoke-virtual {p3, p2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 150
    move-result p2

    .line 151
    .line 152
    iput p2, p1, Lcom/narvii/media/PhoneImagePickerFragment$Entry;->width:I

    .line 153
    .line 154
    const-string p2, "outputVideoDuration"

    .line 155
    .line 156
    .line 157
    invoke-virtual {p3, p2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 158
    move-result p2

    .line 159
    .line 160
    if-nez p2, :cond_6

    .line 161
    .line 162
    iget p2, p1, Lcom/narvii/media/PhoneImagePickerFragment$Entry;->duration:I

    .line 163
    .line 164
    :cond_6
    iput p2, p1, Lcom/narvii/media/PhoneImagePickerFragment$Entry;->duration:I

    .line 165
    .line 166
    new-instance p2, Ljava/util/ArrayList;

    .line 167
    .line 168
    .line 169
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 170
    .line 171
    iput-object p2, p0, Lcom/narvii/media/PhoneImagePickerFragment;->selections:Ljava/util/ArrayList;

    .line 172
    .line 173
    .line 174
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    .line 176
    .line 177
    invoke-direct {p0}, Lcom/narvii/media/PhoneImagePickerFragment;->pick()V

    .line 178
    return-void

    .line 179
    .line 180
    .line 181
    :cond_7
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/app/NVFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 182
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    const-string v0, "type"

    .line 6
    const/4 v1, 0x1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0, v1}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;I)I

    .line 10
    move-result v0

    .line 11
    .line 12
    iput v0, p0, Lcom/narvii/media/PhoneImagePickerFragment;->mediaType:I

    .line 13
    .line 14
    const-string v0, "videoSelectMode"

    .line 15
    const/4 v1, 0x0

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v0, v1}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;I)I

    .line 19
    move-result v0

    .line 20
    .line 21
    iput v0, p0, Lcom/narvii/media/PhoneImagePickerFragment;->videoSelectMode:I

    .line 22
    .line 23
    const-string v0, "minVideoDuration"

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, v0, v1}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;I)I

    .line 27
    move-result v0

    .line 28
    .line 29
    iput v0, p0, Lcom/narvii/media/PhoneImagePickerFragment;->minVideoDuration:I

    .line 30
    .line 31
    const-string v0, "membershipForVideo"

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, v0, v1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;Z)Z

    .line 35
    move-result v0

    .line 36
    .line 37
    iput-boolean v0, p0, Lcom/narvii/media/PhoneImagePickerFragment;->membershipForVideo:Z

    .line 38
    .line 39
    new-instance v0, Lcom/narvii/media/PhoneImagePickerFragment$LoadTask;

    .line 40
    .line 41
    .line 42
    invoke-direct {v0, p0}, Lcom/narvii/media/PhoneImagePickerFragment$LoadTask;-><init>(Lcom/narvii/media/PhoneImagePickerFragment;)V

    .line 43
    .line 44
    iput-object v0, p0, Lcom/narvii/media/PhoneImagePickerFragment;->loadTask:Lcom/narvii/media/PhoneImagePickerFragment$LoadTask;

    .line 45
    .line 46
    sget-object v2, Lcom/narvii/media/PhoneImagePickerFragment;->loadExecutor:Ljava/util/concurrent/ExecutorService;

    .line 47
    .line 48
    new-array v1, v1, [Ljava/lang/Void;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v2, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 55
    move-result-object v0

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 59
    move-result-object v0

    .line 60
    .line 61
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 62
    .line 63
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 64
    .line 65
    .line 66
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    .line 67
    move-result v0

    .line 68
    .line 69
    div-int/lit8 v0, v0, 0x3

    .line 70
    .line 71
    iput v0, p0, Lcom/narvii/media/PhoneImagePickerFragment;->width:I

    .line 72
    .line 73
    const-string v0, "showHQBar"

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 77
    move-result v0

    .line 78
    .line 79
    iput-boolean v0, p0, Lcom/narvii/media/PhoneImagePickerFragment;->showHQImage:Z

    .line 80
    .line 81
    const-string v0, "noFileCopy"

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 85
    move-result v0

    .line 86
    .line 87
    iput-boolean v0, p0, Lcom/narvii/media/PhoneImagePickerFragment;->noFileCopy:Z

    .line 88
    .line 89
    const-class v0, Ljava/lang/String;

    .line 90
    .line 91
    const-string v1, "images"

    .line 92
    .line 93
    if-nez p1, :cond_0

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 97
    move-result-object p1

    .line 98
    .line 99
    .line 100
    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    .line 101
    move-result-object p1

    .line 102
    .line 103
    iput-object p1, p0, Lcom/narvii/media/PhoneImagePickerFragment;->selectionStrList:Ljava/util/ArrayList;

    .line 104
    goto :goto_0

    .line 105
    .line 106
    .line 107
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 108
    move-result-object p1

    .line 109
    .line 110
    .line 111
    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    .line 112
    move-result-object p1

    .line 113
    .line 114
    iput-object p1, p0, Lcom/narvii/media/PhoneImagePickerFragment;->selectionStrList:Ljava/util/ArrayList;

    .line 115
    .line 116
    :goto_0
    new-instance p1, Lcom/narvii/modulization/CommunityConfigHelper;

    .line 117
    .line 118
    .line 119
    invoke-direct {p1, p0}, Lcom/narvii/modulization/CommunityConfigHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 120
    .line 121
    iput-object p1, p0, Lcom/narvii/media/PhoneImagePickerFragment;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    .line 122
    .line 123
    iget-object p1, p0, Lcom/narvii/media/PhoneImagePickerFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 124
    .line 125
    new-instance v0, Landroid/content/IntentFilter;

    .line 126
    .line 127
    const-string v1, "com.narvii.action.MEMBERSHIP_CHANGED"

    .line 128
    .line 129
    .line 130
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p0, p1, v0}, Lcom/narvii/app/NVFragment;->registerLocalReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 134
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    sget p3, Lcom/narvii/lib/R$layout;->media_image_picker:I

    .line 3
    const/4 v0, 0x0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 7
    move-result-object p1

    .line 8
    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/media/PhoneImagePickerFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->unregisterLocalReceiver(Landroid/content/BroadcastReceiver;)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/media/PhoneImagePickerFragment;->loadTask:Lcom/narvii/media/PhoneImagePickerFragment$LoadTask;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    const/4 v1, 0x1

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onDestroy()V

    .line 17
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/media/PhoneImagePickerFragment;->selections:Ljava/util/ArrayList;

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, v0}, Lcom/narvii/media/PhoneImagePickerFragment;->convertSelectedEntriesToStrings(Ljava/util/List;)Ljava/util/ArrayList;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->safeWriteAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    const-string v1, "images"

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/narvii/media/PhoneImagePickerFragment;->updateViews()V

    .line 7
    return-void
.end method
