.class public final Lcom/narvii/scene/service/SceneDraftHelper;
.super Ljava/lang/Object;
.source "SceneDraftHelper.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/scene/service/SceneDraftHelper$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSceneDraftHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SceneDraftHelper.kt\ncom/narvii/scene/service/SceneDraftHelper\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,226:1\n1365#2,9:227\n1587#2,2:236\n1374#2:238\n1218#2,9:239\n1587#2,2:248\n1365#2,9:250\n1587#2,2:259\n1374#2:261\n1218#2,12:262\n673#2:274\n746#2,2:275\n1365#2,9:277\n1587#2,2:286\n1374#2:288\n1218#2,12:289\n673#2:301\n746#2,2:302\n1365#2,9:304\n1587#2,2:313\n1374#2:315\n1365#2,9:316\n1587#2,2:325\n1374#2:327\n1227#2,3:328\n673#2:331\n746#2,2:332\n1313#2:334\n1382#2,3:335\n716#2:338\n738#2,2:339\n1587#2,2:344\n1587#2,2:349\n1587#2,2:351\n1587#2,2:353\n1313#2:355\n1382#2,3:356\n716#2:359\n738#2,2:360\n3271#3:341\n3688#3,2:342\n3538#3:346\n3616#3,2:347\n*E\n*S KotlinDebug\n*F\n+ 1 SceneDraftHelper.kt\ncom/narvii/scene/service/SceneDraftHelper\n*L\n45#1,9:227\n45#1,2:236\n45#1:238\n46#1,9:239\n46#1,2:248\n46#1,9:250\n46#1,2:259\n46#1:261\n46#1,12:262\n46#1:274\n46#1,2:275\n46#1,9:277\n46#1,2:286\n46#1:288\n46#1,12:289\n46#1:301\n46#1,2:302\n46#1,9:304\n46#1,2:313\n46#1:315\n46#1,9:316\n46#1,2:325\n46#1:327\n46#1,3:328\n67#1:331\n67#1,2:332\n68#1:334\n68#1,3:335\n68#1:338\n68#1,2:339\n81#1,2:344\n102#1,2:349\n163#1,2:351\n188#1,2:353\n203#1:355\n203#1,3:356\n203#1:359\n203#1,2:360\n80#1:341\n80#1,2:342\n101#1:346\n101#1,2:347\n*E\n"
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;

.field public static final Companion:Lcom/narvii/scene/service/SceneDraftHelper$Companion;

.field public static final TAG:Ljava/lang/String; = "SceneDraftHelper"


# instance fields
.field private final deleteFile:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/io/File;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final draftManager:Lcom/narvii/post/DraftManager;

.field private final nvContext:Lcom/narvii/app/NVContext;

.field private final photoManager:Lcom/narvii/photos/PhotoManager;

.field private final singleThreadExecutor$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/scene/service/SceneDraftHelper;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "singleThreadExecutor"

    const-string v4, "getSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/narvii/scene/service/SceneDraftHelper;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/narvii/scene/service/SceneDraftHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/scene/service/SceneDraftHelper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/narvii/scene/service/SceneDraftHelper;->Companion:Lcom/narvii/scene/service/SceneDraftHelper$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1

    const-string v0, "nvContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/scene/service/SceneDraftHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 30
    iget-object p1, p0, Lcom/narvii/scene/service/SceneDraftHelper;->nvContext:Lcom/narvii/app/NVContext;

    const-string v0, "photo"

    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "nvContext.getService(\"photo\")"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/photos/PhotoManager;

    iput-object p1, p0, Lcom/narvii/scene/service/SceneDraftHelper;->photoManager:Lcom/narvii/photos/PhotoManager;

    .line 31
    iget-object p1, p0, Lcom/narvii/scene/service/SceneDraftHelper;->nvContext:Lcom/narvii/app/NVContext;

    const-string v0, "draft"

    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "nvContext.getService(\"draft\")"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/post/DraftManager;

    iput-object p1, p0, Lcom/narvii/scene/service/SceneDraftHelper;->draftManager:Lcom/narvii/post/DraftManager;

    .line 32
    sget-object p1, Lcom/narvii/scene/service/SceneDraftHelper$singleThreadExecutor$2;->INSTANCE:Lcom/narvii/scene/service/SceneDraftHelper$singleThreadExecutor$2;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/scene/service/SceneDraftHelper;->singleThreadExecutor$delegate:Lkotlin/Lazy;

    .line 34
    sget-object p1, Lcom/narvii/scene/service/SceneDraftHelper$deleteFile$1;->INSTANCE:Lcom/narvii/scene/service/SceneDraftHelper$deleteFile$1;

    iput-object p1, p0, Lcom/narvii/scene/service/SceneDraftHelper;->deleteFile:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public static final synthetic access$getDraftManager$p(Lcom/narvii/scene/service/SceneDraftHelper;)Lcom/narvii/post/DraftManager;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/narvii/scene/service/SceneDraftHelper;->draftManager:Lcom/narvii/post/DraftManager;

    return-object p0
.end method

.method public static final synthetic access$getNvContext$p(Lcom/narvii/scene/service/SceneDraftHelper;)Lcom/narvii/app/NVContext;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/narvii/scene/service/SceneDraftHelper;->nvContext:Lcom/narvii/app/NVContext;

    return-object p0
.end method

.method public static final synthetic access$getPhotoManager$p(Lcom/narvii/scene/service/SceneDraftHelper;)Lcom/narvii/photos/PhotoManager;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/narvii/scene/service/SceneDraftHelper;->photoManager:Lcom/narvii/photos/PhotoManager;

    return-object p0
.end method

.method public static final synthetic access$sceneCovImg2draftCovImgName(Lcom/narvii/scene/service/SceneDraftHelper;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/narvii/scene/service/SceneDraftHelper;->sceneCovImg2draftCovImgName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final deleteFile(Ljava/io/File;Lkotlin/jvm/functions/Function1;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/io/File;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 100
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 346
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 347
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    const-string v4, "it"

    .line 101
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 102
    :cond_1
    iget-object p1, p0, Lcom/narvii/scene/service/SceneDraftHelper;->deleteFile:Lkotlin/jvm/functions/Function1;

    .line 349
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    return-void
.end method

.method private final getSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;
    .locals 3

    iget-object v0, p0, Lcom/narvii/scene/service/SceneDraftHelper;->singleThreadExecutor$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/scene/service/SceneDraftHelper;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method private final getSourcePaths(Lcom/narvii/scene/model/SceneDraft;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/scene/model/SceneDraft;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 195
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 197
    iget-object v1, p1, Lcom/narvii/scene/model/SceneDraft;->coverImageInfo:Lcom/narvii/scene/model/SceneCoverImageInfo;

    const-string v2, ""

    if-eqz v1, :cond_3

    .line 198
    iget-object v3, v1, Lcom/narvii/scene/model/SceneCoverImageInfo;->defaultUrl:Ljava/lang/String;

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    iget-object v3, v1, Lcom/narvii/scene/model/SceneCoverImageInfo;->customUrl:Ljava/lang/String;

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    move-object v3, v2

    :goto_1
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    iget-object v1, v1, Lcom/narvii/scene/model/SceneCoverImageInfo;->screenshotUrl:Ljava/lang/String;

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    move-object v1, v2

    :goto_2
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    :cond_3
    iget-object p1, p1, Lcom/narvii/scene/model/SceneDraft;->coverImage:Ljava/lang/String;

    if-eqz p1, :cond_4

    goto :goto_3

    :cond_4
    move-object p1, v2

    :goto_3
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 355
    new-instance p1, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 356
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 357
    check-cast v1, Ljava/lang/String;

    .line 203
    invoke-direct {p0, v1}, Lcom/narvii/scene/service/SceneDraftHelper;->uri2Path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 359
    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 360
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    .line 203
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_7
    return-object v0
.end method

.method private final sceneCovImg2draftCovImg(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 211
    iget-object v0, p0, Lcom/narvii/scene/service/SceneDraftHelper;->photoManager:Lcom/narvii/photos/PhotoManager;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/narvii/photos/PhotoManager;->getUri(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    .line 212
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "uri"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, ".jpg"

    const-string v4, ""

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_scene_cover_image.jpg"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final sceneCovImg2draftCovImgName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 220
    new-instance v0, Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/narvii/scene/service/SceneDraftHelper;->sceneCovImg2draftCovImgPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "File(this.sceneCovImg2draftCovImgPath()).name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final sceneCovImg2draftCovImgPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ".jpg"

    const-string v3, ""

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_scene_cover_image.jpg"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final uri2Path(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 207
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/narvii/scene/service/SceneDraftHelper;->photoManager:Lcom/narvii/photos/PhotoManager;

    invoke-virtual {v0, p1}, Lcom/narvii/photos/PhotoManager;->getPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    move-object v1, p1

    :cond_1
    :goto_0
    return-object v1
.end method


# virtual methods
.method public final correctCoverImage(Lcom/narvii/scene/model/SceneDraft;Lkotlin/jvm/functions/Function1;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/scene/model/SceneDraft;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/narvii/scene/model/SceneDraft;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "draft"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "correctListener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "start correct draft cover >>> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/narvii/scene/model/SceneDraft;->draftId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SceneDraftHelper"

    invoke-static {v1, v0}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    iget-object v0, p1, Lcom/narvii/scene/model/SceneDraft;->sceneInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_0

    .line 108
    iput-object v1, p1, Lcom/narvii/scene/model/SceneDraft;->coverImage:Ljava/lang/String;

    const/4 v0, 0x0

    .line 109
    iput-object v0, p1, Lcom/narvii/scene/model/SceneDraft;->coverImageInfo:Lcom/narvii/scene/model/SceneCoverImageInfo;

    .line 110
    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 114
    :cond_0
    iget-object v0, p1, Lcom/narvii/scene/model/SceneDraft;->coverImageInfo:Lcom/narvii/scene/model/SceneCoverImageInfo;

    if-eqz v0, :cond_1

    iget v2, v0, Lcom/narvii/scene/model/SceneCoverImageInfo;->from:I

    if-eqz v2, :cond_1

    .line 116
    iput-object v1, v0, Lcom/narvii/scene/model/SceneCoverImageInfo;->defaultUrl:Ljava/lang/String;

    .line 117
    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 119
    :cond_1
    invoke-virtual {p1}, Lcom/narvii/scene/model/SceneDraft;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 120
    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 123
    :cond_2
    invoke-virtual {p1}, Lcom/narvii/scene/model/SceneDraft;->getFirstSceneCoverImagePath()Ljava/lang/String;

    move-result-object v0

    .line 124
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 125
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/narvii/util/FileUtils;->isEmpty(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 126
    iget-object v1, p1, Lcom/narvii/scene/model/SceneDraft;->coverImage:Ljava/lang/String;

    const-string v2, "sceneCovImg"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/narvii/scene/service/SceneDraftHelper;->sceneCovImg2draftCovImg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    .line 130
    :cond_3
    invoke-direct {p0}, Lcom/narvii/scene/service/SceneDraftHelper;->getSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lcom/narvii/scene/service/SceneDraftHelper$correctCoverImage$1;

    invoke-direct {v2, p0, p1, v0, p2}, Lcom/narvii/scene/service/SceneDraftHelper$correctCoverImage$1;-><init>(Lcom/narvii/scene/service/SceneDraftHelper;Lcom/narvii/scene/model/SceneDraft;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    .line 127
    :cond_4
    :goto_1
    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final deleteUselessFile(Lcom/narvii/scene/model/SceneDraft;)V
    .locals 13

    if-nez p1, :cond_0

    return-void

    .line 43
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "start delete useless file >>>> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/narvii/scene/model/SceneDraft;->draftId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SceneDraftHelper"

    invoke-static {v1, v0}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    iget-object v0, p1, Lcom/narvii/scene/model/SceneDraft;->sceneInfos:Ljava/util/List;

    const-string v1, "draft.sceneInfos"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 227
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 236
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 235
    check-cast v3, Lcom/narvii/scene/model/SceneInfo;

    .line 45
    iget-object v3, v3, Lcom/narvii/scene/model/SceneInfo;->id:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 235
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 46
    :cond_2
    iget-object v0, p1, Lcom/narvii/scene/model/SceneDraft;->sceneInfos:Ljava/util/List;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 239
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 246
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 247
    check-cast v3, Lcom/narvii/scene/model/SceneInfo;

    .line 47
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 48
    iget-object v7, v3, Lcom/narvii/scene/model/SceneInfo;->outputUrl:Ljava/lang/String;

    if-eqz v7, :cond_3

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 49
    :cond_3
    iget-object v7, v3, Lcom/narvii/scene/model/SceneInfo;->videoClips:Ljava/util/ArrayList;

    if-eqz v7, :cond_8

    .line 248
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_4
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/narvii/video/model/AVClipInfoPack;

    .line 50
    iget-object v9, v8, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    if-eqz v9, :cond_5

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 51
    :cond_5
    iget-object v9, v8, Lcom/narvii/video/model/AVClipInfoPack;->originalInputPath:Ljava/lang/String;

    if-eqz v9, :cond_6

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 52
    :cond_6
    iget-object v8, v8, Lcom/narvii/video/model/AVClipInfoPack;->croppingData:Lcom/narvii/cropping/CroppingData;

    if-eqz v8, :cond_4

    iget-object v8, v8, Lcom/narvii/cropping/CroppingData;->orgVideoPath:Ljava/lang/String;

    if-eqz v8, :cond_4

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    goto :goto_2

    .line 249
    :cond_7
    sget-object v7, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 54
    :cond_8
    iget-object v7, v3, Lcom/narvii/scene/model/SceneInfo;->audioClips:Ljava/util/ArrayList;

    const-string v8, "scene.audioClips"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 250
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 259
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_9
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 258
    check-cast v9, Lcom/narvii/video/model/AVClipInfoPack;

    .line 54
    iget-object v9, v9, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    if-eqz v9, :cond_9

    .line 258
    invoke-interface {v8, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 54
    :cond_a
    invoke-interface {v6, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 59
    iget-object v7, v3, Lcom/narvii/scene/model/SceneInfo;->question:Lcom/narvii/model/QuizQuestion;

    if-eqz v7, :cond_12

    .line 55
    invoke-virtual {v7}, Lcom/narvii/model/QuizQuestion;->quizOptions()Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_12

    .line 262
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 269
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_c

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 270
    check-cast v9, Lcom/narvii/model/QuizOption;

    .line 56
    iget-object v9, v9, Lcom/narvii/model/QuizOption;->mediaList:Ljava/util/List;

    if-eqz v9, :cond_b

    goto :goto_5

    :cond_b
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 271
    :goto_5
    invoke-static {v8, v9}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_4

    .line 274
    :cond_c
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 275
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_d
    :goto_6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_e

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    move-object v10, v9

    check-cast v10, Lcom/narvii/model/Media;

    .line 57
    iget-object v10, v10, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    xor-int/2addr v10, v5

    if-eqz v10, :cond_d

    invoke-interface {v7, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 277
    :cond_e
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 286
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_f
    :goto_7
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_11

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 285
    check-cast v9, Lcom/narvii/model/Media;

    .line 58
    iget-object v10, p0, Lcom/narvii/scene/service/SceneDraftHelper;->photoManager:Lcom/narvii/photos/PhotoManager;

    iget-object v9, v9, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    invoke-virtual {v10, v9}, Lcom/narvii/photos/PhotoManager;->getPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v9

    if-eqz v9, :cond_10

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    goto :goto_8

    :cond_10
    move-object v9, v4

    :goto_8
    if-eqz v9, :cond_f

    .line 285
    invoke-interface {v8, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 59
    :cond_11
    invoke-interface {v6, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 64
    :cond_12
    iget-object v7, v3, Lcom/narvii/scene/model/SceneInfo;->pollAttach:Lcom/narvii/model/PollAttach;

    if-eqz v7, :cond_1a

    iget-object v7, v7, Lcom/narvii/model/PollAttach;->polloptList:Ljava/util/List;

    if-eqz v7, :cond_1a

    .line 289
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 296
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_9
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_14

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 297
    check-cast v9, Lcom/narvii/model/PollOption;

    .line 61
    iget-object v9, v9, Lcom/narvii/model/PollOption;->mediaList:Ljava/util/List;

    if-eqz v9, :cond_13

    goto :goto_a

    :cond_13
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 298
    :goto_a
    invoke-static {v8, v9}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_9

    .line 301
    :cond_14
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 302
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_15
    :goto_b
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_16

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    move-object v10, v9

    check-cast v10, Lcom/narvii/model/Media;

    .line 62
    iget-object v10, v10, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    xor-int/2addr v10, v5

    if-eqz v10, :cond_15

    invoke-interface {v7, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 304
    :cond_16
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 313
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_17
    :goto_c
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_19

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 312
    check-cast v8, Lcom/narvii/model/Media;

    .line 63
    iget-object v9, p0, Lcom/narvii/scene/service/SceneDraftHelper;->photoManager:Lcom/narvii/photos/PhotoManager;

    iget-object v8, v8, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    invoke-virtual {v9, v8}, Lcom/narvii/photos/PhotoManager;->getPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v8

    if-eqz v8, :cond_18

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    goto :goto_d

    :cond_18
    move-object v8, v4

    :goto_d
    if-eqz v8, :cond_17

    .line 312
    invoke-interface {v5, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 64
    :cond_19
    invoke-interface {v6, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 65
    :cond_1a
    iget-object v3, v3, Lcom/narvii/scene/model/SceneInfo;->pipClips:Ljava/util/ArrayList;

    const-string v4, "scene.pipClips"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 316
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 325
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1b
    :goto_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 324
    check-cast v5, Lcom/narvii/pip/PipInfoPack;

    .line 65
    iget-object v5, v5, Lcom/narvii/pip/PipInfoPack;->inputPath:Ljava/lang/String;

    if-eqz v5, :cond_1b

    .line 324
    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 65
    :cond_1c
    invoke-interface {v6, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 328
    invoke-static {v1, v6}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto/16 :goto_1

    .line 67
    :cond_1d
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    .line 331
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 332
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1e
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Ljava/lang/String;

    .line 67
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    xor-int/2addr v6, v5

    if-eqz v6, :cond_1e

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_1f
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    .line 68
    invoke-direct {p0, p1}, Lcom/narvii/scene/service/SceneDraftHelper;->getSourcePaths(Lcom/narvii/scene/model/SceneDraft;)Ljava/util/List;

    move-result-object v1

    iget-object v3, p1, Lcom/narvii/scene/model/SceneDraft;->sceneInfos:Ljava/util/List;

    const-string v6, "sceneInfos"

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 334
    new-instance v6, Ljava/util/ArrayList;

    const/16 v7, 0xa

    invoke-static {v3, v7}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 335
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_10
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_20

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 336
    check-cast v7, Lcom/narvii/scene/model/SceneInfo;

    .line 68
    iget-object v7, v7, Lcom/narvii/scene/model/SceneInfo;->coverImage:Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_10

    :cond_20
    invoke-static {v1, v6}, Lkotlin/collections/CollectionsKt;->union(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v1

    .line 338
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 339
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_21
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Ljava/lang/String;

    .line 68
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_21

    invoke-interface {v3, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_22
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    .line 71
    iget-object v3, p1, Lcom/narvii/scene/model/SceneDraft;->coverImage:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v6, 0x0

    if-nez v3, :cond_24

    iget-object v3, p1, Lcom/narvii/scene/model/SceneDraft;->coverImage:Ljava/lang/String;

    const-string v7, "draft.coverImage"

    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x2

    const-string v8, "http"

    invoke-static {v3, v8, v6, v7, v4}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_24

    iget-object v3, p0, Lcom/narvii/scene/service/SceneDraftHelper;->photoManager:Lcom/narvii/photos/PhotoManager;

    iget-object v7, p1, Lcom/narvii/scene/model/SceneDraft;->coverImage:Ljava/lang/String;

    invoke-virtual {v3, v7}, Lcom/narvii/photos/PhotoManager;->getPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-static {v3}, Lcom/narvii/util/FileUtils;->isEmpty(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_24

    .line 72
    iget-object v3, p0, Lcom/narvii/scene/service/SceneDraftHelper;->photoManager:Lcom/narvii/photos/PhotoManager;

    iget-object v7, p1, Lcom/narvii/scene/model/SceneDraft;->coverImage:Ljava/lang/String;

    invoke-virtual {v3, v7}, Lcom/narvii/photos/PhotoManager;->getPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_23

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    goto :goto_12

    :cond_23
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v4

    :cond_24
    const-string v3, ""

    .line 76
    :goto_12
    iget-object v4, p0, Lcom/narvii/scene/service/SceneDraftHelper;->draftManager:Lcom/narvii/post/DraftManager;

    iget-object v7, p1, Lcom/narvii/scene/model/SceneDraft;->draftId:Ljava/lang/String;

    invoke-virtual {v4, v7}, Lcom/narvii/post/DraftManager;->getDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    const-string v7, "root"

    .line 78
    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_2c

    .line 79
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_2c

    .line 341
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 342
    array-length v8, v4

    const/4 v9, 0x0

    :goto_13
    if-ge v9, v8, :cond_27

    aget-object v10, v4, v9

    const-string v11, "it"

    .line 80
    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->isDirectory()Z

    move-result v11

    if-eqz v11, :cond_25

    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v2, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_25

    const/4 v11, 0x1

    goto :goto_14

    :cond_25
    const/4 v11, 0x0

    :goto_14
    if-eqz v11, :cond_26

    invoke-interface {v7, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_26
    add-int/lit8 v9, v9, 0x1

    goto :goto_13

    .line 344
    :cond_27
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    const-string v5, "f"

    .line 82
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "coverImage_only_folder"

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_28

    .line 83
    new-instance v5, Lcom/narvii/scene/service/SceneDraftHelper$deleteUselessFile$$inlined$forEach$lambda$1;

    move-object v7, v5

    move-object v8, p0

    move-object v9, v1

    move-object v10, v0

    move-object v11, p1

    move-object v12, v3

    invoke-direct/range {v7 .. v12}, Lcom/narvii/scene/service/SceneDraftHelper$deleteUselessFile$$inlined$forEach$lambda$1;-><init>(Lcom/narvii/scene/service/SceneDraftHelper;Ljava/util/List;Ljava/util/List;Lcom/narvii/scene/model/SceneDraft;Ljava/lang/String;)V

    invoke-direct {p0, v4, v5}, Lcom/narvii/scene/service/SceneDraftHelper;->deleteFile(Ljava/io/File;Lkotlin/jvm/functions/Function1;)V

    goto :goto_15

    .line 85
    :cond_28
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "scene_intermediate_file"

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_29

    .line 86
    new-instance v5, Lcom/narvii/scene/service/SceneDraftHelper$deleteUselessFile$$inlined$forEach$lambda$2;

    move-object v7, v5

    move-object v8, p0

    move-object v9, v1

    move-object v10, v0

    move-object v11, p1

    move-object v12, v3

    invoke-direct/range {v7 .. v12}, Lcom/narvii/scene/service/SceneDraftHelper$deleteUselessFile$$inlined$forEach$lambda$2;-><init>(Lcom/narvii/scene/service/SceneDraftHelper;Ljava/util/List;Ljava/util/List;Lcom/narvii/scene/model/SceneDraft;Ljava/lang/String;)V

    invoke-direct {p0, v4, v5}, Lcom/narvii/scene/service/SceneDraftHelper;->deleteFile(Ljava/io/File;Lkotlin/jvm/functions/Function1;)V

    goto :goto_15

    .line 88
    :cond_29
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p1, Lcom/narvii/scene/model/SceneDraft;->globalFileFolder:Ljava/lang/String;

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2a

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2a

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/narvii/util/FileUtils;->isEmpty(Ljava/io/File;)Z

    move-result v5

    if-nez v5, :cond_2a

    .line 90
    new-instance v5, Lcom/narvii/scene/service/SceneDraftHelper$deleteUselessFile$$inlined$forEach$lambda$3;

    move-object v7, v5

    move-object v8, p0

    move-object v9, v1

    move-object v10, v0

    move-object v11, p1

    move-object v12, v3

    invoke-direct/range {v7 .. v12}, Lcom/narvii/scene/service/SceneDraftHelper$deleteUselessFile$$inlined$forEach$lambda$3;-><init>(Lcom/narvii/scene/service/SceneDraftHelper;Ljava/util/List;Ljava/util/List;Lcom/narvii/scene/model/SceneDraft;Ljava/lang/String;)V

    invoke-direct {p0, v4, v5}, Lcom/narvii/scene/service/SceneDraftHelper;->deleteFile(Ljava/io/File;Lkotlin/jvm/functions/Function1;)V

    goto :goto_15

    .line 93
    :cond_2a
    iget-object v5, p0, Lcom/narvii/scene/service/SceneDraftHelper;->deleteFile:Lkotlin/jvm/functions/Function1;

    invoke-interface {v5, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_15

    .line 345
    :cond_2b
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_2c
    return-void
.end method

.method public final getSceneList(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/narvii/scene/model/SceneInfo;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/narvii/model/Scene;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 158
    invoke-virtual {p0, p1, v0}, Lcom/narvii/scene/service/SceneDraftHelper;->getSceneList(Ljava/util/List;Z)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final getSceneList(Ljava/util/List;Z)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/narvii/scene/model/SceneInfo;",
            ">;Z)",
            "Ljava/util/List<",
            "Lcom/narvii/model/Scene;",
            ">;"
        }
    .end annotation

    .line 162
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_3

    .line 351
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/scene/model/SceneInfo;

    .line 164
    new-instance v2, Lcom/narvii/model/Scene;

    invoke-direct {v2}, Lcom/narvii/model/Scene;-><init>()V

    .line 165
    new-instance v3, Lcom/narvii/model/Media;

    invoke-direct {v3}, Lcom/narvii/model/Media;-><init>()V

    iput-object v3, v2, Lcom/narvii/model/Scene;->media:Lcom/narvii/model/Media;

    .line 166
    iget-object v3, v2, Lcom/narvii/model/Scene;->media:Lcom/narvii/model/Media;

    const/16 v4, 0x7b

    iput v4, v3, Lcom/narvii/model/Media;->type:I

    .line 167
    invoke-virtual {v1}, Lcom/narvii/scene/model/SceneInfo;->getPreviewDuration()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/narvii/model/Media;->duration:J

    .line 168
    iget-object v3, v1, Lcom/narvii/scene/model/SceneInfo;->outputUrl:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/io/File;

    iget-object v4, v1, Lcom/narvii/scene/model/SceneInfo;->outputUrl:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/narvii/util/FileUtils;->isEmpty(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 169
    iget-object v3, v2, Lcom/narvii/model/Scene;->media:Lcom/narvii/model/Media;

    iget-object v4, p0, Lcom/narvii/scene/service/SceneDraftHelper;->photoManager:Lcom/narvii/photos/PhotoManager;

    new-instance v5, Ljava/io/File;

    iget-object v6, v1, Lcom/narvii/scene/model/SceneInfo;->outputUrl:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/narvii/photos/PhotoManager;->getUri(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 171
    :cond_0
    iget-object v3, v1, Lcom/narvii/scene/model/SceneInfo;->coverImage:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v3, Ljava/io/File;

    iget-object v4, v1, Lcom/narvii/scene/model/SceneInfo;->coverImage:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/narvii/util/FileUtils;->isEmpty(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 172
    iget-object v3, v2, Lcom/narvii/model/Scene;->media:Lcom/narvii/model/Media;

    iget-object v4, p0, Lcom/narvii/scene/service/SceneDraftHelper;->photoManager:Lcom/narvii/photos/PhotoManager;

    new-instance v5, Ljava/io/File;

    iget-object v6, v1, Lcom/narvii/scene/model/SceneInfo;->coverImage:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/narvii/photos/PhotoManager;->getUri(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/narvii/model/Media;->coverImage:Ljava/lang/String;

    .line 174
    :cond_1
    invoke-virtual {v1}, Lcom/narvii/scene/model/SceneInfo;->generateMetadata()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v3

    iput-object v3, v2, Lcom/narvii/model/Scene;->metadata:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 175
    iget-object v3, v1, Lcom/narvii/scene/model/SceneInfo;->question:Lcom/narvii/model/QuizQuestion;

    iput-object v3, v2, Lcom/narvii/model/Scene;->question:Lcom/narvii/model/QuizQuestion;

    .line 176
    iget-object v1, v1, Lcom/narvii/scene/model/SceneInfo;->pollAttach:Lcom/narvii/model/PollAttach;

    iput-object v1, v2, Lcom/narvii/model/Scene;->pollAttach:Lcom/narvii/model/PollAttach;

    if-eqz p2, :cond_2

    .line 178
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/narvii/model/Scene;->sceneId:Ljava/lang/String;

    .line 181
    :cond_2
    invoke-virtual {v2}, Lcom/narvii/model/Scene;->clone()Lcom/narvii/model/Scene;

    move-result-object v1

    const-string v2, "scene.clone()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_3
    return-object v0
.end method

.method public final removeSceneId(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/narvii/model/Scene;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/narvii/model/Scene;",
            ">;"
        }
    .end annotation

    .line 187
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-class v0, Lcom/narvii/model/Scene;

    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 353
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/Scene;

    const/4 v2, 0x0

    .line 189
    iput-object v2, v1, Lcom/narvii/model/Scene;->sceneId:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, "list"

    .line 191
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
