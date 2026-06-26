.class public final Lcom/narvii/scene/helper/SceneSpHelper;
.super Ljava/lang/Object;
.source "SceneSpHelper.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/scene/helper/SceneSpHelper$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSceneSpHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SceneSpHelper.kt\ncom/narvii/scene/helper/SceneSpHelper\n*L\n1#1,59:1\n*E\n"
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;

.field public static final Companion:Lcom/narvii/scene/helper/SceneSpHelper$Companion;

.field public static final DAYMS:I = 0x5265c00

.field public static final KEY_RECENT_VIDEO:Ljava/lang/String; = "key_recent_video"

.field public static final SP_RECENT_MEDIA:Ljava/lang/String; = "recent_media"


# instance fields
.field private final ctx:Lcom/narvii/app/NVContext;

.field private final photoManager$delegate:Lkotlin/Lazy;

.field private final sp$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lcom/narvii/scene/helper/SceneSpHelper;

    const/4 v1, 0x2

    new-array v1, v1, [Lkotlin/reflect/KProperty;

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    const-string v4, "photoManager"

    const-string v5, "getPhotoManager()Lcom/narvii/photos/PhotoManager;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    const-string v3, "sp"

    const-string v4, "getSp()Landroid/content/SharedPreferences;"

    invoke-direct {v2, v0, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    sput-object v1, Lcom/narvii/scene/helper/SceneSpHelper;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/narvii/scene/helper/SceneSpHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/scene/helper/SceneSpHelper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/narvii/scene/helper/SceneSpHelper;->Companion:Lcom/narvii/scene/helper/SceneSpHelper$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1

    const-string v0, "ctx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/scene/helper/SceneSpHelper;->ctx:Lcom/narvii/app/NVContext;

    .line 13
    new-instance p1, Lcom/narvii/scene/helper/SceneSpHelper$photoManager$2;

    invoke-direct {p1, p0}, Lcom/narvii/scene/helper/SceneSpHelper$photoManager$2;-><init>(Lcom/narvii/scene/helper/SceneSpHelper;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/scene/helper/SceneSpHelper;->photoManager$delegate:Lkotlin/Lazy;

    .line 23
    new-instance p1, Lcom/narvii/scene/helper/SceneSpHelper$sp$2;

    invoke-direct {p1, p0}, Lcom/narvii/scene/helper/SceneSpHelper$sp$2;-><init>(Lcom/narvii/scene/helper/SceneSpHelper;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/scene/helper/SceneSpHelper;->sp$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private final getSp()Landroid/content/SharedPreferences;
    .locals 3

    iget-object v0, p0, Lcom/narvii/scene/helper/SceneSpHelper;->sp$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/scene/helper/SceneSpHelper;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    return-object v0
.end method


# virtual methods
.method public final getCtx()Lcom/narvii/app/NVContext;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/narvii/scene/helper/SceneSpHelper;->ctx:Lcom/narvii/app/NVContext;

    return-object v0
.end method

.method public final getPhotoManager()Lcom/narvii/photos/PhotoManager;
    .locals 3

    iget-object v0, p0, Lcom/narvii/scene/helper/SceneSpHelper;->photoManager$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/scene/helper/SceneSpHelper;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/photos/PhotoManager;

    return-object v0
.end method

.method public final getRecentVideo()Lcom/narvii/scene/model/SceneRecentMedia;
    .locals 8

    .line 41
    invoke-direct {p0}, Lcom/narvii/scene/helper/SceneSpHelper;->getSp()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key_recent_video"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v3, Lcom/narvii/scene/model/SceneRecentMedia;

    invoke-static {v0, v3}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/scene/model/SceneRecentMedia;

    if-eqz v0, :cond_5

    .line 43
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, v0, Lcom/narvii/scene/model/SceneRecentMedia;->createTime:J

    sub-long/2addr v3, v5

    const v5, 0x5265c00

    int-to-long v5, v5

    cmp-long v7, v3, v5

    if-lez v7, :cond_1

    :cond_0
    :goto_0
    move-object v0, v2

    goto :goto_1

    .line 45
    :cond_1
    iget-object v3, v0, Lcom/narvii/scene/model/SceneRecentMedia;->media:Lcom/narvii/model/Media;

    if-eqz v3, :cond_0

    iget-object v3, v3, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    const-string v4, "srm.media.url"

    .line 47
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    const-string v7, "file://"

    invoke-static {v3, v7, v6, v5, v2}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, v0, Lcom/narvii/scene/model/SceneRecentMedia;->media:Lcom/narvii/model/Media;

    iget-object v3, v3, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "photo://"

    invoke-static {v3, v4, v6, v5, v2}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 48
    :cond_3
    invoke-virtual {p0}, Lcom/narvii/scene/helper/SceneSpHelper;->getPhotoManager()Lcom/narvii/photos/PhotoManager;

    move-result-object v3

    iget-object v4, v0, Lcom/narvii/scene/model/SceneRecentMedia;->media:Lcom/narvii/model/Media;

    iget-object v4, v4, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/narvii/photos/PhotoManager;->getPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 49
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_0

    :cond_4
    :goto_1
    if-nez v0, :cond_5

    .line 54
    invoke-direct {p0}, Lcom/narvii/scene/helper/SceneSpHelper;->getSp()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_5
    return-object v0
.end method

.method public final saveRecentVideo(Lcom/narvii/model/Media;Ljava/lang/String;)V
    .locals 3

    const-string v0, "media"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "title"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    new-instance v0, Lcom/narvii/scene/model/SceneRecentMedia;

    invoke-direct {v0}, Lcom/narvii/scene/model/SceneRecentMedia;-><init>()V

    .line 29
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/narvii/scene/model/SceneRecentMedia;->createTime:J

    .line 30
    iput-object p1, v0, Lcom/narvii/scene/model/SceneRecentMedia;->media:Lcom/narvii/model/Media;

    .line 31
    iput-object p2, v0, Lcom/narvii/scene/model/SceneRecentMedia;->title:Ljava/lang/String;

    .line 33
    iget-object p1, p1, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    invoke-static {p1}, Lcom/narvii/util/YoutubeUtils;->getYoutubeVideoIdFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 35
    iget-object p2, v0, Lcom/narvii/scene/model/SceneRecentMedia;->media:Lcom/narvii/model/Media;

    invoke-static {p1}, Lcom/narvii/util/YoutubeUtils;->getDefaultYoutubeImage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/narvii/model/Media;->coverImage:Ljava/lang/String;

    .line 37
    :cond_0
    invoke-direct {p0}, Lcom/narvii/scene/helper/SceneSpHelper;->getSp()Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "key_recent_video"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
