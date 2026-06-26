.class public final Lcom/narvii/master/home/profile/GlobalProfileMediaHelper;
.super Ljava/lang/Object;
.source "GlobalProfileMediaHelper.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/master/home/profile/GlobalProfileMediaHelper$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGlobalProfileMediaHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GlobalProfileMediaHelper.kt\ncom/narvii/master/home/profile/GlobalProfileMediaHelper\n*L\n1#1,58:1\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/narvii/master/home/profile/GlobalProfileMediaHelper$Companion;

.field public static final TYPE_AVATAR:I = 0x1

.field public static final TYPE_BACKGROUND:I = 0x2


# instance fields
.field private final cache:Ljava/io/File;

.field private final ctx:Lcom/narvii/app/NVContext;

.field private final mediaPicker:Lcom/narvii/media/MediaPickerFragment;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/narvii/master/home/profile/GlobalProfileMediaHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/master/home/profile/GlobalProfileMediaHelper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/narvii/master/home/profile/GlobalProfileMediaHelper;->Companion:Lcom/narvii/master/home/profile/GlobalProfileMediaHelper$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;Ljava/io/File;Lcom/narvii/media/MediaPickerFragment;)V
    .locals 1

    const-string v0, "ctx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cache"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mediaPicker"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileMediaHelper;->ctx:Lcom/narvii/app/NVContext;

    iput-object p2, p0, Lcom/narvii/master/home/profile/GlobalProfileMediaHelper;->cache:Ljava/io/File;

    iput-object p3, p0, Lcom/narvii/master/home/profile/GlobalProfileMediaHelper;->mediaPicker:Lcom/narvii/media/MediaPickerFragment;

    return-void
.end method


# virtual methods
.method public final getCache()Ljava/io/File;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileMediaHelper;->cache:Ljava/io/File;

    return-object v0
.end method

.method public final getCtx()Lcom/narvii/app/NVContext;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileMediaHelper;->ctx:Lcom/narvii/app/NVContext;

    return-object v0
.end method

.method public final getMediaPicker()Lcom/narvii/media/MediaPickerFragment;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileMediaHelper;->mediaPicker:Lcom/narvii/media/MediaPickerFragment;

    return-object v0
.end method

.method public final pickBackground(Lcom/narvii/model/User;)V
    .locals 6

    const-string v0, "user"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "type"

    const-string v3, "photo"

    .line 38
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    new-instance v3, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;

    invoke-direct {v3}, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;-><init>()V

    const/16 v4, 0xc

    .line 42
    iput v4, v3, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->optionList:I

    const/4 v4, 0x1

    .line 43
    iput-boolean v4, v3, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->isSingle:Z

    .line 44
    iget-object v4, p0, Lcom/narvii/master/home/profile/GlobalProfileMediaHelper;->mediaPicker:Lcom/narvii/media/MediaPickerFragment;

    const-string v5, "global_media_pick"

    iput-object v5, v4, Lcom/narvii/media/MediaPickerFragment;->pickCallback:Ljava/lang/String;

    .line 46
    invoke-virtual {p1}, Lcom/narvii/model/User;->hasBackground()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 47
    iget v4, v3, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->optionList:I

    or-int/lit16 v4, v4, 0x100

    iput v4, v3, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->optionList:I

    .line 48
    iget-object v4, p0, Lcom/narvii/master/home/profile/GlobalProfileMediaHelper;->mediaPicker:Lcom/narvii/media/MediaPickerFragment;

    const v5, 0x7f0f0ebb

    iput v5, v4, Lcom/narvii/media/MediaPickerFragment;->deleteStringId:I

    .line 51
    :cond_0
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 52
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v5, "JacksonUtils.writeAsString(user)"

    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v4, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x2

    .line 53
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v4, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    iget-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileMediaHelper;->mediaPicker:Lcom/narvii/media/MediaPickerFragment;

    iput-object v4, p1, Lcom/narvii/media/MediaPickerFragment;->pickCallbackParams:Ljava/util/HashMap;

    .line 55
    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileMediaHelper;->cache:Ljava/io/File;

    invoke-virtual {p1, v0, v1, v3}, Lcom/narvii/media/MediaPickerFragment;->pickMedia(Ljava/io/File;Landroid/os/Bundle;Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;)V

    return-void
.end method

.method public final pickIcon(Lcom/narvii/model/User;)V
    .locals 7

    const-string v0, "user"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "type"

    const-string v3, "photo"

    .line 21
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    new-instance v3, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;

    invoke-direct {v3}, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;-><init>()V

    const/16 v4, 0xe

    .line 25
    iput v4, v3, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->optionList:I

    const/4 v4, 0x1

    .line 26
    iput-boolean v4, v3, Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;->isSingle:Z

    .line 27
    iget-object v5, p0, Lcom/narvii/master/home/profile/GlobalProfileMediaHelper;->mediaPicker:Lcom/narvii/media/MediaPickerFragment;

    const-string v6, "global_media_pick"

    iput-object v6, v5, Lcom/narvii/media/MediaPickerFragment;->pickCallback:Ljava/lang/String;

    .line 29
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 30
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v6, "JacksonUtils.writeAsString(user)"

    invoke-static {p1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v5, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v5, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    iget-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileMediaHelper;->mediaPicker:Lcom/narvii/media/MediaPickerFragment;

    iput-object v5, p1, Lcom/narvii/media/MediaPickerFragment;->pickCallbackParams:Ljava/util/HashMap;

    .line 33
    iget-object v0, p0, Lcom/narvii/master/home/profile/GlobalProfileMediaHelper;->cache:Ljava/io/File;

    invoke-virtual {p1, v0, v1, v3}, Lcom/narvii/media/MediaPickerFragment;->pickMedia(Ljava/io/File;Landroid/os/Bundle;Lcom/narvii/media/MediaPickerFragment$MediaPickerConfiguration;)V

    return-void
.end method
