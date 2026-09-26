.class public Lcom/airbnb/lottie/f;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/f$e;,
        Lcom/airbnb/lottie/f$f;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "f"


# instance fields
.field private alpha:I

.field private final animator:Lcom/airbnb/lottie/utils/c;

.field private final colorFilterData:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/airbnb/lottie/f$e;",
            ">;"
        }
    .end annotation
.end field

.field private composition:Lcom/airbnb/lottie/e;

.field private compositionLayer:Lcom/airbnb/lottie/model/layer/b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private enableMergePaths:Z

.field fontAssetDelegate:Lcom/airbnb/lottie/b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private fontAssetManager:Li0/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private imageAssetDelegate:Lcom/airbnb/lottie/c;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private imageAssetManager:Li0/b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private imageAssetsFolder:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final lazyCompositionTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/airbnb/lottie/f$f;",
            ">;"
        }
    .end annotation
.end field

.field private final matrix:Landroid/graphics/Matrix;

.field private performanceTrackingEnabled:Z

.field private scale:F

.field private speed:F

.field private systemAnimationsAreDisabled:Z

.field textDelegate:Lcom/airbnb/lottie/l;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 4
    .line 5
    new-instance v0, Landroid/graphics/Matrix;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/airbnb/lottie/f;->matrix:Landroid/graphics/Matrix;

    .line 11
    .line 12
    new-instance v0, Lcom/airbnb/lottie/utils/c;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0}, Lcom/airbnb/lottie/utils/c;-><init>()V

    .line 16
    .line 17
    iput-object v0, p0, Lcom/airbnb/lottie/f;->animator:Lcom/airbnb/lottie/utils/c;

    .line 18
    .line 19
    const/high16 v1, 0x3f800000    # 1.0f

    .line 20
    .line 21
    iput v1, p0, Lcom/airbnb/lottie/f;->speed:F

    .line 22
    .line 23
    iput v1, p0, Lcom/airbnb/lottie/f;->scale:F

    .line 24
    .line 25
    new-instance v1, Ljava/util/HashSet;

    .line 26
    .line 27
    .line 28
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 29
    .line 30
    iput-object v1, p0, Lcom/airbnb/lottie/f;->colorFilterData:Ljava/util/Set;

    .line 31
    .line 32
    new-instance v1, Ljava/util/ArrayList;

    .line 33
    .line 34
    .line 35
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 36
    .line 37
    iput-object v1, p0, Lcom/airbnb/lottie/f;->lazyCompositionTasks:Ljava/util/ArrayList;

    .line 38
    .line 39
    const/16 v1, 0xff

    .line 40
    .line 41
    iput v1, p0, Lcom/airbnb/lottie/f;->alpha:I

    .line 42
    const/4 v1, 0x0

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 46
    .line 47
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    .line 48
    .line 49
    .line 50
    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 54
    .line 55
    new-instance v1, Lcom/airbnb/lottie/f$a;

    .line 56
    .line 57
    .line 58
    invoke-direct {v1, p0}, Lcom/airbnb/lottie/f$a;-><init>(Lcom/airbnb/lottie/f;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 62
    return-void
.end method

.method private B(Z)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/airbnb/lottie/f;->compositionLayer:Lcom/airbnb/lottie/model/layer/b;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/airbnb/lottie/f;->lazyCompositionTasks:Ljava/util/ArrayList;

    .line 7
    .line 8
    new-instance v1, Lcom/airbnb/lottie/f$b;

    .line 9
    .line 10
    .line 11
    invoke-direct {v1, p0, p1}, Lcom/airbnb/lottie/f$b;-><init>(Lcom/airbnb/lottie/f;Z)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    return-void

    .line 16
    .line 17
    :cond_0
    if-eqz p1, :cond_1

    .line 18
    .line 19
    iget-object p1, p0, Lcom/airbnb/lottie/f;->animator:Lcom/airbnb/lottie/utils/c;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/airbnb/lottie/utils/c;->start()V

    .line 23
    goto :goto_0

    .line 24
    .line 25
    :cond_1
    iget-object p1, p0, Lcom/airbnb/lottie/f;->animator:Lcom/airbnb/lottie/utils/c;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/airbnb/lottie/utils/c;->j()V

    .line 29
    :goto_0
    return-void
.end method

.method private S()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/airbnb/lottie/f;->composition:Lcom/airbnb/lottie/e;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/f;->u()F

    .line 9
    move-result v0

    .line 10
    .line 11
    iget-object v1, p0, Lcom/airbnb/lottie/f;->composition:Lcom/airbnb/lottie/e;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/airbnb/lottie/e;->h()Landroid/graphics/Rect;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 19
    move-result v1

    .line 20
    int-to-float v1, v1

    .line 21
    mul-float/2addr v1, v0

    .line 22
    float-to-int v1, v1

    .line 23
    .line 24
    iget-object v2, p0, Lcom/airbnb/lottie/f;->composition:Lcom/airbnb/lottie/e;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2}, Lcom/airbnb/lottie/e;->h()Landroid/graphics/Rect;

    .line 28
    move-result-object v2

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    .line 32
    move-result v2

    .line 33
    int-to-float v2, v2

    .line 34
    mul-float/2addr v2, v0

    .line 35
    float-to-int v0, v2

    .line 36
    const/4 v2, 0x0

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, v2, v2, v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 40
    return-void
.end method

.method static synthetic a(Lcom/airbnb/lottie/f;)Lcom/airbnb/lottie/model/layer/b;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/airbnb/lottie/f;->compositionLayer:Lcom/airbnb/lottie/model/layer/b;

    .line 3
    return-object p0
.end method

.method static synthetic b(Lcom/airbnb/lottie/f;)Lcom/airbnb/lottie/utils/c;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/airbnb/lottie/f;->animator:Lcom/airbnb/lottie/utils/c;

    .line 3
    return-object p0
.end method

.method static synthetic c(Lcom/airbnb/lottie/f;Z)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/f;->B(Z)V

    .line 4
    return-void
.end method

.method private e(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/ColorFilter;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/ColorFilter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    new-instance v0, Lcom/airbnb/lottie/f$e;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p1, p2, p3}, Lcom/airbnb/lottie/f$e;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/ColorFilter;)V

    .line 6
    .line 7
    if-nez p3, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Lcom/airbnb/lottie/f;->colorFilterData:Ljava/util/Set;

    .line 10
    .line 11
    .line 12
    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 13
    move-result v1

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    iget-object v1, p0, Lcom/airbnb/lottie/f;->colorFilterData:Ljava/util/Set;

    .line 18
    .line 19
    .line 20
    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 21
    goto :goto_0

    .line 22
    .line 23
    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/f;->colorFilterData:Ljava/util/Set;

    .line 24
    .line 25
    new-instance v1, Lcom/airbnb/lottie/f$e;

    .line 26
    .line 27
    .line 28
    invoke-direct {v1, p1, p2, p3}, Lcom/airbnb/lottie/f$e;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/ColorFilter;)V

    .line 29
    .line 30
    .line 31
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 32
    .line 33
    :goto_0
    iget-object v0, p0, Lcom/airbnb/lottie/f;->compositionLayer:Lcom/airbnb/lottie/model/layer/b;

    .line 34
    .line 35
    if-nez v0, :cond_1

    .line 36
    return-void

    .line 37
    .line 38
    .line 39
    :cond_1
    invoke-virtual {v0, p1, p2, p3}, Lcom/airbnb/lottie/model/layer/b;->b(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/ColorFilter;)V

    .line 40
    return-void
.end method

.method private f()V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/airbnb/lottie/f;->compositionLayer:Lcom/airbnb/lottie/model/layer/b;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/f;->colorFilterData:Ljava/util/Set;

    .line 8
    .line 9
    .line 10
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    .line 14
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    move-result v1

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    .line 20
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    move-result-object v1

    .line 22
    .line 23
    check-cast v1, Lcom/airbnb/lottie/f$e;

    .line 24
    .line 25
    iget-object v2, p0, Lcom/airbnb/lottie/f;->compositionLayer:Lcom/airbnb/lottie/model/layer/b;

    .line 26
    .line 27
    iget-object v3, v1, Lcom/airbnb/lottie/f$e;->layerName:Ljava/lang/String;

    .line 28
    .line 29
    iget-object v4, v1, Lcom/airbnb/lottie/f$e;->contentName:Ljava/lang/String;

    .line 30
    .line 31
    iget-object v1, v1, Lcom/airbnb/lottie/f$e;->colorFilter:Landroid/graphics/ColorFilter;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2, v3, v4, v1}, Lcom/airbnb/lottie/model/layer/b;->b(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/ColorFilter;)V

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    return-void
.end method

.method private g()V
    .locals 4

    .line 1
    .line 2
    new-instance v0, Lcom/airbnb/lottie/model/layer/b;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/airbnb/lottie/f;->composition:Lcom/airbnb/lottie/e;

    .line 5
    .line 6
    .line 7
    invoke-static {v1}, Lcom/airbnb/lottie/model/layer/d$b;->a(Lcom/airbnb/lottie/e;)Lcom/airbnb/lottie/model/layer/d;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    iget-object v2, p0, Lcom/airbnb/lottie/f;->composition:Lcom/airbnb/lottie/e;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v2}, Lcom/airbnb/lottie/e;->p()Ljava/util/List;

    .line 14
    move-result-object v2

    .line 15
    .line 16
    iget-object v3, p0, Lcom/airbnb/lottie/f;->composition:Lcom/airbnb/lottie/e;

    .line 17
    .line 18
    .line 19
    invoke-direct {v0, p0, v1, v2, v3}, Lcom/airbnb/lottie/model/layer/b;-><init>(Lcom/airbnb/lottie/f;Lcom/airbnb/lottie/model/layer/d;Ljava/util/List;Lcom/airbnb/lottie/e;)V

    .line 20
    .line 21
    iput-object v0, p0, Lcom/airbnb/lottie/f;->compositionLayer:Lcom/airbnb/lottie/model/layer/b;

    .line 22
    return-void
.end method

.method private i()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/airbnb/lottie/f;->C()V

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    iput-object v0, p0, Lcom/airbnb/lottie/f;->compositionLayer:Lcom/airbnb/lottie/model/layer/b;

    .line 7
    .line 8
    iput-object v0, p0, Lcom/airbnb/lottie/f;->imageAssetManager:Li0/b;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/airbnb/lottie/f;->invalidateSelf()V

    .line 12
    return-void
.end method

.method private m()Landroid/content/Context;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    return-object v1

    .line 9
    .line 10
    :cond_0
    instance-of v2, v0, Landroid/view/View;

    .line 11
    .line 12
    if-eqz v2, :cond_1

    .line 13
    .line 14
    check-cast v0, Landroid/view/View;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 18
    move-result-object v0

    .line 19
    return-object v0

    .line 20
    :cond_1
    return-object v1
.end method

.method private n()Li0/a;
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    const/4 v0, 0x0

    .line 8
    return-object v0

    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/f;->fontAssetManager:Li0/a;

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    new-instance v0, Li0/a;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    iget-object v2, p0, Lcom/airbnb/lottie/f;->fontAssetDelegate:Lcom/airbnb/lottie/b;

    .line 21
    .line 22
    .line 23
    invoke-direct {v0, v1, v2}, Li0/a;-><init>(Landroid/graphics/drawable/Drawable$Callback;Lcom/airbnb/lottie/b;)V

    .line 24
    .line 25
    iput-object v0, p0, Lcom/airbnb/lottie/f;->fontAssetManager:Li0/a;

    .line 26
    .line 27
    :cond_1
    iget-object v0, p0, Lcom/airbnb/lottie/f;->fontAssetManager:Li0/a;

    .line 28
    return-object v0
.end method

.method private p()Li0/b;
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    return-object v1

    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/f;->imageAssetManager:Li0/b;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    .line 15
    invoke-direct {p0}, Lcom/airbnb/lottie/f;->m()Landroid/content/Context;

    .line 16
    move-result-object v2

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v2}, Li0/b;->b(Landroid/content/Context;)Z

    .line 20
    move-result v0

    .line 21
    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    iget-object v0, p0, Lcom/airbnb/lottie/f;->imageAssetManager:Li0/b;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Li0/b;->c()V

    .line 28
    .line 29
    iput-object v1, p0, Lcom/airbnb/lottie/f;->imageAssetManager:Li0/b;

    .line 30
    .line 31
    :cond_1
    iget-object v0, p0, Lcom/airbnb/lottie/f;->imageAssetManager:Li0/b;

    .line 32
    .line 33
    if-nez v0, :cond_2

    .line 34
    .line 35
    new-instance v0, Li0/b;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    .line 39
    move-result-object v2

    .line 40
    .line 41
    iget-object v3, p0, Lcom/airbnb/lottie/f;->imageAssetsFolder:Ljava/lang/String;

    .line 42
    .line 43
    iget-object v4, p0, Lcom/airbnb/lottie/f;->composition:Lcom/airbnb/lottie/e;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v4}, Lcom/airbnb/lottie/e;->o()Ljava/util/Map;

    .line 47
    move-result-object v4

    .line 48
    .line 49
    .line 50
    invoke-direct {v0, v2, v3, v1, v4}, Li0/b;-><init>(Landroid/graphics/drawable/Drawable$Callback;Ljava/lang/String;Lcom/airbnb/lottie/c;Ljava/util/Map;)V

    .line 51
    .line 52
    iput-object v0, p0, Lcom/airbnb/lottie/f;->imageAssetManager:Li0/b;

    .line 53
    .line 54
    :cond_2
    iget-object v0, p0, Lcom/airbnb/lottie/f;->imageAssetManager:Li0/b;

    .line 55
    return-object v0
.end method

.method private r(Landroid/graphics/Canvas;)F
    .locals 2
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    .line 4
    move-result v0

    .line 5
    int-to-float v0, v0

    .line 6
    .line 7
    iget-object v1, p0, Lcom/airbnb/lottie/f;->composition:Lcom/airbnb/lottie/e;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/airbnb/lottie/e;->h()Landroid/graphics/Rect;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 15
    move-result v1

    .line 16
    int-to-float v1, v1

    .line 17
    div-float/2addr v0, v1

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    .line 21
    move-result p1

    .line 22
    int-to-float p1, p1

    .line 23
    .line 24
    iget-object v1, p0, Lcom/airbnb/lottie/f;->composition:Lcom/airbnb/lottie/e;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/airbnb/lottie/e;->h()Landroid/graphics/Rect;

    .line 28
    move-result-object v1

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 32
    move-result v1

    .line 33
    int-to-float v1, v1

    .line 34
    div-float/2addr p1, v1

    .line 35
    .line 36
    .line 37
    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    .line 38
    move-result p1

    .line 39
    return p1
.end method


# virtual methods
.method public A()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Lcom/airbnb/lottie/f;->B(Z)V

    .line 5
    return-void
.end method

.method public C()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/airbnb/lottie/f;->imageAssetManager:Li0/b;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Li0/b;->c()V

    .line 8
    :cond_0
    return-void
.end method

.method public D()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/airbnb/lottie/f;->animator:Lcom/airbnb/lottie/utils/c;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    .line 6
    move-result v0

    .line 7
    .line 8
    iget-object v1, p0, Lcom/airbnb/lottie/f;->animator:Lcom/airbnb/lottie/utils/c;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/airbnb/lottie/utils/c;->g()F

    .line 12
    move-result v1

    .line 13
    .line 14
    cmpl-float v0, v0, v1

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iget-boolean v0, p0, Lcom/airbnb/lottie/f;->systemAnimationsAreDisabled:Z

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 25
    .line 26
    .line 27
    :goto_1
    invoke-direct {p0, v0}, Lcom/airbnb/lottie/f;->B(Z)V

    .line 28
    return-void
.end method

.method public E(Lcom/airbnb/lottie/e;)Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/airbnb/lottie/f;->composition:Lcom/airbnb/lottie/e;

    .line 3
    .line 4
    if-ne v0, p1, :cond_0

    .line 5
    const/4 p1, 0x0

    .line 6
    return p1

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-direct {p0}, Lcom/airbnb/lottie/f;->i()V

    .line 10
    .line 11
    iput-object p1, p0, Lcom/airbnb/lottie/f;->composition:Lcom/airbnb/lottie/e;

    .line 12
    .line 13
    iget v0, p0, Lcom/airbnb/lottie/f;->speed:F

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/f;->P(F)V

    .line 17
    .line 18
    iget v0, p0, Lcom/airbnb/lottie/f;->scale:F

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/f;->O(F)V

    .line 22
    .line 23
    .line 24
    invoke-direct {p0}, Lcom/airbnb/lottie/f;->S()V

    .line 25
    .line 26
    .line 27
    invoke-direct {p0}, Lcom/airbnb/lottie/f;->g()V

    .line 28
    .line 29
    .line 30
    invoke-direct {p0}, Lcom/airbnb/lottie/f;->f()V

    .line 31
    .line 32
    new-instance v0, Ljava/util/ArrayList;

    .line 33
    .line 34
    iget-object v1, p0, Lcom/airbnb/lottie/f;->lazyCompositionTasks:Ljava/util/ArrayList;

    .line 35
    .line 36
    .line 37
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 41
    move-result-object v0

    .line 42
    .line 43
    .line 44
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    move-result v1

    .line 46
    .line 47
    if-eqz v1, :cond_1

    .line 48
    .line 49
    .line 50
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 51
    move-result-object v1

    .line 52
    .line 53
    check-cast v1, Lcom/airbnb/lottie/f$f;

    .line 54
    .line 55
    .line 56
    invoke-interface {v1, p1}, Lcom/airbnb/lottie/f$f;->a(Lcom/airbnb/lottie/e;)V

    .line 57
    .line 58
    .line 59
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 60
    goto :goto_0

    .line 61
    .line 62
    :cond_1
    iget-object v0, p0, Lcom/airbnb/lottie/f;->lazyCompositionTasks:Ljava/util/ArrayList;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 66
    .line 67
    iget-boolean v0, p0, Lcom/airbnb/lottie/f;->performanceTrackingEnabled:Z

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/e;->x(Z)V

    .line 71
    .line 72
    iget-object p1, p0, Lcom/airbnb/lottie/f;->animator:Lcom/airbnb/lottie/utils/c;

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1}, Lcom/airbnb/lottie/utils/c;->f()V

    .line 76
    const/4 p1, 0x1

    .line 77
    return p1
.end method

.method public F(Lcom/airbnb/lottie/b;)V
    .locals 1

    .line 1
    .line 2
    iput-object p1, p0, Lcom/airbnb/lottie/f;->fontAssetDelegate:Lcom/airbnb/lottie/b;

    .line 3
    .line 4
    iget-object v0, p0, Lcom/airbnb/lottie/f;->fontAssetManager:Li0/a;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Li0/a;->c(Lcom/airbnb/lottie/b;)V

    .line 10
    :cond_0
    return-void
.end method

.method public G(Lcom/airbnb/lottie/c;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/airbnb/lottie/f;->imageAssetManager:Li0/b;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Li0/b;->d(Lcom/airbnb/lottie/c;)V

    .line 8
    :cond_0
    return-void
.end method

.method public H(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/airbnb/lottie/f;->imageAssetsFolder:Ljava/lang/String;

    return-void
.end method

.method public I(I)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/airbnb/lottie/f;->composition:Lcom/airbnb/lottie/e;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/airbnb/lottie/f;->lazyCompositionTasks:Ljava/util/ArrayList;

    .line 7
    .line 8
    new-instance v1, Lcom/airbnb/lottie/f$d;

    .line 9
    .line 10
    .line 11
    invoke-direct {v1, p0, p1}, Lcom/airbnb/lottie/f$d;-><init>(Lcom/airbnb/lottie/f;I)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    return-void

    .line 16
    :cond_0
    int-to-float p1, p1

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/airbnb/lottie/e;->l()F

    .line 20
    move-result v0

    .line 21
    div-float/2addr p1, v0

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/f;->J(F)V

    .line 25
    return-void
.end method

.method public J(F)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/airbnb/lottie/f;->animator:Lcom/airbnb/lottie/utils/c;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/utils/c;->l(F)V

    .line 6
    return-void
.end method

.method public K(I)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/airbnb/lottie/f;->composition:Lcom/airbnb/lottie/e;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/airbnb/lottie/f;->lazyCompositionTasks:Ljava/util/ArrayList;

    .line 7
    .line 8
    new-instance v1, Lcom/airbnb/lottie/f$c;

    .line 9
    .line 10
    .line 11
    invoke-direct {v1, p0, p1}, Lcom/airbnb/lottie/f$c;-><init>(Lcom/airbnb/lottie/f;I)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    return-void

    .line 16
    :cond_0
    int-to-float p1, p1

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/airbnb/lottie/e;->l()F

    .line 20
    move-result v0

    .line 21
    div-float/2addr p1, v0

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/f;->L(F)V

    .line 25
    return-void
.end method

.method public L(F)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/airbnb/lottie/f;->animator:Lcom/airbnb/lottie/utils/c;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/utils/c;->m(F)V

    .line 6
    return-void
.end method

.method public M(Z)V
    .locals 1

    .line 1
    .line 2
    iput-boolean p1, p0, Lcom/airbnb/lottie/f;->performanceTrackingEnabled:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/airbnb/lottie/f;->composition:Lcom/airbnb/lottie/e;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/e;->x(Z)V

    .line 10
    :cond_0
    return-void
.end method

.method public N(F)V
    .locals 1
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/airbnb/lottie/f;->animator:Lcom/airbnb/lottie/utils/c;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/utils/c;->n(F)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/airbnb/lottie/f;->compositionLayer:Lcom/airbnb/lottie/model/layer/b;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/model/layer/b;->v(F)V

    .line 13
    :cond_0
    return-void
.end method

.method public O(F)V
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Lcom/airbnb/lottie/f;->scale:F

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Lcom/airbnb/lottie/f;->S()V

    .line 6
    return-void
.end method

.method public P(F)V
    .locals 4

    .line 1
    .line 2
    iput p1, p0, Lcom/airbnb/lottie/f;->speed:F

    .line 3
    .line 4
    iget-object v0, p0, Lcom/airbnb/lottie/f;->animator:Lcom/airbnb/lottie/utils/c;

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    cmpg-float v1, p1, v1

    .line 8
    .line 9
    if-gez v1, :cond_0

    .line 10
    const/4 v1, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v1, 0x0

    .line 13
    .line 14
    .line 15
    :goto_0
    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/utils/c;->k(Z)V

    .line 16
    .line 17
    iget-object v0, p0, Lcom/airbnb/lottie/f;->composition:Lcom/airbnb/lottie/e;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    iget-object v1, p0, Lcom/airbnb/lottie/f;->animator:Lcom/airbnb/lottie/utils/c;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/airbnb/lottie/e;->k()J

    .line 25
    move-result-wide v2

    .line 26
    long-to-float v0, v2

    .line 27
    .line 28
    .line 29
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 30
    move-result p1

    .line 31
    div-float/2addr v0, p1

    .line 32
    float-to-long v2, v0

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, v2, v3}, Lcom/airbnb/lottie/utils/c;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 36
    :cond_1
    return-void
.end method

.method public Q(Lcom/airbnb/lottie/l;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/airbnb/lottie/f;->textDelegate:Lcom/airbnb/lottie/l;

    return-void
.end method

.method R()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    iput-boolean v0, p0, Lcom/airbnb/lottie/f;->systemAnimationsAreDisabled:Z

    .line 4
    .line 5
    iget-object v0, p0, Lcom/airbnb/lottie/f;->animator:Lcom/airbnb/lottie/utils/c;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/airbnb/lottie/utils/c;->p()V

    .line 9
    return-void
.end method

.method public T()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/airbnb/lottie/f;->textDelegate:Lcom/airbnb/lottie/l;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/airbnb/lottie/f;->composition:Lcom/airbnb/lottie/e;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/airbnb/lottie/e;->i()Landroidx/collection/SparseArrayCompat;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Landroidx/collection/SparseArrayCompat;->r()I

    .line 14
    move-result v0

    .line 15
    .line 16
    if-lez v0, :cond_0

    .line 17
    const/4 v0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    :goto_0
    return v0
.end method

.method public d(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0, v0, p1}, Lcom/airbnb/lottie/f;->e(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/ColorFilter;)V

    .line 5
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "Drawable#draw"

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/airbnb/lottie/d;->a(Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v1, p0, Lcom/airbnb/lottie/f;->compositionLayer:Lcom/airbnb/lottie/model/layer/b;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    return-void

    .line 11
    .line 12
    :cond_0
    iget v1, p0, Lcom/airbnb/lottie/f;->scale:F

    .line 13
    .line 14
    .line 15
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/f;->r(Landroid/graphics/Canvas;)F

    .line 16
    move-result v2

    .line 17
    .line 18
    cmpl-float v3, v1, v2

    .line 19
    .line 20
    const/high16 v4, 0x3f800000    # 1.0f

    .line 21
    .line 22
    if-lez v3, :cond_1

    .line 23
    .line 24
    iget v1, p0, Lcom/airbnb/lottie/f;->scale:F

    .line 25
    div-float/2addr v1, v2

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    move v2, v1

    .line 28
    move v1, v4

    .line 29
    .line 30
    :goto_0
    cmpl-float v3, v1, v4

    .line 31
    .line 32
    if-lez v3, :cond_2

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 36
    .line 37
    iget-object v4, p0, Lcom/airbnb/lottie/f;->composition:Lcom/airbnb/lottie/e;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v4}, Lcom/airbnb/lottie/e;->h()Landroid/graphics/Rect;

    .line 41
    move-result-object v4

    .line 42
    .line 43
    .line 44
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    .line 45
    move-result v4

    .line 46
    int-to-float v4, v4

    .line 47
    .line 48
    const/high16 v5, 0x40000000    # 2.0f

    .line 49
    div-float/2addr v4, v5

    .line 50
    .line 51
    iget-object v6, p0, Lcom/airbnb/lottie/f;->composition:Lcom/airbnb/lottie/e;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v6}, Lcom/airbnb/lottie/e;->h()Landroid/graphics/Rect;

    .line 55
    move-result-object v6

    .line 56
    .line 57
    .line 58
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    .line 59
    move-result v6

    .line 60
    int-to-float v6, v6

    .line 61
    div-float/2addr v6, v5

    .line 62
    .line 63
    mul-float v5, v4, v2

    .line 64
    .line 65
    mul-float v7, v6, v2

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Lcom/airbnb/lottie/f;->u()F

    .line 69
    move-result v8

    .line 70
    mul-float/2addr v8, v4

    .line 71
    sub-float/2addr v8, v5

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0}, Lcom/airbnb/lottie/f;->u()F

    .line 75
    move-result v4

    .line 76
    mul-float/2addr v4, v6

    .line 77
    sub-float/2addr v4, v7

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1, v8, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1, v1, v1, v5, v7}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 84
    .line 85
    :cond_2
    iget-object v1, p0, Lcom/airbnb/lottie/f;->matrix:Landroid/graphics/Matrix;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 89
    .line 90
    iget-object v1, p0, Lcom/airbnb/lottie/f;->matrix:Landroid/graphics/Matrix;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v1, v2, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 94
    .line 95
    iget-object v1, p0, Lcom/airbnb/lottie/f;->compositionLayer:Lcom/airbnb/lottie/model/layer/b;

    .line 96
    .line 97
    iget-object v2, p0, Lcom/airbnb/lottie/f;->matrix:Landroid/graphics/Matrix;

    .line 98
    .line 99
    iget v4, p0, Lcom/airbnb/lottie/f;->alpha:I

    .line 100
    .line 101
    .line 102
    invoke-virtual {v1, p1, v2, v4}, Lcom/airbnb/lottie/model/layer/a;->d(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    .line 103
    .line 104
    .line 105
    invoke-static {v0}, Lcom/airbnb/lottie/d;->b(Ljava/lang/String;)F

    .line 106
    .line 107
    if-lez v3, :cond_3

    .line 108
    .line 109
    .line 110
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 111
    :cond_3
    return-void
.end method

.method public getAlpha()I
    .locals 1

    iget v0, p0, Lcom/airbnb/lottie/f;->alpha:I

    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/airbnb/lottie/f;->composition:Lcom/airbnb/lottie/e;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    const/4 v0, -0x1

    .line 6
    goto :goto_0

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-virtual {v0}, Lcom/airbnb/lottie/e;->h()Landroid/graphics/Rect;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 14
    move-result v0

    .line 15
    int-to-float v0, v0

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/airbnb/lottie/f;->u()F

    .line 19
    move-result v1

    .line 20
    mul-float/2addr v0, v1

    .line 21
    float-to-int v0, v0

    .line 22
    :goto_0
    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/airbnb/lottie/f;->composition:Lcom/airbnb/lottie/e;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    const/4 v0, -0x1

    .line 6
    goto :goto_0

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-virtual {v0}, Lcom/airbnb/lottie/e;->h()Landroid/graphics/Rect;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 14
    move-result v0

    .line 15
    int-to-float v0, v0

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/airbnb/lottie/f;->u()F

    .line 19
    move-result v1

    .line 20
    mul-float/2addr v0, v1

    .line 21
    float-to-int v0, v0

    .line 22
    :goto_0
    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public h()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/airbnb/lottie/f;->lazyCompositionTasks:Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/airbnb/lottie/f;->animator:Lcom/airbnb/lottie/utils/c;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 11
    return-void
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-interface {p1, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 11
    return-void
.end method

.method public invalidateSelf()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-interface {v0, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 10
    :cond_0
    return-void
.end method

.method public j(Z)V
    .locals 0

    .line 1
    .line 2
    iput-boolean p1, p0, Lcom/airbnb/lottie/f;->enableMergePaths:Z

    .line 3
    .line 4
    iget-object p1, p0, Lcom/airbnb/lottie/f;->composition:Lcom/airbnb/lottie/e;

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/airbnb/lottie/f;->g()V

    .line 10
    :cond_0
    return-void
.end method

.method public k()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/airbnb/lottie/f;->enableMergePaths:Z

    return v0
.end method

.method public l()Lcom/airbnb/lottie/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/f;->composition:Lcom/airbnb/lottie/e;

    return-object v0
.end method

.method public o(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/airbnb/lottie/f;->p()Li0/b;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Li0/b;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 10
    move-result-object p1

    .line 11
    return-object p1

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    return-object p1
.end method

.method public q()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/f;->imageAssetsFolder:Ljava/lang/String;

    return-object v0
.end method

.method public s()Lcom/airbnb/lottie/i;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/airbnb/lottie/f;->composition:Lcom/airbnb/lottie/e;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/airbnb/lottie/e;->t()Lcom/airbnb/lottie/i;

    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return-object v0
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-interface {p1, p0, p2, p3, p4}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    .line 11
    return-void
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
        .end annotation
    .end param

    iput p1, p0, Lcom/airbnb/lottie/f;->alpha:I

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1    # Landroid/graphics/ColorFilter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 3
    .line 4
    const-string v0, "Use addColorFilter instead."

    .line 5
    .line 6
    .line 7
    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 8
    throw p1
.end method

.method public t()F
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/airbnb/lottie/f;->animator:Lcom/airbnb/lottie/utils/c;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/airbnb/lottie/utils/c;->i()F

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public u()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/airbnb/lottie/f;->scale:F

    return v0
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-interface {p1, p0, p2}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    .line 11
    return-void
.end method

.method public v()Lcom/airbnb/lottie/l;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/f;->textDelegate:Lcom/airbnb/lottie/l;

    return-object v0
.end method

.method public w(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/airbnb/lottie/f;->n()Li0/a;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1, p2}, Li0/a;->b(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Typeface;

    .line 10
    move-result-object p1

    .line 11
    return-object p1

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    return-object p1
.end method

.method public x()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/airbnb/lottie/f;->animator:Lcom/airbnb/lottie/utils/c;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public y()Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/airbnb/lottie/f;->animator:Lcom/airbnb/lottie/utils/c;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getRepeatCount()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, -0x1

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    const/4 v0, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    return v0
.end method

.method public z(Z)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/airbnb/lottie/f;->animator:Lcom/airbnb/lottie/utils/c;

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    const/4 p1, -0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p1, 0x0

    .line 8
    .line 9
    .line 10
    :goto_0
    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 11
    return-void
.end method
