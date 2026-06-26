.class public final Lcom/narvii/community/MyCommunityHelper;
.super Ljava/lang/Object;
.source "MyCommunityHelper.kt"

# interfaces
.implements Landroid/arch/lifecycle/LifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/community/MyCommunityHelper$MyLaunchHelper;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMyCommunityHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MyCommunityHelper.kt\ncom/narvii/community/MyCommunityHelper\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,470:1\n37#2,2:471\n*E\n*S KotlinDebug\n*F\n+ 1 MyCommunityHelper.kt\ncom/narvii/community/MyCommunityHelper\n*L\n182#1,2:471\n*E\n"
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;


# instance fields
.field private activity:Landroid/support/v4/app/FragmentActivity;

.field private final chatService$delegate:Lkotlin/Lazy;

.field private final context:Lcom/narvii/app/NVContext;

.field private isMaster:Z

.field private launchCommunity:Lcom/narvii/model/Community;

.field private final launchHelper$delegate:Lkotlin/Lazy;

.field private launchImageView:Lcom/narvii/widget/NVImageView;

.field private launchProgress:Lcom/narvii/widget/SmoothProgressBar;

.field private myCommunityListObserver:Lcom/narvii/community/MyCommunityListService$MyCommunityListObserver;

.field private final myCommunityListService:Lcom/narvii/community/MyCommunityListService;

.field private final themePackService$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lcom/narvii/community/MyCommunityHelper;

    const/4 v1, 0x3

    new-array v1, v1, [Lkotlin/reflect/KProperty;

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    const-string v4, "launchHelper"

    const-string v5, "getLaunchHelper()Lcom/narvii/community/MyCommunityHelper$MyLaunchHelper;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    const-string v4, "chatService"

    const-string v5, "getChatService()Lcom/narvii/chat/core/ChatService;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    const-string/jumbo v3, "themePackService"

    const-string v4, "getThemePackService()Lcom/narvii/theme/ThemePackService;"

    invoke-direct {v2, v0, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v0

    const/4 v2, 0x2

    aput-object v0, v1, v2

    sput-object v1, Lcom/narvii/community/MyCommunityHelper;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/community/MyCommunityHelper;->context:Lcom/narvii/app/NVContext;

    .line 55
    new-instance p1, Lcom/narvii/community/MyCommunityHelper$launchHelper$2;

    invoke-direct {p1, p0}, Lcom/narvii/community/MyCommunityHelper$launchHelper$2;-><init>(Lcom/narvii/community/MyCommunityHelper;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/community/MyCommunityHelper;->launchHelper$delegate:Lkotlin/Lazy;

    const-string p1, "myCommunityList"

    .line 56
    invoke-direct {p0, p1}, Lcom/narvii/community/MyCommunityHelper;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/community/MyCommunityListService;

    iput-object p1, p0, Lcom/narvii/community/MyCommunityHelper;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    .line 57
    new-instance p1, Lcom/narvii/community/MyCommunityHelper$chatService$2;

    invoke-direct {p1, p0}, Lcom/narvii/community/MyCommunityHelper$chatService$2;-><init>(Lcom/narvii/community/MyCommunityHelper;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/community/MyCommunityHelper;->chatService$delegate:Lkotlin/Lazy;

    .line 58
    new-instance p1, Lcom/narvii/community/MyCommunityHelper$themePackService$2;

    invoke-direct {p1, p0}, Lcom/narvii/community/MyCommunityHelper$themePackService$2;-><init>(Lcom/narvii/community/MyCommunityHelper;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/community/MyCommunityHelper;->themePackService$delegate:Lkotlin/Lazy;

    .line 60
    sget p1, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/narvii/community/MyCommunityHelper;->isMaster:Z

    .line 62
    iget-object p1, p0, Lcom/narvii/community/MyCommunityHelper;->context:Lcom/narvii/app/NVContext;

    .line 63
    instance-of v0, p1, Lcom/narvii/app/NVActivity;

    if-eqz v0, :cond_1

    check-cast p1, Landroid/support/v4/app/FragmentActivity;

    goto :goto_1

    .line 64
    :cond_1
    instance-of v0, p1, Lcom/narvii/app/NVFragment;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/narvii/app/NVFragment;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 62
    :goto_1
    iput-object p1, p0, Lcom/narvii/community/MyCommunityHelper;->activity:Landroid/support/v4/app/FragmentActivity;

    .line 69
    iget-object p1, p0, Lcom/narvii/community/MyCommunityHelper;->activity:Landroid/support/v4/app/FragmentActivity;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getLifecycle()Landroid/arch/lifecycle/Lifecycle;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1, p0}, Landroid/arch/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    :cond_3
    return-void
.end method

.method public static final synthetic access$createShortcut(Lcom/narvii/community/MyCommunityHelper;Lcom/narvii/model/Community;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/narvii/community/MyCommunityHelper;->createShortcut(Lcom/narvii/model/Community;)V

    return-void
.end method

.method public static final synthetic access$createShortcut(Lcom/narvii/community/MyCommunityHelper;Lcom/narvii/model/Community;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/narvii/community/MyCommunityHelper;->createShortcut(Lcom/narvii/model/Community;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static final synthetic access$getActivity$p(Lcom/narvii/community/MyCommunityHelper;)Landroid/support/v4/app/FragmentActivity;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/narvii/community/MyCommunityHelper;->activity:Landroid/support/v4/app/FragmentActivity;

    return-object p0
.end method

.method public static final synthetic access$getContext(Lcom/narvii/community/MyCommunityHelper;)Landroid/content/Context;
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/narvii/community/MyCommunityHelper;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getService(Lcom/narvii/community/MyCommunityHelper;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/narvii/community/MyCommunityHelper;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$leaveCommunity(Lcom/narvii/community/MyCommunityHelper;Lcom/narvii/model/Community;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/narvii/community/MyCommunityHelper;->leaveCommunity(Lcom/narvii/model/Community;)V

    return-void
.end method

.method public static final synthetic access$reorder(Lcom/narvii/community/MyCommunityHelper;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/narvii/community/MyCommunityHelper;->reorder()V

    return-void
.end method

.method public static final synthetic access$setActivity$p(Lcom/narvii/community/MyCommunityHelper;Landroid/support/v4/app/FragmentActivity;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/narvii/community/MyCommunityHelper;->activity:Landroid/support/v4/app/FragmentActivity;

    return-void
.end method

.method private final createShortcut(Lcom/narvii/model/Community;)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 285
    iget-object v1, p1, Lcom/narvii/model/Community;->icon:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-nez v1, :cond_1

    return-void

    .line 289
    :cond_1
    new-instance v1, Lcom/narvii/util/dialog/ProgressDialog;

    invoke-direct {p0}, Lcom/narvii/community/MyCommunityHelper;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 290
    invoke-virtual {v1}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    const-string v2, "imageLoader"

    .line 292
    invoke-direct {p0, v2}, Lcom/narvii/community/MyCommunityHelper;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/util/image/NVImageLoader;

    if-eqz v2, :cond_2

    .line 293
    iget-object v0, p1, Lcom/narvii/model/Community;->icon:Ljava/lang/String;

    new-instance v3, Lcom/narvii/community/MyCommunityHelper$createShortcut$1;

    invoke-direct {v3, p0, v1, p1}, Lcom/narvii/community/MyCommunityHelper$createShortcut$1;-><init>(Lcom/narvii/community/MyCommunityHelper;Lcom/narvii/util/dialog/ProgressDialog;Lcom/narvii/model/Community;)V

    invoke-virtual {v2, v0, v3}, Lcom/android/volley/toolbox/ImageLoader;->get(Ljava/lang/String;Lcom/android/volley/toolbox/ImageLoader$ImageListener;)Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    return-void

    :cond_2
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v0
.end method

.method private final createShortcut(Lcom/narvii/model/Community;Landroid/graphics/Bitmap;)V
    .locals 13

    const-string v0, "navigator"

    .line 312
    invoke-direct {p0, v0}, Lcom/narvii/community/MyCommunityHelper;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/app/BaseNavigator;

    .line 313
    new-instance v1, Landroid/content/Intent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/narvii/app/BaseNavigator;->getMyScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "://x"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p1, Lcom/narvii/model/Community;->id:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "/default?source=Shortcut"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v0, 0x10000000

    .line 314
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v0, 0x4000000

    .line 315
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 v0, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    const/16 v4, 0x90

    .line 320
    :try_start_0
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 321
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 322
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 323
    new-instance v7, Landroid/graphics/Path;

    invoke-direct {v7}, Landroid/graphics/Path;-><init>()V

    .line 324
    new-instance v8, Landroid/graphics/RectF;

    int-to-float v4, v4

    const/4 v9, 0x0

    invoke-direct {v8, v9, v9, v4, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    const v9, 0x3e4ccccd    # 0.2f

    mul-float v4, v4, v9

    .line 325
    sget-object v9, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v7, v8, v4, v4, v9}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 326
    invoke-virtual {v6, v7}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 327
    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    invoke-direct {v4, v2, v2, v7, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 328
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    .line 329
    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/high16 v9, -0x1000000

    .line 330
    invoke-virtual {v7, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 331
    invoke-virtual {v6, p2, v4, v8, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p2, v5

    goto :goto_0

    :catch_0
    move-object p2, v3

    .line 339
    :cond_0
    :goto_0
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x19

    const-string v6, "builder.build()"

    const-string v7, "ShortcutInfo.Builder(get\u2026    .setLongLabel(c.name)"

    if-lt v4, v5, :cond_7

    .line 340
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Lcom/narvii/model/Community;->id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 341
    invoke-direct {p0}, Lcom/narvii/community/MyCommunityHelper;->getContext()Landroid/content/Context;

    move-result-object v5

    const-class v8, Landroid/content/pm/ShortcutManager;

    invoke-virtual {v5, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ShortcutManager;

    .line 342
    new-instance v8, Ljava/util/LinkedList;

    if-eqz v5, :cond_6

    invoke-virtual {v5}, Landroid/content/pm/ShortcutManager;->getDynamicShortcuts()Ljava/util/List;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 343
    sget-object v9, Lcom/narvii/community/MyCommunityHelper$createShortcut$2;->INSTANCE:Lcom/narvii/community/MyCommunityHelper$createShortcut$2;

    invoke-static {v8, v9}, Lkotlin/collections/CollectionsKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    .line 344
    invoke-virtual {v8}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    const-string v10, "list.iterator()"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 345
    :cond_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    const-string/jumbo v11, "si"

    if-eqz v10, :cond_2

    .line 346
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ShortcutInfo;

    .line 347
    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    new-array v10, v0, [Ljava/lang/String;

    aput-object v4, v10, v2

    .line 348
    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroid/content/pm/ShortcutManager;->removeDynamicShortcuts(Ljava/util/List;)V

    .line 349
    invoke-interface {v9}, Ljava/util/Iterator;->remove()V

    :cond_2
    const/4 v9, 0x4

    .line 354
    :goto_1
    invoke-virtual {v8}, Ljava/util/LinkedList;->size()I

    move-result v10

    if-lt v10, v9, :cond_3

    .line 355
    invoke-virtual {v8}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ShortcutInfo;

    new-array v12, v0, [Ljava/lang/String;

    .line 356
    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v12, v2

    invoke-static {v12}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroid/content/pm/ShortcutManager;->removeDynamicShortcuts(Ljava/util/List;)V

    goto :goto_1

    .line 359
    :cond_3
    invoke-virtual {v8}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    const/4 v9, 0x0

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ShortcutInfo;

    .line 360
    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/content/pm/ShortcutInfo;->getRank()I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    goto :goto_2

    .line 362
    :cond_4
    new-instance v8, Landroid/content/pm/ShortcutInfo$Builder;

    invoke-direct {p0}, Lcom/narvii/community/MyCommunityHelper;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v8, v10, v4}, Landroid/content/pm/ShortcutInfo$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 363
    iget-object v4, p1, Lcom/narvii/model/Community;->name:Ljava/lang/String;

    invoke-virtual {v8, v4}, Landroid/content/pm/ShortcutInfo$Builder;->setShortLabel(Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object v4

    add-int/2addr v9, v0

    .line 364
    invoke-virtual {v4, v9}, Landroid/content/pm/ShortcutInfo$Builder;->setRank(I)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object v0

    .line 365
    iget-object v4, p1, Lcom/narvii/model/Community;->name:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/content/pm/ShortcutInfo$Builder;->setLongLabel(Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object v0

    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_5

    .line 367
    invoke-static {p2}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/content/pm/ShortcutInfo$Builder;->setIcon(Landroid/graphics/drawable/Icon;)Landroid/content/pm/ShortcutInfo$Builder;

    .line 369
    :cond_5
    invoke-virtual {v0, v1}, Landroid/content/pm/ShortcutInfo$Builder;->setIntent(Landroid/content/Intent;)Landroid/content/pm/ShortcutInfo$Builder;

    .line 370
    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo$Builder;->build()Landroid/content/pm/ShortcutInfo;

    move-result-object v0

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 371
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/content/pm/ShortcutManager;->addDynamicShortcuts(Ljava/util/List;)Z

    goto :goto_3

    .line 342
    :cond_6
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v3

    .line 374
    :cond_7
    :goto_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-ge v0, v4, :cond_9

    .line 376
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v3, "android.intent.extra.shortcut.INTENT"

    .line 377
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 378
    iget-object p1, p1, Lcom/narvii/model/Community;->name:Ljava/lang/String;

    const-string v1, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-nez p2, :cond_8

    .line 380
    invoke-direct {p0}, Lcom/narvii/community/MyCommunityHelper;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->icon:I

    .line 382
    invoke-direct {p0}, Lcom/narvii/community/MyCommunityHelper;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object p1

    const-string p2, "android.intent.extra.shortcut.ICON_RESOURCE"

    .line 381
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_4

    :cond_8
    const-string p1, "android.intent.extra.shortcut.ICON"

    .line 384
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :goto_4
    const-string p1, "duplicate"

    .line 386
    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "com.android.launcher.action.INSTALL_SHORTCUT"

    .line 387
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 388
    invoke-direct {p0}, Lcom/narvii/community/MyCommunityHelper;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_5

    .line 392
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "c"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/narvii/model/Community;->id:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 393
    invoke-direct {p0}, Lcom/narvii/community/MyCommunityHelper;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v4, Landroid/content/pm/ShortcutManager;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ShortcutManager;

    .line 394
    new-instance v4, Landroid/content/pm/ShortcutInfo$Builder;

    invoke-direct {p0}, Lcom/narvii/community/MyCommunityHelper;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Landroid/content/pm/ShortcutInfo$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 395
    iget-object v0, p1, Lcom/narvii/model/Community;->name:Ljava/lang/String;

    invoke-virtual {v4, v0}, Landroid/content/pm/ShortcutInfo$Builder;->setShortLabel(Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object v0

    .line 396
    iget-object p1, p1, Lcom/narvii/model/Community;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/content/pm/ShortcutInfo$Builder;->setLongLabel(Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object p1

    invoke-static {p1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_a

    .line 398
    invoke-static {p2}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/pm/ShortcutInfo$Builder;->setIcon(Landroid/graphics/drawable/Icon;)Landroid/content/pm/ShortcutInfo$Builder;

    .line 400
    :cond_a
    invoke-virtual {p1, v1}, Landroid/content/pm/ShortcutInfo$Builder;->setIntent(Landroid/content/Intent;)Landroid/content/pm/ShortcutInfo$Builder;

    .line 401
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo$Builder;->build()Landroid/content/pm/ShortcutInfo;

    move-result-object p1

    invoke-static {p1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v2, :cond_b

    .line 402
    invoke-virtual {v2, p1, v3}, Landroid/content/pm/ShortcutManager;->requestPinShortcut(Landroid/content/pm/ShortcutInfo;Landroid/content/IntentSender;)Z

    :goto_5
    return-void

    :cond_b
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v3

    .line 313
    :cond_c
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    goto :goto_7

    :goto_6
    throw v3

    :goto_7
    goto :goto_6
.end method

.method private final getContext()Landroid/content/Context;
    .locals 2

    .line 268
    iget-object v0, p0, Lcom/narvii/community/MyCommunityHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "context.context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private final getService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 434
    iget-object v0, p0, Lcom/narvii/community/MyCommunityHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v0, p1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private final getText(I)Ljava/lang/CharSequence;
    .locals 1

    .line 272
    iget-object v0, p0, Lcom/narvii/community/MyCommunityHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    const-string v0, "context.context.getText(resId)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final leaveCommunity(Lcom/narvii/model/Community;)V
    .locals 2

    .line 408
    new-instance v0, Lcom/narvii/master/MasterLeaveCommunityHelper;

    iget-object v1, p0, Lcom/narvii/community/MyCommunityHelper;->context:Lcom/narvii/app/NVContext;

    invoke-direct {v0, v1}, Lcom/narvii/master/MasterLeaveCommunityHelper;-><init>(Lcom/narvii/app/NVContext;)V

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/narvii/community/LeaveCommunityHelper;->leaveCommunity(Lcom/narvii/model/Community;Lcom/narvii/util/Callback;)V

    return-void
.end method

.method private final onDestroy()V
    .locals 2
    .annotation runtime Landroid/arch/lifecycle/OnLifecycleEvent;
        value = .enum Landroid/arch/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroid/arch/lifecycle/Lifecycle$Event;
    .end annotation

    .line 418
    iget-object v0, p0, Lcom/narvii/community/MyCommunityHelper;->myCommunityListObserver:Lcom/narvii/community/MyCommunityListService$MyCommunityListObserver;

    if-eqz v0, :cond_0

    .line 419
    iget-object v1, p0, Lcom/narvii/community/MyCommunityHelper;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    invoke-virtual {v1, v0}, Lcom/narvii/community/MyCommunityListService;->removeObserver(Lcom/narvii/community/MyCommunityListService$MyCommunityListObserver;)V

    :cond_0
    return-void
.end method

.method private final onPause()V
    .locals 0
    .annotation runtime Landroid/arch/lifecycle/OnLifecycleEvent;
        value = .enum Landroid/arch/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroid/arch/lifecycle/Lifecycle$Event;
    .end annotation

    .line 413
    invoke-virtual {p0}, Lcom/narvii/community/MyCommunityHelper;->cancelLaunch()V

    return-void
.end method

.method private final reorder()V
    .locals 2

    .line 280
    const-class v0, Lcom/narvii/master/SortCommunityFragment;

    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "i"

    .line 281
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/narvii/community/MyCommunityHelper;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public final addGlobalChatMessageReceptor(Lcom/narvii/chat/core/ChatService$ChatMessageReceptor;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0}, Lcom/narvii/community/MyCommunityHelper;->getChatService()Lcom/narvii/chat/core/ChatService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/narvii/chat/core/ChatService;->addGlobalChatMessageReceptor(Lcom/narvii/chat/core/ChatService$ChatMessageReceptor;)V

    return-void
.end method

.method public final addObserver(Lcom/narvii/community/MyCommunityListService$MyCommunityListObserver;)V
    .locals 1

    const-string v0, "observer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    iput-object p1, p0, Lcom/narvii/community/MyCommunityHelper;->myCommunityListObserver:Lcom/narvii/community/MyCommunityListService$MyCommunityListObserver;

    .line 78
    iget-object p1, p0, Lcom/narvii/community/MyCommunityHelper;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    iget-object v0, p0, Lcom/narvii/community/MyCommunityHelper;->myCommunityListObserver:Lcom/narvii/community/MyCommunityListService$MyCommunityListObserver;

    invoke-virtual {p1, v0}, Lcom/narvii/community/MyCommunityListService;->addObserver(Lcom/narvii/community/MyCommunityListService$MyCommunityListObserver;)V

    return-void
.end method

.method public final cancelLaunch()V
    .locals 2

    .line 424
    invoke-virtual {p0}, Lcom/narvii/community/MyCommunityHelper;->getLaunchHelper()Lcom/narvii/community/MyCommunityHelper$MyLaunchHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/community/MyCommunityHelper$MyLaunchHelper;->cancel()V

    .line 425
    iget-object v0, p0, Lcom/narvii/community/MyCommunityHelper;->launchProgress:Lcom/narvii/widget/SmoothProgressBar;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 426
    invoke-virtual {v0, v1}, Lcom/narvii/widget/SmoothProgressBar;->setProgress(I)V

    const/4 v1, 0x4

    .line 427
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    const/4 v0, 0x0

    .line 429
    iput-object v0, p0, Lcom/narvii/community/MyCommunityHelper;->launchProgress:Lcom/narvii/widget/SmoothProgressBar;

    .line 430
    iput-object v0, p0, Lcom/narvii/community/MyCommunityHelper;->launchCommunity:Lcom/narvii/model/Community;

    .line 431
    iput-object v0, p0, Lcom/narvii/community/MyCommunityHelper;->launchImageView:Lcom/narvii/widget/NVImageView;

    return-void
.end method

.method public final errorMessage()Ljava/lang/String;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/narvii/community/MyCommunityHelper;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    invoke-virtual {v0}, Lcom/narvii/community/MyCommunityListService;->errorMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getChatService()Lcom/narvii/chat/core/ChatService;
    .locals 3

    iget-object v0, p0, Lcom/narvii/community/MyCommunityHelper;->chatService$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/community/MyCommunityHelper;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/core/ChatService;

    return-object v0
.end method

.method public final getContext()Lcom/narvii/app/NVContext;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/narvii/community/MyCommunityHelper;->context:Lcom/narvii/app/NVContext;

    return-object v0
.end method

.method public final getLaunchCommunity()Lcom/narvii/model/Community;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/narvii/community/MyCommunityHelper;->launchCommunity:Lcom/narvii/model/Community;

    return-object v0
.end method

.method public final getLaunchHelper()Lcom/narvii/community/MyCommunityHelper$MyLaunchHelper;
    .locals 3

    iget-object v0, p0, Lcom/narvii/community/MyCommunityHelper;->launchHelper$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/community/MyCommunityHelper;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/community/MyCommunityHelper$MyLaunchHelper;

    return-object v0
.end method

.method public final getLaunchImageView()Lcom/narvii/widget/NVImageView;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/narvii/community/MyCommunityHelper;->launchImageView:Lcom/narvii/widget/NVImageView;

    return-object v0
.end method

.method public final getLaunchProgress()Lcom/narvii/widget/SmoothProgressBar;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/narvii/community/MyCommunityHelper;->launchProgress:Lcom/narvii/widget/SmoothProgressBar;

    return-object v0
.end method

.method public final getMyCommunityListObserver()Lcom/narvii/community/MyCommunityListService$MyCommunityListObserver;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/narvii/community/MyCommunityHelper;->myCommunityListObserver:Lcom/narvii/community/MyCommunityListService$MyCommunityListObserver;

    return-object v0
.end method

.method public final getMyCommunityListService()Lcom/narvii/community/MyCommunityListService;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/narvii/community/MyCommunityHelper;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    return-object v0
.end method

.method public final getThemePackService()Lcom/narvii/theme/ThemePackService;
    .locals 3

    iget-object v0, p0, Lcom/narvii/community/MyCommunityHelper;->themePackService$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/community/MyCommunityHelper;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/theme/ThemePackService;

    return-object v0
.end method

.method public final getUserProfile(I)Lcom/narvii/model/User;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/narvii/community/MyCommunityHelper;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    invoke-virtual {v0, p1}, Lcom/narvii/community/MyCommunityListService;->getUserProfile(I)Lcom/narvii/model/User;

    move-result-object p1

    return-object p1
.end method

.method public final isMaster()Z
    .locals 1

    .line 60
    iget-boolean v0, p0, Lcom/narvii/community/MyCommunityHelper;->isMaster:Z

    return v0
.end method

.method public final launchCommunity(Lcom/narvii/model/Community;Landroid/view/View;Lkotlin/jvm/functions/Function1;)Z
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/model/Community;",
            "Landroid/view/View;",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Object;",
            "Lkotlin/Unit;",
            ">;)Z"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v3, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const-string v4, "item"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "cell"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "aminoEnterCallback"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    iget-boolean v4, v0, Lcom/narvii/community/MyCommunityHelper;->isMaster:Z

    const v5, 0x7f0f0193

    const/4 v12, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_d

    .line 95
    iget-object v4, v0, Lcom/narvii/community/MyCommunityHelper;->launchCommunity:Lcom/narvii/model/Community;

    if-eqz v4, :cond_2

    if-eqz v4, :cond_1

    .line 96
    iget v4, v4, Lcom/narvii/model/Community;->id:I

    iget v7, v3, Lcom/narvii/model/Community;->id:I

    if-ne v4, v7, :cond_0

    return v12

    .line 99
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/community/MyCommunityHelper;->cancelLaunch()V

    goto :goto_0

    .line 96
    :cond_1
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v6

    .line 102
    :cond_2
    :goto_0
    iget v4, v3, Lcom/narvii/model/Community;->status:I

    const/16 v7, 0x9

    if-ne v4, v7, :cond_3

    .line 103
    new-instance v1, Lcom/narvii/widget/ACMAlertDialog;

    iget-object v2, v0, Lcom/narvii/community/MyCommunityHelper;->activity:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {v1, v2}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0f0352

    .line 104
    invoke-virtual {v1, v2}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(I)V

    .line 105
    invoke-virtual {v1, v5, v6}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v2, 0x7f0f0acd

    .line 106
    new-instance v4, Lcom/narvii/community/MyCommunityHelper$launchCommunity$1;

    invoke-direct {v4, p0, v3}, Lcom/narvii/community/MyCommunityHelper$launchCommunity$1;-><init>(Lcom/narvii/community/MyCommunityHelper;Lcom/narvii/model/Community;)V

    invoke-virtual {v1, v2, v4}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 107
    invoke-virtual {v1}, Lcom/narvii/app/NVDialog;->show()V

    return v12

    :cond_3
    const v4, 0x7f0908cb

    .line 110
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_c

    check-cast v4, Lcom/narvii/widget/SmoothProgressBar;

    iput-object v4, v0, Lcom/narvii/community/MyCommunityHelper;->launchProgress:Lcom/narvii/widget/SmoothProgressBar;

    .line 111
    iget-object v4, v0, Lcom/narvii/community/MyCommunityHelper;->launchProgress:Lcom/narvii/widget/SmoothProgressBar;

    const/4 v5, 0x0

    if-eqz v4, :cond_4

    invoke-virtual {v4, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 112
    :cond_4
    iget-object v4, v0, Lcom/narvii/community/MyCommunityHelper;->launchProgress:Lcom/narvii/widget/SmoothProgressBar;

    if-eqz v4, :cond_5

    const/16 v7, 0x64

    invoke-virtual {v4, v7}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 113
    :cond_5
    iget-object v4, v0, Lcom/narvii/community/MyCommunityHelper;->launchProgress:Lcom/narvii/widget/SmoothProgressBar;

    if-eqz v4, :cond_6

    invoke-virtual {v4, v5}, Lcom/narvii/widget/SmoothProgressBar;->setProgress(I)V

    .line 115
    :cond_6
    invoke-interface {v2, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    const v2, 0x7f090571

    .line 117
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_b

    check-cast v1, Lcom/narvii/widget/NVImageView;

    iput-object v1, v0, Lcom/narvii/community/MyCommunityHelper;->launchImageView:Lcom/narvii/widget/NVImageView;

    .line 118
    iput-object v3, v0, Lcom/narvii/community/MyCommunityHelper;->launchCommunity:Lcom/narvii/model/Community;

    .line 119
    iget-object v1, v0, Lcom/narvii/community/MyCommunityHelper;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    iget v2, v3, Lcom/narvii/model/Community;->id:I

    invoke-virtual {v1, v2}, Lcom/narvii/community/MyCommunityListService;->getCommunityTimestamp(I)Ljava/lang/String;

    move-result-object v4

    .line 120
    iget-object v1, v0, Lcom/narvii/community/MyCommunityHelper;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    iget v2, v3, Lcom/narvii/model/Community;->id:I

    invoke-virtual {v1, v2}, Lcom/narvii/community/MyCommunityListService;->getUserProfile(I)Lcom/narvii/model/User;

    move-result-object v7

    .line 121
    iget-object v1, v0, Lcom/narvii/community/MyCommunityHelper;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    iget v2, v3, Lcom/narvii/model/Community;->id:I

    invoke-virtual {v1, v2}, Lcom/narvii/community/MyCommunityListService;->getUserInfoTimestamp(I)Ljava/lang/String;

    move-result-object v8

    .line 122
    iget-object v1, v0, Lcom/narvii/community/MyCommunityHelper;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    iget v2, v3, Lcom/narvii/model/Community;->id:I

    invoke-virtual {v1, v2}, Lcom/narvii/community/MyCommunityListService;->getReminder(I)Lcom/narvii/community/ReminderCheck;

    move-result-object v9

    .line 123
    iget-object v1, v0, Lcom/narvii/community/MyCommunityHelper;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    iget v2, v3, Lcom/narvii/model/Community;->id:I

    invoke-virtual {v1, v2}, Lcom/narvii/community/MyCommunityListService;->getReminderTimestamp(I)Ljava/lang/String;

    move-result-object v10

    const-string v1, "community"

    .line 125
    invoke-direct {p0, v1}, Lcom/narvii/community/MyCommunityHelper;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/community/CommunityService;

    .line 126
    iget v2, v3, Lcom/narvii/model/Community;->id:I

    invoke-virtual {v1, v2}, Lcom/narvii/community/CommunityService;->getCommunity(I)Lcom/narvii/model/Community;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 127
    iget-object v2, v1, Lcom/narvii/model/Community;->configuration:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    goto :goto_1

    :cond_7
    move-object v2, v6

    :goto_1
    if-eqz v2, :cond_9

    iget-object v1, v1, Lcom/narvii/model/Community;->configuration:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->size()I

    move-result v1

    if-nez v1, :cond_8

    goto :goto_2

    :cond_8
    const/4 v11, 0x0

    goto :goto_3

    :cond_9
    :goto_2
    const/4 v11, 0x1

    .line 128
    :goto_3
    invoke-virtual {p0}, Lcom/narvii/community/MyCommunityHelper;->getLaunchHelper()Lcom/narvii/community/MyCommunityHelper$MyLaunchHelper;

    move-result-object v1

    iget v2, v3, Lcom/narvii/model/Community;->id:I

    const/4 v13, 0x1

    iget-object v5, v0, Lcom/narvii/community/MyCommunityHelper;->launchImageView:Lcom/narvii/widget/NVImageView;

    if-eqz v5, :cond_a

    invoke-virtual {v5}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v14

    move-object/from16 v3, p1

    move-object v5, v7

    move-object v6, v8

    move-object v7, v9

    move-object v8, v10

    move v9, v11

    move v10, v13

    move-object v11, v14

    invoke-virtual/range {v1 .. v11}, Lcom/narvii/community/MyCommunityHelper$MyLaunchHelper;->launch(ILcom/narvii/model/Community;Ljava/lang/String;Lcom/narvii/model/User;Ljava/lang/String;Lcom/narvii/community/ReminderCheck;Ljava/lang/String;ZILandroid/graphics/drawable/Drawable;)V

    goto/16 :goto_4

    :cond_a
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v6

    .line 117
    :cond_b
    new-instance v1, Lkotlin/TypeCastException;

    const-string v2, "null cannot be cast to non-null type com.narvii.widget.NVImageView"

    invoke-direct {v1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 110
    :cond_c
    new-instance v1, Lkotlin/TypeCastException;

    const-string v2, "null cannot be cast to non-null type com.narvii.widget.SmoothProgressBar"

    invoke-direct {v1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 130
    :cond_d
    new-instance v1, Lcom/narvii/util/PackageUtils;

    invoke-direct {p0}, Lcom/narvii/community/MyCommunityHelper;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/narvii/util/PackageUtils;-><init>(Landroid/content/Context;)V

    .line 131
    invoke-virtual {v1}, Lcom/narvii/util/PackageUtils;->getMasterPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/narvii/util/PackageUtils;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 133
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/narvii/util/PackageUtils;->getMasterScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "://x"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v3, Lcom/narvii/model/Community;->id:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/description"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 134
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "clearTask"

    .line 135
    invoke-virtual {v2, v1, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 136
    invoke-virtual {p0, v2}, Lcom/narvii/community/MyCommunityHelper;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 141
    :cond_e
    new-instance v2, Lcom/narvii/util/dialog/AlertDialog;

    iget-object v4, v0, Lcom/narvii/community/MyCommunityHelper;->activity:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {v2, v4}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 142
    invoke-direct {p0}, Lcom/narvii/community/MyCommunityHelper;->getContext()Landroid/content/Context;

    move-result-object v4

    const v7, 0x7f0f03b2

    invoke-virtual {v4, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/narvii/util/dialog/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    const v4, 0x7f0b018f

    .line 143
    invoke-virtual {v2, v4}, Lcom/narvii/util/dialog/AlertDialog;->setContentView(I)V

    const/16 v4, 0x40

    .line 144
    invoke-virtual {v2, v5, v4, v6}, Lcom/narvii/util/dialog/AlertDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object v5

    const-string v6, "null cannot be cast to non-null type android.widget.Button"

    if-eqz v5, :cond_10

    check-cast v5, Landroid/widget/Button;

    .line 145
    invoke-direct {p0}, Lcom/narvii/community/MyCommunityHelper;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f06007a

    invoke-static {v7, v8}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setTextColor(I)V

    const v5, 0x7f0f072a

    .line 147
    new-instance v7, Lcom/narvii/community/MyCommunityHelper$launchCommunity$btnYes$1;

    invoke-direct {v7, v3, v1}, Lcom/narvii/community/MyCommunityHelper$launchCommunity$btnYes$1;-><init>(Lcom/narvii/model/Community;Lcom/narvii/util/PackageUtils;)V

    invoke-virtual {v2, v5, v4, v7}, Lcom/narvii/util/dialog/AlertDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_f

    check-cast v1, Landroid/widget/Button;

    .line 152
    invoke-direct {p0}, Lcom/narvii/community/MyCommunityHelper;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v8}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setTextColor(I)V

    .line 153
    invoke-virtual {v2}, Lcom/narvii/app/NVDialog;->show()V

    :catch_0
    :goto_4
    return v12

    .line 147
    :cond_f
    new-instance v1, Lkotlin/TypeCastException;

    invoke-direct {v1, v6}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 144
    :cond_10
    new-instance v1, Lkotlin/TypeCastException;

    invoke-direct {v1, v6}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final rawList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/narvii/model/Community;",
            ">;"
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lcom/narvii/community/MyCommunityHelper;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    invoke-virtual {v0}, Lcom/narvii/community/MyCommunityListService;->rawList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final refresh(ILkotlin/jvm/functions/Function1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/narvii/community/MyCommunityHelper;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    new-instance v1, Lcom/narvii/community/MyCommunityHelper$refresh$1;

    invoke-direct {v1, p2}, Lcom/narvii/community/MyCommunityHelper$refresh$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, p1, v1}, Lcom/narvii/community/MyCommunityListService;->refresh(ILcom/narvii/util/Callback;)V

    return-void
.end method

.method public final setLaunchCommunity(Lcom/narvii/model/Community;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/narvii/community/MyCommunityHelper;->launchCommunity:Lcom/narvii/model/Community;

    return-void
.end method

.method public final setLaunchImageView(Lcom/narvii/widget/NVImageView;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/narvii/community/MyCommunityHelper;->launchImageView:Lcom/narvii/widget/NVImageView;

    return-void
.end method

.method public final setLaunchProgress(Lcom/narvii/widget/SmoothProgressBar;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/narvii/community/MyCommunityHelper;->launchProgress:Lcom/narvii/widget/SmoothProgressBar;

    return-void
.end method

.method public final setMaster(Z)V
    .locals 0

    .line 60
    iput-boolean p1, p0, Lcom/narvii/community/MyCommunityHelper;->isMaster:Z

    return-void
.end method

.method public final setMyCommunityListObserver(Lcom/narvii/community/MyCommunityListService$MyCommunityListObserver;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/narvii/community/MyCommunityHelper;->myCommunityListObserver:Lcom/narvii/community/MyCommunityListService$MyCommunityListObserver;

    return-void
.end method

.method public final showMenuDialog(Lcom/narvii/model/Community;)V
    .locals 10

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {p0}, Lcom/narvii/community/MyCommunityHelper;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x5

    new-array v1, v1, [I

    .line 164
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const v3, 0x7f0f02c6

    .line 165
    invoke-direct {p0, v3}, Lcom/narvii/community/MyCommunityHelper;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x0

    aput v3, v1, v4

    .line 167
    iget-object v3, p0, Lcom/narvii/community/MyCommunityHelper;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    invoke-virtual {v3}, Lcom/narvii/community/MyCommunityListService;->rawList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v5, 0x1

    if-le v3, v5, :cond_0

    const v3, 0x7f0f0ed5

    .line 168
    invoke-direct {p0, v3}, Lcom/narvii/community/MyCommunityHelper;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v6, 0x2

    aput v3, v1, v5

    const/4 v5, 0x2

    .line 171
    :cond_0
    sget v3, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    const/16 v6, 0x64

    if-ne v3, v6, :cond_1

    iget-object v3, p1, Lcom/narvii/model/Community;->icon:Ljava/lang/String;

    if-eqz v3, :cond_1

    const v3, 0x7f0f02c4

    .line 172
    invoke-direct {p0, v3}, Lcom/narvii/community/MyCommunityHelper;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v5, 0x1

    .line 173
    aput v3, v1, v5

    move v5, v6

    .line 176
    :cond_1
    new-instance v3, Lcom/narvii/util/text/NVText;

    const v6, 0x7f0f0e18

    invoke-direct {p0, v6}, Lcom/narvii/community/MyCommunityHelper;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-direct {v3, v7}, Lcom/narvii/util/text/NVText;-><init>(Ljava/lang/CharSequence;)V

    .line 177
    new-instance v7, Landroid/text/style/ForegroundColorSpan;

    const v8, -0x40fff2

    invoke-direct {v7, v8}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 178
    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v8

    const/16 v9, 0x22

    invoke-virtual {v3, v7, v4, v8, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 179
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    aput v6, v1, v5

    new-array v3, v4, [Ljava/lang/CharSequence;

    .line 472
    invoke-interface {v2, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    check-cast v2, [Ljava/lang/CharSequence;

    .line 182
    new-instance v3, Lcom/narvii/community/MyCommunityHelper$showMenuDialog$1;

    invoke-direct {v3, p0, v1, p1}, Lcom/narvii/community/MyCommunityHelper$showMenuDialog$1;-><init>(Lcom/narvii/community/MyCommunityHelper;[ILcom/narvii/model/Community;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 198
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    .line 472
    :cond_2
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final startActivity(Landroid/content/Intent;)V
    .locals 1

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 276
    iget-object v0, p0, Lcom/narvii/community/MyCommunityHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v0, p1}, Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public final updateRemindersInCell(Landroid/view/View;Lcom/narvii/model/Community;Z)V
    .locals 10

    const-string v0, "cell"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/narvii/community/MyCommunityHelper;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    iget v1, p2, Lcom/narvii/model/Community;->id:I

    invoke-virtual {v0, v1}, Lcom/narvii/community/MyCommunityListService;->getReminder(I)Lcom/narvii/community/ReminderCheck;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    if-nez p2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    .line 203
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/community/MyCommunityHelper;->getChatService()Lcom/narvii/chat/core/ChatService;

    move-result-object v2

    iget v3, p2, Lcom/narvii/model/Community;->id:I

    invoke-virtual {v2, v3}, Lcom/narvii/chat/core/ChatService;->getUnreadChatCountInCurCommunity(I)I

    move-result v2

    :goto_1
    if-eqz v0, :cond_2

    .line 204
    iget-object v3, v0, Lcom/narvii/community/ReminderCheck;->hasCheckInToday:Ljava/lang/Boolean;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v3, v4, :cond_2

    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    if-nez v0, :cond_3

    const/4 v2, 0x0

    goto :goto_3

    .line 205
    :cond_3
    iget v4, v0, Lcom/narvii/community/ReminderCheck;->notificationsCount:I

    iget v5, v0, Lcom/narvii/community/ReminderCheck;->noticesCount:I

    add-int/2addr v4, v5

    add-int/2addr v2, v4

    .line 207
    :goto_3
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, p2}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    const v5, 0x7f090229

    .line 208
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    if-nez v4, :cond_4

    .line 210
    invoke-virtual {v5}, Landroid/view/View;->clearAnimation()V

    :cond_4
    const v6, 0x7f010029

    const v7, 0x7f01002b

    const/16 v8, 0x8

    const-string/jumbo v9, "v"

    if-eqz v3, :cond_6

    if-eqz v4, :cond_5

    .line 213
    invoke-static {v5, v9}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_5

    .line 214
    invoke-direct {p0}, Lcom/narvii/community/MyCommunityHelper;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 216
    :cond_5
    invoke-static {v5, v9}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    :cond_6
    if-eqz v4, :cond_7

    .line 218
    invoke-static {v5, v9}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_7

    .line 219
    invoke-direct {p0}, Lcom/narvii/community/MyCommunityHelper;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v7}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 221
    :cond_7
    invoke-static {v5, v9}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    :goto_4
    const v3, 0x7f09078e

    .line 224
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_10

    .line 225
    move-object v3, p1

    check-cast v3, Landroid/widget/TextView;

    const/16 v5, 0x9

    if-le v2, v5, :cond_8

    const-string v5, "9+"

    goto :goto_5

    :cond_8
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    :goto_5
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-nez v4, :cond_9

    .line 227
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    :cond_9
    if-lez v2, :cond_b

    if-eqz v4, :cond_a

    .line 230
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_a

    .line 231
    invoke-direct {p0}, Lcom/narvii/community/MyCommunityHelper;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 233
    :cond_a
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6

    :cond_b
    if-eqz v4, :cond_c

    .line 235
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_c

    .line 236
    invoke-direct {p0}, Lcom/narvii/community/MyCommunityHelper;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v7}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 238
    :cond_c
    invoke-virtual {p1, v8}, Landroid/view/View;->setVisibility(I)V

    :goto_6
    if-eqz p3, :cond_e

    if-eqz p2, :cond_e

    if-eqz v0, :cond_d

    .line 241
    iget-object p1, p0, Lcom/narvii/community/MyCommunityHelper;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    iget p3, p2, Lcom/narvii/model/Community;->id:I

    invoke-virtual {p1, p3}, Lcom/narvii/community/MyCommunityListService;->getReminderRequestTime(I)J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sget-object p1, Lcom/narvii/chat/global/chat/AggregationChatFragment;->Companion:Lcom/narvii/chat/global/chat/AggregationChatFragment$Companion;

    invoke-virtual {p1}, Lcom/narvii/chat/global/chat/AggregationChatFragment$Companion;->getREMINDER_CHECK_DURATION()J

    move-result-wide v4

    sub-long/2addr v2, v4

    cmp-long p1, v0, v2

    if-gez p1, :cond_e

    .line 242
    :cond_d
    iget-object p1, p0, Lcom/narvii/community/MyCommunityHelper;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    iget p3, p2, Lcom/narvii/model/Community;->id:I

    invoke-virtual {p1, p3}, Lcom/narvii/community/MyCommunityListService;->addReminderRequestQueue(I)V

    :cond_e
    if-eqz p2, :cond_f

    .line 246
    invoke-virtual {p0}, Lcom/narvii/community/MyCommunityHelper;->getChatService()Lcom/narvii/chat/core/ChatService;

    move-result-object p1

    iget p2, p2, Lcom/narvii/model/Community;->id:I

    invoke-virtual {p1, p2}, Lcom/narvii/chat/core/ChatService;->addThreadCheckQueue(I)V

    :cond_f
    return-void

    .line 225
    :cond_10
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.widget.TextView"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final updateThemeProgressInCell(Landroid/view/View;Lcom/narvii/model/Community;)V
    .locals 2

    const-string v0, "cell"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "c"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 251
    sget-boolean v0, Lcom/narvii/app/NVApplication;->DEBUG:Z

    if-eqz v0, :cond_5

    const v0, 0x7f090333

    .line 252
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_4

    check-cast p1, Landroid/widget/TextView;

    const/4 v0, 0x0

    .line 253
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 254
    invoke-virtual {p0}, Lcom/narvii/community/MyCommunityHelper;->getThemePackService()Lcom/narvii/theme/ThemePackService;

    move-result-object v0

    iget v1, p2, Lcom/narvii/model/Community;->id:I

    invoke-virtual {v0, v1}, Lcom/narvii/theme/ThemePackService;->getStatus(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 p2, 0x5

    if-eq v0, p2, :cond_0

    const-string p2, "!"

    goto :goto_0

    :cond_0
    const-string p2, "R"

    goto :goto_0

    .line 258
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/narvii/community/MyCommunityHelper;->getThemePackService()Lcom/narvii/theme/ThemePackService;

    move-result-object v1

    iget p2, p2, Lcom/narvii/model/Community;->id:I

    invoke-virtual {v1, p2}, Lcom/narvii/theme/ThemePackService;->getProgress(I)F

    move-result p2

    const/16 v1, 0x64

    int-to-float v1, v1

    mul-float p2, p2, v1

    float-to-int p2, p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p2, 0x25

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_2
    const-string p2, "?"

    goto :goto_0

    :cond_3
    const-string p2, "E"

    .line 263
    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 252
    :cond_4
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.widget.TextView"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_1
    return-void
.end method
