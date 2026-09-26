.class public Lcom/narvii/media/MediaPickerFragment;
.super Lcom/narvii/app/NVFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;,
        Lcom/narvii/media/MediaPickerFragment$OnCustomOptionSelectedListener;,
        Lcom/narvii/media/MediaPickerFragment$Option;,
        Lcom/narvii/media/MediaPickerFragment$LatestImage;,
        Lcom/narvii/media/MediaPickerFragment$OnStartPickListener;,
        Lcom/narvii/media/MediaPickerFragment$OnResultListener;,
        Lcom/narvii/media/MediaPickerFragment$OnPickColorResultListener;
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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/app/NVFragment;-><init>()V

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/media/MediaPickerFragment;->listenerEventDispatcher:Ljava/util/List;

    .line 11
    return-void
.end method

.method private getLatestImage()Lcom/narvii/media/MediaPickerFragment$LatestImage;
    .locals 12

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 5
    move-result-object v1

    .line 6
    const/4 v2, 0x1

    .line 7
    .line 8
    new-array v3, v2, [Ljava/lang/String;

    .line 9
    .line 10
    const-string v4, "android.permission.READ_EXTERNAL_STORAGE"

    .line 11
    const/4 v5, 0x0

    .line 12
    .line 13
    aput-object v4, v3, v5

    .line 14
    .line 15
    .line 16
    invoke-static {v1, v3}, Lcom/narvii/permisson/PermissionUtils;->hasSelfPermission(Landroid/content/Context;[Ljava/lang/String;)Z

    .line 17
    move-result v1

    .line 18
    .line 19
    if-eqz v1, :cond_1

    .line 20
    const/4 v1, 0x3

    .line 21
    .line 22
    new-array v8, v1, [Ljava/lang/String;

    .line 23
    .line 24
    const-string v1, "_id"

    .line 25
    .line 26
    aput-object v1, v8, v5

    .line 27
    .line 28
    const-string v1, "_data"

    .line 29
    .line 30
    aput-object v1, v8, v2

    .line 31
    .line 32
    const-string v1, "date_added"

    .line 33
    const/4 v3, 0x2

    .line 34
    .line 35
    aput-object v1, v8, v3

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 39
    move-result-object v1

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 43
    move-result-object v1

    .line 44
    .line 45
    sget-object v7, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 46
    const/4 v9, 0x0

    .line 47
    const/4 v10, 0x0

    .line 48
    .line 49
    const-string v11, "date_added"

    .line 50
    move-object v6, v1

    .line 51
    .line 52
    .line 53
    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 54
    move-result-object v4

    .line 55
    .line 56
    if-eqz v4, :cond_0

    .line 57
    .line 58
    .line 59
    invoke-interface {v4}, Landroid/database/Cursor;->moveToLast()Z

    .line 60
    move-result v6

    .line 61
    .line 62
    if-eqz v6, :cond_0

    .line 63
    .line 64
    new-instance v6, Lcom/narvii/media/MediaPickerFragment$LatestImage;

    .line 65
    .line 66
    .line 67
    invoke-direct {v6, p0}, Lcom/narvii/media/MediaPickerFragment$LatestImage;-><init>(Lcom/narvii/media/MediaPickerFragment;)V

    .line 68
    .line 69
    .line 70
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getLong(I)J

    .line 71
    move-result-wide v7

    .line 72
    .line 73
    iput-wide v7, v6, Lcom/narvii/media/MediaPickerFragment$LatestImage;->imageId:J

    .line 74
    .line 75
    .line 76
    invoke-interface {v4, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 77
    move-result-object v5

    .line 78
    .line 79
    iput-object v5, v6, Lcom/narvii/media/MediaPickerFragment$LatestImage;->path:Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getInt(I)I

    .line 83
    move-result v3

    .line 84
    int-to-long v7, v3

    .line 85
    .line 86
    const-wide/16 v9, 0x3e8

    .line 87
    mul-long/2addr v7, v9

    .line 88
    .line 89
    iput-wide v7, v6, Lcom/narvii/media/MediaPickerFragment$LatestImage;->dateAdded:J

    .line 90
    .line 91
    const-string v3, "prefs"

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0, v3}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 95
    move-result-object v3

    .line 96
    .line 97
    check-cast v3, Landroid/content/SharedPreferences;

    .line 98
    .line 99
    .line 100
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 101
    move-result-wide v7

    .line 102
    .line 103
    iget-wide v9, v6, Lcom/narvii/media/MediaPickerFragment$LatestImage;->dateAdded:J

    .line 104
    sub-long/2addr v7, v9

    .line 105
    .line 106
    .line 107
    const-wide/32 v9, 0x493e0

    .line 108
    .line 109
    cmp-long v5, v7, v9

    .line 110
    .line 111
    if-gez v5, :cond_0

    .line 112
    .line 113
    const-string v5, "omitLatestImageId"

    .line 114
    .line 115
    const-wide/16 v7, 0x0

    .line 116
    .line 117
    .line 118
    invoke-interface {v3, v5, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 119
    move-result-wide v7

    .line 120
    .line 121
    iget-wide v9, v6, Lcom/narvii/media/MediaPickerFragment$LatestImage;->imageId:J

    .line 122
    .line 123
    cmp-long v3, v7, v9

    .line 124
    .line 125
    if-eqz v3, :cond_0

    .line 126
    .line 127
    .line 128
    invoke-static {v1, v9, v10, v2, v0}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 129
    move-result-object v1

    .line 130
    .line 131
    iput-object v1, v6, Lcom/narvii/media/MediaPickerFragment$LatestImage;->bitmap:Landroid/graphics/Bitmap;

    .line 132
    .line 133
    .line 134
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 135
    return-object v6

    .line 136
    :catch_0
    move-exception v1

    .line 137
    goto :goto_0

    .line 138
    :catch_1
    move-exception v1

    .line 139
    goto :goto_1

    .line 140
    .line 141
    .line 142
    :cond_0
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    goto :goto_2

    .line 144
    .line 145
    :goto_0
    const-string v2, "out of memory, when try to read phone images"

    .line 146
    .line 147
    .line 148
    invoke-static {v2, v1}, Lcom/narvii/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 149
    goto :goto_2

    .line 150
    .line 151
    :goto_1
    const-string v2, "fail to read phone images"

    .line 152
    .line 153
    .line 154
    invoke-static {v2, v1}, Lcom/narvii/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 155
    :cond_1
    :goto_2
    return-object v0
.end method

.method private getPasteYoutubeUrl()Ljava/lang/String;
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    const-string v1, "clipboard"

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    check-cast v0, Landroid/content/ClipboardManager;

    .line 13
    const/4 v1, 0x0

    .line 14
    .line 15
    .line 16
    :try_start_0
    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getText()Ljava/lang/CharSequence;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 21
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    goto :goto_0

    .line 23
    :catch_0
    move-object v0, v1

    .line 24
    .line 25
    .line 26
    :goto_0
    invoke-static {v0}, Lcom/narvii/util/YoutubeUtils;->getYoutubeVideoIdFromUrl(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    move-result-object v2

    .line 28
    .line 29
    if-eqz v2, :cond_0

    .line 30
    return-object v0

    .line 31
    :cond_0
    return-object v1
.end method

.method private hasAuthorityForVideo()Z
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/media/MediaPickerFragment;->configHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    .line 3
    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    sget v0, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    .line 7
    .line 8
    const/16 v1, 0xc8

    .line 9
    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    new-instance v0, Lcom/narvii/modulization/CommunityConfigHelper;

    .line 13
    .line 14
    const-string v1, "__communityId"

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    .line 18
    move-result v1

    .line 19
    .line 20
    .line 21
    invoke-direct {v0, p0, v1}, Lcom/narvii/modulization/CommunityConfigHelper;-><init>(Lcom/narvii/app/NVContext;I)V

    .line 22
    .line 23
    iput-object v0, p0, Lcom/narvii/media/MediaPickerFragment;->configHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    .line 24
    goto :goto_0

    .line 25
    .line 26
    :cond_0
    const/16 v1, 0x64

    .line 27
    .line 28
    if-ne v0, v1, :cond_1

    .line 29
    .line 30
    new-instance v0, Lcom/narvii/modulization/CommunityConfigHelper;

    .line 31
    .line 32
    .line 33
    invoke-direct {v0, p0}, Lcom/narvii/modulization/CommunityConfigHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 34
    .line 35
    iput-object v0, p0, Lcom/narvii/media/MediaPickerFragment;->configHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    .line 36
    .line 37
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/narvii/media/MediaPickerFragment;->configHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    .line 38
    const/4 v1, 0x1

    .line 39
    .line 40
    if-nez v0, :cond_2

    .line 41
    return v1

    .line 42
    .line 43
    :cond_2
    iget-object v2, p0, Lcom/narvii/media/MediaPickerFragment;->mediaPickerConfiguration:Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;

    .line 44
    .line 45
    iget v2, v2, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->galleryVideoMode:I

    .line 46
    and-int/2addr v2, v1

    .line 47
    .line 48
    if-eqz v2, :cond_4

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/narvii/modulization/CommunityConfigHelper;->isVideoUploadEnabled()Z

    .line 52
    move-result v0

    .line 53
    .line 54
    if-eqz v0, :cond_3

    .line 55
    goto :goto_1

    .line 56
    :cond_3
    const/4 v1, 0x0

    .line 57
    :cond_4
    :goto_1
    return v1
.end method

.method static bridge synthetic n(Lcom/narvii/media/MediaPickerFragment;)Ljava/io/File;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/media/MediaPickerFragment;->dir:Ljava/io/File;

    return-object p0
.end method

.method static bridge synthetic o(Lcom/narvii/media/MediaPickerFragment;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/narvii/media/MediaPickerFragment;->maximum:I

    return p0
.end method

.method private omitLatestImage(Lcom/narvii/media/MediaPickerFragment$LatestImage;)V
    .locals 4

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    const-string v0, "prefs"

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    check-cast v0, Landroid/content/SharedPreferences;

    .line 11
    .line 12
    .line 13
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    const-string v1, "omitLatestImageId"

    .line 17
    .line 18
    iget-wide v2, p1, Lcom/narvii/media/MediaPickerFragment$LatestImage;->imageId:J

    .line 19
    .line 20
    .line 21
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    .line 25
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 26
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

    .line 1
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

    iget-object v0, p0, Lcom/narvii/media/MediaPickerFragment;->pickCallback:Ljava/lang/String;

    if-eqz v0, :cond_4

    const-string p2, "mediaPickCallback"

    .line 2
    invoke-virtual {p0, p2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/media/MediaPickCallbackManager;

    const/4 v0, 0x0

    if-nez p2, :cond_0

    move-object p2, v0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/narvii/media/MediaPickerFragment;->pickCallback:Ljava/lang/String;

    .line 3
    invoke-virtual {p2, v1}, Lcom/narvii/media/MediaPickCallbackManager;->getCallback(Ljava/lang/String;)Lcom/narvii/media/MediaPickCallback;

    move-result-object p2

    :goto_0
    if-nez p2, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/narvii/media/MediaPickerFragment;->pickCallbackParams:Ljava/util/HashMap;

    if-nez v1, :cond_2

    .line 4
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/narvii/media/MediaPickerFragment;->pickCallbackParams:Ljava/util/HashMap;

    :cond_2
    iget-object v1, p0, Lcom/narvii/media/MediaPickerFragment;->pickCallbackParams:Ljava/util/HashMap;

    const-string v2, "mediaList"

    .line 5
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/narvii/media/MediaPickerFragment;->pickCallbackParams:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/narvii/media/MediaPickerFragment;->info:Landroid/os/Bundle;

    const-string v2, "pickSource"

    if-nez v1, :cond_3

    goto :goto_1

    .line 6
    :cond_3
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {p1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/narvii/media/MediaPickerFragment;->pickCallbackParams:Ljava/util/HashMap;

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/narvii/app/NVActivity;

    const/4 v1, 0x0

    invoke-interface {p2, p1, v0, v1}, Lcom/narvii/media/MediaPickCallback;->onPick(Ljava/util/HashMap;Lcom/narvii/app/NVActivity;Z)V

    return-void

    :cond_4
    if-eqz p2, :cond_6

    iget-object v0, p0, Lcom/narvii/media/MediaPickerFragment;->info:Landroid/os/Bundle;

    if-nez v0, :cond_5

    .line 8
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/narvii/media/MediaPickerFragment;->info:Landroid/os/Bundle;

    :cond_5
    iget-object v0, p0, Lcom/narvii/media/MediaPickerFragment;->info:Landroid/os/Bundle;

    const-string v1, "isUHQ"

    .line 9
    invoke-virtual {v0, v1, p2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_6
    iget-object p2, p0, Lcom/narvii/media/MediaPickerFragment;->listenerEventDispatcher:Ljava/util/List;

    .line 10
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/media/MediaPickerFragment$OnResultListener;

    iget-object v1, p0, Lcom/narvii/media/MediaPickerFragment;->info:Landroid/os/Bundle;

    .line 11
    invoke-interface {v0, p1, v1}, Lcom/narvii/media/MediaPickerFragment$OnResultListener;->onPickMediaResult(Ljava/util/List;Landroid/os/Bundle;)V

    goto :goto_2

    :cond_7
    return-void
.end method

.method private openGiphyPicker()V
    .locals 3

    .line 1
    .line 2
    new-instance v0, Landroid/content/Intent;

    .line 3
    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    const-string v2, "ndc://fragment/"

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-class v2, Lcom/narvii/media/GiphyPickerFragment;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 18
    move-result-object v2

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    move-result-object v1

    .line 26
    .line 27
    .line 28
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 29
    move-result-object v1

    .line 30
    .line 31
    const-string v2, "android.intent.action.VIEW"

    .line 32
    .line 33
    .line 34
    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 35
    .line 36
    iget-object v1, p0, Lcom/narvii/media/MediaPickerFragment;->mediaPickerConfiguration:Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;

    .line 37
    .line 38
    iget-boolean v1, v1, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->isSingle:Z

    .line 39
    .line 40
    const-string v2, "single"

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 44
    .line 45
    iget v1, p0, Lcom/narvii/media/MediaPickerFragment;->maximum:I

    .line 46
    .line 47
    if-eqz v1, :cond_0

    .line 48
    .line 49
    const-string v2, "maximum"

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 53
    .line 54
    :cond_0
    const-string v1, "minWidth"

    .line 55
    .line 56
    iget v2, p0, Lcom/narvii/media/MediaPickerFragment;->minGifWidth:I

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 60
    .line 61
    const-string v1, "minHeight"

    .line 62
    .line 63
    iget v2, p0, Lcom/narvii/media/MediaPickerFragment;->minGifHeight:I

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 67
    .line 68
    const-string v1, "pickCallback"

    .line 69
    .line 70
    iget-object v2, p0, Lcom/narvii/media/MediaPickerFragment;->pickCallback:Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 74
    .line 75
    const-string v1, "pickCallbackParams"

    .line 76
    .line 77
    iget-object v2, p0, Lcom/narvii/media/MediaPickerFragment;->pickCallbackParams:Ljava/util/HashMap;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 81
    .line 82
    const-string v1, "dir"

    .line 83
    .line 84
    iget-object v2, p0, Lcom/narvii/media/MediaPickerFragment;->dir:Ljava/io/File;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 88
    .line 89
    const-string v1, "maxStr"

    .line 90
    .line 91
    iget-object v2, p0, Lcom/narvii/media/MediaPickerFragment;->maxStr:Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    .line 96
    iget-object v1, p0, Lcom/narvii/media/MediaPickerFragment;->mediaPickerConfiguration:Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;

    .line 97
    .line 98
    iget-boolean v1, v1, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->isGiphySticker:Z

    .line 99
    .line 100
    const-string v2, "chooseSticker"

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 104
    .line 105
    .line 106
    const v1, 0xfd04

    .line 107
    .line 108
    .line 109
    invoke-static {p0, v0, v1}, Lcom/narvii/media/MediaPickerFragment;->safedk_MediaPickerFragment_startActivityForResult_b7c3b91dc8a174550ffac056e1f2ca9b(Lcom/narvii/media/MediaPickerFragment;Landroid/content/Intent;I)V

    .line 110
    return-void
.end method

.method private openPhoneImage()V
    .locals 7

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/media/MediaPickerFragment$3;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcom/narvii/media/MediaPickerFragment$3;-><init>(Lcom/narvii/media/MediaPickerFragment;)V

    .line 6
    .line 7
    new-instance v0, Landroid/content/Intent;

    .line 8
    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    const-string v2, "ndc://fragment/"

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-class v2, Lcom/narvii/media/PhoneImagePickerFragment;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 23
    move-result-object v2

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    .line 33
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 34
    move-result-object v1

    .line 35
    .line 36
    const-string v2, "android.intent.action.VIEW"

    .line 37
    .line 38
    .line 39
    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 40
    .line 41
    iget-object v1, p0, Lcom/narvii/media/MediaPickerFragment;->mediaPickerConfiguration:Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;

    .line 42
    .line 43
    iget-boolean v1, v1, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->isSingle:Z

    .line 44
    .line 45
    const-string v2, "single"

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 49
    .line 50
    iget v1, p0, Lcom/narvii/media/MediaPickerFragment;->maximum:I

    .line 51
    .line 52
    if-eqz v1, :cond_0

    .line 53
    .line 54
    const-string v2, "maximum"

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 58
    .line 59
    :cond_0
    iget-object v1, p0, Lcom/narvii/media/MediaPickerFragment;->mediaPickerConfiguration:Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;

    .line 60
    .line 61
    .line 62
    invoke-static {v1}, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->c(Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;)Z

    .line 63
    move-result v1

    .line 64
    const/4 v2, 0x1

    .line 65
    .line 66
    if-eqz v1, :cond_1

    .line 67
    .line 68
    const-string v1, "noGif"

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 72
    .line 73
    :cond_1
    iget-object v1, p0, Lcom/narvii/media/MediaPickerFragment;->mediaPickerConfiguration:Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;

    .line 74
    .line 75
    iget-boolean v1, v1, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->isGalleryNoCopy:Z

    .line 76
    .line 77
    if-eqz v1, :cond_2

    .line 78
    .line 79
    const-string v1, "noFileCopy"

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 83
    .line 84
    :cond_2
    const-string v1, "minWidth"

    .line 85
    .line 86
    iget v3, p0, Lcom/narvii/media/MediaPickerFragment;->minWidth:I

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 90
    .line 91
    const-string v1, "minHeight"

    .line 92
    .line 93
    iget v3, p0, Lcom/narvii/media/MediaPickerFragment;->minHeight:I

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 97
    .line 98
    const-string v1, "minGifWidth"

    .line 99
    .line 100
    iget v3, p0, Lcom/narvii/media/MediaPickerFragment;->minGifWidth:I

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 104
    .line 105
    const-string v1, "minGifHeight"

    .line 106
    .line 107
    iget v3, p0, Lcom/narvii/media/MediaPickerFragment;->minGifHeight:I

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 111
    .line 112
    const-string v1, "maxStr"

    .line 113
    .line 114
    iget-object v3, p0, Lcom/narvii/media/MediaPickerFragment;->maxStr:Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 118
    .line 119
    const-string v1, "pickCallback"

    .line 120
    .line 121
    iget-object v3, p0, Lcom/narvii/media/MediaPickerFragment;->pickCallback:Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    .line 126
    const-string v1, "showHQBar"

    .line 127
    .line 128
    .line 129
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 130
    move-result v3

    .line 131
    .line 132
    .line 133
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 134
    .line 135
    const-string v1, "membershipForVideo"

    .line 136
    .line 137
    .line 138
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 139
    move-result v3

    .line 140
    .line 141
    .line 142
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 143
    .line 144
    const-string v1, "pickCallbackParams"

    .line 145
    .line 146
    iget-object v3, p0, Lcom/narvii/media/MediaPickerFragment;->pickCallbackParams:Ljava/util/HashMap;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 150
    .line 151
    iget-object v1, p0, Lcom/narvii/media/MediaPickerFragment;->mediaPickerConfiguration:Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;

    .line 152
    .line 153
    .line 154
    invoke-static {v1}, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->b(Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;)Z

    .line 155
    move-result v1

    .line 156
    const/4 v3, 0x2

    .line 157
    const/4 v4, 0x0

    .line 158
    .line 159
    if-eqz v1, :cond_3

    .line 160
    .line 161
    .line 162
    invoke-direct {p0}, Lcom/narvii/media/MediaPickerFragment;->hasAuthorityForVideo()Z

    .line 163
    move-result v1

    .line 164
    .line 165
    if-eqz v1, :cond_3

    .line 166
    move v1, v3

    .line 167
    goto :goto_0

    .line 168
    :cond_3
    move v1, v4

    .line 169
    .line 170
    :goto_0
    iget-object v5, p0, Lcom/narvii/media/MediaPickerFragment;->mediaPickerConfiguration:Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;

    .line 171
    .line 172
    .line 173
    invoke-static {v5}, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->a(Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;)Z

    .line 174
    move-result v5

    .line 175
    .line 176
    if-eqz v5, :cond_4

    .line 177
    .line 178
    or-int/lit8 v1, v1, 0x1

    .line 179
    .line 180
    :cond_4
    iget-object v5, p0, Lcom/narvii/media/MediaPickerFragment;->mediaPickerConfiguration:Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;

    .line 181
    .line 182
    iget v5, v5, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->galleryVideoMode:I

    .line 183
    .line 184
    and-int/lit8 v6, v5, 0x2

    .line 185
    .line 186
    if-eqz v6, :cond_6

    .line 187
    .line 188
    and-int/lit8 v2, v5, 0x4

    .line 189
    .line 190
    if-eqz v2, :cond_5

    .line 191
    const/4 v2, 0x3

    .line 192
    goto :goto_1

    .line 193
    :cond_5
    move v2, v3

    .line 194
    goto :goto_1

    .line 195
    .line 196
    :cond_6
    and-int/lit8 v3, v5, 0x1

    .line 197
    .line 198
    if-nez v3, :cond_7

    .line 199
    goto :goto_1

    .line 200
    :cond_7
    move v2, v4

    .line 201
    .line 202
    :goto_1
    const-string v3, "videoSelectMode"

    .line 203
    .line 204
    .line 205
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 206
    .line 207
    iget-object v3, p0, Lcom/narvii/media/MediaPickerFragment;->info:Landroid/os/Bundle;

    .line 208
    .line 209
    if-nez v3, :cond_8

    .line 210
    .line 211
    new-instance v3, Landroid/os/Bundle;

    .line 212
    .line 213
    .line 214
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 215
    .line 216
    iput-object v3, p0, Lcom/narvii/media/MediaPickerFragment;->info:Landroid/os/Bundle;

    .line 217
    .line 218
    :cond_8
    iget-object v3, p0, Lcom/narvii/media/MediaPickerFragment;->info:Landroid/os/Bundle;

    .line 219
    .line 220
    const-string v5, "minVideoDuration"

    .line 221
    .line 222
    .line 223
    invoke-virtual {v3, v5, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 224
    move-result v3

    .line 225
    .line 226
    if-gtz v3, :cond_9

    .line 227
    .line 228
    if-nez v2, :cond_9

    .line 229
    .line 230
    const/16 v3, 0xbb8

    .line 231
    .line 232
    .line 233
    :cond_9
    invoke-virtual {v0, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 234
    .line 235
    const-string v2, "type"

    .line 236
    .line 237
    .line 238
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 239
    .line 240
    const-string v1, "dir"

    .line 241
    .line 242
    iget-object v2, p0, Lcom/narvii/media/MediaPickerFragment;->dir:Ljava/io/File;

    .line 243
    .line 244
    .line 245
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 246
    .line 247
    iget-object v1, p0, Lcom/narvii/media/MediaPickerFragment;->info:Landroid/os/Bundle;

    .line 248
    .line 249
    const-string v2, "checkUnsupportedImageType"

    .line 250
    .line 251
    .line 252
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 253
    move-result v1

    .line 254
    .line 255
    .line 256
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 257
    .line 258
    .line 259
    const v1, 0xfd03

    .line 260
    .line 261
    .line 262
    invoke-static {p0, v0, v1}, Lcom/narvii/media/MediaPickerFragment;->safedk_MediaPickerFragment_startActivityForResult_b7c3b91dc8a174550ffac056e1f2ca9b(Lcom/narvii/media/MediaPickerFragment;Landroid/content/Intent;I)V

    .line 263
    return-void
.end method

.method static bridge synthetic p(Lcom/narvii/media/MediaPickerFragment;)Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/media/MediaPickerFragment;->mediaPickerConfiguration:Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;

    return-object p0
.end method

.method static bridge synthetic q(Lcom/narvii/media/MediaPickerFragment;Lcom/narvii/media/MediaPickerFragment$LatestImage;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/media/MediaPickerFragment;->omitLatestImage(Lcom/narvii/media/MediaPickerFragment$LatestImage;)V

    return-void
.end method

.method static bridge synthetic r(Lcom/narvii/media/MediaPickerFragment;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/media/MediaPickerFragment;->onPhotoResult(Ljava/util/List;)V

    return-void
.end method

.method static bridge synthetic s(Lcom/narvii/media/MediaPickerFragment;Ljava/util/List;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/narvii/media/MediaPickerFragment;->onPhotoResult(Ljava/util/List;Z)V

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
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public static safedk_MediaPickerFragment_startActivityForResult_b7c3b91dc8a174550ffac056e1f2ca9b(Lcom/narvii/media/MediaPickerFragment;Landroid/content/Intent;I)V
    .locals 1
    .param p0, "p0"    # Lcom/narvii/media/MediaPickerFragment;
    .param p1, "p1"    # Landroid/content/Intent;
    .param p2, "p2"    # I

    const-string v0, "SafeDK-Special|SafeDK: Call> Lcom/narvii/media/MediaPickerFragment;->startActivityForResult(Landroid/content/Intent;I)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/narvii/media/MediaPickerFragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private showYoutubeDialogue()V
    .locals 4

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/util/dialog/AlertDialog;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    sget v1, Lcom/narvii/lib/R$string;->media_image_youtube:I

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setTitle(I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/narvii/util/dialog/AlertDialog;->setVerticalButtons()V

    .line 18
    .line 19
    sget v1, Lcom/narvii/lib/R$string;->media_image_search_youtube:I

    .line 20
    .line 21
    new-instance v2, Lcom/narvii/media/MediaPickerFragment$4;

    .line 22
    .line 23
    .line 24
    invoke-direct {v2, p0}, Lcom/narvii/media/MediaPickerFragment$4;-><init>(Lcom/narvii/media/MediaPickerFragment;)V

    .line 25
    .line 26
    const/16 v3, 0x400

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1, v3, v2}, Lcom/narvii/util/dialog/AlertDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 30
    .line 31
    sget v1, Lcom/narvii/lib/R$string;->media_image_input_youtube_urls:I

    .line 32
    .line 33
    new-instance v2, Lcom/narvii/media/MediaPickerFragment$5;

    .line 34
    .line 35
    .line 36
    invoke-direct {v2, p0}, Lcom/narvii/media/MediaPickerFragment$5;-><init>(Lcom/narvii/media/MediaPickerFragment;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1, v3, v2}, Lcom/narvii/util/dialog/AlertDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    .line 43
    return-void
.end method


# virtual methods
.method public addOnResultListener(Lcom/narvii/media/MediaPickerFragment$OnResultListener;)V
    .locals 1

    .line 1
    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/media/MediaPickerFragment;->listenerEventDispatcher:Ljava/util/List;

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    goto :goto_0

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/narvii/media/MediaPickerFragment;->listenerEventDispatcher:Ljava/util/List;

    .line 14
    .line 15
    .line 16
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
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

    .line 1
    .line 2
    iget v0, p2, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->optionList:I

    .line 3
    .line 4
    const-string v1, "photo"

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    check-cast v1, Lcom/narvii/photos/PhotoManager;

    .line 11
    .line 12
    and-int/lit8 v2, v0, 0x1

    .line 13
    const/4 v3, 0x0

    .line 14
    .line 15
    if-eqz v2, :cond_1

    .line 16
    .line 17
    new-instance v2, Lcom/narvii/media/MediaPickerFragment$Option;

    .line 18
    .line 19
    iget v4, p0, Lcom/narvii/media/MediaPickerFragment;->pickColorStringId:I

    .line 20
    .line 21
    if-eqz v4, :cond_0

    .line 22
    goto :goto_0

    .line 23
    .line 24
    :cond_0
    sget v4, Lcom/narvii/lib/R$string;->color_picker:I

    .line 25
    .line 26
    .line 27
    :goto_0
    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 28
    move-result-object v4

    .line 29
    .line 30
    .line 31
    invoke-direct {v2, v3, v4, v3}, Lcom/narvii/media/MediaPickerFragment$Option;-><init>(ILjava/lang/String;I)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    .line 36
    :cond_1
    and-int/lit8 v2, v0, 0x2

    .line 37
    const/4 v4, 0x1

    .line 38
    .line 39
    if-eqz v2, :cond_2

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Lcom/narvii/photos/PhotoManager;->hasCamera()Z

    .line 43
    move-result v1

    .line 44
    .line 45
    if-eqz v1, :cond_2

    .line 46
    .line 47
    new-instance v1, Lcom/narvii/media/MediaPickerFragment$Option;

    .line 48
    .line 49
    sget v2, Lcom/narvii/lib/R$string;->media_image_camera:I

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 53
    move-result-object v2

    .line 54
    .line 55
    .line 56
    invoke-direct {v1, v4, v2, v3}, Lcom/narvii/media/MediaPickerFragment$Option;-><init>(ILjava/lang/String;I)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    .line 61
    :cond_2
    and-int/lit8 v1, v0, 0x4

    .line 62
    .line 63
    if-eqz v1, :cond_4

    .line 64
    .line 65
    new-instance v1, Lcom/narvii/media/MediaPickerFragment$Option;

    .line 66
    .line 67
    iget-object v2, p0, Lcom/narvii/media/MediaPickerFragment;->mediaPickerConfiguration:Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;

    .line 68
    .line 69
    iget-boolean v2, v2, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->isGiphySticker:Z

    .line 70
    .line 71
    if-eqz v2, :cond_3

    .line 72
    .line 73
    sget v2, Lcom/narvii/lib/R$string;->media_image_sticker:I

    .line 74
    goto :goto_1

    .line 75
    .line 76
    :cond_3
    sget v2, Lcom/narvii/lib/R$string;->media_image_giphy:I

    .line 77
    .line 78
    .line 79
    :goto_1
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 80
    move-result-object v2

    .line 81
    const/4 v5, 0x4

    .line 82
    .line 83
    .line 84
    invoke-direct {v1, v5, v2, v3}, Lcom/narvii/media/MediaPickerFragment$Option;-><init>(ILjava/lang/String;I)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    .line 89
    :cond_4
    and-int/lit8 v1, v0, 0x8

    .line 90
    .line 91
    if-nez v1, :cond_5

    .line 92
    .line 93
    and-int/lit8 v1, v0, 0x10

    .line 94
    .line 95
    if-eqz v1, :cond_7

    .line 96
    .line 97
    :cond_5
    new-instance v1, Lcom/narvii/media/MediaPickerFragment$Option;

    .line 98
    .line 99
    iget-object v2, p0, Lcom/narvii/media/MediaPickerFragment;->mediaPickerConfiguration:Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;

    .line 100
    .line 101
    .line 102
    invoke-static {v2}, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->a(Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;)Z

    .line 103
    move-result v2

    .line 104
    .line 105
    if-eqz v2, :cond_6

    .line 106
    .line 107
    sget v2, Lcom/narvii/lib/R$string;->media_image_picker:I

    .line 108
    goto :goto_2

    .line 109
    .line 110
    :cond_6
    sget v2, Lcom/narvii/lib/R$string;->media_video_picker_1:I

    .line 111
    .line 112
    .line 113
    :goto_2
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 114
    move-result-object v2

    .line 115
    const/4 v5, 0x2

    .line 116
    .line 117
    .line 118
    invoke-direct {v1, v5, v2, v3}, Lcom/narvii/media/MediaPickerFragment$Option;-><init>(ILjava/lang/String;I)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    .line 123
    :cond_7
    and-int/lit8 v1, v0, 0x20

    .line 124
    .line 125
    if-eqz v1, :cond_a

    .line 126
    .line 127
    iget-object v1, p0, Lcom/narvii/media/MediaPickerFragment;->mediaPickerConfiguration:Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;

    .line 128
    .line 129
    iget-boolean v1, v1, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->isGoogleVideoSearch:Z

    .line 130
    .line 131
    if-eqz v1, :cond_8

    .line 132
    .line 133
    sget v1, Lcom/narvii/lib/R$string;->media_image_video_online:I

    .line 134
    goto :goto_3

    .line 135
    .line 136
    :cond_8
    sget v1, Lcom/narvii/lib/R$string;->media_image_youtube:I

    .line 137
    .line 138
    .line 139
    :goto_3
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 140
    move-result-object v1

    .line 141
    .line 142
    iget-object v2, p0, Lcom/narvii/media/MediaPickerFragment;->mediaPickerConfiguration:Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;

    .line 143
    .line 144
    iget-boolean v2, v2, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->isYoutubeWithDialog:Z

    .line 145
    .line 146
    if-eqz v2, :cond_9

    .line 147
    .line 148
    new-instance v2, Lcom/narvii/media/MediaPickerFragment$Option;

    .line 149
    .line 150
    const/16 v5, 0x9

    .line 151
    .line 152
    .line 153
    invoke-direct {v2, v5, v1, v3}, Lcom/narvii/media/MediaPickerFragment$Option;-><init>(ILjava/lang/String;I)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    goto :goto_4

    .line 158
    .line 159
    :cond_9
    new-instance v2, Lcom/narvii/media/MediaPickerFragment$Option;

    .line 160
    const/4 v5, 0x7

    .line 161
    .line 162
    .line 163
    invoke-direct {v2, v5, v1, v3}, Lcom/narvii/media/MediaPickerFragment$Option;-><init>(ILjava/lang/String;I)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    .line 168
    .line 169
    invoke-direct {p0}, Lcom/narvii/media/MediaPickerFragment;->getPasteYoutubeUrl()Ljava/lang/String;

    .line 170
    move-result-object v1

    .line 171
    .line 172
    if-eqz v1, :cond_a

    .line 173
    .line 174
    new-instance v2, Lcom/narvii/media/MediaPickerFragment$Option;

    .line 175
    .line 176
    const/16 v5, 0x8

    .line 177
    .line 178
    .line 179
    invoke-direct {v2, v5, v1, v3}, Lcom/narvii/media/MediaPickerFragment$Option;-><init>(ILjava/lang/String;I)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    .line 184
    :cond_a
    :goto_4
    and-int/lit8 v1, v0, 0x40

    .line 185
    .line 186
    if-eqz v1, :cond_b

    .line 187
    .line 188
    new-instance v1, Lcom/narvii/media/MediaPickerFragment$Option;

    .line 189
    .line 190
    sget v2, Lcom/narvii/lib/R$string;->media_music_picker:I

    .line 191
    .line 192
    .line 193
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 194
    move-result-object v2

    .line 195
    .line 196
    const/16 v5, 0xb

    .line 197
    .line 198
    .line 199
    invoke-direct {v1, v5, v2, v3}, Lcom/narvii/media/MediaPickerFragment$Option;-><init>(ILjava/lang/String;I)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    .line 204
    :cond_b
    and-int/lit16 v1, v0, 0x80

    .line 205
    .line 206
    if-eqz v1, :cond_c

    .line 207
    .line 208
    new-instance v1, Lcom/narvii/media/MediaPickerFragment$Option;

    .line 209
    .line 210
    sget v2, Lcom/narvii/lib/R$string;->media_music_picker:I

    .line 211
    .line 212
    .line 213
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 214
    move-result-object v2

    .line 215
    .line 216
    const/16 v5, 0xa

    .line 217
    .line 218
    .line 219
    invoke-direct {v1, v5, v2, v3}, Lcom/narvii/media/MediaPickerFragment$Option;-><init>(ILjava/lang/String;I)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 223
    .line 224
    :cond_c
    and-int/lit16 v0, v0, 0x100

    .line 225
    .line 226
    if-eqz v0, :cond_e

    .line 227
    .line 228
    new-instance v0, Lcom/narvii/media/MediaPickerFragment$Option;

    .line 229
    .line 230
    iget v1, p0, Lcom/narvii/media/MediaPickerFragment;->deleteStringId:I

    .line 231
    .line 232
    if-nez v1, :cond_d

    .line 233
    .line 234
    sget v1, Lcom/narvii/lib/R$string;->delete:I

    .line 235
    .line 236
    .line 237
    :cond_d
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 238
    move-result-object v1

    .line 239
    .line 240
    const/16 v2, 0x13

    .line 241
    .line 242
    .line 243
    invoke-direct {v0, v2, v1, v4}, Lcom/narvii/media/MediaPickerFragment$Option;-><init>(ILjava/lang/String;I)V

    .line 244
    .line 245
    .line 246
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 247
    .line 248
    :cond_e
    iget-object p2, p2, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->customOptions:Ljava/util/List;

    .line 249
    .line 250
    if-eqz p2, :cond_11

    .line 251
    .line 252
    .line 253
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 254
    move-result-object p2

    .line 255
    .line 256
    .line 257
    :cond_f
    :goto_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 258
    move-result v0

    .line 259
    .line 260
    if-eqz v0, :cond_11

    .line 261
    .line 262
    .line 263
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 264
    move-result-object v0

    .line 265
    .line 266
    check-cast v0, Lcom/narvii/media/MediaPickerFragment$Option;

    .line 267
    .line 268
    if-eqz v0, :cond_f

    .line 269
    .line 270
    iput-boolean v4, v0, Lcom/narvii/media/MediaPickerFragment$Option;->isCustom:Z

    .line 271
    .line 272
    iget v1, v0, Lcom/narvii/media/MediaPickerFragment$Option;->position:I

    .line 273
    const/4 v2, -0x1

    .line 274
    .line 275
    if-eq v1, v2, :cond_10

    .line 276
    .line 277
    .line 278
    invoke-virtual {p1, v1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 279
    goto :goto_5

    .line 280
    .line 281
    .line 282
    :cond_10
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 283
    goto :goto_5

    .line 284
    :cond_11
    return-void
.end method

.method disableView(Landroid/widget/TextView;)V
    .locals 2

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
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    sget v1, Lcom/narvii/lib/R$drawable;->button_round_gray:I

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 21
    const/4 v0, 0x0

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 25
    return-void
.end method

.method enableView(Landroid/widget/TextView;)V
    .locals 2

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
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    sget v1, Lcom/narvii/lib/R$drawable;->button_round_green:I

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 21
    const/4 v0, 0x1

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 25
    return-void
.end method

.method public isModel()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isRequestingActivityResult()Z
    .locals 1

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

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    iput-boolean v0, p0, Lcom/narvii/media/MediaPickerFragment;->isRequestingActivityResult:Z

    .line 4
    .line 5
    iget-object v1, p0, Lcom/narvii/media/MediaPickerFragment;->requestActivityResultCallback:Lcom/narvii/util/Callback;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 10
    .line 11
    .line 12
    invoke-interface {v1, v2}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 13
    .line 14
    :cond_0
    const-string v1, "photo"

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    check-cast v1, Lcom/narvii/photos/PhotoManager;

    .line 21
    .line 22
    .line 23
    const v2, 0xfd01

    .line 24
    .line 25
    const/16 v3, 0x64

    .line 26
    .line 27
    if-ne p1, v2, :cond_1

    .line 28
    .line 29
    iget-object v2, p0, Lcom/narvii/media/MediaPickerFragment;->dir:Ljava/io/File;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, v2, p2, p3}, Lcom/narvii/photos/PhotoManager;->importFromCameraResult(Ljava/io/File;ILandroid/content/Intent;)Ljava/lang/String;

    .line 33
    move-result-object v2

    .line 34
    .line 35
    if-eqz v2, :cond_1

    .line 36
    .line 37
    new-instance v4, Lcom/narvii/model/Media;

    .line 38
    .line 39
    .line 40
    invoke-direct {v4}, Lcom/narvii/model/Media;-><init>()V

    .line 41
    .line 42
    iput v3, v4, Lcom/narvii/model/Media;->type:I

    .line 43
    .line 44
    iput-object v2, v4, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 45
    .line 46
    new-instance v2, Ljava/util/ArrayList;

    .line 47
    .line 48
    .line 49
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    invoke-direct {p0, v2}, Lcom/narvii/media/MediaPickerFragment;->onPhotoResult(Ljava/util/List;)V

    .line 56
    .line 57
    .line 58
    :cond_1
    const v2, 0xfd02

    .line 59
    .line 60
    if-ne p1, v2, :cond_3

    .line 61
    .line 62
    iget-object v2, p0, Lcom/narvii/media/MediaPickerFragment;->dir:Ljava/io/File;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1, v2, p2, p3}, Lcom/narvii/photos/PhotoManager;->importAllFromResult(Ljava/io/File;ILandroid/content/Intent;)Ljava/util/List;

    .line 66
    move-result-object v1

    .line 67
    .line 68
    new-instance v2, Ljava/util/ArrayList;

    .line 69
    .line 70
    .line 71
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 72
    .line 73
    .line 74
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 75
    move-result-object v1

    .line 76
    .line 77
    .line 78
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 79
    move-result v4

    .line 80
    .line 81
    if-eqz v4, :cond_2

    .line 82
    .line 83
    .line 84
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 85
    move-result-object v4

    .line 86
    .line 87
    check-cast v4, Ljava/lang/String;

    .line 88
    .line 89
    new-instance v5, Lcom/narvii/model/Media;

    .line 90
    .line 91
    .line 92
    invoke-direct {v5}, Lcom/narvii/model/Media;-><init>()V

    .line 93
    .line 94
    iput v3, v5, Lcom/narvii/model/Media;->type:I

    .line 95
    .line 96
    iput-object v4, v5, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    goto :goto_0

    .line 101
    .line 102
    .line 103
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 104
    move-result v1

    .line 105
    .line 106
    if-lez v1, :cond_3

    .line 107
    .line 108
    .line 109
    invoke-direct {p0, v2}, Lcom/narvii/media/MediaPickerFragment;->onPhotoResult(Ljava/util/List;)V

    .line 110
    .line 111
    .line 112
    :cond_3
    const v1, 0xfd03

    .line 113
    .line 114
    const-class v2, Lcom/narvii/model/Media;

    .line 115
    .line 116
    const-string v3, "mediaList"

    .line 117
    const/4 v4, -0x1

    .line 118
    .line 119
    if-eq p1, v1, :cond_4

    .line 120
    .line 121
    .line 122
    const v1, 0xfd04

    .line 123
    .line 124
    if-eq p1, v1, :cond_4

    .line 125
    .line 126
    .line 127
    const v1, 0xfd05

    .line 128
    .line 129
    if-ne p1, v1, :cond_5

    .line 130
    .line 131
    :cond_4
    if-ne p2, v4, :cond_5

    .line 132
    .line 133
    if-eqz p3, :cond_5

    .line 134
    .line 135
    .line 136
    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 137
    move-result-object v1

    .line 138
    .line 139
    .line 140
    invoke-static {v1, v2}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    .line 141
    move-result-object v1

    .line 142
    .line 143
    const-string v5, "isUHQ"

    .line 144
    .line 145
    .line 146
    invoke-virtual {p3, v5, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 147
    move-result v5

    .line 148
    .line 149
    .line 150
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 151
    move-result v6

    .line 152
    .line 153
    if-lez v6, :cond_5

    .line 154
    .line 155
    .line 156
    invoke-direct {p0, v1, v5}, Lcom/narvii/media/MediaPickerFragment;->onPhotoResult(Ljava/util/List;Z)V

    .line 157
    .line 158
    :cond_5
    if-ne p2, v4, :cond_9

    .line 159
    .line 160
    .line 161
    const v1, 0xfd08

    .line 162
    .line 163
    if-eq p1, v1, :cond_6

    .line 164
    .line 165
    .line 166
    const v1, 0xfd09

    .line 167
    .line 168
    if-ne p1, v1, :cond_9

    .line 169
    .line 170
    .line 171
    :cond_6
    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 172
    move-result-object v1

    .line 173
    .line 174
    .line 175
    invoke-static {v1, v2}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    .line 176
    move-result-object v1

    .line 177
    .line 178
    if-eqz v1, :cond_9

    .line 179
    .line 180
    .line 181
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 182
    move-result v2

    .line 183
    .line 184
    if-lez v2, :cond_9

    .line 185
    .line 186
    iget-object v2, p0, Lcom/narvii/media/MediaPickerFragment;->info:Landroid/os/Bundle;

    .line 187
    .line 188
    if-nez v2, :cond_7

    .line 189
    .line 190
    new-instance v2, Landroid/os/Bundle;

    .line 191
    .line 192
    .line 193
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 194
    .line 195
    iput-object v2, p0, Lcom/narvii/media/MediaPickerFragment;->info:Landroid/os/Bundle;

    .line 196
    .line 197
    .line 198
    :cond_7
    invoke-virtual {p3, v3}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 202
    move-result-object v2

    .line 203
    .line 204
    if-eqz v2, :cond_8

    .line 205
    .line 206
    iget-object v2, p0, Lcom/narvii/media/MediaPickerFragment;->info:Landroid/os/Bundle;

    .line 207
    .line 208
    .line 209
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 210
    move-result-object v3

    .line 211
    .line 212
    .line 213
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 214
    .line 215
    :cond_8
    iget-object v2, p0, Lcom/narvii/media/MediaPickerFragment;->listenerEventDispatcher:Ljava/util/List;

    .line 216
    .line 217
    .line 218
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 219
    move-result-object v2

    .line 220
    .line 221
    .line 222
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 223
    move-result v3

    .line 224
    .line 225
    if-eqz v3, :cond_9

    .line 226
    .line 227
    .line 228
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 229
    move-result-object v3

    .line 230
    .line 231
    check-cast v3, Lcom/narvii/media/MediaPickerFragment$OnResultListener;

    .line 232
    .line 233
    iget-object v5, p0, Lcom/narvii/media/MediaPickerFragment;->info:Landroid/os/Bundle;

    .line 234
    .line 235
    .line 236
    invoke-interface {v3, v1, v5}, Lcom/narvii/media/MediaPickerFragment$OnResultListener;->onPickMediaResult(Ljava/util/List;Landroid/os/Bundle;)V

    .line 237
    goto :goto_1

    .line 238
    .line 239
    .line 240
    :cond_9
    const v1, 0xfd06

    .line 241
    .line 242
    if-ne p1, v1, :cond_a

    .line 243
    .line 244
    if-ne p2, v4, :cond_a

    .line 245
    .line 246
    if-eqz p3, :cond_a

    .line 247
    .line 248
    const-string v1, "color"

    .line 249
    .line 250
    .line 251
    invoke-virtual {p3, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 252
    move-result v0

    .line 253
    .line 254
    iget-object v1, p0, Lcom/narvii/media/MediaPickerFragment;->pickColorResultListener:Lcom/narvii/media/MediaPickerFragment$OnPickColorResultListener;

    .line 255
    .line 256
    if-eqz v1, :cond_a

    .line 257
    .line 258
    iget-object v2, p0, Lcom/narvii/media/MediaPickerFragment;->info:Landroid/os/Bundle;

    .line 259
    .line 260
    .line 261
    invoke-interface {v1, v0, v2}, Lcom/narvii/media/MediaPickerFragment$OnPickColorResultListener;->onPickColorResult(ILandroid/os/Bundle;)V

    .line 262
    .line 263
    .line 264
    :cond_a
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/app/NVFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 265
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    if-eqz p1, :cond_1

    .line 6
    .line 7
    const-string v0, "dir"

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    const/4 v0, 0x0

    .line 15
    goto :goto_0

    .line 16
    .line 17
    :cond_0
    new-instance v1, Ljava/io/File;

    .line 18
    .line 19
    .line 20
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 21
    move-object v0, v1

    .line 22
    .line 23
    :goto_0
    iput-object v0, p0, Lcom/narvii/media/MediaPickerFragment;->dir:Ljava/io/File;

    .line 24
    .line 25
    const-string v0, "pickInfo"

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    iput-object v0, p0, Lcom/narvii/media/MediaPickerFragment;->info:Landroid/os/Bundle;

    .line 32
    .line 33
    const-string v0, "configs"

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 37
    move-result-object v0

    .line 38
    .line 39
    const-class v1, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;

    .line 40
    .line 41
    .line 42
    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 43
    move-result-object v0

    .line 44
    .line 45
    check-cast v0, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;

    .line 46
    .line 47
    iput-object v0, p0, Lcom/narvii/media/MediaPickerFragment;->mediaPickerConfiguration:Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;

    .line 48
    .line 49
    const-string v0, "maximum"

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 53
    move-result v0

    .line 54
    .line 55
    iput v0, p0, Lcom/narvii/media/MediaPickerFragment;->maximum:I

    .line 56
    .line 57
    const-string v0, "minWidth"

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 61
    move-result v0

    .line 62
    .line 63
    iput v0, p0, Lcom/narvii/media/MediaPickerFragment;->minWidth:I

    .line 64
    .line 65
    const-string v0, "minHeight"

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 69
    move-result v0

    .line 70
    .line 71
    iput v0, p0, Lcom/narvii/media/MediaPickerFragment;->minHeight:I

    .line 72
    .line 73
    const-string v0, "pickCallback"

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 77
    move-result-object v0

    .line 78
    .line 79
    iput-object v0, p0, Lcom/narvii/media/MediaPickerFragment;->pickCallback:Ljava/lang/String;

    .line 80
    .line 81
    const-string v0, "pickCallbackParams"

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    .line 85
    move-result-object p1

    .line 86
    .line 87
    check-cast p1, Ljava/util/HashMap;

    .line 88
    .line 89
    iput-object p1, p0, Lcom/narvii/media/MediaPickerFragment;->pickCallbackParams:Ljava/util/HashMap;

    .line 90
    :cond_1
    return-void
.end method

.method protected onOptionsClicked(Lcom/narvii/media/MediaPickerFragment$Option;)V
    .locals 4

    .line 1
    .line 2
    iget v0, p1, Lcom/narvii/media/MediaPickerFragment$Option;->id:I

    .line 3
    .line 4
    if-eqz v0, :cond_4

    .line 5
    const/4 v1, 0x1

    .line 6
    .line 7
    if-eq v0, v1, :cond_3

    .line 8
    const/4 v1, 0x2

    .line 9
    .line 10
    if-eq v0, v1, :cond_2

    .line 11
    const/4 v2, 0x3

    .line 12
    .line 13
    if-eq v0, v2, :cond_2

    .line 14
    const/4 v1, 0x4

    .line 15
    .line 16
    if-eq v0, v1, :cond_1

    .line 17
    const/4 v3, 0x5

    .line 18
    .line 19
    if-eq v0, v3, :cond_1

    .line 20
    .line 21
    const/16 v2, 0x13

    .line 22
    .line 23
    if-eq v0, v2, :cond_0

    .line 24
    const/4 v2, 0x0

    .line 25
    .line 26
    .line 27
    packed-switch v0, :pswitch_data_0

    .line 28
    const/4 v1, 0x0

    .line 29
    goto :goto_0

    .line 30
    :pswitch_0
    const/4 v1, 0x7

    .line 31
    goto :goto_0

    .line 32
    .line 33
    :pswitch_1
    const-string v2, "Youtube"

    .line 34
    goto :goto_0

    .line 35
    .line 36
    :cond_0
    const-string v2, "delete"

    .line 37
    const/4 v1, -0x1

    .line 38
    goto :goto_0

    .line 39
    .line 40
    :cond_1
    const-string v0, "Giphy"

    .line 41
    move v1, v2

    .line 42
    move-object v2, v0

    .line 43
    goto :goto_0

    .line 44
    .line 45
    :cond_2
    const-string v2, "Photo Library"

    .line 46
    goto :goto_0

    .line 47
    .line 48
    :cond_3
    const-string v2, "Camera"

    .line 49
    goto :goto_0

    .line 50
    .line 51
    :cond_4
    const-string v2, "Color"

    .line 52
    const/4 v1, 0x6

    .line 53
    .line 54
    :goto_0
    iget-object v0, p0, Lcom/narvii/media/MediaPickerFragment;->info:Landroid/os/Bundle;

    .line 55
    .line 56
    if-nez v0, :cond_5

    .line 57
    .line 58
    new-instance v0, Landroid/os/Bundle;

    .line 59
    .line 60
    .line 61
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 62
    .line 63
    iput-object v0, p0, Lcom/narvii/media/MediaPickerFragment;->info:Landroid/os/Bundle;

    .line 64
    .line 65
    :cond_5
    iget-object v0, p0, Lcom/narvii/media/MediaPickerFragment;->info:Landroid/os/Bundle;

    .line 66
    .line 67
    const-string v3, "pickFrom"

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v3, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 71
    .line 72
    if-eqz v2, :cond_6

    .line 73
    .line 74
    iget-object v0, p0, Lcom/narvii/media/MediaPickerFragment;->info:Landroid/os/Bundle;

    .line 75
    .line 76
    const-string v3, "pickSource"

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    :cond_6
    invoke-virtual {p0, p1}, Lcom/narvii/media/MediaPickerFragment;->pickMediaOption(Lcom/narvii/media/MediaPickerFragment$Option;)V

    .line 83
    .line 84
    iget-object p1, p0, Lcom/narvii/media/MediaPickerFragment;->startPickListener:Lcom/narvii/media/MediaPickerFragment$OnStartPickListener;

    .line 85
    .line 86
    if-eqz p1, :cond_7

    .line 87
    .line 88
    .line 89
    invoke-interface {p1, v1}, Lcom/narvii/media/MediaPickerFragment$OnStartPickListener;->onStartPickMedia(I)V

    .line 90
    :cond_7
    return-void

    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
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

    .line 1
    .line 2
    const/16 v0, 0x68

    .line 3
    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    .line 6
    :try_start_0
    const-string p1, "photo"

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    check-cast p1, Lcom/narvii/photos/PhotoManager;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/narvii/photos/PhotoManager;->createCameraIntent()Landroid/content/Intent;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    .line 19
    const v0, 0xfd01

    .line 20
    .line 21
    .line 22
    invoke-static {p0, p1, v0}, Lcom/narvii/media/MediaPickerFragment;->safedk_MediaPickerFragment_startActivityForResult_b7c3b91dc8a174550ffac056e1f2ca9b(Lcom/narvii/media/MediaPickerFragment;Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    goto :goto_0

    .line 24
    .line 25
    :cond_0
    const/16 v0, 0x12d

    .line 26
    .line 27
    if-ne p1, v0, :cond_1

    .line 28
    .line 29
    .line 30
    invoke-direct {p0}, Lcom/narvii/media/MediaPickerFragment;->openPhoneImage()V

    .line 31
    goto :goto_0

    .line 32
    .line 33
    :cond_1
    const/16 v0, 0x12f

    .line 34
    .line 35
    if-ne p1, v0, :cond_2

    .line 36
    .line 37
    new-instance p1, Landroid/content/Intent;

    .line 38
    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    const-string v1, "ndc://fragment/"

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    const-class v1, Lcom/narvii/media/PhoneAudioPickerFragment;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 53
    move-result-object v1

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    move-result-object v0

    .line 61
    .line 62
    .line 63
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 64
    move-result-object v0

    .line 65
    .line 66
    const-string v1, "android.intent.action.VIEW"

    .line 67
    .line 68
    .line 69
    invoke-direct {p1, v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 70
    .line 71
    iget-object v0, p0, Lcom/narvii/media/MediaPickerFragment;->mediaPickerConfiguration:Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;

    .line 72
    .line 73
    iget-boolean v0, v0, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->isSingle:Z

    .line 74
    .line 75
    iget v1, p0, Lcom/narvii/media/MediaPickerFragment;->maximum:I

    .line 76
    .line 77
    iget-object v2, p0, Lcom/narvii/media/MediaPickerFragment;->maxStr:Ljava/lang/String;

    .line 78
    .line 79
    iget-object v3, p0, Lcom/narvii/media/MediaPickerFragment;->dir:Ljava/io/File;

    .line 80
    .line 81
    .line 82
    invoke-static {v0, v1, v2, v3}, Lcom/narvii/media/PhoneAudioPickerFragment;->getBundle(ZILjava/lang/String;Ljava/io/File;)Landroid/os/Bundle;

    .line 83
    move-result-object v0

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 87
    .line 88
    .line 89
    const v0, 0xfd08

    .line 90
    .line 91
    .line 92
    invoke-static {p0, p1, v0}, Lcom/narvii/media/MediaPickerFragment;->safedk_MediaPickerFragment_startActivityForResult_b7c3b91dc8a174550ffac056e1f2ca9b(Lcom/narvii/media/MediaPickerFragment;Landroid/content/Intent;I)V

    .line 93
    :catch_0
    :cond_2
    :goto_0
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
    iget-object v0, p0, Lcom/narvii/media/MediaPickerFragment;->dir:Ljava/io/File;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    const/4 v0, 0x0

    .line 9
    goto :goto_0

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    :goto_0
    const-string v1, "dir"

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    const-string v0, "pickInfo"

    .line 21
    .line 22
    iget-object v1, p0, Lcom/narvii/media/MediaPickerFragment;->info:Landroid/os/Bundle;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 26
    .line 27
    iget-object v0, p0, Lcom/narvii/media/MediaPickerFragment;->mediaPickerConfiguration:Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;

    .line 28
    .line 29
    .line 30
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    const-string v1, "configs"

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    const-string v0, "maximum"

    .line 39
    .line 40
    iget v1, p0, Lcom/narvii/media/MediaPickerFragment;->maximum:I

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 44
    .line 45
    const-string v0, "minWidth"

    .line 46
    .line 47
    iget v1, p0, Lcom/narvii/media/MediaPickerFragment;->minWidth:I

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 51
    .line 52
    const-string v0, "minHeight"

    .line 53
    .line 54
    iget v1, p0, Lcom/narvii/media/MediaPickerFragment;->minHeight:I

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 58
    .line 59
    const-string v0, "minGifWidth"

    .line 60
    .line 61
    iget v1, p0, Lcom/narvii/media/MediaPickerFragment;->minGifWidth:I

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 65
    .line 66
    const-string v0, "minGifHeight"

    .line 67
    .line 68
    iget v1, p0, Lcom/narvii/media/MediaPickerFragment;->minGifHeight:I

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 72
    .line 73
    const-string v0, "pickCallback"

    .line 74
    .line 75
    iget-object v1, p0, Lcom/narvii/media/MediaPickerFragment;->pickCallback:Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    .line 80
    const-string v0, "pickCallbackParams"

    .line 81
    .line 82
    iget-object v1, p0, Lcom/narvii/media/MediaPickerFragment;->pickCallbackParams:Ljava/util/HashMap;

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 86
    return-void
.end method

.method public pickMedia(Ljava/io/File;Landroid/os/Bundle;I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 1
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

    .line 3
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

    .line 5
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

    .line 6
    new-instance v0, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;

    invoke-direct {v0}, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;-><init>()V

    iput-object p1, p0, Lcom/narvii/media/MediaPickerFragment;->dir:Ljava/io/File;

    iput-object p2, p0, Lcom/narvii/media/MediaPickerFragment;->info:Landroid/os/Bundle;

    iput p4, v0, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->maximum:I

    iput p5, v0, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->minWidth:I

    iput p6, v0, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->minHeight:I

    iput p7, v0, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->minGifWidth:I

    iput p8, v0, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->minGifHeight:I

    iput-object p9, v0, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->customOptions:Ljava/util/List;

    .line 7
    invoke-virtual {v0, p3}, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->setOptionListByFlag(I)V

    .line 8
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

    .line 4
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

    .line 2
    invoke-virtual/range {v0 .. v5}, Lcom/narvii/media/MediaPickerFragment;->pickMedia(Ljava/io/File;Landroid/os/Bundle;IILjava/util/List;)V

    return-void
.end method

.method public pickMedia(Ljava/io/File;Landroid/os/Bundle;Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;)V
    .locals 3

    iput-object p1, p0, Lcom/narvii/media/MediaPickerFragment;->dir:Ljava/io/File;

    iput-object p2, p0, Lcom/narvii/media/MediaPickerFragment;->info:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/narvii/media/MediaPickerFragment;->mediaPickerConfiguration:Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;

    .line 9
    iget p1, p3, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->maximum:I

    iput p1, p0, Lcom/narvii/media/MediaPickerFragment;->maximum:I

    .line 10
    iget p1, p3, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->minWidth:I

    iput p1, p0, Lcom/narvii/media/MediaPickerFragment;->minWidth:I

    .line 11
    iget p1, p3, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->minHeight:I

    iput p1, p0, Lcom/narvii/media/MediaPickerFragment;->minHeight:I

    .line 12
    iget p1, p3, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->minGifWidth:I

    iput p1, p0, Lcom/narvii/media/MediaPickerFragment;->minGifWidth:I

    .line 13
    iget p1, p3, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->minGifHeight:I

    iput p1, p0, Lcom/narvii/media/MediaPickerFragment;->minGifHeight:I

    .line 14
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 15
    invoke-virtual {p0, p1, p3}, Lcom/narvii/media/MediaPickerFragment;->buildOptions(Ljava/util/ArrayList;Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;)V

    .line 16
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 p3, 0x1

    if-ne p2, p3, :cond_0

    const/4 p2, 0x0

    .line 17
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/media/MediaPickerFragment$Option;

    invoke-virtual {p0, p1}, Lcom/narvii/media/MediaPickerFragment;->onOptionsClicked(Lcom/narvii/media/MediaPickerFragment$Option;)V

    goto :goto_1

    .line 18
    :cond_0
    new-instance p2, Lcom/narvii/util/dialog/ActionSheetDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/narvii/util/dialog/ActionSheetDialog;-><init>(Landroid/content/Context;)V

    .line 19
    invoke-direct {p0}, Lcom/narvii/media/MediaPickerFragment;->getLatestImage()Lcom/narvii/media/MediaPickerFragment$LatestImage;

    move-result-object p3

    if-eqz p3, :cond_1

    iget-object v0, p0, Lcom/narvii/media/MediaPickerFragment;->mediaPickerConfiguration:Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;

    .line 20
    invoke-static {v0}, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->a(Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/narvii/media/MediaPickerFragment;->mediaPickerConfiguration:Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;

    iget v0, v0, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->galleryPhotoMode:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    sget v0, Lcom/narvii/lib/R$layout;->media_pick_latest:I

    .line 21
    invoke-virtual {p2, v0}, Lcom/narvii/util/dialog/ActionSheetDialog;->setCustomView(I)Landroid/view/View;

    sget v0, Lcom/narvii/lib/R$id;->image:I

    .line 22
    invoke-virtual {p2, v0}, Lcom/narvii/util/dialog/ActionSheetDialog;->findCustomViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p3, Lcom/narvii/media/MediaPickerFragment$LatestImage;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    sget v0, Lcom/narvii/lib/R$id;->media_pick_latest:I

    .line 23
    invoke-virtual {p2, v0}, Lcom/narvii/util/dialog/ActionSheetDialog;->findCustomViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/narvii/media/MediaPickerFragment$1;

    invoke-direct {v1, p0, p3, p2}, Lcom/narvii/media/MediaPickerFragment$1;-><init>(Lcom/narvii/media/MediaPickerFragment;Lcom/narvii/media/MediaPickerFragment$LatestImage;Lcom/narvii/util/dialog/ActionSheetDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24
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

    .line 25
    iget-object v2, v1, Lcom/narvii/media/MediaPickerFragment$Option;->name:Ljava/lang/String;

    iget v1, v1, Lcom/narvii/media/MediaPickerFragment$Option;->flag:I

    invoke-virtual {p2, v2, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(Ljava/lang/String;I)V

    goto :goto_0

    .line 26
    :cond_2
    new-instance v0, Lcom/narvii/media/MediaPickerFragment$2;

    invoke-direct {v0, p0, p1, p3}, Lcom/narvii/media/MediaPickerFragment$2;-><init>(Lcom/narvii/media/MediaPickerFragment;Ljava/util/ArrayList;Lcom/narvii/media/MediaPickerFragment$LatestImage;)V

    invoke-virtual {p2, v0}, Lcom/narvii/util/dialog/ActionSheetDialog;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 27
    invoke-virtual {p2}, Lcom/narvii/util/dialog/ActionSheetDialog;->show()V

    :goto_1
    return-void
.end method

.method protected pickMediaOption(Lcom/narvii/media/MediaPickerFragment$Option;)V
    .locals 10

    .line 1
    .line 2
    iget-boolean v0, p1, Lcom/narvii/media/MediaPickerFragment$Option;->isCustom:Z

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/media/MediaPickerFragment;->onCustomOptionSelectedListener:Lcom/narvii/media/MediaPickerFragment$OnCustomOptionSelectedListener;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v1, p0, Lcom/narvii/media/MediaPickerFragment;->info:Landroid/os/Bundle;

    .line 11
    .line 12
    .line 13
    invoke-interface {v0, p1, v1}, Lcom/narvii/media/MediaPickerFragment$OnCustomOptionSelectedListener;->onCustomOptionSelected(Lcom/narvii/media/MediaPickerFragment$Option;Landroid/os/Bundle;)V

    .line 14
    :cond_0
    return-void

    .line 15
    .line 16
    :cond_1
    const-string v0, "photo"

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    check-cast v0, Lcom/narvii/photos/PhotoManager;

    .line 23
    .line 24
    iget p1, p1, Lcom/narvii/media/MediaPickerFragment$Option;->id:I

    .line 25
    const/4 v1, 0x1

    .line 26
    .line 27
    const-string v2, "ndc://fragment/"

    .line 28
    .line 29
    const-string v3, "android.intent.action.VIEW"

    .line 30
    .line 31
    if-eqz p1, :cond_a

    .line 32
    .line 33
    if-eq p1, v1, :cond_8

    .line 34
    const/4 v0, 0x2

    .line 35
    .line 36
    if-eq p1, v0, :cond_7

    .line 37
    const/4 v0, 0x3

    .line 38
    .line 39
    if-eq p1, v0, :cond_7

    .line 40
    const/4 v0, 0x4

    .line 41
    .line 42
    if-eq p1, v0, :cond_6

    .line 43
    const/4 v0, 0x5

    .line 44
    .line 45
    if-eq p1, v0, :cond_6

    .line 46
    .line 47
    const/16 v0, 0x13

    .line 48
    .line 49
    if-eq p1, v0, :cond_5

    .line 50
    .line 51
    .line 52
    const v0, 0xfd05

    .line 53
    .line 54
    const-string v4, "pickCallbackParams"

    .line 55
    .line 56
    const-string v5, "pickCallback"

    .line 57
    .line 58
    const-class v6, Lcom/narvii/media/YoutubeVideoPicker;

    .line 59
    .line 60
    const-string v7, "needDuration"

    .line 61
    .line 62
    .line 63
    packed-switch p1, :pswitch_data_0

    .line 64
    .line 65
    goto/16 :goto_0

    .line 66
    .line 67
    :pswitch_0
    new-instance p1, Landroid/content/Intent;

    .line 68
    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    const-class v2, Lcom/narvii/media/online/audio/OnlineAudioPickerCategoryFragment;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 81
    move-result-object v2

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    move-result-object v0

    .line 89
    .line 90
    .line 91
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 92
    move-result-object v0

    .line 93
    .line 94
    .line 95
    invoke-direct {p1, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 96
    .line 97
    iget-object v0, p0, Lcom/narvii/media/MediaPickerFragment;->mediaPickerConfiguration:Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;

    .line 98
    .line 99
    iget-boolean v0, v0, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->isSingle:Z

    .line 100
    .line 101
    iget v2, p0, Lcom/narvii/media/MediaPickerFragment;->maximum:I

    .line 102
    .line 103
    iget-object v3, p0, Lcom/narvii/media/MediaPickerFragment;->maxStr:Ljava/lang/String;

    .line 104
    .line 105
    iget-object v4, p0, Lcom/narvii/media/MediaPickerFragment;->dir:Ljava/io/File;

    .line 106
    .line 107
    .line 108
    invoke-static {v0, v2, v3, v4}, Lcom/narvii/media/PhoneAudioPickerFragment;->getBundle(ZILjava/lang/String;Ljava/io/File;)Landroid/os/Bundle;

    .line 109
    move-result-object v0

    .line 110
    .line 111
    .line 112
    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 113
    .line 114
    iget-object v0, p0, Lcom/narvii/media/MediaPickerFragment;->info:Landroid/os/Bundle;

    .line 115
    .line 116
    if-eqz v0, :cond_2

    .line 117
    .line 118
    const-string v2, "targetOnlineAudioTabName"

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 122
    move-result-object v0

    .line 123
    .line 124
    .line 125
    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 126
    .line 127
    .line 128
    :cond_2
    const v0, 0xfd09

    .line 129
    .line 130
    .line 131
    invoke-static {p0, p1, v0}, Lcom/narvii/media/MediaPickerFragment;->safedk_MediaPickerFragment_startActivityForResult_b7c3b91dc8a174550ffac056e1f2ca9b(Lcom/narvii/media/MediaPickerFragment;Landroid/content/Intent;I)V

    .line 132
    .line 133
    goto/16 :goto_0

    .line 134
    .line 135
    :pswitch_1
    sget-object p1, Lcom/narvii/permisson/PermissionUtilsV2;->INSTANCE:Lcom/narvii/permisson/PermissionUtilsV2;

    .line 136
    .line 137
    sget-object v0, Lcom/narvii/permisson/GranularMediaPermissions;->READ_MEDIA_AUDIO:Lcom/narvii/permisson/GranularMediaPermissions;

    .line 138
    .line 139
    .line 140
    invoke-virtual {p1, v0}, Lcom/narvii/permisson/PermissionUtilsV2;->obtainPermissionName(Lcom/narvii/permisson/GranularMediaPermissions;)Ljava/lang/String;

    .line 141
    move-result-object p1

    .line 142
    .line 143
    .line 144
    invoke-static {p0}, Lcom/narvii/permisson/NVPermission;->builder(Landroidx/fragment/app/Fragment;)Lcom/narvii/permisson/NVPermission$Builder;

    .line 145
    move-result-object v0

    .line 146
    .line 147
    .line 148
    invoke-virtual {v0, p1}, Lcom/narvii/permisson/NVPermission$Builder;->permission(Ljava/lang/String;)Lcom/narvii/permisson/NVPermission$Builder;

    .line 149
    move-result-object p1

    .line 150
    .line 151
    const/16 v0, 0x12f

    .line 152
    .line 153
    .line 154
    invoke-virtual {p1, v0}, Lcom/narvii/permisson/NVPermission$Builder;->requestCode(I)Lcom/narvii/permisson/NVPermission$Builder;

    .line 155
    move-result-object p1

    .line 156
    .line 157
    .line 158
    invoke-virtual {p1, p0}, Lcom/narvii/permisson/NVPermission$Builder;->permissionListener(Lcom/narvii/permisson/PermissionListener;)Lcom/narvii/permisson/NVPermission$Builder;

    .line 159
    move-result-object p1

    .line 160
    .line 161
    .line 162
    invoke-virtual {p1}, Lcom/narvii/permisson/NVPermission$Builder;->request()V

    .line 163
    .line 164
    goto/16 :goto_0

    .line 165
    .line 166
    .line 167
    :pswitch_2
    invoke-direct {p0}, Lcom/narvii/media/MediaPickerFragment;->showYoutubeDialogue()V

    .line 168
    .line 169
    goto/16 :goto_0

    .line 170
    .line 171
    .line 172
    :pswitch_3
    invoke-direct {p0}, Lcom/narvii/media/MediaPickerFragment;->getPasteYoutubeUrl()Ljava/lang/String;

    .line 173
    move-result-object p1

    .line 174
    .line 175
    if-eqz p1, :cond_c

    .line 176
    .line 177
    new-instance v8, Landroid/content/Intent;

    .line 178
    .line 179
    new-instance v9, Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 189
    move-result-object v2

    .line 190
    .line 191
    .line 192
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 196
    move-result-object v2

    .line 197
    .line 198
    .line 199
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 200
    move-result-object v2

    .line 201
    .line 202
    .line 203
    invoke-direct {v8, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 204
    .line 205
    const-string v2, "url"

    .line 206
    .line 207
    .line 208
    invoke-virtual {v8, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 209
    .line 210
    const-string p1, "confirmUrl"

    .line 211
    .line 212
    .line 213
    invoke-virtual {v8, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 214
    .line 215
    iget-object p1, p0, Lcom/narvii/media/MediaPickerFragment;->pickCallback:Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    invoke-virtual {v8, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 219
    .line 220
    iget-object p1, p0, Lcom/narvii/media/MediaPickerFragment;->pickCallbackParams:Ljava/util/HashMap;

    .line 221
    .line 222
    .line 223
    invoke-virtual {v8, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 224
    .line 225
    iget-object p1, p0, Lcom/narvii/media/MediaPickerFragment;->info:Landroid/os/Bundle;

    .line 226
    .line 227
    if-eqz p1, :cond_3

    .line 228
    .line 229
    .line 230
    invoke-virtual {p1, v7}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 231
    move-result p1

    .line 232
    .line 233
    .line 234
    invoke-virtual {v8, v7, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 235
    .line 236
    .line 237
    :cond_3
    invoke-static {p0, v8, v0}, Lcom/narvii/media/MediaPickerFragment;->safedk_MediaPickerFragment_startActivityForResult_b7c3b91dc8a174550ffac056e1f2ca9b(Lcom/narvii/media/MediaPickerFragment;Landroid/content/Intent;I)V

    .line 238
    .line 239
    goto/16 :goto_0

    .line 240
    .line 241
    :pswitch_4
    new-instance p1, Landroid/content/Intent;

    .line 242
    .line 243
    new-instance v8, Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 247
    .line 248
    .line 249
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 253
    move-result-object v2

    .line 254
    .line 255
    .line 256
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    .line 258
    .line 259
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 260
    move-result-object v2

    .line 261
    .line 262
    .line 263
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 264
    move-result-object v2

    .line 265
    .line 266
    .line 267
    invoke-direct {p1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 268
    .line 269
    iget-object v2, p0, Lcom/narvii/media/MediaPickerFragment;->pickCallback:Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    invoke-virtual {p1, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 273
    .line 274
    iget-object v2, p0, Lcom/narvii/media/MediaPickerFragment;->pickCallbackParams:Ljava/util/HashMap;

    .line 275
    .line 276
    .line 277
    invoke-virtual {p1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 278
    .line 279
    iget-object v2, p0, Lcom/narvii/media/MediaPickerFragment;->mediaPickerConfiguration:Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;

    .line 280
    .line 281
    iget-boolean v2, v2, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->isGoogleVideoSearch:Z

    .line 282
    .line 283
    const-string v3, "googleVideoSearch"

    .line 284
    .line 285
    .line 286
    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 287
    .line 288
    iget-object v2, p0, Lcom/narvii/media/MediaPickerFragment;->info:Landroid/os/Bundle;

    .line 289
    .line 290
    if-eqz v2, :cond_4

    .line 291
    .line 292
    .line 293
    invoke-virtual {v2, v7}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 294
    move-result v2

    .line 295
    .line 296
    .line 297
    invoke-virtual {p1, v7, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 298
    .line 299
    .line 300
    :cond_4
    invoke-static {p0, p1, v0}, Lcom/narvii/media/MediaPickerFragment;->safedk_MediaPickerFragment_startActivityForResult_b7c3b91dc8a174550ffac056e1f2ca9b(Lcom/narvii/media/MediaPickerFragment;Landroid/content/Intent;I)V

    .line 301
    .line 302
    goto/16 :goto_0

    .line 303
    .line 304
    :cond_5
    :pswitch_5
    new-instance p1, Ljava/util/ArrayList;

    .line 305
    .line 306
    .line 307
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 308
    .line 309
    .line 310
    invoke-direct {p0, p1}, Lcom/narvii/media/MediaPickerFragment;->onPhotoResult(Ljava/util/List;)V

    .line 311
    .line 312
    goto/16 :goto_0

    .line 313
    .line 314
    .line 315
    :cond_6
    invoke-direct {p0}, Lcom/narvii/media/MediaPickerFragment;->openGiphyPicker()V

    .line 316
    .line 317
    goto/16 :goto_0

    .line 318
    .line 319
    :cond_7
    sget-object p1, Lcom/narvii/permisson/PermissionUtilsV2;->INSTANCE:Lcom/narvii/permisson/PermissionUtilsV2;

    .line 320
    .line 321
    sget-object v0, Lcom/narvii/permisson/GranularMediaPermissions;->READ_MEDIA_IMAGES:Lcom/narvii/permisson/GranularMediaPermissions;

    .line 322
    .line 323
    .line 324
    invoke-virtual {p1, v0}, Lcom/narvii/permisson/PermissionUtilsV2;->obtainPermissionName(Lcom/narvii/permisson/GranularMediaPermissions;)Ljava/lang/String;

    .line 325
    move-result-object p1

    .line 326
    .line 327
    .line 328
    invoke-static {p0}, Lcom/narvii/permisson/NVPermission;->builder(Landroidx/fragment/app/Fragment;)Lcom/narvii/permisson/NVPermission$Builder;

    .line 329
    move-result-object v0

    .line 330
    .line 331
    .line 332
    invoke-virtual {v0, p1}, Lcom/narvii/permisson/NVPermission$Builder;->permission(Ljava/lang/String;)Lcom/narvii/permisson/NVPermission$Builder;

    .line 333
    move-result-object p1

    .line 334
    .line 335
    const/16 v0, 0x12d

    .line 336
    .line 337
    .line 338
    invoke-virtual {p1, v0}, Lcom/narvii/permisson/NVPermission$Builder;->requestCode(I)Lcom/narvii/permisson/NVPermission$Builder;

    .line 339
    move-result-object p1

    .line 340
    .line 341
    .line 342
    invoke-virtual {p1, p0}, Lcom/narvii/permisson/NVPermission$Builder;->permissionListener(Lcom/narvii/permisson/PermissionListener;)Lcom/narvii/permisson/NVPermission$Builder;

    .line 343
    move-result-object p1

    .line 344
    .line 345
    .line 346
    invoke-virtual {p1}, Lcom/narvii/permisson/NVPermission$Builder;->request()V

    .line 347
    goto :goto_0

    .line 348
    .line 349
    :cond_8
    sget p1, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    .line 350
    .line 351
    const/16 v2, 0xc8

    .line 352
    .line 353
    if-ne p1, v2, :cond_9

    .line 354
    .line 355
    .line 356
    :try_start_0
    invoke-virtual {v0}, Lcom/narvii/photos/PhotoManager;->createCameraIntent()Landroid/content/Intent;

    .line 357
    move-result-object p1

    .line 358
    .line 359
    .line 360
    const v0, 0xfd01

    .line 361
    .line 362
    .line 363
    invoke-static {p0, p1, v0}, Lcom/narvii/media/MediaPickerFragment;->safedk_MediaPickerFragment_startActivityForResult_b7c3b91dc8a174550ffac056e1f2ca9b(Lcom/narvii/media/MediaPickerFragment;Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 364
    goto :goto_0

    .line 365
    .line 366
    :cond_9
    const-string p1, "android.permission.CAMERA"

    .line 367
    .line 368
    .line 369
    filled-new-array {p1}, [Ljava/lang/String;

    .line 370
    move-result-object p1

    .line 371
    .line 372
    .line 373
    invoke-static {p0}, Lcom/narvii/permisson/NVPermission;->builder(Landroidx/fragment/app/Fragment;)Lcom/narvii/permisson/NVPermission$Builder;

    .line 374
    move-result-object v0

    .line 375
    .line 376
    .line 377
    invoke-virtual {v0, p1}, Lcom/narvii/permisson/NVPermission$Builder;->permissions([Ljava/lang/String;)Lcom/narvii/permisson/NVPermission$Builder;

    .line 378
    move-result-object p1

    .line 379
    .line 380
    const/16 v0, 0x68

    .line 381
    .line 382
    .line 383
    invoke-virtual {p1, v0}, Lcom/narvii/permisson/NVPermission$Builder;->requestCode(I)Lcom/narvii/permisson/NVPermission$Builder;

    .line 384
    move-result-object p1

    .line 385
    .line 386
    .line 387
    invoke-virtual {p1, p0}, Lcom/narvii/permisson/NVPermission$Builder;->permissionListener(Lcom/narvii/permisson/PermissionListener;)Lcom/narvii/permisson/NVPermission$Builder;

    .line 388
    move-result-object p1

    .line 389
    .line 390
    .line 391
    invoke-virtual {p1}, Lcom/narvii/permisson/NVPermission$Builder;->request()V

    .line 392
    goto :goto_0

    .line 393
    .line 394
    :cond_a
    new-instance p1, Landroid/content/Intent;

    .line 395
    .line 396
    new-instance v0, Ljava/lang/StringBuilder;

    .line 397
    .line 398
    .line 399
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 400
    .line 401
    .line 402
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    .line 404
    const-class v2, Lcom/narvii/media/color/BackgroundColorFragment;

    .line 405
    .line 406
    .line 407
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 408
    move-result-object v2

    .line 409
    .line 410
    .line 411
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    .line 413
    .line 414
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 415
    move-result-object v0

    .line 416
    .line 417
    .line 418
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 419
    move-result-object v0

    .line 420
    .line 421
    .line 422
    invoke-direct {p1, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 423
    .line 424
    iget v0, p0, Lcom/narvii/media/MediaPickerFragment;->oldColor:I

    .line 425
    .line 426
    if-eqz v0, :cond_b

    .line 427
    .line 428
    const-string v2, "color"

    .line 429
    .line 430
    .line 431
    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 432
    .line 433
    .line 434
    :cond_b
    const v0, 0xfd06

    .line 435
    .line 436
    .line 437
    invoke-static {p0, p1, v0}, Lcom/narvii/media/MediaPickerFragment;->safedk_MediaPickerFragment_startActivityForResult_b7c3b91dc8a174550ffac056e1f2ca9b(Lcom/narvii/media/MediaPickerFragment;Landroid/content/Intent;I)V

    .line 438
    .line 439
    :catch_0
    :cond_c
    :goto_0
    iput-boolean v1, p0, Lcom/narvii/media/MediaPickerFragment;->isRequestingActivityResult:Z

    .line 440
    .line 441
    iget-object p1, p0, Lcom/narvii/media/MediaPickerFragment;->requestActivityResultCallback:Lcom/narvii/util/Callback;

    .line 442
    .line 443
    if-eqz p1, :cond_d

    .line 444
    .line 445
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 446
    .line 447
    .line 448
    invoke-interface {p1, v0}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 449
    :cond_d
    return-void

    .line 450
    nop

    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
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

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    :cond_0
    iget-object v0, p0, Lcom/narvii/media/MediaPickerFragment;->listenerEventDispatcher:Ljava/util/List;

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 9
    return-void
.end method

.method public setOnCustomOptionSelectedListener(Lcom/narvii/media/MediaPickerFragment$OnCustomOptionSelectedListener;)V
    .locals 0

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

    iput-object p1, p0, Lcom/narvii/media/MediaPickerFragment;->requestActivityResultCallback:Lcom/narvii/util/Callback;

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/media/MediaPickerFragment;->listenerEventDispatcher:Ljava/util/List;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    move-result v1

    .line 13
    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    check-cast v1, Lcom/narvii/media/MediaPickerFragment$OnResultListener;

    .line 21
    .line 22
    instance-of v2, v1, Lcom/narvii/app/NVContext;

    .line 23
    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    check-cast v1, Lcom/narvii/app/NVContext;

    .line 27
    .line 28
    .line 29
    invoke-static {v1}, Lcom/narvii/logging/LogUtils;->changeNextPageRefererIfNull(Lcom/narvii/app/NVContext;)V

    .line 30
    goto :goto_0

    .line 31
    .line 32
    .line 33
    :cond_1
    invoke-static {p0, p1, p2}, Lcom/narvii/media/MediaPickerFragment;->safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V

    .line 34
    return-void
.end method
