.class public Lcom/narvii/media/PhoneImagePickerFragment;
.super Lcom/narvii/app/NVFragment;
.source "PhoneImagePickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/media/PhoneImagePickerFragment$LoadTask;,
        Lcom/narvii/media/PhoneImagePickerFragment$Entry;,
        Lcom/narvii/media/PhoneImagePickerFragment$AlbumAdapter;,
        Lcom/narvii/media/PhoneImagePickerFragment$Adapter;
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
    .locals 4

    const/4 v0, 0x1

    const-string v1, "galley media loader"

    .line 136
    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->createThreadPoolExecutor(ILjava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v1

    sput-object v1, Lcom/narvii/media/PhoneImagePickerFragment;->loadExecutor:Ljava/util/concurrent/ExecutorService;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    .line 144
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x3

    .line 145
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    sput-object v1, Lcom/narvii/media/PhoneImagePickerFragment;->SELECTION_ALL_ARGS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 94
    invoke-direct {p0}, Lcom/narvii/app/NVFragment;-><init>()V

    const/4 v0, 0x0

    .line 125
    iput v0, p0, Lcom/narvii/media/PhoneImagePickerFragment;->minVideoDuration:I

    .line 152
    new-instance v0, Lcom/narvii/media/PhoneImagePickerFragment$1;

    invoke-direct {v0, p0}, Lcom/narvii/media/PhoneImagePickerFragment$1;-><init>(Lcom/narvii/media/PhoneImagePickerFragment;)V

    iput-object v0, p0, Lcom/narvii/media/PhoneImagePickerFragment;->receiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/media/PhoneImagePickerFragment;)V
    .locals 0

    .line 94
    invoke-direct {p0}, Lcom/narvii/media/PhoneImagePickerFragment;->hideAlbum()V

    return-void
.end method

.method static synthetic access$100(Lcom/narvii/media/PhoneImagePickerFragment;)V
    .locals 0

    .line 94
    invoke-direct {p0}, Lcom/narvii/media/PhoneImagePickerFragment;->switchAlbum()V

    return-void
.end method

.method static synthetic access$1000(Lcom/narvii/media/PhoneImagePickerFragment;)Z
    .locals 0

    .line 94
    iget-boolean p0, p0, Lcom/narvii/media/PhoneImagePickerFragment;->membershipForVideo:Z

    return p0
.end method

.method static synthetic access$1100(Lcom/narvii/media/PhoneImagePickerFragment;)Z
    .locals 0

    .line 94
    invoke-direct {p0}, Lcom/narvii/media/PhoneImagePickerFragment;->hasVideoEditor()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1200(Lcom/narvii/media/PhoneImagePickerFragment;)V
    .locals 0

    .line 94
    invoke-direct {p0}, Lcom/narvii/media/PhoneImagePickerFragment;->updateItemSelected()V

    return-void
.end method

.method static synthetic access$1300(Lcom/narvii/media/PhoneImagePickerFragment;)V
    .locals 0

    .line 94
    invoke-direct {p0}, Lcom/narvii/media/PhoneImagePickerFragment;->updatePickButton()V

    return-void
.end method

.method static synthetic access$1400(Lcom/narvii/media/PhoneImagePickerFragment;Ljava/util/List;)Ljava/util/ArrayList;
    .locals 0

    .line 94
    invoke-direct {p0, p1}, Lcom/narvii/media/PhoneImagePickerFragment;->convertSelectedEntriesToStrings(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1500(Lcom/narvii/media/PhoneImagePickerFragment;)Z
    .locals 0

    .line 94
    invoke-direct {p0}, Lcom/narvii/media/PhoneImagePickerFragment;->isVideo()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1600(Lcom/narvii/media/PhoneImagePickerFragment;Lcom/narvii/media/PhoneImagePickerFragment$Entry;)Ljava/util/ArrayList;
    .locals 0

    .line 94
    invoke-direct {p0, p1}, Lcom/narvii/media/PhoneImagePickerFragment;->filterAlbum(Lcom/narvii/media/PhoneImagePickerFragment$Entry;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1700(Lcom/narvii/media/PhoneImagePickerFragment;)Ljava/lang/String;
    .locals 0

    .line 94
    invoke-direct {p0}, Lcom/narvii/media/PhoneImagePickerFragment;->getMediaSelection()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1800(Lcom/narvii/media/PhoneImagePickerFragment;)[Ljava/lang/String;
    .locals 0

    .line 94
    invoke-direct {p0}, Lcom/narvii/media/PhoneImagePickerFragment;->getMediaSelectArgs()[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1900(Lcom/narvii/media/PhoneImagePickerFragment;)Ljava/util/ArrayList;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/narvii/media/PhoneImagePickerFragment;->selectionStrList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$200(Lcom/narvii/media/PhoneImagePickerFragment;)V
    .locals 0

    .line 94
    invoke-direct {p0}, Lcom/narvii/media/PhoneImagePickerFragment;->pick()V

    return-void
.end method

.method static synthetic access$2000(Lcom/narvii/media/PhoneImagePickerFragment;Ljava/util/List;)Ljava/util/ArrayList;
    .locals 0

    .line 94
    invoke-direct {p0, p1}, Lcom/narvii/media/PhoneImagePickerFragment;->resumeSelectedEntries(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2100(Lcom/narvii/media/PhoneImagePickerFragment;)V
    .locals 0

    .line 94
    invoke-direct {p0}, Lcom/narvii/media/PhoneImagePickerFragment;->updateViews()V

    return-void
.end method

.method static synthetic access$300(Lcom/narvii/media/PhoneImagePickerFragment;)Z
    .locals 0

    .line 94
    invoke-direct {p0}, Lcom/narvii/media/PhoneImagePickerFragment;->isVideoMultiSelect()Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/narvii/media/PhoneImagePickerFragment;)I
    .locals 0

    .line 94
    iget p0, p0, Lcom/narvii/media/PhoneImagePickerFragment;->minVideoDuration:I

    return p0
.end method

.method static synthetic access$500(Lcom/narvii/media/PhoneImagePickerFragment;)Z
    .locals 0

    .line 94
    iget-boolean p0, p0, Lcom/narvii/media/PhoneImagePickerFragment;->imageSelected:Z

    return p0
.end method

.method static synthetic access$600(Lcom/narvii/media/PhoneImagePickerFragment;)I
    .locals 0

    .line 94
    iget p0, p0, Lcom/narvii/media/PhoneImagePickerFragment;->videoSelectMode:I

    return p0
.end method

.method static synthetic access$700(Lcom/narvii/media/PhoneImagePickerFragment;)Z
    .locals 0

    .line 94
    iget-boolean p0, p0, Lcom/narvii/media/PhoneImagePickerFragment;->videoSelected:Z

    return p0
.end method

.method static synthetic access$800(Lcom/narvii/media/PhoneImagePickerFragment;Lcom/narvii/widget/NVImageView;Lcom/narvii/media/PhoneImagePickerFragment$Entry;)V
    .locals 0

    .line 94
    invoke-direct {p0, p1, p2}, Lcom/narvii/media/PhoneImagePickerFragment;->setImageView(Lcom/narvii/widget/NVImageView;Lcom/narvii/media/PhoneImagePickerFragment$Entry;)V

    return-void
.end method

.method static synthetic access$900(Lcom/narvii/media/PhoneImagePickerFragment;)Ljava/util/ArrayList;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/narvii/media/PhoneImagePickerFragment;->selections:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$902(Lcom/narvii/media/PhoneImagePickerFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/narvii/media/PhoneImagePickerFragment;->selections:Ljava/util/ArrayList;

    return-object p1
.end method

.method private containsImage()Z
    .locals 2

    .line 971
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

    .line 967
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

    .line 1030
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p1, :cond_0

    return-object v0

    .line 1034
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/media/PhoneImagePickerFragment$Entry;

    .line 1035
    invoke-virtual {v1}, Lcom/narvii/media/PhoneImagePickerFragment$Entry;->getUniqueKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

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

    const-string v0, "noGif"

    .line 403
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result v0

    .line 404
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 405
    iget-object v2, p0, Lcom/narvii/media/PhoneImagePickerFragment;->entries:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/media/PhoneImagePickerFragment$Entry;

    if-eqz p1, :cond_1

    .line 406
    iget v4, v3, Lcom/narvii/media/PhoneImagePickerFragment$Entry;->folderId:I

    iget v5, p1, Lcom/narvii/media/PhoneImagePickerFragment$Entry;->folderId:I

    if-ne v4, v5, :cond_0

    :cond_1
    if-eqz v0, :cond_2

    .line 407
    invoke-virtual {v3}, Lcom/narvii/media/PhoneImagePickerFragment$Entry;->isGif()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    .line 409
    :cond_2
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method private getMediaSelectArgs()[Ljava/lang/String;
    .locals 3

    .line 982
    invoke-direct {p0}, Lcom/narvii/media/PhoneImagePickerFragment;->containsVideo()Z

    move-result v0

    .line 983
    invoke-direct {p0}, Lcom/narvii/media/PhoneImagePickerFragment;->containsImage()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 985
    sget-object v0, Lcom/narvii/media/PhoneImagePickerFragment;->SELECTION_ALL_ARGS:[Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    new-array v0, v2, [Ljava/lang/String;

    const/4 v2, 0x3

    .line 987
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    return-object v0

    :cond_1
    new-array v0, v2, [Ljava/lang/String;

    .line 989
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    return-object v0
.end method

.method private getMediaSelection()Ljava/lang/String;
    .locals 1

    .line 975
    invoke-direct {p0}, Lcom/narvii/media/PhoneImagePickerFragment;->containsImage()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/narvii/media/PhoneImagePickerFragment;->containsVideo()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "(media_type=? OR media_type=?) AND _size>0"

    return-object v0

    :cond_0
    const-string v0, "media_type=? AND _size>0"

    return-object v0
.end method

.method private getVideoThumbnail(J)Ljava/io/File;
    .locals 7

    .line 994
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Video$Thumbnails;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v4, "_data"

    aput-object v4, v3, v0

    const/4 v4, 0x1

    const-string v5, "video_id"

    aput-object v5, v3, v4

    new-array v5, v4, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v5, v0

    const-string v4, "video_id=?"

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 998
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 999
    new-instance p2, Ljava/io/File;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1000
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p2

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private hasVideoEditor()Z
    .locals 2

    .line 805
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

    .line 374
    iget-object v0, p0, Lcom/narvii/media/PhoneImagePickerFragment;->albumList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/narvii/media/PhoneImagePickerFragment;->albumList:Landroid/widget/ListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 376
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/narvii/lib/R$anim;->slide_out_top:I

    invoke-static {v0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 378
    iget-object v2, p0, Lcom/narvii/media/PhoneImagePickerFragment;->albumList:Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 380
    iget-object v0, p0, Lcom/narvii/media/PhoneImagePickerFragment;->touchArea:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 381
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/narvii/lib/R$anim;->fade_out:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 382
    iget-object v1, p0, Lcom/narvii/media/PhoneImagePickerFragment;->touchArea:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method

.method private isVideo()Z
    .locals 1

    .line 314
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

    .line 809
    iget v0, p0, Lcom/narvii/media/PhoneImagePickerFragment;->videoSelectMode:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private pick()V
    .locals 9

    const-string v0, "photo"

    .line 417
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/photos/PhotoManager;

    .line 419
    iget-object v1, p0, Lcom/narvii/media/PhoneImagePickerFragment;->selections:Ljava/util/ArrayList;

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_d

    .line 420
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 421
    iget-object v2, p0, Lcom/narvii/media/PhoneImagePickerFragment;->selections:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/media/PhoneImagePickerFragment$Entry;

    .line 423
    :try_start_0
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "dir"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v5

    check-cast v5, Ljava/io/File;

    .line 427
    invoke-virtual {v3}, Lcom/narvii/media/PhoneImagePickerFragment$Entry;->getMediaType()I

    move-result v6

    const/16 v7, 0x64

    const/16 v8, 0x7b

    if-ne v6, v7, :cond_1

    if-eqz v5, :cond_0

    .line 428
    iget-boolean v6, p0, Lcom/narvii/media/PhoneImagePickerFragment;->noFileCopy:Z

    if-nez v6, :cond_0

    .line 429
    invoke-virtual {v3}, Lcom/narvii/media/PhoneImagePickerFragment$Entry;->getMediaUrl()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lcom/narvii/photos/PhotoManager;->importPhoto(Ljava/io/File;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 431
    :cond_0
    invoke-virtual {v3}, Lcom/narvii/media/PhoneImagePickerFragment$Entry;->getMediaUrl()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/narvii/util/Utils;->uriToFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/narvii/photos/PhotoManager;->getUri(Ljava/io/File;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 433
    :cond_1
    invoke-virtual {v3}, Lcom/narvii/media/PhoneImagePickerFragment$Entry;->getMediaType()I

    move-result v6

    if-ne v6, v8, :cond_3

    if-eqz v5, :cond_2

    .line 434
    invoke-direct {p0}, Lcom/narvii/media/PhoneImagePickerFragment;->hasVideoEditor()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 435
    new-instance v5, Ljava/io/File;

    iget-object v6, v3, Lcom/narvii/media/PhoneImagePickerFragment$Entry;->mediaPath:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Lcom/narvii/photos/PhotoManager;->getUri(Ljava/io/File;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 437
    :cond_2
    invoke-virtual {v3}, Lcom/narvii/media/PhoneImagePickerFragment$Entry;->getMediaUrl()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_3
    move-object v5, v4

    .line 441
    :goto_1
    new-instance v6, Lcom/narvii/model/Media;

    invoke-direct {v6}, Lcom/narvii/model/Media;-><init>()V

    .line 442
    invoke-virtual {v3}, Lcom/narvii/media/PhoneImagePickerFragment$Entry;->getMediaType()I

    move-result v7

    iput v7, v6, Lcom/narvii/model/Media;->type:I

    .line 443
    iput-object v5, v6, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 445
    iget-object v7, v3, Lcom/narvii/media/PhoneImagePickerFragment$Entry;->name:Ljava/lang/String;

    iput-object v7, v6, Lcom/narvii/model/Media;->fileName:Ljava/lang/String;

    .line 446
    invoke-virtual {v3}, Lcom/narvii/media/PhoneImagePickerFragment$Entry;->getMediaType()I

    move-result v7

    if-ne v7, v8, :cond_6

    .line 447
    invoke-virtual {v0, v5}, Lcom/narvii/photos/PhotoManager;->isVideo(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-direct {p0}, Lcom/narvii/media/PhoneImagePickerFragment;->hasVideoEditor()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 448
    iget-object v4, v6, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/narvii/photos/PhotoManager;->getVideoCoverUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v6, Lcom/narvii/model/Media;->coverImage:Ljava/lang/String;

    goto :goto_3

    .line 450
    :cond_4
    iget-wide v7, v3, Lcom/narvii/media/PhoneImagePickerFragment$Entry;->imageId:J

    invoke-direct {p0, v7, v8}, Lcom/narvii/media/PhoneImagePickerFragment;->getVideoThumbnail(J)Ljava/io/File;

    move-result-object v5

    if-nez v5, :cond_5

    goto :goto_2

    .line 451
    :cond_5
    invoke-virtual {v0, v5}, Lcom/narvii/photos/PhotoManager;->getUri(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    :goto_2
    iput-object v4, v6, Lcom/narvii/model/Media;->coverImage:Ljava/lang/String;

    .line 454
    :cond_6
    :goto_3
    iget v4, v3, Lcom/narvii/media/PhoneImagePickerFragment$Entry;->duration:I

    int-to-long v4, v4

    iput-wide v4, v6, Lcom/narvii/model/Media;->duration:J

    .line 456
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v4

    .line 458
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fail to import image from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v4}, Lcom/narvii/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 462
    :cond_7
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_d

    const-string v0, "pickCallback"

    .line 463
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "mediaList"

    if-eqz v0, :cond_b

    const-string v3, "mediaPickCallback"

    .line 465
    invoke-virtual {p0, v3}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/media/MediaPickCallbackManager;

    if-nez v3, :cond_8

    goto :goto_4

    .line 466
    :cond_8
    invoke-virtual {v3, v0}, Lcom/narvii/media/MediaPickCallbackManager;->getCallback(Ljava/lang/String;)Lcom/narvii/media/MediaPickCallback;

    move-result-object v4

    :goto_4
    if-nez v4, :cond_9

    return-void

    .line 470
    :cond_9
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "pickCallbackParams"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    if-nez v0, :cond_a

    .line 472
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 474
    :cond_a
    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "pickSource"

    const-string v2, "Photo Library"

    .line 475
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/narvii/app/NVActivity;

    const/4 v2, 0x1

    invoke-interface {v4, v0, v1, v2}, Lcom/narvii/media/MediaPickCallback;->onPick(Ljava/util/HashMap;Lcom/narvii/app/NVActivity;Z)V

    goto :goto_6

    .line 478
    :cond_b
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 479
    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 480
    iget-object v1, p0, Lcom/narvii/media/PhoneImagePickerFragment;->checkBoxHQ:Landroid/widget/CheckBox;

    if-nez v1, :cond_c

    const/4 v1, 0x0

    goto :goto_5

    :cond_c
    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    :goto_5
    const-string v2, "isUHQ"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v1, -0x1

    .line 481
    invoke-virtual {p0, v1, v0}, Lcom/narvii/app/NVFragment;->setResult(ILandroid/content/Intent;)V

    .line 482
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    :cond_d
    :goto_6
    return-void
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

    .line 1008
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_3

    .line 1009
    iget-object v1, p0, Lcom/narvii/media/PhoneImagePickerFragment;->fentries:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    goto :goto_2

    .line 1013
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1014
    iget-object v2, p0, Lcom/narvii/media/PhoneImagePickerFragment;->entries:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/media/PhoneImagePickerFragment$Entry;

    .line 1015
    invoke-virtual {v3}, Lcom/narvii/media/PhoneImagePickerFragment$Entry;->getUniqueKey()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1018
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1019
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/media/PhoneImagePickerFragment$Entry;

    if-eqz v2, :cond_2

    .line 1021
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    :goto_2
    return-object v0
.end method

.method private setImageView(Lcom/narvii/widget/NVImageView;Lcom/narvii/media/PhoneImagePickerFragment$Entry;)V
    .locals 0

    .line 1041
    invoke-virtual {p2}, Lcom/narvii/media/PhoneImagePickerFragment$Entry;->getMediaStorageUrl()Ljava/lang/String;

    move-result-object p2

    .line 1042
    invoke-virtual {p1, p2}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    return-void
.end method

.method private showAlbum()V
    .locals 3

    .line 387
    iget-object v0, p0, Lcom/narvii/media/PhoneImagePickerFragment;->entries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 390
    :cond_0
    iget-object v0, p0, Lcom/narvii/media/PhoneImagePickerFragment;->albumList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 391
    iget-object v0, p0, Lcom/narvii/media/PhoneImagePickerFragment;->albumList:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 392
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/narvii/lib/R$anim;->slide_in_top:I

    invoke-static {v0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 394
    iget-object v2, p0, Lcom/narvii/media/PhoneImagePickerFragment;->albumList:Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 396
    iget-object v0, p0, Lcom/narvii/media/PhoneImagePickerFragment;->touchArea:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 397
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/narvii/lib/R$anim;->fade_in:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 398
    iget-object v1, p0, Lcom/narvii/media/PhoneImagePickerFragment;->touchArea:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    return-void
.end method

.method private switchAlbum()V
    .locals 1

    .line 361
    iget-object v0, p0, Lcom/narvii/media/PhoneImagePickerFragment;->albumList:Landroid/widget/ListView;

    if-nez v0, :cond_0

    return-void

    .line 364
    :cond_0
    invoke-virtual {v0}, Landroid/widget/ListView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 366
    invoke-direct {p0}, Lcom/narvii/media/PhoneImagePickerFragment;->hideAlbum()V

    goto :goto_0

    .line 369
    :cond_1
    invoke-direct {p0}, Lcom/narvii/media/PhoneImagePickerFragment;->showAlbum()V

    :goto_0
    return-void
.end method

.method private updateItemSelected()V
    .locals 5

    const/4 v0, 0x0

    .line 324
    iput-boolean v0, p0, Lcom/narvii/media/PhoneImagePickerFragment;->imageSelected:Z

    .line 325
    iput-boolean v0, p0, Lcom/narvii/media/PhoneImagePickerFragment;->videoSelected:Z

    .line 326
    iget-object v0, p0, Lcom/narvii/media/PhoneImagePickerFragment;->selections:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 330
    :cond_0
    iget-object v0, p0, Lcom/narvii/media/PhoneImagePickerFragment;->selections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/media/PhoneImagePickerFragment$Entry;

    .line 331
    iget v2, v1, Lcom/narvii/media/PhoneImagePickerFragment$Entry;->mediaType:I

    const/16 v3, 0x64

    const/4 v4, 0x1

    if-ne v2, v3, :cond_2

    .line 332
    iput-boolean v4, p0, Lcom/narvii/media/PhoneImagePickerFragment;->imageSelected:Z

    .line 334
    :cond_2
    iget v1, v1, Lcom/narvii/media/PhoneImagePickerFragment$Entry;->mediaType:I

    const/16 v2, 0x7b

    if-ne v1, v2, :cond_3

    .line 335
    iput-boolean v4, p0, Lcom/narvii/media/PhoneImagePickerFragment;->videoSelected:Z

    .line 337
    :cond_3
    iget-boolean v1, p0, Lcom/narvii/media/PhoneImagePickerFragment;->imageSelected:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/narvii/media/PhoneImagePickerFragment;->videoSelected:Z

    if-eqz v1, :cond_1

    :cond_4
    :goto_0
    return-void
.end method

.method private updatePickButton()V
    .locals 3

    .line 344
    iget-object v0, p0, Lcom/narvii/media/PhoneImagePickerFragment;->pickButton:Landroid/widget/Button;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "single"

    .line 347
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 348
    iget-object v0, p0, Lcom/narvii/media/PhoneImagePickerFragment;->pickButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    .line 350
    :cond_1
    iget-object v0, p0, Lcom/narvii/media/PhoneImagePickerFragment;->selections:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 351
    :goto_0
    iget-object v2, p0, Lcom/narvii/media/PhoneImagePickerFragment;->pickButton:Landroid/widget/Button;

    if-lez v0, :cond_3

    const/4 v1, 0x1

    :cond_3
    invoke-virtual {v2, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 352
    sget v1, Lcom/narvii/lib/R$string;->pick:I

    invoke-virtual {p0, v1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-lez v0, :cond_4

    .line 354
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 356
    :cond_4
    iget-object v0, p0, Lcom/narvii/media/PhoneImagePickerFragment;->pickButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method

.method private updateViews()V
    .locals 6

    .line 230
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 231
    iget-object v1, p0, Lcom/narvii/media/PhoneImagePickerFragment;->entries:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    goto/16 :goto_1

    .line 235
    :cond_0
    sget v1, Lcom/narvii/lib/R$id;->loading:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;IZ)V

    .line 236
    sget v1, Lcom/narvii/lib/R$id;->grid:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    iput-object v1, p0, Lcom/narvii/media/PhoneImagePickerFragment;->grid:Landroid/widget/GridView;

    .line 237
    iget-object v1, p0, Lcom/narvii/media/PhoneImagePickerFragment;->grid:Landroid/widget/GridView;

    new-instance v3, Lcom/narvii/media/PhoneImagePickerFragment$Adapter;

    invoke-direct {v3, p0}, Lcom/narvii/media/PhoneImagePickerFragment$Adapter;-><init>(Lcom/narvii/media/PhoneImagePickerFragment;)V

    iput-object v3, p0, Lcom/narvii/media/PhoneImagePickerFragment;->adapter:Lcom/narvii/media/PhoneImagePickerFragment$Adapter;

    invoke-virtual {v1, v3}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 238
    iget-object v1, p0, Lcom/narvii/media/PhoneImagePickerFragment;->grid:Landroid/widget/GridView;

    iget-object v3, p0, Lcom/narvii/media/PhoneImagePickerFragment;->adapter:Lcom/narvii/media/PhoneImagePickerFragment$Adapter;

    invoke-virtual {v1, v3}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 239
    sget v1, Lcom/narvii/lib/R$id;->media_image_gallery_list:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/narvii/media/PhoneImagePickerFragment;->albumList:Landroid/widget/ListView;

    .line 240
    iget-object v1, p0, Lcom/narvii/media/PhoneImagePickerFragment;->albumList:Landroid/widget/ListView;

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    const v4, -0x777778

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 241
    iget-object v1, p0, Lcom/narvii/media/PhoneImagePickerFragment;->albumList:Landroid/widget/ListView;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 242
    iget-object v1, p0, Lcom/narvii/media/PhoneImagePickerFragment;->albumList:Landroid/widget/ListView;

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setVisibility(I)V

    .line 243
    new-instance v1, Lcom/narvii/media/PhoneImagePickerFragment$AlbumAdapter;

    iget-object v5, p0, Lcom/narvii/media/PhoneImagePickerFragment;->entries:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v5}, Lcom/narvii/media/PhoneImagePickerFragment$AlbumAdapter;-><init>(Lcom/narvii/media/PhoneImagePickerFragment;Ljava/util/ArrayList;)V

    .line 244
    iget-object v5, p0, Lcom/narvii/media/PhoneImagePickerFragment;->albumList:Landroid/widget/ListView;

    invoke-virtual {v5, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 245
    iget-object v5, p0, Lcom/narvii/media/PhoneImagePickerFragment;->albumList:Landroid/widget/ListView;

    invoke-virtual {v5, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 246
    sget v1, Lcom/narvii/lib/R$id;->media_image_gallery_mask:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/narvii/media/PhoneImagePickerFragment;->touchArea:Landroid/view/View;

    .line 247
    iget-object v1, p0, Lcom/narvii/media/PhoneImagePickerFragment;->touchArea:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 248
    iget-object v1, p0, Lcom/narvii/media/PhoneImagePickerFragment;->touchArea:Landroid/view/View;

    new-instance v5, Lcom/narvii/media/PhoneImagePickerFragment$2;

    invoke-direct {v5, p0}, Lcom/narvii/media/PhoneImagePickerFragment$2;-><init>(Lcom/narvii/media/PhoneImagePickerFragment;)V

    invoke-virtual {v1, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 255
    iget-object v1, p0, Lcom/narvii/media/PhoneImagePickerFragment;->entries:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 256
    sget v1, Lcom/narvii/lib/R$id;->empty:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 257
    iget-object v1, p0, Lcom/narvii/media/PhoneImagePickerFragment;->grid:Landroid/widget/GridView;

    invoke-virtual {v1, v4}, Landroid/widget/GridView;->setVisibility(I)V

    .line 260
    :cond_1
    sget v1, Lcom/narvii/lib/R$id;->hq_banner_root:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "membership"

    .line 261
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/wallet/MembershipService;

    .line 262
    sget v5, Lcom/narvii/lib/R$id;->hq_selected:I

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    iput-object v5, p0, Lcom/narvii/media/PhoneImagePickerFragment;->checkBoxHQ:Landroid/widget/CheckBox;

    .line 263
    iget v5, p0, Lcom/narvii/media/PhoneImagePickerFragment;->mediaType:I

    and-int/2addr v3, v5

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/narvii/media/PhoneImagePickerFragment;->showHQImage:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/narvii/media/PhoneImagePickerFragment;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    invoke-virtual {v3}, Lcom/narvii/modulization/CommunityConfigHelper;->isPremiumFeatureEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    const/4 v2, 0x0

    .line 264
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 265
    iget-object v0, p0, Lcom/narvii/media/PhoneImagePickerFragment;->checkBoxHQ:Landroid/widget/CheckBox;

    new-instance v2, Lcom/narvii/media/PhoneImagePickerFragment$3;

    invoke-direct {v2, p0, v1}, Lcom/narvii/media/PhoneImagePickerFragment$3;-><init>(Lcom/narvii/media/PhoneImagePickerFragment;Lcom/narvii/wallet/MembershipService;)V

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method protected getActionBarCustomDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 199
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/narvii/lib/R$drawable;->media_actionbar:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "MediaPicker"

    return-object v0
.end method

.method public isModel()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .line 286
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onActivityCreated(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 288
    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/narvii/lib/R$layout;->media_image_picker_title:I

    invoke-virtual {v0, v1, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/media/PhoneImagePickerFragment;->titleButton:Landroid/view/View;

    .line 290
    iget-object v0, p0, Lcom/narvii/media/PhoneImagePickerFragment;->titleButton:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setActionBarTitleView(Landroid/view/View;)V

    .line 291
    iget-object v0, p0, Lcom/narvii/media/PhoneImagePickerFragment;->titleButton:Landroid/view/View;

    new-instance v1, Lcom/narvii/media/PhoneImagePickerFragment$4;

    invoke-direct {v1, p0}, Lcom/narvii/media/PhoneImagePickerFragment$4;-><init>(Lcom/narvii/media/PhoneImagePickerFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 298
    iget-object v0, p0, Lcom/narvii/media/PhoneImagePickerFragment;->titleButton:Landroid/view/View;

    sget v1, Lcom/narvii/lib/R$id;->title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 299
    invoke-direct {p0}, Lcom/narvii/media/PhoneImagePickerFragment;->isVideo()Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Lcom/narvii/lib/R$string;->media_image_picker_all_media:I

    goto :goto_0

    :cond_0
    sget v1, Lcom/narvii/lib/R$string;->media_image_picker_all_images:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 301
    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/narvii/lib/R$layout;->media_image_picker_button:I

    invoke-virtual {v0, v1, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 302
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setActionBarRightView(Landroid/view/View;)V

    .line 303
    sget v0, Lcom/narvii/lib/R$id;->pick_image:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/narvii/media/PhoneImagePickerFragment;->pickButton:Landroid/widget/Button;

    .line 304
    iget-object p1, p0, Lcom/narvii/media/PhoneImagePickerFragment;->pickButton:Landroid/widget/Button;

    new-instance v0, Lcom/narvii/util/OnPreventRepeatedClickListener;

    new-instance v1, Lcom/narvii/media/PhoneImagePickerFragment$5;

    invoke-direct {v1, p0}, Lcom/narvii/media/PhoneImagePickerFragment$5;-><init>(Lcom/narvii/media/PhoneImagePickerFragment;)V

    invoke-direct {v0, v1}, Lcom/narvii/util/OnPreventRepeatedClickListener;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 310
    invoke-direct {p0}, Lcom/narvii/media/PhoneImagePickerFragment;->updatePickButton()V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    .line 760
    const-class v0, Lcom/narvii/media/PhoneImagePickerFragment$Entry;

    const/16 v1, 0x58

    const/4 v2, -0x1

    if-ne p2, v2, :cond_4

    if-ne p1, v1, :cond_4

    if-eqz p3, :cond_4

    const-string v3, "single"

    .line 761
    invoke-virtual {p0, v3}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "mediaItem"

    .line 762
    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/media/PhoneImagePickerFragment$Entry;

    if-nez v3, :cond_0

    return-void

    .line 766
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/narvii/media/PhoneImagePickerFragment;->selections:Ljava/util/ArrayList;

    .line 767
    iget-object v4, p0, Lcom/narvii/media/PhoneImagePickerFragment;->selections:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 768
    iget-object v3, p0, Lcom/narvii/media/PhoneImagePickerFragment;->adapter:Lcom/narvii/media/PhoneImagePickerFragment$Adapter;

    if-eqz v3, :cond_1

    .line 769
    invoke-virtual {v3}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 771
    :cond_1
    invoke-direct {p0}, Lcom/narvii/media/PhoneImagePickerFragment;->pick()V

    goto :goto_0

    :cond_2
    const-string v3, "selected"

    .line 773
    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-class v4, Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Lcom/narvii/media/PhoneImagePickerFragment;->selectionStrList:Ljava/util/ArrayList;

    .line 774
    iget-object v3, p0, Lcom/narvii/media/PhoneImagePickerFragment;->selectionStrList:Ljava/util/ArrayList;

    invoke-direct {p0, v3}, Lcom/narvii/media/PhoneImagePickerFragment;->resumeSelectedEntries(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Lcom/narvii/media/PhoneImagePickerFragment;->selections:Ljava/util/ArrayList;

    .line 775
    invoke-direct {p0}, Lcom/narvii/media/PhoneImagePickerFragment;->updateItemSelected()V

    .line 776
    iget-object v3, p0, Lcom/narvii/media/PhoneImagePickerFragment;->adapter:Lcom/narvii/media/PhoneImagePickerFragment$Adapter;

    if-eqz v3, :cond_3

    .line 777
    invoke-virtual {v3}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 779
    :cond_3
    invoke-direct {p0}, Lcom/narvii/media/PhoneImagePickerFragment;->updatePickButton()V

    :cond_4
    :goto_0
    const/4 v3, 0x0

    if-ne p1, v1, :cond_5

    if-eqz p3, :cond_5

    const-string v1, "isHQChecked"

    .line 783
    invoke-virtual {p3, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 784
    iget-object v4, p0, Lcom/narvii/media/PhoneImagePickerFragment;->checkBoxHQ:Landroid/widget/CheckBox;

    if-eqz v4, :cond_5

    .line 785
    invoke-virtual {v4, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_5
    const/16 v1, 0x63

    if-ne p1, v1, :cond_7

    if-ne p2, v2, :cond_7

    const-string p1, "entryInfo"

    .line 790
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/media/PhoneImagePickerFragment$Entry;

    const-string p2, "outputVideoPath"

    .line 791
    invoke-virtual {p3, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/narvii/media/PhoneImagePickerFragment$Entry;->mediaPath:Ljava/lang/String;

    .line 792
    iget p2, p1, Lcom/narvii/media/PhoneImagePickerFragment$Entry;->height:I

    const-string v0, "outputVideoHeight"

    invoke-virtual {p3, v0, p2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    iput p2, p1, Lcom/narvii/media/PhoneImagePickerFragment$Entry;->height:I

    .line 793
    iget p2, p1, Lcom/narvii/media/PhoneImagePickerFragment$Entry;->width:I

    const-string v0, "outputVideoWidth"

    invoke-virtual {p3, v0, p2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    iput p2, p1, Lcom/narvii/media/PhoneImagePickerFragment$Entry;->width:I

    const-string p2, "outputVideoDuration"

    .line 794
    invoke-virtual {p3, p2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    if-nez p2, :cond_6

    .line 795
    iget p2, p1, Lcom/narvii/media/PhoneImagePickerFragment$Entry;->duration:I

    :cond_6
    iput p2, p1, Lcom/narvii/media/PhoneImagePickerFragment$Entry;->duration:I

    .line 796
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/narvii/media/PhoneImagePickerFragment;->selections:Ljava/util/ArrayList;

    .line 797
    iget-object p2, p0, Lcom/narvii/media/PhoneImagePickerFragment;->selections:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 798
    invoke-direct {p0}, Lcom/narvii/media/PhoneImagePickerFragment;->pick()V

    return-void

    .line 801
    :cond_7
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/app/NVFragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 172
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "type"

    const/4 v1, 0x1

    .line 173
    invoke-virtual {p0, v0, v1}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/narvii/media/PhoneImagePickerFragment;->mediaType:I

    const/4 v0, 0x0

    const-string v1, "videoSelectMode"

    .line 174
    invoke-virtual {p0, v1, v0}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/narvii/media/PhoneImagePickerFragment;->videoSelectMode:I

    const-string v1, "minVideoDuration"

    .line 175
    invoke-virtual {p0, v1, v0}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/narvii/media/PhoneImagePickerFragment;->minVideoDuration:I

    const-string v1, "membershipForVideo"

    .line 176
    invoke-virtual {p0, v1, v0}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/narvii/media/PhoneImagePickerFragment;->membershipForVideo:Z

    .line 178
    new-instance v1, Lcom/narvii/media/PhoneImagePickerFragment$LoadTask;

    invoke-direct {v1, p0}, Lcom/narvii/media/PhoneImagePickerFragment$LoadTask;-><init>(Lcom/narvii/media/PhoneImagePickerFragment;)V

    iput-object v1, p0, Lcom/narvii/media/PhoneImagePickerFragment;->loadTask:Lcom/narvii/media/PhoneImagePickerFragment$LoadTask;

    .line 179
    iget-object v1, p0, Lcom/narvii/media/PhoneImagePickerFragment;->loadTask:Lcom/narvii/media/PhoneImagePickerFragment$LoadTask;

    sget-object v2, Lcom/narvii/media/PhoneImagePickerFragment;->loadExecutor:Ljava/util/concurrent/ExecutorService;

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v1, v2, v0}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 180
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 181
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/narvii/media/PhoneImagePickerFragment;->width:I

    const-string v0, "showHQBar"

    .line 183
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/narvii/media/PhoneImagePickerFragment;->showHQImage:Z

    const-string v0, "noFileCopy"

    .line 184
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/narvii/media/PhoneImagePickerFragment;->noFileCopy:Z

    const-string v0, "images"

    if-nez p1, :cond_0

    .line 187
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 188
    const-class v0, Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/media/PhoneImagePickerFragment;->selectionStrList:Ljava/util/ArrayList;

    goto :goto_0

    .line 190
    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 191
    const-class v0, Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/media/PhoneImagePickerFragment;->selectionStrList:Ljava/util/ArrayList;

    .line 193
    :goto_0
    new-instance p1, Lcom/narvii/modulization/CommunityConfigHelper;

    invoke-direct {p1, p0}, Lcom/narvii/modulization/CommunityConfigHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/media/PhoneImagePickerFragment;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    .line 194
    iget-object p1, p0, Lcom/narvii/media/PhoneImagePickerFragment;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.narvii.action.MEMBERSHIP_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/narvii/app/NVFragment;->registerLocalReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 215
    sget p3, Lcom/narvii/lib/R$layout;->media_image_picker:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 205
    iget-object v0, p0, Lcom/narvii/media/PhoneImagePickerFragment;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->unregisterLocalReceiver(Landroid/content/BroadcastReceiver;)V

    .line 206
    iget-object v0, p0, Lcom/narvii/media/PhoneImagePickerFragment;->loadTask:Lcom/narvii/media/PhoneImagePickerFragment$LoadTask;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 207
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 209
    :cond_0
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onDestroy()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 319
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 320
    iget-object v0, p0, Lcom/narvii/media/PhoneImagePickerFragment;->selections:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/narvii/media/PhoneImagePickerFragment;->convertSelectedEntriesToStrings(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->safeWriteAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "images"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 220
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 221
    invoke-direct {p0}, Lcom/narvii/media/PhoneImagePickerFragment;->updateViews()V

    return-void
.end method
