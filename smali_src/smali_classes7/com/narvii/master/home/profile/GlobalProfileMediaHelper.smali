.class public final Lcom/narvii/master/home/profile/GlobalProfileMediaHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/master/home/profile/GlobalProfileMediaHelper$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/narvii/master/home/profile/GlobalProfileMediaHelper$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TYPE_AVATAR:I = 0x1

.field public static final TYPE_BACKGROUND:I = 0x2


# instance fields
.field private final cache:Ljava/io/File;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final ctx:Lcom/narvii/app/NVContext;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final mediaPicker:Lcom/narvii/media/MediaPickerFragment;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/narvii/master/home/profile/GlobalProfileMediaHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/master/home/profile/GlobalProfileMediaHelper$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    sput-object v0, Lcom/narvii/master/home/profile/GlobalProfileMediaHelper;->Companion:Lcom/narvii/master/home/profile/GlobalProfileMediaHelper$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;Ljava/io/File;Lcom/narvii/media/MediaPickerFragment;)V
    .locals 1
    .param p1    # Lcom/narvii/app/NVContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/narvii/media/MediaPickerFragment;
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
    const-string v0, "cache"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    const-string v0, "mediaPicker"

    .line 13
    .line 14
    .line 15
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    .line 20
    iput-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileMediaHelper;->ctx:Lcom/narvii/app/NVContext;

    .line 21
    .line 22
    iput-object p2, p0, Lcom/narvii/master/home/profile/GlobalProfileMediaHelper;->cache:Ljava/io/File;

    .line 23
    .line 24
    iput-object p3, p0, Lcom/narvii/master/home/profile/GlobalProfileMediaHelper;->mediaPicker:Lcom/narvii/media/MediaPickerFragment;

    .line 25
    return-void
.end method


# virtual methods
.method public final getCache()Ljava/io/File;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileMediaHelper;->cache:Ljava/io/File;

    return-object v0
.end method

.method public final getCtx()Lcom/narvii/app/NVContext;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileMediaHelper;->ctx:Lcom/narvii/app/NVContext;

    return-object v0
.end method

.method public final getMediaPicker()Lcom/narvii/media/MediaPickerFragment;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileMediaHelper;->mediaPicker:Lcom/narvii/media/MediaPickerFragment;

    return-object v0
.end method

.method public final pickBackground(Lcom/narvii/model/User;)V
    .locals 6
    .param p1    # Lcom/narvii/model/User;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "user"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    new-instance v1, Landroid/os/Bundle;

    .line 8
    .line 9
    .line 10
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 11
    .line 12
    const-string v2, "photo"

    .line 13
    .line 14
    const-string v3, "type"

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    new-instance v2, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;

    .line 20
    .line 21
    .line 22
    invoke-direct {v2}, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;-><init>()V

    .line 23
    .line 24
    const/16 v4, 0xc

    .line 25
    .line 26
    iput v4, v2, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->optionList:I

    .line 27
    const/4 v4, 0x1

    .line 28
    .line 29
    iput-boolean v4, v2, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->isSingle:Z

    .line 30
    .line 31
    iget-object v4, p0, Lcom/narvii/master/home/profile/GlobalProfileMediaHelper;->mediaPicker:Lcom/narvii/media/MediaPickerFragment;

    .line 32
    .line 33
    const-string v5, "global_media_pick"

    .line 34
    .line 35
    iput-object v5, v4, Lcom/narvii/media/MediaPickerFragment;->pickCallback:Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/narvii/model/User;->hasBackground()Z

    .line 39
    move-result v4

    .line 40
    .line 41
    if-eqz v4, :cond_0

    .line 42
    .line 43
    iget v4, v2, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->optionList:I

    .line 44
    .line 45
    or-int/lit16 v4, v4, 0x100

    .line 46
    .line 47
    iput v4, v2, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->optionList:I

    .line 48
    .line 49
    iget-object v4, p0, Lcom/narvii/master/home/profile/GlobalProfileMediaHelper;->mediaPicker:Lcom/narvii/media/MediaPickerFragment;

    .line 50
    .line 51
    .line 52
    const v5, 0x7f120fda

    .line 53
    .line 54
    iput v5, v4, Lcom/narvii/media/MediaPickerFragment;->deleteStringId:I

    .line 55
    .line 56
    :cond_0
    new-instance v4, Ljava/util/HashMap;

    .line 57
    .line 58
    .line 59
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 60
    .line 61
    .line 62
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 63
    move-result-object p1

    .line 64
    .line 65
    const-string v5, "writeAsString(...)"

    .line 66
    .line 67
    .line 68
    invoke-static {p1, v5}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-interface {v4, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    const/4 p1, 0x2

    .line 73
    .line 74
    .line 75
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 76
    move-result-object p1

    .line 77
    .line 78
    .line 79
    invoke-interface {v4, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    iget-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileMediaHelper;->mediaPicker:Lcom/narvii/media/MediaPickerFragment;

    .line 82
    .line 83
    iput-object v4, p1, Lcom/narvii/media/MediaPickerFragment;->pickCallbackParams:Ljava/util/HashMap;

    .line 84
    .line 85
    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileMediaHelper;->cache:Ljava/io/File;

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1, v0, v1, v2}, Lcom/narvii/media/MediaPickerFragment;->pickMedia(Ljava/io/File;Landroid/os/Bundle;Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;)V

    .line 89
    return-void
.end method

.method public final pickIcon(Lcom/narvii/model/User;)V
    .locals 7
    .param p1    # Lcom/narvii/model/User;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "user"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    new-instance v1, Landroid/os/Bundle;

    .line 8
    .line 9
    .line 10
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 11
    .line 12
    const-string v2, "photo"

    .line 13
    .line 14
    const-string v3, "type"

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    new-instance v2, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;

    .line 20
    .line 21
    .line 22
    invoke-direct {v2}, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;-><init>()V

    .line 23
    .line 24
    const/16 v4, 0xe

    .line 25
    .line 26
    iput v4, v2, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->optionList:I

    .line 27
    const/4 v4, 0x1

    .line 28
    .line 29
    iput-boolean v4, v2, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->isSingle:Z

    .line 30
    .line 31
    iget-object v5, p0, Lcom/narvii/master/home/profile/GlobalProfileMediaHelper;->mediaPicker:Lcom/narvii/media/MediaPickerFragment;

    .line 32
    .line 33
    const-string v6, "global_media_pick"

    .line 34
    .line 35
    iput-object v6, v5, Lcom/narvii/media/MediaPickerFragment;->pickCallback:Ljava/lang/String;

    .line 36
    .line 37
    new-instance v5, Ljava/util/HashMap;

    .line 38
    .line 39
    .line 40
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 44
    move-result-object p1

    .line 45
    .line 46
    const-string v6, "writeAsString(...)"

    .line 47
    .line 48
    .line 49
    invoke-static {p1, v6}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-interface {v5, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 56
    move-result-object p1

    .line 57
    .line 58
    .line 59
    invoke-interface {v5, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    iget-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileMediaHelper;->mediaPicker:Lcom/narvii/media/MediaPickerFragment;

    .line 62
    .line 63
    iput-object v5, p1, Lcom/narvii/media/MediaPickerFragment;->pickCallbackParams:Ljava/util/HashMap;

    .line 64
    .line 65
    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileMediaHelper;->cache:Ljava/io/File;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, v0, v1, v2}, Lcom/narvii/media/MediaPickerFragment;->pickMedia(Ljava/io/File;Landroid/os/Bundle;Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;)V

    .line 69
    return-void
.end method
