.class public final Lcom/bumptech/glide/load/engine/cache/i$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/cache/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field static final ARRAY_POOL_SIZE_BYTES:I = 0x400000

.field static final BITMAP_POOL_TARGET_SCREENS:I

.field static final LOW_MEMORY_MAX_SIZE_MULTIPLIER:F = 0.33f

.field static final MAX_SIZE_MULTIPLIER:F = 0.4f

.field static final MEMORY_CACHE_TARGET_SCREENS:I = 0x2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field activityManager:Landroid/app/ActivityManager;

.field arrayPoolSizeBytes:I

.field bitmapPoolScreens:F

.field final context:Landroid/content/Context;

.field lowMemoryMaxSizeMultiplier:F

.field maxSizeMultiplier:F

.field memoryCacheScreens:F

.field screenDimensions:Lcom/bumptech/glide/load/engine/cache/i$c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sput v0, Lcom/bumptech/glide/load/engine/cache/i$a;->BITMAP_POOL_TARGET_SCREENS:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    const/high16 v0, 0x40000000    # 2.0f

    .line 6
    .line 7
    iput v0, p0, Lcom/bumptech/glide/load/engine/cache/i$a;->memoryCacheScreens:F

    .line 8
    .line 9
    sget v0, Lcom/bumptech/glide/load/engine/cache/i$a;->BITMAP_POOL_TARGET_SCREENS:I

    .line 10
    int-to-float v0, v0

    .line 11
    .line 12
    iput v0, p0, Lcom/bumptech/glide/load/engine/cache/i$a;->bitmapPoolScreens:F

    .line 13
    .line 14
    .line 15
    const v0, 0x3ecccccd    # 0.4f

    .line 16
    .line 17
    iput v0, p0, Lcom/bumptech/glide/load/engine/cache/i$a;->maxSizeMultiplier:F

    .line 18
    .line 19
    .line 20
    const v0, 0x3ea8f5c3    # 0.33f

    .line 21
    .line 22
    iput v0, p0, Lcom/bumptech/glide/load/engine/cache/i$a;->lowMemoryMaxSizeMultiplier:F

    .line 23
    .line 24
    const/high16 v0, 0x400000

    .line 25
    .line 26
    iput v0, p0, Lcom/bumptech/glide/load/engine/cache/i$a;->arrayPoolSizeBytes:I

    .line 27
    .line 28
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/cache/i$a;->context:Landroid/content/Context;

    .line 29
    .line 30
    const-string v0, "activity"

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    check-cast v0, Landroid/app/ActivityManager;

    .line 37
    .line 38
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/cache/i$a;->activityManager:Landroid/app/ActivityManager;

    .line 39
    .line 40
    new-instance v0, Lcom/bumptech/glide/load/engine/cache/i$b;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 44
    move-result-object p1

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 48
    move-result-object p1

    .line 49
    .line 50
    .line 51
    invoke-direct {v0, p1}, Lcom/bumptech/glide/load/engine/cache/i$b;-><init>(Landroid/util/DisplayMetrics;)V

    .line 52
    .line 53
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/cache/i$a;->screenDimensions:Lcom/bumptech/glide/load/engine/cache/i$c;

    .line 54
    .line 55
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 56
    .line 57
    const/16 v0, 0x1a

    .line 58
    .line 59
    if-lt p1, v0, :cond_0

    .line 60
    .line 61
    iget-object p1, p0, Lcom/bumptech/glide/load/engine/cache/i$a;->activityManager:Landroid/app/ActivityManager;

    .line 62
    .line 63
    .line 64
    invoke-static {p1}, Lcom/bumptech/glide/load/engine/cache/i;->e(Landroid/app/ActivityManager;)Z

    .line 65
    move-result p1

    .line 66
    .line 67
    if-eqz p1, :cond_0

    .line 68
    const/4 p1, 0x0

    .line 69
    .line 70
    iput p1, p0, Lcom/bumptech/glide/load/engine/cache/i$a;->bitmapPoolScreens:F

    .line 71
    :cond_0
    return-void
.end method


# virtual methods
.method public a()Lcom/bumptech/glide/load/engine/cache/i;
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/bumptech/glide/load/engine/cache/i;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcom/bumptech/glide/load/engine/cache/i;-><init>(Lcom/bumptech/glide/load/engine/cache/i$a;)V

    .line 6
    return-object v0
.end method
