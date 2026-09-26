.class public final Lcom/narvii/scene/helper/SceneSpHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/scene/helper/SceneSpHelper$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/narvii/scene/helper/SceneSpHelper$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final DAYMS:I = 0x5265c00

.field public static final KEY_RECENT_VIDEO:Ljava/lang/String; = "key_recent_video"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final SP_RECENT_MEDIA:Ljava/lang/String; = "recent_media"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final ctx:Lcom/narvii/app/NVContext;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final photoManager$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final sp$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/narvii/scene/helper/SceneSpHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/scene/helper/SceneSpHelper$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    sput-object v0, Lcom/narvii/scene/helper/SceneSpHelper;->Companion:Lcom/narvii/scene/helper/SceneSpHelper$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1
    .param p1    # Lcom/narvii/app/NVContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "ctx"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    iput-object p1, p0, Lcom/narvii/scene/helper/SceneSpHelper;->ctx:Lcom/narvii/app/NVContext;

    .line 11
    .line 12
    new-instance p1, Lcom/narvii/scene/helper/SceneSpHelper$photoManager$2;

    .line 13
    .line 14
    .line 15
    invoke-direct {p1, p0}, Lcom/narvii/scene/helper/SceneSpHelper$photoManager$2;-><init>(Lcom/narvii/scene/helper/SceneSpHelper;)V

    .line 16
    .line 17
    .line 18
    invoke-static {p1}, Lw7/n;->a(Le8/a;)Lw7/m;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    iput-object p1, p0, Lcom/narvii/scene/helper/SceneSpHelper;->photoManager$delegate:Lw7/m;

    .line 22
    .line 23
    new-instance p1, Lcom/narvii/scene/helper/SceneSpHelper$sp$2;

    .line 24
    .line 25
    .line 26
    invoke-direct {p1, p0}, Lcom/narvii/scene/helper/SceneSpHelper$sp$2;-><init>(Lcom/narvii/scene/helper/SceneSpHelper;)V

    .line 27
    .line 28
    .line 29
    invoke-static {p1}, Lw7/n;->a(Le8/a;)Lw7/m;

    .line 30
    move-result-object p1

    .line 31
    .line 32
    iput-object p1, p0, Lcom/narvii/scene/helper/SceneSpHelper;->sp$delegate:Lw7/m;

    .line 33
    return-void
.end method

.method private final getSp()Landroid/content/SharedPreferences;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/helper/SceneSpHelper;->sp$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroid/content/SharedPreferences;

    .line 9
    return-object v0
.end method


# virtual methods
.method public final getCtx()Lcom/narvii/app/NVContext;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/scene/helper/SceneSpHelper;->ctx:Lcom/narvii/app/NVContext;

    return-object v0
.end method

.method public final getPhotoManager()Lcom/narvii/photos/PhotoManager;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/helper/SceneSpHelper;->photoManager$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    const-string v1, "getValue(...)"

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    check-cast v0, Lcom/narvii/photos/PhotoManager;

    .line 14
    return-object v0
.end method

.method public final getRecentVideo()Lcom/narvii/scene/model/SceneRecentMedia;
    .locals 8
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/scene/helper/SceneSpHelper;->getSp()Landroid/content/SharedPreferences;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    const-string v1, "key_recent_video"

    .line 7
    const/4 v2, 0x0

    .line 8
    .line 9
    .line 10
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    const-class v3, Lcom/narvii/scene/model/SceneRecentMedia;

    .line 14
    .line 15
    .line 16
    invoke-static {v0, v3}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    check-cast v0, Lcom/narvii/scene/model/SceneRecentMedia;

    .line 20
    .line 21
    if-eqz v0, :cond_5

    .line 22
    .line 23
    .line 24
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 25
    move-result-wide v3

    .line 26
    .line 27
    iget-wide v5, v0, Lcom/narvii/scene/model/SceneRecentMedia;->createTime:J

    .line 28
    sub-long/2addr v3, v5

    .line 29
    .line 30
    .line 31
    const-wide/32 v5, 0x5265c00

    .line 32
    .line 33
    cmp-long v3, v3, v5

    .line 34
    .line 35
    if-lez v3, :cond_1

    .line 36
    :cond_0
    :goto_0
    move-object v0, v2

    .line 37
    goto :goto_1

    .line 38
    .line 39
    :cond_1
    iget-object v3, v0, Lcom/narvii/scene/model/SceneRecentMedia;->media:Lcom/narvii/model/Media;

    .line 40
    .line 41
    if-eqz v3, :cond_0

    .line 42
    .line 43
    iget-object v3, v3, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 44
    .line 45
    if-nez v3, :cond_2

    .line 46
    goto :goto_0

    .line 47
    .line 48
    .line 49
    :cond_2
    const-string/jumbo v4, "url"

    .line 50
    .line 51
    .line 52
    invoke-static {v3, v4}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    .line 54
    const-string v5, "file://"

    .line 55
    const/4 v6, 0x0

    .line 56
    const/4 v7, 0x2

    .line 57
    .line 58
    .line 59
    invoke-static {v3, v5, v6, v7, v2}, Lkotlin/text/k;->P(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 60
    move-result v3

    .line 61
    .line 62
    if-nez v3, :cond_3

    .line 63
    .line 64
    iget-object v3, v0, Lcom/narvii/scene/model/SceneRecentMedia;->media:Lcom/narvii/model/Media;

    .line 65
    .line 66
    iget-object v3, v3, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    invoke-static {v3, v4}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    .line 71
    const-string v4, "photo://"

    .line 72
    .line 73
    .line 74
    invoke-static {v3, v4, v6, v7, v2}, Lkotlin/text/k;->P(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 75
    move-result v3

    .line 76
    .line 77
    if-eqz v3, :cond_4

    .line 78
    .line 79
    .line 80
    :cond_3
    invoke-virtual {p0}, Lcom/narvii/scene/helper/SceneSpHelper;->getPhotoManager()Lcom/narvii/photos/PhotoManager;

    .line 81
    move-result-object v3

    .line 82
    .line 83
    iget-object v4, v0, Lcom/narvii/scene/model/SceneRecentMedia;->media:Lcom/narvii/model/Media;

    .line 84
    .line 85
    iget-object v4, v4, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v3, v4}, Lcom/narvii/photos/PhotoManager;->getPath(Ljava/lang/String;)Ljava/io/File;

    .line 89
    move-result-object v3

    .line 90
    .line 91
    if-eqz v3, :cond_0

    .line 92
    .line 93
    .line 94
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 95
    move-result v3

    .line 96
    .line 97
    if-nez v3, :cond_4

    .line 98
    goto :goto_0

    .line 99
    .line 100
    :cond_4
    :goto_1
    if-nez v0, :cond_5

    .line 101
    .line 102
    .line 103
    invoke-direct {p0}, Lcom/narvii/scene/helper/SceneSpHelper;->getSp()Landroid/content/SharedPreferences;

    .line 104
    move-result-object v3

    .line 105
    .line 106
    .line 107
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 108
    move-result-object v3

    .line 109
    .line 110
    .line 111
    invoke-interface {v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 112
    move-result-object v1

    .line 113
    .line 114
    .line 115
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 116
    :cond_5
    return-object v0
.end method

.method public final saveRecentVideo(Lcom/narvii/model/Media;Ljava/lang/String;)V
    .locals 3
    .param p1    # Lcom/narvii/model/Media;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "media"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string/jumbo v0, "title"

    .line 9
    .line 10
    .line 11
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    new-instance v0, Lcom/narvii/scene/model/SceneRecentMedia;

    .line 14
    .line 15
    .line 16
    invoke-direct {v0}, Lcom/narvii/scene/model/SceneRecentMedia;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 20
    move-result-wide v1

    .line 21
    .line 22
    iput-wide v1, v0, Lcom/narvii/scene/model/SceneRecentMedia;->createTime:J

    .line 23
    .line 24
    iput-object p1, v0, Lcom/narvii/scene/model/SceneRecentMedia;->media:Lcom/narvii/model/Media;

    .line 25
    .line 26
    iput-object p2, v0, Lcom/narvii/scene/model/SceneRecentMedia;->title:Ljava/lang/String;

    .line 27
    .line 28
    iget-object p1, p1, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    invoke-static {p1}, Lcom/narvii/util/YoutubeUtils;->getYoutubeVideoIdFromUrl(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    move-result-object p1

    .line 33
    .line 34
    if-eqz p1, :cond_0

    .line 35
    .line 36
    iget-object p2, v0, Lcom/narvii/scene/model/SceneRecentMedia;->media:Lcom/narvii/model/Media;

    .line 37
    .line 38
    .line 39
    invoke-static {p1}, Lcom/narvii/util/YoutubeUtils;->getDefaultYoutubeImage(Ljava/lang/String;)Ljava/lang/String;

    .line 40
    move-result-object p1

    .line 41
    .line 42
    iput-object p1, p2, Lcom/narvii/model/Media;->coverImage:Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    :cond_0
    invoke-direct {p0}, Lcom/narvii/scene/helper/SceneSpHelper;->getSp()Landroid/content/SharedPreferences;

    .line 46
    move-result-object p1

    .line 47
    .line 48
    .line 49
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 50
    move-result-object p1

    .line 51
    .line 52
    const-string p2, "key_recent_video"

    .line 53
    .line 54
    .line 55
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 56
    move-result-object v0

    .line 57
    .line 58
    .line 59
    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 60
    move-result-object p1

    .line 61
    .line 62
    .line 63
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 64
    return-void
.end method
