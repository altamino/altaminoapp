.class public Lcom/narvii/media/MediaPickerFragment;
.super Lcom/narvii/app/NVFragment;
.source "MediaPickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;,
        Lcom/narvii/media/MediaPickerFragment$LatestImage;,
        Lcom/narvii/media/MediaPickerFragment$Option;,
        Lcom/narvii/media/MediaPickerFragment$OnCustomOptionSelectedListener;,
        Lcom/narvii/media/MediaPickerFragment$OnStartPickListener;,
        Lcom/narvii/media/MediaPickerFragment$OnPickColorResultListener;,
        Lcom/narvii/media/MediaPickerFragment$OnResultListener;
    }
.end annotation


# static fields
.field public static final FLAG_AUDIO:I = 0x4000

.field public static final FLAG_AUDIO_ONLY:I = 0x4202

.field public static final FLAG_AUDIO_ONLY_LOCAL:I = 0x8000

.field public static final FLAG_COLOR:I = 0x80

.field public static final FLAG_DELETE:I = 0x40

.field public static final FLAG_NO_CAMERA:I = 0x8

.field public static final FLAG_NO_GIF:I = 0x10

.field public static final FLAG_NO_GIPHY:I = 0x20

.field public static final FLAG_NO_PHOTO:I = 0x200

.field public static final FLAG_NO_VIDEO:I = 0x2

.field public static final FLAG_PHOTO_ONLY:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FLAG_SINGLE_PHOTO:I = 0x4

.field public static final FLAG_VIDEO_MULTI_NO_EDITOR:I = 0x40000

.field public static final FLAG_VIDEO_NO_EDITOR:I = 0x20000

.field public static final FLAG_VIDEO_ONLY:I = 0x200
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PICK_FROM:Ljava/lang/String; = "pickFrom"

.field public static final PICK_MIN_VIDEO_DURATION:Ljava/lang/String; = "minVideoDuration"

.field public static final PICK_ONLINE_AUDIO_TARGET_TAB:Ljava/lang/String; = "targetOnlineAudioTabName"

.field public static final PICK_SOURCE:Ljava/lang/String; = "pickSource"

.field public static final PICK_YOUTUBE_NEED_DURATION:Ljava/lang/String; = "needDuration"

.field static final REQUEST_AUDIO:I = 0xfd08

.field static final REQUEST_AUDIO_ONLINE:I = 0xfd09

.field static final REQUEST_CAMERA:I = 0xfd01

.field static final REQUEST_COLOR:I = 0xfd06

.field static final REQUEST_GIPHY:I = 0xfd04

.field static final REQUEST_PICKER:I = 0xfd02

.field static final REQUEST_PICKER2:I = 0xfd03

.field static final REQUEST_YOUTUBE:I = 0xfd05

.field public static final START_PICK_AUDIO:I = 0x7

.field public static final START_PICK_CAMERA:I = 0x1

.field public static final START_PICK_COLOR:I = 0x6

.field public static final START_PICK_DELETE:I = -0x1

.field public static final START_PICK_GALLERY:I = 0x2

.field public static final START_PICK_GIPHY:I = 0x3

.field public static final START_PICK_YOUTUBE:I = 0x4


# instance fields
.field private configHelper:Lcom/narvii/modulization/CommunityConfigHelper;

.field public deleteStringId:I

.field private dir:Ljava/io/File;

.field protected info:Landroid/os/Bundle;

.field protected isRequestingActivityResult:Z

.field public listenerEventDispatcher:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/media/MediaPickerFragment$OnResultListener;",
            ">;"
        }
    .end annotation
.end field

.field public maxStr:Ljava/lang/String;

.field private maximum:I

.field private mediaPickerConfiguration:Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;

.field private minGifHeight:I

.field private minGifWidth:I

.field private minHeight:I

.field private minWidth:I

.field public oldColor:I

.field protected onCustomOptionSelectedListener:Lcom/narvii/media/MediaPickerFragment$OnCustomOptionSelectedListener;

.field public pickCallback:Ljava/lang/String;

.field public pickCallbackParams:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public pickColorResultListener:Lcom/narvii/media/MediaPickerFragment$OnPickColorResultListener;

.field public pickColorStringId:I

.field protected requestActivityResultCallback:Lcom/narvii/util/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public startPickListener:Lcom/narvii/media/MediaPickerFragment$OnStartPickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 66
    invoke-direct {p0}, Lcom/narvii/app/NVFragment;-><init>()V

    .line 174
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/media/MediaPickerFragment;->listenerEventDispatcher:Ljava/util/List;

    return-void
.end method

.method static synthetic access$100(Lcom/narvii/media/MediaPickerFragment;)Ljava/io/File;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/narvii/media/MediaPickerFragment;->dir:Ljava/io/File;

    return-object p0
.end method

.method static synthetic access$200(Lcom/narvii/media/MediaPickerFragment;)Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/narvii/media/MediaPickerFragment;->mediaPickerConfiguration:Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;

    return-object p0
.end method

.method static synthetic access$300(Lcom/narvii/media/MediaPickerFragment;Ljava/util/List;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1}, Lcom/narvii/media/MediaPickerFragment;->onPhotoResult(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$400(Lcom/narvii/media/MediaPickerFragment;Lcom/narvii/media/MediaPickerFragment$LatestImage;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1}, Lcom/narvii/media/MediaPickerFragment;->omitLatestImage(Lcom/narvii/media/MediaPickerFragment$LatestImage;)V

    return-void
.end method

.method static synthetic access$700(Lcom/narvii/media/MediaPickerFragment;)I
    .locals 0

    .line 66
    iget p0, p0, Lcom/narvii/media/MediaPickerFragment;->maximum:I

    return p0
.end method

.method static synthetic access$800(Lcom/narvii/media/MediaPickerFragment;Ljava/util/List;Z)V
    .locals 0

    .line 66
    invoke-direct {p0, p1, p2}, Lcom/narvii/media/MediaPickerFragment;->onPhotoResult(Ljava/util/List;Z)V

    return-void
.end method

.method private getLatestImage()Lcom/narvii/media/MediaPickerFragment$LatestImage;
    .locals 12

    const/4 v0, 0x0

    .line 990
    :try_start_0
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "android.permission.READ_EXTERNAL_STORAGE"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Lcom/narvii/permisson/PermissionUtils;->hasSelfPermission(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    new-array v8, v1, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v8, v5

    const-string v1, "_data"

    aput-object v1, v8, v2

    const-string v1, "date_added"

    const/4 v3, 0x2

    aput-object v1, v8, v3

    .line 994
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 995
    sget-object v7, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v11, "date_added"

    move-object v6, v1

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 997
    invoke-interface {v4}, Landroid/database/Cursor;->moveToLast()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 998
    new-instance v6, Lcom/narvii/media/MediaPickerFragment$LatestImage;

    invoke-direct {v6, p0}, Lcom/narvii/media/MediaPickerFragment$LatestImage;-><init>(Lcom/narvii/media/MediaPickerFragment;)V

    .line 999
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    iput-wide v7, v6, Lcom/narvii/media/MediaPickerFragment$LatestImage;->imageId:J

    .line 1000
    invoke-interface {v4, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v6, Lcom/narvii/media/MediaPickerFragment$LatestImage;->path:Ljava/lang/String;

    .line 1001
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    int-to-long v7, v3

    const-wide/16 v9, 0x3e8

    mul-long v7, v7, v9

    iput-wide v7, v6, Lcom/narvii/media/MediaPickerFragment$LatestImage;->dateAdded:J

    const-string v3, "prefs"

    .line 1003
    invoke-virtual {p0, v3}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/SharedPreferences;

    .line 1004
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget-wide v9, v6, Lcom/narvii/media/MediaPickerFragment$LatestImage;->dateAdded:J

    sub-long/2addr v7, v9

    const-wide/32 v9, 0x493e0

    cmp-long v5, v7, v9

    if-gez v5, :cond_0

    const-string v5, "omitLatestImageId"

    const-wide/16 v7, 0x0

    .line 1005
    invoke-interface {v3, v5, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    iget-wide v9, v6, Lcom/narvii/media/MediaPickerFragment$LatestImage;->imageId:J

    cmp-long v3, v7, v9

    if-eqz v3, :cond_0

    .line 1006
    iget-wide v7, v6, Lcom/narvii/media/MediaPickerFragment$LatestImage;->imageId:J

    invoke-static {v1, v7, v8, v2, v0}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v6, Lcom/narvii/media/MediaPickerFragment$LatestImage;->bitmap:Landroid/graphics/Bitmap;

    .line 1008
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    return-object v6

    .line 1012
    :cond_0
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "out of memory, when try to read phone images"

    .line 1017
    invoke-static {v2, v1}, Lcom/narvii/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v2, "fail to read phone images"

    .line 1015
    invoke-static {v2, v1}, Lcom/narvii/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-object v0
.end method

.method private getPasteYoutubeUrl()Ljava/lang/String;
    .locals 3

    .line 511
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    const/4 v1, 0x0

    .line 514
    :try_start_0
    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v0, v1

    .line 517
    :goto_0
    invoke-static {v0}, Lcom/narvii/util/YoutubeUtils;->getYoutubeVideoIdFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    return-object v0

    :cond_0
    return-object v1
.end method

.method private hasAuthorityForVideo()Z
    .locals 3

    .line 726
    sget v0, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    const/4 v1, 0x1

    const/16 v2, 0xc9

    if-ne v0, v2, :cond_0

    return v1

    .line 729
    :cond_0
    iget-object v2, p0, Lcom/narvii/media/MediaPickerFragment;->configHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    if-nez v2, :cond_3

    const/16 v2, 0xc8

    if-ne v0, v2, :cond_1

    .line 731
    new-instance v0, Lcom/narvii/modulization/CommunityConfigHelper;

    const-string v2, "__communityId"

    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, p0, v2}, Lcom/narvii/modulization/CommunityConfigHelper;-><init>(Lcom/narvii/app/NVContext;I)V

    iput-object v0, p0, Lcom/narvii/media/MediaPickerFragment;->configHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    goto :goto_0

    :cond_1
    const/16 v2, 0x64

    if-eq v0, v2, :cond_2

    const/16 v2, 0x65

    if-ne v0, v2, :cond_3

    .line 733
    :cond_2
    new-instance v0, Lcom/narvii/modulization/CommunityConfigHelper;

    invoke-direct {v0, p0}, Lcom/narvii/modulization/CommunityConfigHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/media/MediaPickerFragment;->configHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    .line 736
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/narvii/media/MediaPickerFragment;->configHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    if-nez v0, :cond_4

    return v1

    .line 740
    :cond_4
    iget-object v2, p0, Lcom/narvii/media/MediaPickerFragment;->mediaPickerConfiguration:Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;

    iget v2, v2, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->galleryVideoMode:I

    and-int/2addr v2, v1

    if-eqz v2, :cond_6

    invoke-virtual {v0}, Lcom/narvii/modulization/CommunityConfigHelper;->isVideoUploadEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    :cond_6
    :goto_1
    return v1
.end method

.method private omitLatestImage(Lcom/narvii/media/MediaPickerFragment$LatestImage;)V
    .locals 3

    if-eqz p1, :cond_0

    const-string v0, "prefs"

    .line 1024
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    .line 1025
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-wide v1, p1, Lcom/narvii/media/MediaPickerFragment$LatestImage;->imageId:J

    const-string p1, "omitLatestImageId"

    invoke-interface {v0, p1, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method private onPhotoResult(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/Media;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 948
    invoke-direct {p0, p1, v0}, Lcom/narvii/media/MediaPickerFragment;->onPhotoResult(Ljava/util/List;Z)V

    return-void
.end method

.method private onPhotoResult(Ljava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/Media;",
            ">;Z)V"
        }
    .end annotation

    .line 952
    iget-object v0, p0, Lcom/narvii/media/MediaPickerFragment;->pickCallback:Ljava/lang/String;

    if-eqz v0, :cond_4

    const-string p2, "mediaPickCallback"

    .line 953
    invoke-virtual {p0, p2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/media/MediaPickCallbackManager;

    const/4 v0, 0x0

    if-nez p2, :cond_0

    move-object p2, v0

    goto :goto_0

    .line 954
    :cond_0
    iget-object v1, p0, Lcom/narvii/media/MediaPickerFragment;->pickCallback:Ljava/lang/String;

    invoke-virtual {p2, v1}, Lcom/narvii/media/MediaPickCallbackManager;->getCallback(Ljava/lang/String;)Lcom/narvii/media/MediaPickCallback;

    move-result-object p2

    :goto_0
    if-nez p2, :cond_1

    return-void

    .line 958
    :cond_1
    iget-object v1, p0, Lcom/narvii/media/MediaPickerFragment;->pickCallbackParams:Ljava/util/HashMap;

    if-nez v1, :cond_2

    .line 959
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/narvii/media/MediaPickerFragment;->pickCallbackParams:Ljava/util/HashMap;

    .line 961
    :cond_2
    iget-object v1, p0, Lcom/narvii/media/MediaPickerFragment;->pickCallbackParams:Ljava/util/HashMap;

    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "mediaList"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 962
    iget-object p1, p0, Lcom/narvii/media/MediaPickerFragment;->pickCallbackParams:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/narvii/media/MediaPickerFragment;->info:Landroid/os/Bundle;

    const-string v2, "pickSource"

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {p1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 963
    iget-object p1, p0, Lcom/narvii/media/MediaPickerFragment;->pickCallbackParams:Ljava/util/HashMap;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/narvii/app/NVActivity;

    const/4 v1, 0x0

    invoke-interface {p2, p1, v0, v1}, Lcom/narvii/media/MediaPickCallback;->onPick(Ljava/util/HashMap;Lcom/narvii/app/NVActivity;Z)V

    return-void

    :cond_4
    if-eqz p2, :cond_6

    .line 967
    iget-object v0, p0, Lcom/narvii/media/MediaPickerFragment;->info:Landroid/os/Bundle;

    if-nez v0, :cond_5

    .line 968
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/narvii/media/MediaPickerFragment;->info:Landroid/os/Bundle;

    .line 970
    :cond_5
    iget-object v0, p0, Lcom/narvii/media/MediaPickerFragment;->info:Landroid/os/Bundle;

    const-string v1, "isUHQ"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 972
    :cond_6
    iget-object p2, p0, Lcom/narvii/media/MediaPickerFragment;->listenerEventDispatcher:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/media/MediaPickerFragment$OnResultListener;

    .line 973
    iget-object v1, p0, Lcom/narvii/media/MediaPickerFragment;->info:Landroid/os/Bundle;

    invoke-interface {v0, p1, v1}, Lcom/narvii/media/MediaPickerFragment$OnResultListener;->onPickMediaResult(Ljava/util/List;Landroid/os/Bundle;)V

    goto :goto_2

    :cond_7
    return-void
.end method

.method private openGiphyPicker()V
    .locals 3

    .line 745
    new-instance v0, Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ndc://fragment/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, Lcom/narvii/media/GiphyPickerFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 746
    iget-object v1, p0, Lcom/narvii/media/MediaPickerFragment;->mediaPickerConfiguration:Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;

    iget-boolean v1, v1, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->isSingle:Z

    const-string v2, "single"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 748
    iget v1, p0, Lcom/narvii/media/MediaPickerFragment;->maximum:I

    if-eqz v1, :cond_0

    const-string v2, "maximum"

    .line 749
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 751
    :cond_0
    iget v1, p0, Lcom/narvii/media/MediaPickerFragment;->minGifWidth:I

    const-string v2, "minWidth"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 752
    iget v1, p0, Lcom/narvii/media/MediaPickerFragment;->minGifHeight:I

    const-string v2, "minHeight"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 753
    iget-object v1, p0, Lcom/narvii/media/MediaPickerFragment;->pickCallback:Ljava/lang/String;

    const-string v2, "pickCallback"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 754
    iget-object v1, p0, Lcom/narvii/media/MediaPickerFragment;->pickCallbackParams:Ljava/util/HashMap;

    const-string v2, "pickCallbackParams"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 755
    iget-object v1, p0, Lcom/narvii/media/MediaPickerFragment;->dir:Ljava/io/File;

    const-string v2, "dir"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 756
    iget-object v1, p0, Lcom/narvii/media/MediaPickerFragment;->maxStr:Ljava/lang/String;

    const-string v2, "maxStr"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 757
    iget-object v1, p0, Lcom/narvii/media/MediaPickerFragment;->mediaPickerConfiguration:Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;

    iget-boolean v1, v1, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->isGiphySticker:Z

    const-string v2, "chooseSticker"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const v1, 0xfd04

    .line 758
    invoke-virtual {p0, v0, v1}, Lcom/narvii/media/MediaPickerFragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private openPhoneImage()V
    .locals 7

    .line 658
    new-instance v0, Lcom/narvii/media/MediaPickerFragment$3;

    invoke-direct {v0, p0}, Lcom/narvii/media/MediaPickerFragment$3;-><init>(Lcom/narvii/media/MediaPickerFragment;)V

    .line 664
    new-instance v0, Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ndc://fragment/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, Lcom/narvii/media/PhoneImagePickerFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 665
    iget-object v1, p0, Lcom/narvii/media/MediaPickerFragment;->mediaPickerConfiguration:Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;

    iget-boolean v1, v1, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->isSingle:Z

    const-string v2, "single"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 666
    iget v1, p0, Lcom/narvii/media/MediaPickerFragment;->maximum:I

    if-eqz v1, :cond_0

    const-string v2, "maximum"

    .line 667
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 669
    :cond_0
    iget-object v1, p0, Lcom/narvii/media/MediaPickerFragment;->mediaPickerConfiguration:Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;

    invoke-static {v1}, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->access$500(Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    const-string v1, "noGif"

    .line 670
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 672
    :cond_1
    iget-object v1, p0, Lcom/narvii/media/MediaPickerFragment;->mediaPickerConfiguration:Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;

    iget-boolean v1, v1, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->isGalleryNoCopy:Z

    if-eqz v1, :cond_2

    const-string v1, "noFileCopy"

    .line 673
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 675
    :cond_2
    iget v1, p0, Lcom/narvii/media/MediaPickerFragment;->minWidth:I

    const-string v3, "minWidth"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 676
    iget v1, p0, Lcom/narvii/media/MediaPickerFragment;->minHeight:I

    const-string v3, "minHeight"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 677
    iget v1, p0, Lcom/narvii/media/MediaPickerFragment;->minGifWidth:I

    const-string v3, "minGifWidth"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 678
    iget v1, p0, Lcom/narvii/media/MediaPickerFragment;->minGifHeight:I

    const-string v3, "minGifHeight"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 679
    iget-object v1, p0, Lcom/narvii/media/MediaPickerFragment;->maxStr:Ljava/lang/String;

    const-string v3, "maxStr"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 680
    iget-object v1, p0, Lcom/narvii/media/MediaPickerFragment;->pickCallback:Ljava/lang/String;

    const-string v3, "pickCallback"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "showHQBar"

    .line 681
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "membershipForVideo"

    .line 682
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 683
    iget-object v1, p0, Lcom/narvii/media/MediaPickerFragment;->pickCallbackParams:Ljava/util/HashMap;

    const-string v3, "pickCallbackParams"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 686
    iget-object v1, p0, Lcom/narvii/media/MediaPickerFragment;->mediaPickerConfiguration:Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;

    invoke-static {v1}, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->access$600(Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;)Z

    move-result v1

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/narvii/media/MediaPickerFragment;->hasAuthorityForVideo()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x2

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    .line 689
    :goto_0
    iget-object v5, p0, Lcom/narvii/media/MediaPickerFragment;->mediaPickerConfiguration:Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;

    invoke-static {v5}, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->access$000(Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;)Z

    move-result v5

    if-eqz v5, :cond_4

    or-int/lit8 v1, v1, 0x1

    .line 694
    :cond_4
    iget-object v5, p0, Lcom/narvii/media/MediaPickerFragment;->mediaPickerConfiguration:Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;

    iget v5, v5, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->galleryVideoMode:I

    and-int/lit8 v6, v5, 0x2

    if-eqz v6, :cond_6

    and-int/lit8 v2, v5, 0x4

    if-eqz v2, :cond_5

    const/4 v2, 0x3

    goto :goto_1

    :cond_5
    const/4 v2, 0x2

    goto :goto_1

    :cond_6
    and-int/lit8 v3, v5, 0x1

    if-nez v3, :cond_7

    goto :goto_1

    :cond_7
    const/4 v2, 0x0

    :goto_1
    const-string v3, "videoSelectMode"

    .line 705
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 708
    iget-object v3, p0, Lcom/narvii/media/MediaPickerFragment;->info:Landroid/os/Bundle;

    if-nez v3, :cond_8

    .line 709
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    iput-object v3, p0, Lcom/narvii/media/MediaPickerFragment;->info:Landroid/os/Bundle;

    .line 712
    :cond_8
    iget-object v3, p0, Lcom/narvii/media/MediaPickerFragment;->info:Landroid/os/Bundle;

    const-string v5, "minVideoDuration"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-gtz v3, :cond_9

    if-nez v2, :cond_9

    const/16 v3, 0xbb8

    .line 716
    :cond_9
    invoke-virtual {v0, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "type"

    .line 718
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 719
    iget-object v1, p0, Lcom/narvii/media/MediaPickerFragment;->dir:Ljava/io/File;

    const-string v2, "dir"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 720
    iget-object v1, p0, Lcom/narvii/media/MediaPickerFragment;->info:Landroid/os/Bundle;

    const-string v2, "checkUnsupportedImageType"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const v1, 0xfd03

    .line 722
    invoke-virtual {p0, v0, v1}, Lcom/narvii/media/MediaPickerFragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private showYoutubeDialogue()V
    .locals 4

    .line 762
    new-instance v0, Lcom/narvii/util/dialog/AlertDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 763
    sget v1, Lcom/narvii/lib/R$string;->media_image_youtube:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setTitle(I)V

    .line 764
    invoke-virtual {v0}, Lcom/narvii/util/dialog/AlertDialog;->setVerticalButtons()V

    .line 765
    sget v1, Lcom/narvii/lib/R$string;->media_image_search_youtube:I

    new-instance v2, Lcom/narvii/media/MediaPickerFragment$4;

    invoke-direct {v2, p0}, Lcom/narvii/media/MediaPickerFragment$4;-><init>(Lcom/narvii/media/MediaPickerFragment;)V

    const/16 v3, 0x400

    invoke-virtual {v0, v1, v3, v2}, Lcom/narvii/util/dialog/AlertDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 778
    sget v1, Lcom/narvii/lib/R$string;->media_image_input_youtube_urls:I

    new-instance v2, Lcom/narvii/media/MediaPickerFragment$5;

    invoke-direct {v2, p0}, Lcom/narvii/media/MediaPickerFragment$5;-><init>(Lcom/narvii/media/MediaPickerFragment;)V

    invoke-virtual {v0, v1, v3, v2}, Lcom/narvii/util/dialog/AlertDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 862
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    return-void
.end method


# virtual methods
.method public addOnResultListener(Lcom/narvii/media/MediaPickerFragment$OnResultListener;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 207
    iget-object v0, p0, Lcom/narvii/media/MediaPickerFragment;->listenerEventDispatcher:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/narvii/media/MediaPickerFragment;->listenerEventDispatcher:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method protected buildOptions(Ljava/util/ArrayList;Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/media/MediaPickerFragment$Option;",
            ">;",
            "Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;",
            ")V"
        }
    .end annotation

    .line 373
    iget v0, p2, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->optionList:I

    const-string v1, "photo"

    .line 384
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/photos/PhotoManager;

    and-int/lit8 v2, v0, 0x1

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 387
    new-instance v2, Lcom/narvii/media/MediaPickerFragment$Option;

    iget v4, p0, Lcom/narvii/media/MediaPickerFragment;->pickColorStringId:I

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    sget v4, Lcom/narvii/lib/R$string;->color_picker:I

    :goto_0
    invoke-virtual {p0, v4}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4, v3}, Lcom/narvii/media/MediaPickerFragment$Option;-><init>(ILjava/lang/String;I)V

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    and-int/lit8 v2, v0, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    .line 390
    invoke-virtual {v1}, Lcom/narvii/photos/PhotoManager;->hasCamera()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 391
    new-instance v1, Lcom/narvii/media/MediaPickerFragment$Option;

    sget v2, Lcom/narvii/lib/R$string;->media_image_camera:I

    invoke-virtual {p0, v2}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v4, v2, v3}, Lcom/narvii/media/MediaPickerFragment$Option;-><init>(ILjava/lang/String;I)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_4

    .line 395
    new-instance v1, Lcom/narvii/media/MediaPickerFragment$Option;

    iget-object v2, p0, Lcom/narvii/media/MediaPickerFragment;->mediaPickerConfiguration:Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;

    iget-boolean v2, v2, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->isGiphySticker:Z

    if-eqz v2, :cond_3

    sget v2, Lcom/narvii/lib/R$string;->media_image_sticker:I

    goto :goto_1

    :cond_3
    sget v2, Lcom/narvii/lib/R$string;->media_image_giphy:I

    :goto_1
    invoke-virtual {p0, v2}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x4

    invoke-direct {v1, v5, v2, v3}, Lcom/narvii/media/MediaPickerFragment$Option;-><init>(ILjava/lang/String;I)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    and-int/lit8 v1, v0, 0x8

    if-nez v1, :cond_5

    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_7

    .line 399
    :cond_5
    new-instance v1, Lcom/narvii/media/MediaPickerFragment$Option;

    iget-object v2, p0, Lcom/narvii/media/MediaPickerFragment;->mediaPickerConfiguration:Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;

    invoke-static {v2}, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->access$000(Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;)Z

    move-result v2

    if-eqz v2, :cond_6

    sget v2, Lcom/narvii/lib/R$string;->media_image_picker:I

    goto :goto_2

    :cond_6
    sget v2, Lcom/narvii/lib/R$string;->media_video_picker_1:I

    :goto_2
    invoke-virtual {p0, v2}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x2

    invoke-direct {v1, v5, v2, v3}, Lcom/narvii/media/MediaPickerFragment$Option;-><init>(ILjava/lang/String;I)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_a

    .line 403
    iget-object v1, p0, Lcom/narvii/media/MediaPickerFragment;->mediaPickerConfiguration:Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;

    iget-boolean v1, v1, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->isGoogleVideoSearch:Z

    if-eqz v1, :cond_8

    sget v1, Lcom/narvii/lib/R$string;->media_image_video_online:I

    goto :goto_3

    :cond_8
    sget v1, Lcom/narvii/lib/R$string;->media_image_youtube:I

    :goto_3
    invoke-virtual {p0, v1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 404
    iget-object v2, p0, Lcom/narvii/media/MediaPickerFragment;->mediaPickerConfiguration:Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;

    iget-boolean v2, v2, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->isYoutubeWithDialog:Z

    if-eqz v2, :cond_9

    .line 405
    new-instance v2, Lcom/narvii/media/MediaPickerFragment$Option;

    const/16 v5, 0x9

    invoke-direct {v2, v5, v1, v3}, Lcom/narvii/media/MediaPickerFragment$Option;-><init>(ILjava/lang/String;I)V

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 407
    :cond_9
    new-instance v2, Lcom/narvii/media/MediaPickerFragment$Option;

    const/4 v5, 0x7

    invoke-direct {v2, v5, v1, v3}, Lcom/narvii/media/MediaPickerFragment$Option;-><init>(ILjava/lang/String;I)V

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 408
    invoke-direct {p0}, Lcom/narvii/media/MediaPickerFragment;->getPasteYoutubeUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 410
    new-instance v2, Lcom/narvii/media/MediaPickerFragment$Option;

    const/16 v5, 0x8

    invoke-direct {v2, v5, v1, v3}, Lcom/narvii/media/MediaPickerFragment$Option;-><init>(ILjava/lang/String;I)V

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    :goto_4
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_b

    .line 416
    new-instance v1, Lcom/narvii/media/MediaPickerFragment$Option;

    const/16 v2, 0xb

    sget v5, Lcom/narvii/lib/R$string;->media_music_picker:I

    invoke-virtual {p0, v5}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v2, v5, v3}, Lcom/narvii/media/MediaPickerFragment$Option;-><init>(ILjava/lang/String;I)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_c

    .line 420
    new-instance v1, Lcom/narvii/media/MediaPickerFragment$Option;

    const/16 v2, 0xa

    sget v5, Lcom/narvii/lib/R$string;->media_music_picker:I

    invoke-virtual {p0, v5}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v2, v5, v3}, Lcom/narvii/media/MediaPickerFragment$Option;-><init>(ILjava/lang/String;I)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c
    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_e

    .line 424
    new-instance v0, Lcom/narvii/media/MediaPickerFragment$Option;

    const/16 v1, 0x13

    iget v2, p0, Lcom/narvii/media/MediaPickerFragment;->deleteStringId:I

    if-nez v2, :cond_d

    sget v2, Lcom/narvii/lib/R$string;->delete:I

    :cond_d
    invoke-virtual {p0, v2}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, v4}, Lcom/narvii/media/MediaPickerFragment$Option;-><init>(ILjava/lang/String;I)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 428
    :cond_e
    iget-object p2, p2, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->customOptions:Ljava/util/List;

    if-eqz p2, :cond_11

    .line 429
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_f
    :goto_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/media/MediaPickerFragment$Option;

    if-eqz v0, :cond_f

    .line 431
    iput-boolean v4, v0, Lcom/narvii/media/MediaPickerFragment$Option;->isCustom:Z

    .line 433
    iget v1, v0, Lcom/narvii/media/MediaPickerFragment$Option;->position:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_10

    .line 434
    invoke-virtual {p1, v1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_5

    .line 436
    :cond_10
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_11
    return-void
.end method

.method disableView(Landroid/widget/TextView;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 867
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/narvii/lib/R$drawable;->button_round_gray:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x0

    .line 868
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setClickable(Z)V

    return-void
.end method

.method enableView(Landroid/widget/TextView;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 873
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/narvii/lib/R$drawable;->button_round_green:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x1

    .line 874
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setClickable(Z)V

    return-void
.end method

.method public isModel()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isRequestingActivityResult()Z
    .locals 1

    .line 221
    iget-boolean v0, p0, Lcom/narvii/media/MediaPickerFragment;->isRequestingActivityResult:Z

    return v0
.end method

.method public isValidPage()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 7

    .line 880
    const-class v0, Lcom/narvii/model/Media;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/narvii/media/MediaPickerFragment;->isRequestingActivityResult:Z

    .line 881
    iget-object v2, p0, Lcom/narvii/media/MediaPickerFragment;->requestActivityResultCallback:Lcom/narvii/util/Callback;

    if-eqz v2, :cond_0

    .line 882
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    :cond_0
    const-string v2, "photo"

    .line 884
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/photos/PhotoManager;

    const v3, 0xfd01

    const/16 v4, 0x64

    if-ne p1, v3, :cond_1

    .line 886
    iget-object v3, p0, Lcom/narvii/media/MediaPickerFragment;->dir:Ljava/io/File;

    invoke-virtual {v2, v3, p2, p3}, Lcom/narvii/photos/PhotoManager;->importFromCameraResult(Ljava/io/File;ILandroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 888
    new-instance v5, Lcom/narvii/model/Media;

    invoke-direct {v5}, Lcom/narvii/model/Media;-><init>()V

    .line 889
    iput v4, v5, Lcom/narvii/model/Media;->type:I

    .line 890
    iput-object v3, v5, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 891
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 892
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 893
    invoke-direct {p0, v3}, Lcom/narvii/media/MediaPickerFragment;->onPhotoResult(Ljava/util/List;)V

    :cond_1
    const v3, 0xfd02

    if-ne p1, v3, :cond_3

    .line 897
    iget-object v3, p0, Lcom/narvii/media/MediaPickerFragment;->dir:Ljava/io/File;

    invoke-virtual {v2, v3, p2, p3}, Lcom/narvii/photos/PhotoManager;->importAllFromResult(Ljava/io/File;ILandroid/content/Intent;)Ljava/util/List;

    move-result-object v2

    .line 899
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 900
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 901
    new-instance v6, Lcom/narvii/model/Media;

    invoke-direct {v6}, Lcom/narvii/model/Media;-><init>()V

    .line 902
    iput v4, v6, Lcom/narvii/model/Media;->type:I

    .line 903
    iput-object v5, v6, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 904
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 906
    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 907
    invoke-direct {p0, v3}, Lcom/narvii/media/MediaPickerFragment;->onPhotoResult(Ljava/util/List;)V

    :cond_3
    const v2, 0xfd03

    const-string v3, "mediaList"

    const/4 v4, -0x1

    if-eq p1, v2, :cond_4

    const v2, 0xfd04

    if-eq p1, v2, :cond_4

    const v2, 0xfd05

    if-ne p1, v2, :cond_5

    :cond_4
    if-ne p2, v4, :cond_5

    if-eqz p3, :cond_5

    .line 912
    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v2

    const-string v5, "isUHQ"

    .line 913
    invoke-virtual {p3, v5, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 914
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_5

    .line 915
    invoke-direct {p0, v2, v5}, Lcom/narvii/media/MediaPickerFragment;->onPhotoResult(Ljava/util/List;Z)V

    :cond_5
    if-ne p2, v4, :cond_9

    const v2, 0xfd08

    if-eq p1, v2, :cond_6

    const v2, 0xfd09

    if-ne p1, v2, :cond_9

    .line 921
    :cond_6
    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 922
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_9

    .line 924
    iget-object v2, p0, Lcom/narvii/media/MediaPickerFragment;->info:Landroid/os/Bundle;

    if-nez v2, :cond_7

    .line 925
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iput-object v2, p0, Lcom/narvii/media/MediaPickerFragment;->info:Landroid/os/Bundle;

    .line 928
    :cond_7
    invoke-virtual {p3, v3}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 929
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 930
    iget-object v2, p0, Lcom/narvii/media/MediaPickerFragment;->info:Landroid/os/Bundle;

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 932
    :cond_8
    iget-object v2, p0, Lcom/narvii/media/MediaPickerFragment;->listenerEventDispatcher:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/media/MediaPickerFragment$OnResultListener;

    .line 933
    iget-object v5, p0, Lcom/narvii/media/MediaPickerFragment;->info:Landroid/os/Bundle;

    invoke-interface {v3, v0, v5}, Lcom/narvii/media/MediaPickerFragment$OnResultListener;->onPickMediaResult(Ljava/util/List;Landroid/os/Bundle;)V

    goto :goto_1

    :cond_9
    const v0, 0xfd06

    if-ne p1, v0, :cond_a

    if-ne p2, v4, :cond_a

    if-eqz p3, :cond_a

    const-string v0, "color"

    .line 939
    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 940
    iget-object v1, p0, Lcom/narvii/media/MediaPickerFragment;->pickColorResultListener:Lcom/narvii/media/MediaPickerFragment$OnPickColorResultListener;

    if-eqz v1, :cond_a

    .line 941
    iget-object v2, p0, Lcom/narvii/media/MediaPickerFragment;->info:Landroid/os/Bundle;

    invoke-interface {v1, v0, v2}, Lcom/narvii/media/MediaPickerFragment$OnPickColorResultListener;->onPickColorResult(ILandroid/os/Bundle;)V

    .line 944
    :cond_a
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/app/NVFragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 191
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_1

    const-string v0, "dir"

    .line 194
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 195
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/narvii/media/MediaPickerFragment;->dir:Ljava/io/File;

    const-string v0, "pickInfo"

    .line 196
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/media/MediaPickerFragment;->info:Landroid/os/Bundle;

    const-string v0, "configs"

    .line 197
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;

    iput-object v0, p0, Lcom/narvii/media/MediaPickerFragment;->mediaPickerConfiguration:Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;

    const-string v0, "maximum"

    .line 198
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/narvii/media/MediaPickerFragment;->maximum:I

    const-string v0, "minWidth"

    .line 199
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/narvii/media/MediaPickerFragment;->minWidth:I

    const-string v0, "minHeight"

    .line 200
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/narvii/media/MediaPickerFragment;->minHeight:I

    const-string v0, "pickCallback"

    .line 201
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/media/MediaPickerFragment;->pickCallback:Ljava/lang/String;

    const-string v0, "pickCallbackParams"

    .line 202
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    iput-object p1, p0, Lcom/narvii/media/MediaPickerFragment;->pickCallbackParams:Ljava/util/HashMap;

    :cond_1
    return-void
.end method

.method protected onOptionsClicked(Lcom/narvii/media/MediaPickerFragment$Option;)V
    .locals 6

    .line 446
    iget v0, p1, Lcom/narvii/media/MediaPickerFragment$Option;->id:I

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_4

    if-eq v0, v4, :cond_3

    if-eq v0, v3, :cond_2

    if-eq v0, v2, :cond_2

    if-eq v0, v1, :cond_1

    const/4 v3, 0x5

    if-eq v0, v3, :cond_1

    const/16 v2, 0x13

    if-eq v0, v2, :cond_0

    packed-switch v0, :pswitch_data_0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_0
    const/4 v1, 0x7

    goto :goto_0

    :pswitch_1
    const-string v5, "Youtube"

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    const-string v5, "delete"

    goto :goto_0

    :cond_1
    const-string v5, "Giphy"

    const/4 v1, 0x3

    goto :goto_0

    :cond_2
    const-string v5, "Photo Library"

    const/4 v1, 0x2

    goto :goto_0

    :cond_3
    const-string v5, "Camera"

    const/4 v1, 0x1

    goto :goto_0

    :cond_4
    const/4 v1, 0x6

    const-string v5, "Color"

    .line 481
    :goto_0
    iget-object v0, p0, Lcom/narvii/media/MediaPickerFragment;->info:Landroid/os/Bundle;

    if-nez v0, :cond_5

    .line 482
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/narvii/media/MediaPickerFragment;->info:Landroid/os/Bundle;

    .line 485
    :cond_5
    iget-object v0, p0, Lcom/narvii/media/MediaPickerFragment;->info:Landroid/os/Bundle;

    const-string v2, "pickFrom"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz v5, :cond_6

    .line 488
    iget-object v0, p0, Lcom/narvii/media/MediaPickerFragment;->info:Landroid/os/Bundle;

    const-string v2, "pickSource"

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    :cond_6
    invoke-virtual {p0, p1}, Lcom/narvii/media/MediaPickerFragment;->pickMediaOption(Lcom/narvii/media/MediaPickerFragment$Option;)V

    .line 492
    iget-object p1, p0, Lcom/narvii/media/MediaPickerFragment;->startPickListener:Lcom/narvii/media/MediaPickerFragment$OnStartPickListener;

    if-eqz p1, :cond_7

    .line 493
    invoke-interface {p1, v1}, Lcom/narvii/media/MediaPickerFragment$OnStartPickListener;->onStartPickMedia(I)V

    :cond_7
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onPermissionGranted(I)V
    .locals 4

    const/16 v0, 0x68

    if-ne p1, v0, :cond_0

    :try_start_0
    const-string p1, "photo"

    .line 643
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/photos/PhotoManager;

    .line 644
    invoke-virtual {p1}, Lcom/narvii/photos/PhotoManager;->createCameraIntent()Landroid/content/Intent;

    move-result-object p1

    const v0, 0xfd01

    invoke-virtual {p0, p1, v0}, Lcom/narvii/media/MediaPickerFragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x12d

    if-ne p1, v0, :cond_1

    .line 648
    invoke-direct {p0}, Lcom/narvii/media/MediaPickerFragment;->openPhoneImage()V

    goto :goto_0

    :cond_1
    const/16 v0, 0x12f

    if-ne p1, v0, :cond_2

    .line 650
    new-instance p1, Landroid/content/Intent;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ndc://fragment/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/narvii/media/PhoneAudioPickerFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {p1, v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 651
    iget-object v0, p0, Lcom/narvii/media/MediaPickerFragment;->mediaPickerConfiguration:Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;

    iget-boolean v0, v0, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->isSingle:Z

    iget v1, p0, Lcom/narvii/media/MediaPickerFragment;->maximum:I

    iget-object v2, p0, Lcom/narvii/media/MediaPickerFragment;->maxStr:Ljava/lang/String;

    iget-object v3, p0, Lcom/narvii/media/MediaPickerFragment;->dir:Ljava/io/File;

    invoke-static {v0, v1, v2, v3}, Lcom/narvii/media/PhoneAudioPickerFragment;->getBundle(ZILjava/lang/String;Ljava/io/File;)Landroid/os/Bundle;

    move-result-object v0

    .line 652
    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const v0, 0xfd08

    .line 653
    invoke-virtual {p0, p1, v0}, Lcom/narvii/media/MediaPickerFragment;->startActivityForResult(Landroid/content/Intent;I)V

    :catch_0
    :cond_2
    :goto_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 226
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 227
    iget-object v0, p0, Lcom/narvii/media/MediaPickerFragment;->dir:Ljava/io/File;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v1, "dir"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    iget-object v0, p0, Lcom/narvii/media/MediaPickerFragment;->info:Landroid/os/Bundle;

    const-string v1, "pickInfo"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 229
    iget-object v0, p0, Lcom/narvii/media/MediaPickerFragment;->mediaPickerConfiguration:Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;

    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "configs"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    iget v0, p0, Lcom/narvii/media/MediaPickerFragment;->maximum:I

    const-string v1, "maximum"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 231
    iget v0, p0, Lcom/narvii/media/MediaPickerFragment;->minWidth:I

    const-string v1, "minWidth"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 232
    iget v0, p0, Lcom/narvii/media/MediaPickerFragment;->minHeight:I

    const-string v1, "minHeight"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 233
    iget v0, p0, Lcom/narvii/media/MediaPickerFragment;->minGifWidth:I

    const-string v1, "minGifWidth"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 234
    iget v0, p0, Lcom/narvii/media/MediaPickerFragment;->minGifHeight:I

    const-string v1, "minGifHeight"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 235
    iget-object v0, p0, Lcom/narvii/media/MediaPickerFragment;->pickCallback:Ljava/lang/String;

    const-string v1, "pickCallback"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    iget-object v0, p0, Lcom/narvii/media/MediaPickerFragment;->pickCallbackParams:Ljava/util/HashMap;

    const-string v1, "pickCallbackParams"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    return-void
.end method

.method public pickMedia(Ljava/io/File;Landroid/os/Bundle;I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 241
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/narvii/media/MediaPickerFragment;->pickMedia(Ljava/io/File;Landroid/os/Bundle;II)V

    return-void
.end method

.method public pickMedia(Ljava/io/File;Landroid/os/Bundle;II)V
    .locals 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 251
    invoke-virtual/range {v0 .. v9}, Lcom/narvii/media/MediaPickerFragment;->pickMedia(Ljava/io/File;Landroid/os/Bundle;IIIIIILjava/util/List;)V

    return-void
.end method

.method public pickMedia(Ljava/io/File;Landroid/os/Bundle;IIIIII)V
    .locals 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    .line 261
    invoke-virtual/range {v0 .. v9}, Lcom/narvii/media/MediaPickerFragment;->pickMedia(Ljava/io/File;Landroid/os/Bundle;IIIIIILjava/util/List;)V

    return-void
.end method

.method public pickMedia(Ljava/io/File;Landroid/os/Bundle;IIIIIILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Landroid/os/Bundle;",
            "IIIIII",
            "Ljava/util/List<",
            "Lcom/narvii/media/MediaPickerFragment$Option;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 266
    new-instance v0, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;

    invoke-direct {v0}, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;-><init>()V

    .line 267
    iput-object p1, p0, Lcom/narvii/media/MediaPickerFragment;->dir:Ljava/io/File;

    .line 268
    iput-object p2, p0, Lcom/narvii/media/MediaPickerFragment;->info:Landroid/os/Bundle;

    .line 269
    iput p4, v0, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->maximum:I

    .line 270
    iput p5, v0, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->minWidth:I

    .line 271
    iput p6, v0, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->minHeight:I

    .line 272
    iput p7, v0, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->minGifWidth:I

    .line 273
    iput p8, v0, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->minGifHeight:I

    .line 274
    iput-object p9, v0, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->customOptions:Ljava/util/List;

    .line 275
    invoke-virtual {v0, p3}, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->setOptionListByFlag(I)V

    .line 277
    invoke-virtual {p0, p1, p2, v0}, Lcom/narvii/media/MediaPickerFragment;->pickMedia(Ljava/io/File;Landroid/os/Bundle;Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;)V

    return-void
.end method

.method public pickMedia(Ljava/io/File;Landroid/os/Bundle;IILjava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Landroid/os/Bundle;",
            "II",
            "Ljava/util/List<",
            "Lcom/narvii/media/MediaPickerFragment$Option;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v9, p5

    .line 256
    invoke-virtual/range {v0 .. v9}, Lcom/narvii/media/MediaPickerFragment;->pickMedia(Ljava/io/File;Landroid/os/Bundle;IIIIIILjava/util/List;)V

    return-void
.end method

.method public pickMedia(Ljava/io/File;Landroid/os/Bundle;ILjava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Landroid/os/Bundle;",
            "I",
            "Ljava/util/List<",
            "Lcom/narvii/media/MediaPickerFragment$Option;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    .line 246
    invoke-virtual/range {v0 .. v5}, Lcom/narvii/media/MediaPickerFragment;->pickMedia(Ljava/io/File;Landroid/os/Bundle;IILjava/util/List;)V

    return-void
.end method

.method public pickMedia(Ljava/io/File;Landroid/os/Bundle;Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;)V
    .locals 3

    .line 281
    iput-object p1, p0, Lcom/narvii/media/MediaPickerFragment;->dir:Ljava/io/File;

    .line 282
    iput-object p2, p0, Lcom/narvii/media/MediaPickerFragment;->info:Landroid/os/Bundle;

    .line 283
    iput-object p3, p0, Lcom/narvii/media/MediaPickerFragment;->mediaPickerConfiguration:Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;

    .line 284
    iget p1, p3, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->maximum:I

    iput p1, p0, Lcom/narvii/media/MediaPickerFragment;->maximum:I

    .line 285
    iget p1, p3, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->minWidth:I

    iput p1, p0, Lcom/narvii/media/MediaPickerFragment;->minWidth:I

    .line 286
    iget p1, p3, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->minHeight:I

    iput p1, p0, Lcom/narvii/media/MediaPickerFragment;->minHeight:I

    .line 287
    iget p1, p3, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->minGifWidth:I

    iput p1, p0, Lcom/narvii/media/MediaPickerFragment;->minGifWidth:I

    .line 288
    iget p1, p3, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->minGifHeight:I

    iput p1, p0, Lcom/narvii/media/MediaPickerFragment;->minGifHeight:I

    .line 290
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 291
    invoke-virtual {p0, p1, p3}, Lcom/narvii/media/MediaPickerFragment;->buildOptions(Ljava/util/ArrayList;Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;)V

    .line 292
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 p3, 0x1

    if-ne p2, p3, :cond_0

    const/4 p2, 0x0

    .line 293
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/media/MediaPickerFragment$Option;

    invoke-virtual {p0, p1}, Lcom/narvii/media/MediaPickerFragment;->onOptionsClicked(Lcom/narvii/media/MediaPickerFragment$Option;)V

    goto :goto_1

    .line 295
    :cond_0
    new-instance p2, Lcom/narvii/util/dialog/ActionSheetDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/narvii/util/dialog/ActionSheetDialog;-><init>(Landroid/content/Context;)V

    .line 298
    invoke-direct {p0}, Lcom/narvii/media/MediaPickerFragment;->getLatestImage()Lcom/narvii/media/MediaPickerFragment$LatestImage;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 299
    iget-object v0, p0, Lcom/narvii/media/MediaPickerFragment;->mediaPickerConfiguration:Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;

    invoke-static {v0}, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->access$000(Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/narvii/media/MediaPickerFragment;->mediaPickerConfiguration:Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;

    iget v0, v0, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->galleryPhotoMode:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 300
    sget v0, Lcom/narvii/lib/R$layout;->media_pick_latest:I

    invoke-virtual {p2, v0}, Lcom/narvii/util/dialog/ActionSheetDialog;->setCustomView(I)Landroid/view/View;

    .line 301
    sget v0, Lcom/narvii/lib/R$id;->image:I

    invoke-virtual {p2, v0}, Lcom/narvii/util/dialog/ActionSheetDialog;->findCustomViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p3, Lcom/narvii/media/MediaPickerFragment$LatestImage;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 302
    sget v0, Lcom/narvii/lib/R$id;->media_pick_latest:I

    invoke-virtual {p2, v0}, Lcom/narvii/util/dialog/ActionSheetDialog;->findCustomViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/narvii/media/MediaPickerFragment$1;

    invoke-direct {v1, p0, p3, p2}, Lcom/narvii/media/MediaPickerFragment$1;-><init>(Lcom/narvii/media/MediaPickerFragment;Lcom/narvii/media/MediaPickerFragment$LatestImage;Lcom/narvii/util/dialog/ActionSheetDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 335
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/media/MediaPickerFragment$Option;

    .line 336
    iget-object v2, v1, Lcom/narvii/media/MediaPickerFragment$Option;->name:Ljava/lang/String;

    iget v1, v1, Lcom/narvii/media/MediaPickerFragment$Option;->flag:I

    invoke-virtual {p2, v2, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(Ljava/lang/String;I)V

    goto :goto_0

    .line 339
    :cond_2
    new-instance v0, Lcom/narvii/media/MediaPickerFragment$2;

    invoke-direct {v0, p0, p1, p3}, Lcom/narvii/media/MediaPickerFragment$2;-><init>(Lcom/narvii/media/MediaPickerFragment;Ljava/util/ArrayList;Lcom/narvii/media/MediaPickerFragment$LatestImage;)V

    invoke-virtual {p2, v0}, Lcom/narvii/util/dialog/ActionSheetDialog;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 346
    invoke-virtual {p2}, Lcom/narvii/util/dialog/ActionSheetDialog;->show()V

    :goto_1
    return-void
.end method

.method protected pickMediaOption(Lcom/narvii/media/MediaPickerFragment$Option;)V
    .locals 9

    .line 525
    iget-boolean v0, p1, Lcom/narvii/media/MediaPickerFragment$Option;->isCustom:Z

    if-eqz v0, :cond_1

    .line 526
    iget-object v0, p0, Lcom/narvii/media/MediaPickerFragment;->onCustomOptionSelectedListener:Lcom/narvii/media/MediaPickerFragment$OnCustomOptionSelectedListener;

    if-eqz v0, :cond_0

    .line 527
    iget-object v1, p0, Lcom/narvii/media/MediaPickerFragment;->info:Landroid/os/Bundle;

    invoke-interface {v0, p1, v1}, Lcom/narvii/media/MediaPickerFragment$OnCustomOptionSelectedListener;->onCustomOptionSelected(Lcom/narvii/media/MediaPickerFragment$Option;Landroid/os/Bundle;)V

    :cond_0
    return-void

    :cond_1
    const-string v0, "photo"

    .line 536
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/photos/PhotoManager;

    .line 537
    iget p1, p1, Lcom/narvii/media/MediaPickerFragment$Option;->id:I

    const-string v1, "ndc://fragment/"

    const-string v2, "android.intent.action.VIEW"

    const/4 v3, 0x1

    if-eqz p1, :cond_a

    if-eq p1, v3, :cond_8

    const/4 v0, 0x2

    const-string v4, "android.permission.READ_EXTERNAL_STORAGE"

    if-eq p1, v0, :cond_7

    const/4 v0, 0x3

    if-eq p1, v0, :cond_7

    const/4 v0, 0x4

    if-eq p1, v0, :cond_6

    const/4 v0, 0x5

    if-eq p1, v0, :cond_6

    const/16 v0, 0x13

    if-eq p1, v0, :cond_5

    const v0, 0xfd05

    const-string v5, "pickCallbackParams"

    const-string v6, "pickCallback"

    const-string v7, "needDuration"

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 615
    :pswitch_0
    new-instance p1, Landroid/content/Intent;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 616
    iget-object v0, p0, Lcom/narvii/media/MediaPickerFragment;->mediaPickerConfiguration:Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;

    iget-boolean v0, v0, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->isSingle:Z

    iget v1, p0, Lcom/narvii/media/MediaPickerFragment;->maximum:I

    iget-object v2, p0, Lcom/narvii/media/MediaPickerFragment;->maxStr:Ljava/lang/String;

    iget-object v4, p0, Lcom/narvii/media/MediaPickerFragment;->dir:Ljava/io/File;

    invoke-static {v0, v1, v2, v4}, Lcom/narvii/media/PhoneAudioPickerFragment;->getBundle(ZILjava/lang/String;Ljava/io/File;)Landroid/os/Bundle;

    move-result-object v0

    .line 617
    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 618
    iget-object v0, p0, Lcom/narvii/media/MediaPickerFragment;->info:Landroid/os/Bundle;

    if-eqz v0, :cond_2

    const-string v1, "targetOnlineAudioTabName"

    .line 619
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    const v0, 0xfd09

    .line 621
    invoke-virtual {p0, p1, v0}, Lcom/narvii/media/MediaPickerFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 608
    :pswitch_1
    invoke-static {p0}, Lcom/narvii/permisson/NVPermission;->builder(Landroid/support/v4/app/Fragment;)Lcom/narvii/permisson/NVPermission$Builder;

    move-result-object p1

    .line 609
    invoke-virtual {p1, v4}, Lcom/narvii/permisson/NVPermission$Builder;->permission(Ljava/lang/String;)Lcom/narvii/permisson/NVPermission$Builder;

    move-result-object p1

    const/16 v0, 0x12f

    .line 610
    invoke-virtual {p1, v0}, Lcom/narvii/permisson/NVPermission$Builder;->requestCode(I)Lcom/narvii/permisson/NVPermission$Builder;

    move-result-object p1

    .line 611
    invoke-virtual {p1, p0}, Lcom/narvii/permisson/NVPermission$Builder;->permissionListener(Lcom/narvii/permisson/PermissionListener;)Lcom/narvii/permisson/NVPermission$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/permisson/NVPermission$Builder;->request()V

    goto/16 :goto_0

    .line 604
    :pswitch_2
    invoke-direct {p0}, Lcom/narvii/media/MediaPickerFragment;->showYoutubeDialogue()V

    goto/16 :goto_0

    .line 589
    :pswitch_3
    invoke-direct {p0}, Lcom/narvii/media/MediaPickerFragment;->getPasteYoutubeUrl()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 591
    new-instance v4, Landroid/content/Intent;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/narvii/media/YoutubeVideoPicker;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v4, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "url"

    .line 592
    invoke-virtual {v4, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "confirmUrl"

    .line 593
    invoke-virtual {v4, p1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 594
    iget-object p1, p0, Lcom/narvii/media/MediaPickerFragment;->pickCallback:Ljava/lang/String;

    invoke-virtual {v4, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 595
    iget-object p1, p0, Lcom/narvii/media/MediaPickerFragment;->pickCallbackParams:Ljava/util/HashMap;

    invoke-virtual {v4, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 596
    iget-object p1, p0, Lcom/narvii/media/MediaPickerFragment;->info:Landroid/os/Bundle;

    if-eqz p1, :cond_3

    .line 597
    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {v4, v7, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 599
    :cond_3
    invoke-virtual {p0, v4, v0}, Lcom/narvii/media/MediaPickerFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 577
    :pswitch_4
    new-instance p1, Landroid/content/Intent;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/narvii/media/YoutubeVideoPicker;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p1, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 578
    iget-object v1, p0, Lcom/narvii/media/MediaPickerFragment;->pickCallback:Ljava/lang/String;

    invoke-virtual {p1, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 579
    iget-object v1, p0, Lcom/narvii/media/MediaPickerFragment;->pickCallbackParams:Ljava/util/HashMap;

    invoke-virtual {p1, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 580
    iget-object v1, p0, Lcom/narvii/media/MediaPickerFragment;->mediaPickerConfiguration:Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;

    iget-boolean v1, v1, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->isGoogleVideoSearch:Z

    const-string v2, "googleVideoSearch"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 581
    iget-object v1, p0, Lcom/narvii/media/MediaPickerFragment;->info:Landroid/os/Bundle;

    if-eqz v1, :cond_4

    .line 582
    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {p1, v7, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 584
    :cond_4
    invoke-virtual {p0, p1, v0}, Lcom/narvii/media/MediaPickerFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 628
    :cond_5
    :pswitch_5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1}, Lcom/narvii/media/MediaPickerFragment;->onPhotoResult(Ljava/util/List;)V

    goto/16 :goto_0

    .line 573
    :cond_6
    invoke-direct {p0}, Lcom/narvii/media/MediaPickerFragment;->openGiphyPicker()V

    goto/16 :goto_0

    .line 563
    :cond_7
    invoke-static {p0}, Lcom/narvii/permisson/NVPermission;->builder(Landroid/support/v4/app/Fragment;)Lcom/narvii/permisson/NVPermission$Builder;

    move-result-object p1

    .line 564
    invoke-virtual {p1, v4}, Lcom/narvii/permisson/NVPermission$Builder;->permission(Ljava/lang/String;)Lcom/narvii/permisson/NVPermission$Builder;

    move-result-object p1

    const/16 v0, 0x12d

    .line 565
    invoke-virtual {p1, v0}, Lcom/narvii/permisson/NVPermission$Builder;->requestCode(I)Lcom/narvii/permisson/NVPermission$Builder;

    move-result-object p1

    .line 566
    invoke-virtual {p1, p0}, Lcom/narvii/permisson/NVPermission$Builder;->permissionListener(Lcom/narvii/permisson/PermissionListener;)Lcom/narvii/permisson/NVPermission$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/permisson/NVPermission$Builder;->request()V

    goto :goto_0

    .line 547
    :cond_8
    sget p1, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    const/16 v1, 0xc8

    if-ne p1, v1, :cond_9

    .line 549
    :try_start_0
    invoke-virtual {v0}, Lcom/narvii/photos/PhotoManager;->createCameraIntent()Landroid/content/Intent;

    move-result-object p1

    const v0, 0xfd01

    invoke-virtual {p0, p1, v0}, Lcom/narvii/media/MediaPickerFragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    goto :goto_0

    :cond_9
    new-array p1, v3, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "android.permission.CAMERA"

    aput-object v1, p1, v0

    .line 554
    invoke-static {p0}, Lcom/narvii/permisson/NVPermission;->builder(Landroid/support/v4/app/Fragment;)Lcom/narvii/permisson/NVPermission$Builder;

    move-result-object v0

    .line 555
    invoke-virtual {v0, p1}, Lcom/narvii/permisson/NVPermission$Builder;->permissions([Ljava/lang/String;)Lcom/narvii/permisson/NVPermission$Builder;

    move-result-object p1

    const/16 v0, 0x68

    .line 556
    invoke-virtual {p1, v0}, Lcom/narvii/permisson/NVPermission$Builder;->requestCode(I)Lcom/narvii/permisson/NVPermission$Builder;

    move-result-object p1

    .line 557
    invoke-virtual {p1, p0}, Lcom/narvii/permisson/NVPermission$Builder;->permissionListener(Lcom/narvii/permisson/PermissionListener;)Lcom/narvii/permisson/NVPermission$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/permisson/NVPermission$Builder;->request()V

    goto :goto_0

    .line 540
    :cond_a
    new-instance p1, Landroid/content/Intent;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/narvii/media/color/BackgroundColorFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 541
    iget v0, p0, Lcom/narvii/media/MediaPickerFragment;->oldColor:I

    if-eqz v0, :cond_b

    const-string v1, "color"

    .line 542
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_b
    const v0, 0xfd06

    .line 544
    invoke-virtual {p0, p1, v0}, Lcom/narvii/media/MediaPickerFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 632
    :cond_c
    :goto_0
    iput-boolean v3, p0, Lcom/narvii/media/MediaPickerFragment;->isRequestingActivityResult:Z

    .line 633
    iget-object p1, p0, Lcom/narvii/media/MediaPickerFragment;->requestActivityResultCallback:Lcom/narvii/util/Callback;

    if-eqz p1, :cond_d

    .line 634
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    :cond_d
    return-void

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public removeOnResultListener(Lcom/narvii/media/MediaPickerFragment$OnResultListener;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/narvii/media/MediaPickerFragment;->listenerEventDispatcher:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setOnCustomOptionSelectedListener(Lcom/narvii/media/MediaPickerFragment$OnCustomOptionSelectedListener;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/narvii/media/MediaPickerFragment;->onCustomOptionSelectedListener:Lcom/narvii/media/MediaPickerFragment$OnCustomOptionSelectedListener;

    return-void
.end method

.method public setRequestActivityResultCallback(Lcom/narvii/util/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 177
    iput-object p1, p0, Lcom/narvii/media/MediaPickerFragment;->requestActivityResultCallback:Lcom/narvii/util/Callback;

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 3

    .line 499
    iget-object v0, p0, Lcom/narvii/media/MediaPickerFragment;->listenerEventDispatcher:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 500
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/media/MediaPickerFragment$OnResultListener;

    .line 501
    instance-of v2, v1, Lcom/narvii/app/NVContext;

    if-eqz v2, :cond_0

    .line 502
    check-cast v1, Lcom/narvii/app/NVContext;

    invoke-static {v1}, Lcom/narvii/logging/LogUtils;->changeNextPageRefererIfNull(Lcom/narvii/app/NVContext;)V

    goto :goto_0

    .line 507
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
