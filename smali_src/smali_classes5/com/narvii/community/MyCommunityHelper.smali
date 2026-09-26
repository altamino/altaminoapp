.class public final Lcom/narvii/community/MyCommunityHelper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/community/MyCommunityHelper$MyLaunchHelper;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMyCommunityHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MyCommunityHelper.kt\ncom/narvii/community/MyCommunityHelper\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,470:1\n37#2,2:471\n*S KotlinDebug\n*F\n+ 1 MyCommunityHelper.kt\ncom/narvii/community/MyCommunityHelper\n*L\n182#1:471,2\n*E\n"
.end annotation


# instance fields
.field private activity:Landroidx/fragment/app/FragmentActivity;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final chatService$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final context:Lcom/narvii/app/NVContext;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private isMaster:Z

.field private launchCommunity:Lcom/narvii/model/Community;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final launchHelper$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private launchImageView:Lcom/narvii/widget/NVImageView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private launchProgress:Lcom/narvii/widget/SmoothProgressBar;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private myCommunityListObserver:Lcom/narvii/community/MyCommunityListService$MyCommunityListObserver;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final myCommunityListService:Lcom/narvii/community/MyCommunityListService;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final themePackService$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 2
    .param p1    # Lcom/narvii/app/NVContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "context"

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
    iput-object p1, p0, Lcom/narvii/community/MyCommunityHelper;->context:Lcom/narvii/app/NVContext;

    .line 11
    .line 12
    new-instance v0, Lcom/narvii/community/MyCommunityHelper$launchHelper$2;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, p0}, Lcom/narvii/community/MyCommunityHelper$launchHelper$2;-><init>(Lcom/narvii/community/MyCommunityHelper;)V

    .line 16
    .line 17
    .line 18
    invoke-static {v0}, Lw7/n;->a(Le8/a;)Lw7/m;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    iput-object v0, p0, Lcom/narvii/community/MyCommunityHelper;->launchHelper$delegate:Lw7/m;

    .line 22
    .line 23
    const-string v0, "myCommunityList"

    .line 24
    .line 25
    .line 26
    invoke-direct {p0, v0}, Lcom/narvii/community/MyCommunityHelper;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    check-cast v0, Lcom/narvii/community/MyCommunityListService;

    .line 30
    .line 31
    iput-object v0, p0, Lcom/narvii/community/MyCommunityHelper;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    .line 32
    .line 33
    new-instance v0, Lcom/narvii/community/MyCommunityHelper$chatService$2;

    .line 34
    .line 35
    .line 36
    invoke-direct {v0, p0}, Lcom/narvii/community/MyCommunityHelper$chatService$2;-><init>(Lcom/narvii/community/MyCommunityHelper;)V

    .line 37
    .line 38
    .line 39
    invoke-static {v0}, Lw7/n;->a(Le8/a;)Lw7/m;

    .line 40
    move-result-object v0

    .line 41
    .line 42
    iput-object v0, p0, Lcom/narvii/community/MyCommunityHelper;->chatService$delegate:Lw7/m;

    .line 43
    .line 44
    new-instance v0, Lcom/narvii/community/MyCommunityHelper$themePackService$2;

    .line 45
    .line 46
    .line 47
    invoke-direct {v0, p0}, Lcom/narvii/community/MyCommunityHelper$themePackService$2;-><init>(Lcom/narvii/community/MyCommunityHelper;)V

    .line 48
    .line 49
    .line 50
    invoke-static {v0}, Lw7/n;->a(Le8/a;)Lw7/m;

    .line 51
    move-result-object v0

    .line 52
    .line 53
    iput-object v0, p0, Lcom/narvii/community/MyCommunityHelper;->themePackService$delegate:Lw7/m;

    .line 54
    .line 55
    sget v0, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    .line 56
    .line 57
    const/16 v1, 0x64

    .line 58
    .line 59
    if-ne v0, v1, :cond_0

    .line 60
    const/4 v0, 0x1

    .line 61
    goto :goto_0

    .line 62
    :cond_0
    const/4 v0, 0x0

    .line 63
    .line 64
    :goto_0
    iput-boolean v0, p0, Lcom/narvii/community/MyCommunityHelper;->isMaster:Z

    .line 65
    .line 66
    instance-of v0, p1, Lcom/narvii/app/NVActivity;

    .line 67
    .line 68
    if-eqz v0, :cond_1

    .line 69
    .line 70
    check-cast p1, Landroidx/fragment/app/FragmentActivity;

    .line 71
    goto :goto_1

    .line 72
    .line 73
    :cond_1
    instance-of v0, p1, Lcom/narvii/app/NVFragment;

    .line 74
    .line 75
    if-eqz v0, :cond_2

    .line 76
    .line 77
    check-cast p1, Lcom/narvii/app/NVFragment;

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 81
    move-result-object p1

    .line 82
    goto :goto_1

    .line 83
    :cond_2
    const/4 p1, 0x0

    .line 84
    .line 85
    :goto_1
    iput-object p1, p0, Lcom/narvii/community/MyCommunityHelper;->activity:Landroidx/fragment/app/FragmentActivity;

    .line 86
    .line 87
    if-eqz p1, :cond_3

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 91
    move-result-object p1

    .line 92
    .line 93
    if-eqz p1, :cond_3

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1, p0}, Landroidx/lifecycle/Lifecycle;->a(Landroidx/lifecycle/LifecycleObserver;)V

    .line 97
    :cond_3
    return-void
.end method

.method public static synthetic a(Le8/l;Ljava/lang/Integer;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/community/MyCommunityHelper;->refresh$lambda$0(Le8/l;Ljava/lang/Integer;)V

    return-void
.end method

.method public static final synthetic access$createShortcut(Lcom/narvii/community/MyCommunityHelper;Lcom/narvii/model/Community;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/narvii/community/MyCommunityHelper;->createShortcut(Lcom/narvii/model/Community;Landroid/graphics/Bitmap;)V

    .line 4
    return-void
.end method

.method public static final synthetic access$getActivity$p(Lcom/narvii/community/MyCommunityHelper;)Landroidx/fragment/app/FragmentActivity;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/community/MyCommunityHelper;->activity:Landroidx/fragment/app/FragmentActivity;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$getContext(Lcom/narvii/community/MyCommunityHelper;)Landroid/content/Context;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/community/MyCommunityHelper;->getContext()Landroid/content/Context;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$getService(Lcom/narvii/community/MyCommunityHelper;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/community/MyCommunityHelper;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic b(Landroid/content/pm/ShortcutInfo;Landroid/content/pm/ShortcutInfo;)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/community/MyCommunityHelper;->createShortcut$lambda$4(Landroid/content/pm/ShortcutInfo;Landroid/content/pm/ShortcutInfo;)I

    move-result p0

    return p0
.end method

.method public static synthetic c([ILcom/narvii/model/Community;Lcom/narvii/community/MyCommunityHelper;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/narvii/community/MyCommunityHelper;->showMenuDialog$lambda$3([ILcom/narvii/model/Community;Lcom/narvii/community/MyCommunityHelper;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private final createShortcut(Lcom/narvii/model/Community;)V
    .locals 4

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p1, Lcom/narvii/model/Community;->icon:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    return-void

    .line 2
    :cond_1
    new-instance v0, Lcom/narvii/util/dialog/ProgressDialog;

    invoke-direct {p0}, Lcom/narvii/community/MyCommunityHelper;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 3
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    const-string v1, "imageLoader"

    .line 4
    invoke-direct {p0, v1}, Lcom/narvii/community/MyCommunityHelper;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/util/image/NVImageLoader;

    .line 5
    invoke-static {v1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    iget-object v2, p1, Lcom/narvii/model/Community;->icon:Ljava/lang/String;

    new-instance v3, Lcom/narvii/community/MyCommunityHelper$createShortcut$1;

    invoke-direct {v3, v0, p0, p1}, Lcom/narvii/community/MyCommunityHelper$createShortcut$1;-><init>(Lcom/narvii/util/dialog/ProgressDialog;Lcom/narvii/community/MyCommunityHelper;Lcom/narvii/model/Community;)V

    invoke-virtual {v1, v2, v3}, Lcom/android/volley/toolbox/ImageLoader;->get(Ljava/lang/String;Lcom/android/volley/toolbox/ImageLoader$ImageListener;)Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    return-void
.end method

.method private final createShortcut(Lcom/narvii/model/Community;Landroid/graphics/Bitmap;)V
    .locals 11

    const-string v0, "navigator"

    .line 6
    invoke-direct {p0, v0}, Lcom/narvii/community/MyCommunityHelper;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/app/BaseNavigator;

    .line 7
    new-instance v1, Landroid/content/Intent;

    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/narvii/app/BaseNavigator;->getMyScheme()Ljava/lang/String;

    move-result-object v0

    iget v2, p1, Lcom/narvii/model/Community;->id:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "://x"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "/default?source=Shortcut"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v0, 0x10000000

    .line 8
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v0, 0x4000000

    .line 9
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 v0, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p2, :cond_0

    .line 10
    :try_start_0
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/16 v5, 0x90

    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 11
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    const-string v6, "createBitmap(...)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 13
    new-instance v7, Landroid/graphics/Path;

    invoke-direct {v7}, Landroid/graphics/Path;-><init>()V

    .line 14
    new-instance v8, Landroid/graphics/RectF;

    int-to-float v4, v4

    const/4 v9, 0x0

    invoke-direct {v8, v9, v9, v4, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    const v9, 0x3e4ccccd    # 0.2f

    mul-float/2addr v4, v9

    .line 15
    sget-object v9, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v7, v8, v4, v4, v9}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 16
    invoke-virtual {v6, v7}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 17
    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    invoke-direct {v4, v3, v3, v7, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 18
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    .line 19
    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/high16 v9, -0x1000000

    .line 20
    invoke-virtual {v7, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 21
    invoke-virtual {v6, p2, v4, v8, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p2, v5

    goto :goto_0

    :catch_0
    move-object p2, v0

    :cond_0
    :goto_0
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x19

    const-string v6, "build(...)"

    const-string v7, "setLongLabel(...)"

    if-lt v4, v5, :cond_6

    .line 22
    iget v4, p1, Lcom/narvii/model/Community;->id:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "x"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 23
    invoke-direct {p0}, Lcom/narvii/community/MyCommunityHelper;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {}, Lcom/narvii/community/e;->a()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lcom/narvii/community/s;->a(Ljava/lang/Object;)Landroid/content/pm/ShortcutManager;

    move-result-object v5

    .line 24
    new-instance v8, Ljava/util/LinkedList;

    invoke-static {v5}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    invoke-static {v5}, Lcom/narvii/community/g;->a(Landroid/content/pm/ShortcutManager;)Ljava/util/List;

    move-result-object v9

    check-cast v9, Ljava/util/Collection;

    invoke-direct {v8, v9}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 25
    new-instance v9, Lcom/narvii/community/t;

    invoke-direct {v9}, Lcom/narvii/community/t;-><init>()V

    invoke-static {v8, v9}, Lkotlin/collections/t;->C(Ljava/util/List;Ljava/util/Comparator;)V

    .line 26
    invoke-virtual {v8}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    const-string v10, "iterator(...)"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    :cond_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 28
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10}, Lcom/narvii/community/k;->a(Ljava/lang/Object;)Landroid/content/pm/ShortcutInfo;

    move-result-object v10

    .line 29
    invoke-static {v10}, Landroidx/core/content/pm/c;->a(Landroid/content/pm/ShortcutInfo;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v10

    .line 30
    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-static {v5, v10}, Lcom/narvii/community/h;->a(Landroid/content/pm/ShortcutManager;Ljava/util/List;)V

    .line 31
    invoke-interface {v9}, Ljava/util/Iterator;->remove()V

    .line 32
    :cond_2
    :goto_1
    invoke-virtual {v8}, Ljava/util/LinkedList;->size()I

    move-result v9

    const/4 v10, 0x4

    if-lt v9, v10, :cond_3

    .line 33
    invoke-virtual {v8}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Lcom/narvii/community/k;->a(Ljava/lang/Object;)Landroid/content/pm/ShortcutInfo;

    move-result-object v9

    .line 34
    invoke-static {v9}, Landroidx/core/content/pm/c;->a(Landroid/content/pm/ShortcutInfo;)Ljava/lang/String;

    move-result-object v9

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-static {v5, v9}, Lcom/narvii/community/h;->a(Landroid/content/pm/ShortcutManager;Ljava/util/List;)V

    goto :goto_1

    .line 35
    :cond_3
    invoke-virtual {v8}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v9, v3

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10}, Lcom/narvii/community/k;->a(Ljava/lang/Object;)Landroid/content/pm/ShortcutInfo;

    move-result-object v10

    .line 36
    invoke-static {v10}, Landroidx/core/content/pm/e;->a(Landroid/content/pm/ShortcutInfo;)I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    goto :goto_2

    .line 37
    :cond_4
    invoke-static {}, Lcom/narvii/community/j;->a()V

    invoke-direct {p0}, Lcom/narvii/community/MyCommunityHelper;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v4}, Lcom/narvii/community/i;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object v4

    .line 38
    iget-object v8, p1, Lcom/narvii/model/Community;->name:Ljava/lang/String;

    invoke-static {v4, v8}, Lcom/narvii/community/l;->a(Landroid/content/pm/ShortcutInfo$Builder;Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object v4

    add-int/2addr v9, v2

    .line 39
    invoke-static {v4, v9}, Lcom/narvii/community/m;->a(Landroid/content/pm/ShortcutInfo$Builder;I)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object v2

    .line 40
    iget-object v4, p1, Lcom/narvii/model/Community;->name:Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/narvii/community/n;->a(Landroid/content/pm/ShortcutInfo$Builder;Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object v2

    invoke-static {v2, v7}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_5

    .line 41
    invoke-static {p2}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/narvii/community/o;->a(Landroid/content/pm/ShortcutInfo$Builder;Landroid/graphics/drawable/Icon;)Landroid/content/pm/ShortcutInfo$Builder;

    .line 42
    :cond_5
    invoke-static {v2, v1}, Lcom/narvii/community/p;->a(Landroid/content/pm/ShortcutInfo$Builder;Landroid/content/Intent;)Landroid/content/pm/ShortcutInfo$Builder;

    .line 43
    invoke-static {v2}, Lcom/narvii/community/q;->a(Landroid/content/pm/ShortcutInfo$Builder;)Landroid/content/pm/ShortcutInfo;

    move-result-object v2

    invoke-static {v2, v6}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-static {v2}, Lkotlin/collections/t;->e(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/narvii/community/r;->a(Landroid/content/pm/ShortcutManager;Ljava/util/List;)Z

    :cond_6
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-ge v2, v4, :cond_8

    .line 45
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "android.intent.extra.shortcut.INTENT"

    .line 46
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.shortcut.NAME"

    .line 47
    iget-object p1, p1, Lcom/narvii/model/Community;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-nez p2, :cond_7

    .line 48
    invoke-direct {p0}, Lcom/narvii/community/MyCommunityHelper;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->icon:I

    .line 49
    invoke-direct {p0}, Lcom/narvii/community/MyCommunityHelper;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object p1

    const-string p2, "android.intent.extra.shortcut.ICON_RESOURCE"

    .line 50
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_3

    :cond_7
    const-string p1, "android.intent.extra.shortcut.ICON"

    .line 51
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :goto_3
    const-string p1, "duplicate"

    .line 52
    invoke-virtual {v0, p1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "com.android.launcher.action.INSTALL_SHORTCUT"

    .line 53
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 54
    invoke-direct {p0}, Lcom/narvii/community/MyCommunityHelper;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_4

    .line 55
    :cond_8
    iget v2, p1, Lcom/narvii/model/Community;->id:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "c"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 56
    invoke-direct {p0}, Lcom/narvii/community/MyCommunityHelper;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {}, Lcom/narvii/community/e;->a()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/narvii/community/s;->a(Ljava/lang/Object;)Landroid/content/pm/ShortcutManager;

    move-result-object v3

    .line 57
    invoke-static {}, Lcom/narvii/community/j;->a()V

    invoke-direct {p0}, Lcom/narvii/community/MyCommunityHelper;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/narvii/community/i;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object v2

    .line 58
    iget-object v4, p1, Lcom/narvii/model/Community;->name:Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/narvii/community/l;->a(Landroid/content/pm/ShortcutInfo$Builder;Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object v2

    .line 59
    iget-object p1, p1, Lcom/narvii/model/Community;->name:Ljava/lang/String;

    invoke-static {v2, p1}, Lcom/narvii/community/n;->a(Landroid/content/pm/ShortcutInfo$Builder;Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object p1

    invoke-static {p1, v7}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_9

    .line 60
    invoke-static {p2}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/narvii/community/o;->a(Landroid/content/pm/ShortcutInfo$Builder;Landroid/graphics/drawable/Icon;)Landroid/content/pm/ShortcutInfo$Builder;

    .line 61
    :cond_9
    invoke-static {p1, v1}, Lcom/narvii/community/p;->a(Landroid/content/pm/ShortcutInfo$Builder;Landroid/content/Intent;)Landroid/content/pm/ShortcutInfo$Builder;

    .line 62
    invoke-static {p1}, Lcom/narvii/community/q;->a(Landroid/content/pm/ShortcutInfo$Builder;)Landroid/content/pm/ShortcutInfo;

    move-result-object p1

    invoke-static {p1, v6}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    invoke-static {v3}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    invoke-static {v3, p1, v0}, Lcom/narvii/community/f;->a(Landroid/content/pm/ShortcutManager;Landroid/content/pm/ShortcutInfo;Landroid/content/IntentSender;)Z

    :goto_4
    return-void
.end method

.method private static final createShortcut$lambda$4(Landroid/content/pm/ShortcutInfo;Landroid/content/pm/ShortcutInfo;)I
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroidx/core/content/pm/e;->a(Landroid/content/pm/ShortcutInfo;)I

    .line 4
    move-result p0

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Landroidx/core/content/pm/e;->a(Landroid/content/pm/ShortcutInfo;)I

    .line 8
    move-result p1

    .line 9
    sub-int/2addr p0, p1

    .line 10
    return p0
.end method

.method public static synthetic d(Lcom/narvii/community/MyCommunityHelper;Lcom/narvii/model/Community;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/narvii/community/MyCommunityHelper;->launchCommunity$lambda$1(Lcom/narvii/community/MyCommunityHelper;Lcom/narvii/model/Community;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic e(Lcom/narvii/model/Community;Lcom/narvii/util/PackageUtils;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/narvii/community/MyCommunityHelper;->launchCommunity$lambda$2(Lcom/narvii/model/Community;Lcom/narvii/util/PackageUtils;Landroid/view/View;)V

    return-void
.end method

.method private final getContext()Landroid/content/Context;
    .locals 2

    iget-object v0, p0, Lcom/narvii/community/MyCommunityHelper;->context:Lcom/narvii/app/NVContext;

    .line 2
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "getContext(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

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

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/community/MyCommunityHelper;->context:Lcom/narvii/app/NVContext;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method private final getText(I)Ljava/lang/CharSequence;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/community/MyCommunityHelper;->context:Lcom/narvii/app/NVContext;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    const-string v0, "getText(...)"

    .line 13
    .line 14
    .line 15
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    return-object p1
.end method

.method private static final launchCommunity$lambda$1(Lcom/narvii/community/MyCommunityHelper;Lcom/narvii/model/Community;Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    const-string p2, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string p2, "$item"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, p1}, Lcom/narvii/community/MyCommunityHelper;->leaveCommunity(Lcom/narvii/model/Community;)V

    .line 14
    return-void
.end method

.method private static final launchCommunity$lambda$2(Lcom/narvii/model/Community;Lcom/narvii/util/PackageUtils;Landroid/view/View;)V
    .locals 1

    .line 1
    .line 2
    const-string p2, "$item"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string p2, "$packageUtils"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    iget p0, p0, Lcom/narvii/model/Community;->id:I

    .line 13
    .line 14
    new-instance p2, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    const-string v0, "ndc://x"

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const-string p0, "/description"

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    move-result-object p0

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/narvii/util/PackageUtils;->getMasterPackageName()Ljava/lang/String;

    .line 38
    move-result-object p2

    .line 39
    .line 40
    const-string v0, "Standalone App"

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, p2, p0, v0}, Lcom/narvii/util/PackageUtils;->openGooglePlayWithNativeLink(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method private final leaveCommunity(Lcom/narvii/model/Community;)V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/master/MasterLeaveCommunityHelper;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/community/MyCommunityHelper;->context:Lcom/narvii/app/NVContext;

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1}, Lcom/narvii/master/MasterLeaveCommunityHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 8
    const/4 v1, 0x0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1, v1}, Lcom/narvii/community/LeaveCommunityHelper;->leaveCommunity(Lcom/narvii/model/Community;Lcom/narvii/util/Callback;)V

    .line 12
    return-void
.end method

.method private final onDestroy()V
    .locals 2
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/community/MyCommunityHelper;->myCommunityListObserver:Lcom/narvii/community/MyCommunityListService$MyCommunityListObserver;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v1, p0, Lcom/narvii/community/MyCommunityHelper;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v1, v0}, Lcom/narvii/community/MyCommunityListService;->removeObserver(Lcom/narvii/community/MyCommunityListService$MyCommunityListObserver;)V

    .line 10
    :cond_0
    return-void
.end method

.method private final onPause()V
    .locals 0
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/community/MyCommunityHelper;->cancelLaunch()V

    .line 4
    return-void
.end method

.method private static final refresh$lambda$0(Le8/l;Ljava/lang/Integer;)V
    .locals 1

    .line 1
    .line 2
    const-string v0, "$callback"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    invoke-interface {p0, p1}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    return-void
.end method

.method private final reorder()V
    .locals 1

    .line 1
    .line 2
    const-class v0, Lcom/narvii/master/SortCommunityFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    invoke-static {p0, v0}, Lcom/narvii/community/MyCommunityHelper;->safedk_MyCommunityHelper_startActivity_87a9567c5d04510c71104cfeab7302be(Lcom/narvii/community/MyCommunityHelper;Landroid/content/Intent;)V

    .line 13
    return-void
.end method

.method public static safedk_MyCommunityHelper_startActivity_87a9567c5d04510c71104cfeab7302be(Lcom/narvii/community/MyCommunityHelper;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Lcom/narvii/community/MyCommunityHelper;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Lcom/narvii/community/MyCommunityHelper;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/narvii/community/MyCommunityHelper;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(Lcom/narvii/app/NVContext;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Lcom/narvii/app/NVContext;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p0, p1}, Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private static final showMenuDialog$lambda$3([ILcom/narvii/model/Community;Lcom/narvii/community/MyCommunityHelper;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    .line 2
    const-string p3, "$ops"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p3}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string p3, "$item"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, p3}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    const-string p3, "this$0"

    .line 13
    .line 14
    .line 15
    invoke-static {p2, p3}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    aget p0, p0, p4

    .line 18
    .line 19
    .line 20
    sparse-switch p0, :sswitch_data_0

    .line 21
    goto :goto_0

    .line 22
    .line 23
    .line 24
    :sswitch_0
    invoke-direct {p2}, Lcom/narvii/community/MyCommunityHelper;->reorder()V

    .line 25
    goto :goto_0

    .line 26
    .line 27
    .line 28
    :sswitch_1
    invoke-direct {p2, p1}, Lcom/narvii/community/MyCommunityHelper;->leaveCommunity(Lcom/narvii/model/Community;)V

    .line 29
    goto :goto_0

    .line 30
    .line 31
    :sswitch_2
    const-class p0, Lcom/narvii/master/CommunityDetailFragment;

    .line 32
    .line 33
    .line 34
    invoke-static {p0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 35
    move-result-object p0

    .line 36
    .line 37
    iget p3, p1, Lcom/narvii/model/Community;->id:I

    .line 38
    .line 39
    const-string p4, "id"

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, p4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 43
    .line 44
    const-string p3, "prefetch"

    .line 45
    .line 46
    .line 47
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 48
    move-result-object p1

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 52
    .line 53
    const-string p1, "isCurrentUserJoined"

    .line 54
    const/4 p3, 0x1

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 58
    .line 59
    .line 60
    invoke-static {p0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    invoke-static {p2, p0}, Lcom/narvii/community/MyCommunityHelper;->safedk_MyCommunityHelper_startActivity_87a9567c5d04510c71104cfeab7302be(Lcom/narvii/community/MyCommunityHelper;Landroid/content/Intent;)V

    .line 64
    goto :goto_0

    .line 65
    .line 66
    .line 67
    :sswitch_3
    invoke-direct {p2, p1}, Lcom/narvii/community/MyCommunityHelper;->createShortcut(Lcom/narvii/model/Community;)V

    .line 68
    :goto_0
    return-void

    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    :sswitch_data_0
    .sparse-switch
        0x7f12030f -> :sswitch_3
        0x7f120311 -> :sswitch_2
        0x7f120f43 -> :sswitch_1
        0x7f120fee -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public final addGlobalChatMessageReceptor(Lcom/narvii/chat/core/ChatService$ChatMessageReceptor;)V
    .locals 1
    .param p1    # Lcom/narvii/chat/core/ChatService$ChatMessageReceptor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "listener"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/narvii/community/MyCommunityHelper;->getChatService()Lcom/narvii/chat/core/ChatService;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/narvii/chat/core/ChatService;->addGlobalChatMessageReceptor(Lcom/narvii/chat/core/ChatService$ChatMessageReceptor;)V

    .line 13
    return-void
.end method

.method public final addObserver(Lcom/narvii/community/MyCommunityListService$MyCommunityListObserver;)V
    .locals 1
    .param p1    # Lcom/narvii/community/MyCommunityListService$MyCommunityListObserver;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "observer"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iput-object p1, p0, Lcom/narvii/community/MyCommunityHelper;->myCommunityListObserver:Lcom/narvii/community/MyCommunityListService$MyCommunityListObserver;

    .line 8
    .line 9
    iget-object v0, p0, Lcom/narvii/community/MyCommunityHelper;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/narvii/community/MyCommunityListService;->addObserver(Lcom/narvii/community/MyCommunityListService$MyCommunityListObserver;)V

    .line 13
    return-void
.end method

.method public final cancelLaunch()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/community/MyCommunityHelper;->getLaunchHelper()Lcom/narvii/community/MyCommunityHelper$MyLaunchHelper;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/community/MyCommunityHelper$MyLaunchHelper;->cancel()V

    .line 8
    .line 9
    iget-object v0, p0, Lcom/narvii/community/MyCommunityHelper;->launchProgress:Lcom/narvii/widget/SmoothProgressBar;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    const/4 v1, 0x0

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/narvii/widget/SmoothProgressBar;->setProgress(I)V

    .line 16
    const/4 v1, 0x4

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    .line 22
    iput-object v0, p0, Lcom/narvii/community/MyCommunityHelper;->launchProgress:Lcom/narvii/widget/SmoothProgressBar;

    .line 23
    .line 24
    iput-object v0, p0, Lcom/narvii/community/MyCommunityHelper;->launchCommunity:Lcom/narvii/model/Community;

    .line 25
    .line 26
    iput-object v0, p0, Lcom/narvii/community/MyCommunityHelper;->launchImageView:Lcom/narvii/widget/NVImageView;

    .line 27
    return-void
.end method

.method public final errorMessage()Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/community/MyCommunityHelper;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/community/MyCommunityListService;->errorMessage()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final getChatService()Lcom/narvii/chat/core/ChatService;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/community/MyCommunityHelper;->chatService$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/chat/core/ChatService;

    .line 9
    return-object v0
.end method

.method public final getContext()Lcom/narvii/app/NVContext;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/narvii/community/MyCommunityHelper;->context:Lcom/narvii/app/NVContext;

    return-object v0
.end method

.method public final getLaunchCommunity()Lcom/narvii/model/Community;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/community/MyCommunityHelper;->launchCommunity:Lcom/narvii/model/Community;

    return-object v0
.end method

.method public final getLaunchHelper()Lcom/narvii/community/MyCommunityHelper$MyLaunchHelper;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/community/MyCommunityHelper;->launchHelper$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/community/MyCommunityHelper$MyLaunchHelper;

    .line 9
    return-object v0
.end method

.method public final getLaunchImageView()Lcom/narvii/widget/NVImageView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/community/MyCommunityHelper;->launchImageView:Lcom/narvii/widget/NVImageView;

    return-object v0
.end method

.method public final getLaunchProgress()Lcom/narvii/widget/SmoothProgressBar;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/community/MyCommunityHelper;->launchProgress:Lcom/narvii/widget/SmoothProgressBar;

    return-object v0
.end method

.method public final getMyCommunityListObserver()Lcom/narvii/community/MyCommunityListService$MyCommunityListObserver;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/community/MyCommunityHelper;->myCommunityListObserver:Lcom/narvii/community/MyCommunityListService$MyCommunityListObserver;

    return-object v0
.end method

.method public final getMyCommunityListService()Lcom/narvii/community/MyCommunityListService;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/community/MyCommunityHelper;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    return-object v0
.end method

.method public final getThemePackService()Lcom/narvii/theme/ThemePackService;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/community/MyCommunityHelper;->themePackService$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/theme/ThemePackService;

    .line 9
    return-object v0
.end method

.method public final getUserProfile(I)Lcom/narvii/model/User;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/community/MyCommunityHelper;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/narvii/community/MyCommunityListService;->getUserProfile(I)Lcom/narvii/model/User;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public final isMaster()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/community/MyCommunityHelper;->isMaster:Z

    return v0
.end method

.method public final launchCommunity(Lcom/narvii/model/Community;Landroid/view/View;Le8/l;)Z
    .locals 15
    .param p1    # Lcom/narvii/model/Community;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/model/Community;",
            "Landroid/view/View;",
            "Le8/l<",
            "Ljava/lang/Object;",
            "Lw7/l0;",
            ">;)Z"
        }
    .end annotation

    .line 1
    move-object v0, p0

    .line 2
    .line 3
    move-object/from16 v3, p1

    .line 4
    .line 5
    move-object/from16 v1, p2

    .line 6
    .line 7
    move-object/from16 v2, p3

    .line 8
    .line 9
    const-string v4, "item"

    .line 10
    .line 11
    .line 12
    invoke-static {v3, v4}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    const-string v4, "cell"

    .line 15
    .line 16
    .line 17
    invoke-static {v1, v4}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    const-string v4, "aminoEnterCallback"

    .line 20
    .line 21
    .line 22
    invoke-static {v2, v4}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    iget-boolean v4, v0, Lcom/narvii/community/MyCommunityHelper;->isMaster:Z

    .line 25
    .line 26
    .line 27
    const v5, 0x7f1201e2

    .line 28
    const/4 v6, 0x0

    .line 29
    const/4 v12, 0x1

    .line 30
    .line 31
    if-eqz v4, :cond_9

    .line 32
    .line 33
    iget-object v4, v0, Lcom/narvii/community/MyCommunityHelper;->launchCommunity:Lcom/narvii/model/Community;

    .line 34
    .line 35
    if-eqz v4, :cond_1

    .line 36
    .line 37
    .line 38
    invoke-static {v4}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 39
    .line 40
    iget v4, v4, Lcom/narvii/model/Community;->id:I

    .line 41
    .line 42
    iget v7, v3, Lcom/narvii/model/Community;->id:I

    .line 43
    .line 44
    if-ne v4, v7, :cond_0

    .line 45
    return v12

    .line 46
    .line 47
    .line 48
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/community/MyCommunityHelper;->cancelLaunch()V

    .line 49
    .line 50
    :cond_1
    iget v4, v3, Lcom/narvii/model/Community;->status:I

    .line 51
    .line 52
    const/16 v7, 0x9

    .line 53
    .line 54
    if-ne v4, v7, :cond_2

    .line 55
    .line 56
    new-instance v1, Lcom/narvii/widget/ACMAlertDialog;

    .line 57
    .line 58
    iget-object v2, v0, Lcom/narvii/community/MyCommunityHelper;->activity:Landroidx/fragment/app/FragmentActivity;

    .line 59
    .line 60
    .line 61
    invoke-direct {v1, v2}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    .line 62
    .line 63
    .line 64
    const v2, 0x7f1203aa

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1, v2}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(I)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1, v5, v6}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 71
    .line 72
    new-instance v2, Lcom/narvii/community/w;

    .line 73
    .line 74
    .line 75
    invoke-direct {v2, p0, v3}, Lcom/narvii/community/w;-><init>(Lcom/narvii/community/MyCommunityHelper;Lcom/narvii/model/Community;)V

    .line 76
    .line 77
    .line 78
    const v3, 0x7f120b80

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1, v3, v2}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1}, Lcom/narvii/app/NVDialog;->show()V

    .line 85
    return v12

    .line 86
    .line 87
    .line 88
    :cond_2
    const v4, 0x7f0a0b8a

    .line 89
    .line 90
    .line 91
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 92
    move-result-object v4

    .line 93
    .line 94
    const-string v5, "null cannot be cast to non-null type com.narvii.widget.SmoothProgressBar"

    .line 95
    .line 96
    .line 97
    invoke-static {v4, v5}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    .line 99
    check-cast v4, Lcom/narvii/widget/SmoothProgressBar;

    .line 100
    .line 101
    iput-object v4, v0, Lcom/narvii/community/MyCommunityHelper;->launchProgress:Lcom/narvii/widget/SmoothProgressBar;

    .line 102
    const/4 v5, 0x0

    .line 103
    .line 104
    if-nez v4, :cond_3

    .line 105
    goto :goto_0

    .line 106
    .line 107
    .line 108
    :cond_3
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 109
    .line 110
    :goto_0
    iget-object v4, v0, Lcom/narvii/community/MyCommunityHelper;->launchProgress:Lcom/narvii/widget/SmoothProgressBar;

    .line 111
    .line 112
    if-nez v4, :cond_4

    .line 113
    goto :goto_1

    .line 114
    .line 115
    :cond_4
    const/16 v7, 0x64

    .line 116
    .line 117
    .line 118
    invoke-virtual {v4, v7}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 119
    .line 120
    :goto_1
    iget-object v4, v0, Lcom/narvii/community/MyCommunityHelper;->launchProgress:Lcom/narvii/widget/SmoothProgressBar;

    .line 121
    .line 122
    if-nez v4, :cond_5

    .line 123
    goto :goto_2

    .line 124
    .line 125
    .line 126
    :cond_5
    invoke-virtual {v4, v5}, Lcom/narvii/widget/SmoothProgressBar;->setProgress(I)V

    .line 127
    .line 128
    .line 129
    :goto_2
    invoke-interface {v2, v3}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    const v2, 0x7f0a06eb

    .line 133
    .line 134
    .line 135
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 136
    move-result-object v1

    .line 137
    .line 138
    const-string v2, "null cannot be cast to non-null type com.narvii.widget.NVImageView"

    .line 139
    .line 140
    .line 141
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    .line 143
    check-cast v1, Lcom/narvii/widget/NVImageView;

    .line 144
    .line 145
    iput-object v1, v0, Lcom/narvii/community/MyCommunityHelper;->launchImageView:Lcom/narvii/widget/NVImageView;

    .line 146
    .line 147
    iput-object v3, v0, Lcom/narvii/community/MyCommunityHelper;->launchCommunity:Lcom/narvii/model/Community;

    .line 148
    .line 149
    iget-object v1, v0, Lcom/narvii/community/MyCommunityHelper;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    .line 150
    .line 151
    iget v2, v3, Lcom/narvii/model/Community;->id:I

    .line 152
    .line 153
    .line 154
    invoke-virtual {v1, v2}, Lcom/narvii/community/MyCommunityListService;->getCommunityTimestamp(I)Ljava/lang/String;

    .line 155
    move-result-object v4

    .line 156
    .line 157
    iget-object v1, v0, Lcom/narvii/community/MyCommunityHelper;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    .line 158
    .line 159
    iget v2, v3, Lcom/narvii/model/Community;->id:I

    .line 160
    .line 161
    .line 162
    invoke-virtual {v1, v2}, Lcom/narvii/community/MyCommunityListService;->getUserProfile(I)Lcom/narvii/model/User;

    .line 163
    move-result-object v7

    .line 164
    .line 165
    iget-object v1, v0, Lcom/narvii/community/MyCommunityHelper;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    .line 166
    .line 167
    iget v2, v3, Lcom/narvii/model/Community;->id:I

    .line 168
    .line 169
    .line 170
    invoke-virtual {v1, v2}, Lcom/narvii/community/MyCommunityListService;->getUserInfoTimestamp(I)Ljava/lang/String;

    .line 171
    move-result-object v8

    .line 172
    .line 173
    iget-object v1, v0, Lcom/narvii/community/MyCommunityHelper;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    .line 174
    .line 175
    iget v2, v3, Lcom/narvii/model/Community;->id:I

    .line 176
    .line 177
    .line 178
    invoke-virtual {v1, v2}, Lcom/narvii/community/MyCommunityListService;->getReminder(I)Lcom/narvii/community/ReminderCheck;

    .line 179
    move-result-object v9

    .line 180
    .line 181
    iget-object v1, v0, Lcom/narvii/community/MyCommunityHelper;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    .line 182
    .line 183
    iget v2, v3, Lcom/narvii/model/Community;->id:I

    .line 184
    .line 185
    .line 186
    invoke-virtual {v1, v2}, Lcom/narvii/community/MyCommunityListService;->getReminderTimestamp(I)Ljava/lang/String;

    .line 187
    move-result-object v10

    .line 188
    .line 189
    const-string v1, "community"

    .line 190
    .line 191
    .line 192
    invoke-direct {p0, v1}, Lcom/narvii/community/MyCommunityHelper;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 193
    move-result-object v1

    .line 194
    .line 195
    check-cast v1, Lcom/narvii/community/CommunityService;

    .line 196
    .line 197
    iget v2, v3, Lcom/narvii/model/Community;->id:I

    .line 198
    .line 199
    .line 200
    invoke-virtual {v1, v2}, Lcom/narvii/community/CommunityService;->getCommunity(I)Lcom/narvii/model/Community;

    .line 201
    move-result-object v1

    .line 202
    .line 203
    if-eqz v1, :cond_6

    .line 204
    .line 205
    iget-object v6, v1, Lcom/narvii/model/Community;->configuration:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 206
    .line 207
    :cond_6
    if-eqz v6, :cond_8

    .line 208
    .line 209
    iget-object v1, v1, Lcom/narvii/model/Community;->configuration:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 210
    .line 211
    .line 212
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->size()I

    .line 213
    move-result v1

    .line 214
    .line 215
    if-nez v1, :cond_7

    .line 216
    goto :goto_3

    .line 217
    :cond_7
    move v11, v5

    .line 218
    goto :goto_4

    .line 219
    :cond_8
    :goto_3
    move v11, v12

    .line 220
    .line 221
    .line 222
    :goto_4
    invoke-virtual {p0}, Lcom/narvii/community/MyCommunityHelper;->getLaunchHelper()Lcom/narvii/community/MyCommunityHelper$MyLaunchHelper;

    .line 223
    move-result-object v1

    .line 224
    .line 225
    iget v2, v3, Lcom/narvii/model/Community;->id:I

    .line 226
    const/4 v13, 0x1

    .line 227
    .line 228
    iget-object v5, v0, Lcom/narvii/community/MyCommunityHelper;->launchImageView:Lcom/narvii/widget/NVImageView;

    .line 229
    .line 230
    .line 231
    invoke-static {v5}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 232
    .line 233
    .line 234
    invoke-virtual {v5}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 235
    move-result-object v14

    .line 236
    .line 237
    move-object/from16 v3, p1

    .line 238
    move-object v5, v7

    .line 239
    move-object v6, v8

    .line 240
    move-object v7, v9

    .line 241
    move-object v8, v10

    .line 242
    move v9, v11

    .line 243
    move v10, v13

    .line 244
    move-object v11, v14

    .line 245
    .line 246
    .line 247
    invoke-virtual/range {v1 .. v11}, Lcom/narvii/community/MyCommunityHelper$MyLaunchHelper;->launch(ILcom/narvii/model/Community;Ljava/lang/String;Lcom/narvii/model/User;Ljava/lang/String;Lcom/narvii/community/ReminderCheck;Ljava/lang/String;ZILandroid/graphics/drawable/Drawable;)V

    .line 248
    .line 249
    goto/16 :goto_5

    .line 250
    .line 251
    :cond_9
    new-instance v1, Lcom/narvii/util/PackageUtils;

    .line 252
    .line 253
    .line 254
    invoke-direct {p0}, Lcom/narvii/community/MyCommunityHelper;->getContext()Landroid/content/Context;

    .line 255
    move-result-object v2

    .line 256
    .line 257
    .line 258
    invoke-direct {v1, v2}, Lcom/narvii/util/PackageUtils;-><init>(Landroid/content/Context;)V

    .line 259
    .line 260
    .line 261
    invoke-virtual {v1}, Lcom/narvii/util/PackageUtils;->getMasterPackageName()Ljava/lang/String;

    .line 262
    move-result-object v2

    .line 263
    .line 264
    .line 265
    invoke-virtual {v1, v2}, Lcom/narvii/util/PackageUtils;->isPackageInstalled(Ljava/lang/String;)Z

    .line 266
    move-result v2

    .line 267
    .line 268
    if-eqz v2, :cond_a

    .line 269
    .line 270
    .line 271
    :try_start_0
    invoke-virtual {v1}, Lcom/narvii/util/PackageUtils;->getMasterScheme()Ljava/lang/String;

    .line 272
    move-result-object v1

    .line 273
    .line 274
    iget v2, v3, Lcom/narvii/model/Community;->id:I

    .line 275
    .line 276
    new-instance v3, Ljava/lang/StringBuilder;

    .line 277
    .line 278
    .line 279
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 280
    .line 281
    .line 282
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    .line 284
    const-string v1, "://x"

    .line 285
    .line 286
    .line 287
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    .line 289
    .line 290
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 291
    .line 292
    const-string v1, "/description"

    .line 293
    .line 294
    .line 295
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    .line 297
    .line 298
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 299
    move-result-object v1

    .line 300
    .line 301
    new-instance v2, Landroid/content/Intent;

    .line 302
    .line 303
    const-string v3, "android.intent.action.VIEW"

    .line 304
    .line 305
    .line 306
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 307
    move-result-object v1

    .line 308
    .line 309
    .line 310
    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 311
    .line 312
    const-string v1, "clearTask"

    .line 313
    .line 314
    .line 315
    invoke-virtual {v2, v1, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 316
    .line 317
    .line 318
    invoke-static {p0, v2}, Lcom/narvii/community/MyCommunityHelper;->safedk_MyCommunityHelper_startActivity_87a9567c5d04510c71104cfeab7302be(Lcom/narvii/community/MyCommunityHelper;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 319
    goto :goto_5

    .line 320
    .line 321
    :cond_a
    new-instance v2, Lcom/narvii/util/dialog/AlertDialog;

    .line 322
    .line 323
    iget-object v4, v0, Lcom/narvii/community/MyCommunityHelper;->activity:Landroidx/fragment/app/FragmentActivity;

    .line 324
    .line 325
    .line 326
    invoke-direct {v2, v4}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 327
    .line 328
    .line 329
    invoke-direct {p0}, Lcom/narvii/community/MyCommunityHelper;->getContext()Landroid/content/Context;

    .line 330
    move-result-object v4

    .line 331
    .line 332
    .line 333
    const v7, 0x7f12040a

    .line 334
    .line 335
    .line 336
    invoke-virtual {v4, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 337
    move-result-object v4

    .line 338
    .line 339
    .line 340
    invoke-virtual {v2, v4}, Lcom/narvii/util/dialog/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 341
    .line 342
    .line 343
    const v4, 0x7f0d01ae

    .line 344
    .line 345
    .line 346
    invoke-virtual {v2, v4}, Lcom/narvii/util/dialog/AlertDialog;->setContentView(I)V

    .line 347
    .line 348
    const/16 v4, 0x40

    .line 349
    .line 350
    .line 351
    invoke-virtual {v2, v5, v4, v6}, Lcom/narvii/util/dialog/AlertDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 352
    move-result-object v5

    .line 353
    .line 354
    const-string v6, "null cannot be cast to non-null type android.widget.Button"

    .line 355
    .line 356
    .line 357
    invoke-static {v5, v6}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 358
    .line 359
    check-cast v5, Landroid/widget/Button;

    .line 360
    .line 361
    .line 362
    invoke-direct {p0}, Lcom/narvii/community/MyCommunityHelper;->getContext()Landroid/content/Context;

    .line 363
    move-result-object v7

    .line 364
    .line 365
    .line 366
    const v8, 0x7f06009e

    .line 367
    .line 368
    .line 369
    invoke-static {v7, v8}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 370
    move-result v7

    .line 371
    .line 372
    .line 373
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 374
    .line 375
    new-instance v5, Lcom/narvii/community/x;

    .line 376
    .line 377
    .line 378
    invoke-direct {v5, v3, v1}, Lcom/narvii/community/x;-><init>(Lcom/narvii/model/Community;Lcom/narvii/util/PackageUtils;)V

    .line 379
    .line 380
    .line 381
    const v1, 0x7f1207d3

    .line 382
    .line 383
    .line 384
    invoke-virtual {v2, v1, v4, v5}, Lcom/narvii/util/dialog/AlertDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 385
    move-result-object v1

    .line 386
    .line 387
    .line 388
    invoke-static {v1, v6}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 389
    .line 390
    check-cast v1, Landroid/widget/Button;

    .line 391
    .line 392
    .line 393
    invoke-direct {p0}, Lcom/narvii/community/MyCommunityHelper;->getContext()Landroid/content/Context;

    .line 394
    move-result-object v3

    .line 395
    .line 396
    .line 397
    invoke-static {v3, v8}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 398
    move-result v3

    .line 399
    .line 400
    .line 401
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 402
    .line 403
    .line 404
    invoke-virtual {v2}, Lcom/narvii/app/NVDialog;->show()V

    .line 405
    :catch_0
    :goto_5
    return v12
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

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/community/MyCommunityHelper;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/community/MyCommunityListService;->rawList()Ljava/util/List;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lkotlin/collections/t;->m()Ljava/util/List;

    .line 12
    move-result-object v0

    .line 13
    :cond_0
    return-object v0
.end method

.method public final refresh(ILe8/l;)V
    .locals 2
    .param p2    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Le8/l<",
            "-",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "callback"

    .line 3
    .line 4
    .line 5
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/community/MyCommunityHelper;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    .line 8
    .line 9
    new-instance v1, Lcom/narvii/community/v;

    .line 10
    .line 11
    .line 12
    invoke-direct {v1, p2}, Lcom/narvii/community/v;-><init>(Le8/l;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1, v1}, Lcom/narvii/community/MyCommunityListService;->refresh(ILcom/narvii/util/Callback;)V

    .line 16
    return-void
.end method

.method public final setLaunchCommunity(Lcom/narvii/model/Community;)V
    .locals 0
    .param p1    # Lcom/narvii/model/Community;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/community/MyCommunityHelper;->launchCommunity:Lcom/narvii/model/Community;

    return-void
.end method

.method public final setLaunchImageView(Lcom/narvii/widget/NVImageView;)V
    .locals 0
    .param p1    # Lcom/narvii/widget/NVImageView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/community/MyCommunityHelper;->launchImageView:Lcom/narvii/widget/NVImageView;

    return-void
.end method

.method public final setLaunchProgress(Lcom/narvii/widget/SmoothProgressBar;)V
    .locals 0
    .param p1    # Lcom/narvii/widget/SmoothProgressBar;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/community/MyCommunityHelper;->launchProgress:Lcom/narvii/widget/SmoothProgressBar;

    return-void
.end method

.method public final setMaster(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/community/MyCommunityHelper;->isMaster:Z

    return-void
.end method

.method public final setMyCommunityListObserver(Lcom/narvii/community/MyCommunityListService$MyCommunityListObserver;)V
    .locals 0
    .param p1    # Lcom/narvii/community/MyCommunityListService$MyCommunityListObserver;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/community/MyCommunityHelper;->myCommunityListObserver:Lcom/narvii/community/MyCommunityListService$MyCommunityListObserver;

    return-void
.end method

.method public final showMenuDialog(Lcom/narvii/model/Community;)V
    .locals 10
    .param p1    # Lcom/narvii/model/Community;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "item"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Lcom/narvii/community/MyCommunityHelper;->getContext()Landroid/content/Context;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 15
    const/4 v1, 0x5

    .line 16
    .line 17
    new-array v1, v1, [I

    .line 18
    .line 19
    new-instance v2, Ljava/util/ArrayList;

    .line 20
    .line 21
    .line 22
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 23
    .line 24
    .line 25
    const v3, 0x7f120311

    .line 26
    .line 27
    .line 28
    invoke-direct {p0, v3}, Lcom/narvii/community/MyCommunityHelper;->getText(I)Ljava/lang/CharSequence;

    .line 29
    move-result-object v4

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    const/4 v4, 0x0

    .line 34
    .line 35
    aput v3, v1, v4

    .line 36
    .line 37
    iget-object v3, p0, Lcom/narvii/community/MyCommunityHelper;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v3}, Lcom/narvii/community/MyCommunityListService;->rawList()Ljava/util/List;

    .line 41
    move-result-object v3

    .line 42
    .line 43
    .line 44
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 45
    move-result v3

    .line 46
    const/4 v5, 0x1

    .line 47
    .line 48
    if-le v3, v5, :cond_0

    .line 49
    .line 50
    .line 51
    const v3, 0x7f120fee

    .line 52
    .line 53
    .line 54
    invoke-direct {p0, v3}, Lcom/narvii/community/MyCommunityHelper;->getText(I)Ljava/lang/CharSequence;

    .line 55
    move-result-object v6

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    .line 60
    aput v3, v1, v5

    .line 61
    const/4 v5, 0x2

    .line 62
    .line 63
    :cond_0
    sget v3, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    .line 64
    .line 65
    const/16 v6, 0x64

    .line 66
    .line 67
    if-ne v3, v6, :cond_1

    .line 68
    .line 69
    iget-object v3, p1, Lcom/narvii/model/Community;->icon:Ljava/lang/String;

    .line 70
    .line 71
    if-eqz v3, :cond_1

    .line 72
    .line 73
    .line 74
    const v3, 0x7f12030f

    .line 75
    .line 76
    .line 77
    invoke-direct {p0, v3}, Lcom/narvii/community/MyCommunityHelper;->getText(I)Ljava/lang/CharSequence;

    .line 78
    move-result-object v6

    .line 79
    .line 80
    .line 81
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    .line 83
    add-int/lit8 v6, v5, 0x1

    .line 84
    .line 85
    aput v3, v1, v5

    .line 86
    move v5, v6

    .line 87
    .line 88
    :cond_1
    new-instance v3, Lcom/narvii/util/text/NVText;

    .line 89
    .line 90
    .line 91
    const v6, 0x7f120f43

    .line 92
    .line 93
    .line 94
    invoke-direct {p0, v6}, Lcom/narvii/community/MyCommunityHelper;->getText(I)Ljava/lang/CharSequence;

    .line 95
    move-result-object v7

    .line 96
    .line 97
    .line 98
    invoke-direct {v3, v7}, Lcom/narvii/util/text/NVText;-><init>(Ljava/lang/CharSequence;)V

    .line 99
    .line 100
    new-instance v7, Landroid/text/style/ForegroundColorSpan;

    .line 101
    .line 102
    .line 103
    const v8, -0x40fff2

    .line 104
    .line 105
    .line 106
    invoke-direct {v7, v8}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    .line 110
    move-result v8

    .line 111
    .line 112
    const/16 v9, 0x22

    .line 113
    .line 114
    .line 115
    invoke-virtual {v3, v7, v4, v8, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    .line 120
    aput v6, v1, v5

    .line 121
    .line 122
    new-array v3, v4, [Ljava/lang/CharSequence;

    .line 123
    .line 124
    .line 125
    invoke-interface {v2, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 126
    move-result-object v2

    .line 127
    .line 128
    check-cast v2, [Ljava/lang/CharSequence;

    .line 129
    .line 130
    new-instance v3, Lcom/narvii/community/u;

    .line 131
    .line 132
    .line 133
    invoke-direct {v3, v1, p1, p0}, Lcom/narvii/community/u;-><init>([ILcom/narvii/model/Community;Lcom/narvii/community/MyCommunityHelper;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 140
    return-void
.end method

.method public final startActivity(Landroid/content/Intent;)V
    .locals 1
    .param p1    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "intent"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/community/MyCommunityHelper;->context:Lcom/narvii/app/NVContext;

    .line 8
    .line 9
    .line 10
    invoke-static {v0, p1}, Lcom/narvii/community/MyCommunityHelper;->safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(Lcom/narvii/app/NVContext;Landroid/content/Intent;)V

    .line 11
    return-void
.end method

.method public final updateRemindersInCell(Landroid/view/View;Lcom/narvii/model/Community;Z)V
    .locals 9
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/model/Community;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "cell"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    if-nez p2, :cond_0

    .line 8
    const/4 v0, 0x0

    .line 9
    goto :goto_0

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/narvii/community/MyCommunityHelper;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    .line 12
    .line 13
    iget v1, p2, Lcom/narvii/model/Community;->id:I

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lcom/narvii/community/MyCommunityListService;->getReminder(I)Lcom/narvii/community/ReminderCheck;

    .line 17
    move-result-object v0

    .line 18
    :goto_0
    const/4 v1, 0x0

    .line 19
    .line 20
    if-nez p2, :cond_1

    .line 21
    move v2, v1

    .line 22
    goto :goto_1

    .line 23
    .line 24
    .line 25
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/community/MyCommunityHelper;->getChatService()Lcom/narvii/chat/core/ChatService;

    .line 26
    move-result-object v2

    .line 27
    .line 28
    iget v3, p2, Lcom/narvii/model/Community;->id:I

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2, v3}, Lcom/narvii/chat/core/ChatService;->getUnreadChatCountInCurCommunity(I)I

    .line 32
    move-result v2

    .line 33
    .line 34
    :goto_1
    if-eqz v0, :cond_2

    .line 35
    .line 36
    iget-object v3, v0, Lcom/narvii/community/ReminderCheck;->hasCheckInToday:Ljava/lang/Boolean;

    .line 37
    .line 38
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 39
    .line 40
    if-ne v3, v4, :cond_2

    .line 41
    const/4 v3, 0x1

    .line 42
    goto :goto_2

    .line 43
    :cond_2
    move v3, v1

    .line 44
    .line 45
    :goto_2
    if-nez v0, :cond_3

    .line 46
    move v4, v1

    .line 47
    goto :goto_3

    .line 48
    .line 49
    :cond_3
    iget v4, v0, Lcom/narvii/community/ReminderCheck;->notificationsCount:I

    .line 50
    .line 51
    iget v5, v0, Lcom/narvii/community/ReminderCheck;->noticesCount:I

    .line 52
    add-int/2addr v4, v5

    .line 53
    add-int/2addr v4, v2

    .line 54
    .line 55
    .line 56
    :goto_3
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 57
    move-result-object v2

    .line 58
    .line 59
    .line 60
    invoke-static {v2, p2}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 61
    move-result v2

    .line 62
    .line 63
    .line 64
    const v5, 0x7f0a02e3

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 68
    move-result-object v5

    .line 69
    .line 70
    if-nez v2, :cond_4

    .line 71
    .line 72
    .line 73
    invoke-virtual {v5}, Landroid/view/View;->clearAnimation()V

    .line 74
    .line 75
    :cond_4
    const/16 v6, 0x8

    .line 76
    .line 77
    .line 78
    const v7, 0x7f010039

    .line 79
    .line 80
    .line 81
    const v8, 0x7f010037

    .line 82
    .line 83
    if-eqz v3, :cond_6

    .line 84
    .line 85
    if-eqz v2, :cond_5

    .line 86
    .line 87
    .line 88
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    .line 89
    move-result v3

    .line 90
    .line 91
    if-eqz v3, :cond_5

    .line 92
    .line 93
    .line 94
    invoke-direct {p0}, Lcom/narvii/community/MyCommunityHelper;->getContext()Landroid/content/Context;

    .line 95
    move-result-object v3

    .line 96
    .line 97
    .line 98
    invoke-static {v3, v8}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 99
    move-result-object v3

    .line 100
    .line 101
    .line 102
    invoke-virtual {v5, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 103
    .line 104
    .line 105
    :cond_5
    invoke-virtual {v5, v1}, Landroid/view/View;->setVisibility(I)V

    .line 106
    goto :goto_4

    .line 107
    .line 108
    :cond_6
    if-eqz v2, :cond_7

    .line 109
    .line 110
    .line 111
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    .line 112
    move-result v3

    .line 113
    .line 114
    if-nez v3, :cond_7

    .line 115
    .line 116
    .line 117
    invoke-direct {p0}, Lcom/narvii/community/MyCommunityHelper;->getContext()Landroid/content/Context;

    .line 118
    move-result-object v3

    .line 119
    .line 120
    .line 121
    invoke-static {v3, v7}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 122
    move-result-object v3

    .line 123
    .line 124
    .line 125
    invoke-virtual {v5, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 126
    .line 127
    .line 128
    :cond_7
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 129
    .line 130
    .line 131
    :goto_4
    const v3, 0x7f0a0a29

    .line 132
    .line 133
    .line 134
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 135
    move-result-object p1

    .line 136
    .line 137
    const-string v3, "null cannot be cast to non-null type android.widget.TextView"

    .line 138
    .line 139
    .line 140
    invoke-static {p1, v3}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    move-object v3, p1

    .line 142
    .line 143
    check-cast v3, Landroid/widget/TextView;

    .line 144
    .line 145
    const/16 v5, 0x9

    .line 146
    .line 147
    if-le v4, v5, :cond_8

    .line 148
    .line 149
    const-string v5, "9+"

    .line 150
    goto :goto_5

    .line 151
    .line 152
    .line 153
    :cond_8
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 154
    move-result-object v5

    .line 155
    .line 156
    .line 157
    :goto_5
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    .line 159
    if-nez v2, :cond_9

    .line 160
    .line 161
    .line 162
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 163
    .line 164
    :cond_9
    if-lez v4, :cond_b

    .line 165
    .line 166
    if-eqz v2, :cond_a

    .line 167
    .line 168
    .line 169
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 170
    move-result v2

    .line 171
    .line 172
    if-eqz v2, :cond_a

    .line 173
    .line 174
    .line 175
    invoke-direct {p0}, Lcom/narvii/community/MyCommunityHelper;->getContext()Landroid/content/Context;

    .line 176
    move-result-object v2

    .line 177
    .line 178
    .line 179
    invoke-static {v2, v8}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 180
    move-result-object v2

    .line 181
    .line 182
    .line 183
    invoke-virtual {p1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 184
    .line 185
    .line 186
    :cond_a
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 187
    goto :goto_6

    .line 188
    .line 189
    :cond_b
    if-eqz v2, :cond_c

    .line 190
    .line 191
    .line 192
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 193
    move-result v1

    .line 194
    .line 195
    if-nez v1, :cond_c

    .line 196
    .line 197
    .line 198
    invoke-direct {p0}, Lcom/narvii/community/MyCommunityHelper;->getContext()Landroid/content/Context;

    .line 199
    move-result-object v1

    .line 200
    .line 201
    .line 202
    invoke-static {v1, v7}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 203
    move-result-object v1

    .line 204
    .line 205
    .line 206
    invoke-virtual {p1, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 207
    .line 208
    .line 209
    :cond_c
    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 210
    .line 211
    :goto_6
    if-eqz p3, :cond_e

    .line 212
    .line 213
    if-eqz p2, :cond_e

    .line 214
    .line 215
    if-eqz v0, :cond_d

    .line 216
    .line 217
    iget-object p1, p0, Lcom/narvii/community/MyCommunityHelper;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    .line 218
    .line 219
    iget p3, p2, Lcom/narvii/model/Community;->id:I

    .line 220
    .line 221
    .line 222
    invoke-virtual {p1, p3}, Lcom/narvii/community/MyCommunityListService;->getReminderRequestTime(I)J

    .line 223
    move-result-wide v0

    .line 224
    .line 225
    .line 226
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 227
    move-result-wide v2

    .line 228
    .line 229
    sget-object p1, Lcom/narvii/chat/global/chat/AggregationChatFragment;->Companion:Lcom/narvii/chat/global/chat/AggregationChatFragment$Companion;

    .line 230
    .line 231
    .line 232
    invoke-virtual {p1}, Lcom/narvii/chat/global/chat/AggregationChatFragment$Companion;->getREMINDER_CHECK_DURATION()J

    .line 233
    move-result-wide v4

    .line 234
    sub-long/2addr v2, v4

    .line 235
    .line 236
    cmp-long p1, v0, v2

    .line 237
    .line 238
    if-gez p1, :cond_e

    .line 239
    .line 240
    :cond_d
    iget-object p1, p0, Lcom/narvii/community/MyCommunityHelper;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    .line 241
    .line 242
    iget p3, p2, Lcom/narvii/model/Community;->id:I

    .line 243
    .line 244
    .line 245
    invoke-virtual {p1, p3}, Lcom/narvii/community/MyCommunityListService;->addReminderRequestQueue(I)V

    .line 246
    .line 247
    :cond_e
    if-eqz p2, :cond_f

    .line 248
    .line 249
    .line 250
    invoke-virtual {p0}, Lcom/narvii/community/MyCommunityHelper;->getChatService()Lcom/narvii/chat/core/ChatService;

    .line 251
    move-result-object p1

    .line 252
    .line 253
    iget p2, p2, Lcom/narvii/model/Community;->id:I

    .line 254
    .line 255
    .line 256
    invoke-virtual {p1, p2}, Lcom/narvii/chat/core/ChatService;->addThreadCheckQueue(I)V

    .line 257
    :cond_f
    return-void
.end method

.method public final updateThemeProgressInCell(Landroid/view/View;Lcom/narvii/model/Community;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/model/Community;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "cell"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "c"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    sget-boolean v0, Lcom/narvii/app/NVApplication;->DEBUG:Z

    .line 13
    .line 14
    if-eqz v0, :cond_4

    .line 15
    .line 16
    .line 17
    const v0, 0x7f0a040c

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    const-string v0, "null cannot be cast to non-null type android.widget.TextView"

    .line 24
    .line 25
    .line 26
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    check-cast p1, Landroid/widget/TextView;

    .line 29
    const/4 v0, 0x0

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/narvii/community/MyCommunityHelper;->getThemePackService()Lcom/narvii/theme/ThemePackService;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    iget v1, p2, Lcom/narvii/model/Community;->id:I

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v1}, Lcom/narvii/theme/ThemePackService;->getStatus(I)I

    .line 42
    move-result v0

    .line 43
    const/4 v1, -0x1

    .line 44
    .line 45
    if-eq v0, v1, :cond_3

    .line 46
    .line 47
    if-eqz v0, :cond_2

    .line 48
    const/4 v1, 0x1

    .line 49
    .line 50
    if-eq v0, v1, :cond_1

    .line 51
    const/4 p2, 0x5

    .line 52
    .line 53
    if-eq v0, p2, :cond_0

    .line 54
    .line 55
    const-string p2, "!"

    .line 56
    goto :goto_0

    .line 57
    .line 58
    :cond_0
    const-string p2, "R"

    .line 59
    goto :goto_0

    .line 60
    .line 61
    .line 62
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/community/MyCommunityHelper;->getThemePackService()Lcom/narvii/theme/ThemePackService;

    .line 63
    move-result-object v0

    .line 64
    .line 65
    iget p2, p2, Lcom/narvii/model/Community;->id:I

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, p2}, Lcom/narvii/theme/ThemePackService;->getProgress(I)F

    .line 69
    move-result p2

    .line 70
    .line 71
    const/16 v0, 0x64

    .line 72
    int-to-float v0, v0

    .line 73
    mul-float/2addr p2, v0

    .line 74
    float-to-int p2, p2

    .line 75
    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    const-string p2, "%"

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    move-result-object p2

    .line 92
    goto :goto_0

    .line 93
    .line 94
    :cond_2
    const-string p2, "?"

    .line 95
    goto :goto_0

    .line 96
    .line 97
    :cond_3
    const-string p2, "E"

    .line 98
    .line 99
    .line 100
    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    :cond_4
    return-void
.end method
