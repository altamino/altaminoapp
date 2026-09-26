.class public final Landroidx/appcompat/widget/ResourceManagerInternal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/ResourceManagerInternal$DrawableDelegate;,
        Landroidx/appcompat/widget/ResourceManagerInternal$AsldcInflateDelegate;,
        Landroidx/appcompat/widget/ResourceManagerInternal$AvdcInflateDelegate;,
        Landroidx/appcompat/widget/ResourceManagerInternal$VdcInflateDelegate;,
        Landroidx/appcompat/widget/ResourceManagerInternal$ColorFilterLruCache;,
        Landroidx/appcompat/widget/ResourceManagerInternal$InflateDelegate;,
        Landroidx/appcompat/widget/ResourceManagerInternal$ResourceManagerHooks;
    }
.end annotation


# static fields
.field private static final COLOR_FILTER_CACHE:Landroidx/appcompat/widget/ResourceManagerInternal$ColorFilterLruCache;

.field private static final DEBUG:Z = false

.field private static final DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

.field private static INSTANCE:Landroidx/appcompat/widget/ResourceManagerInternal; = null

.field private static final PLATFORM_VD_CLAZZ:Ljava/lang/String; = "android.graphics.drawable.VectorDrawable"

.field private static final SKIP_DRAWABLE_TAG:Ljava/lang/String; = "appcompat_skip_skip"

.field private static final TAG:Ljava/lang/String; = "ResourceManagerInternal"


# instance fields
.field private mDelegates:Landroidx/collection/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SimpleArrayMap<",
            "Ljava/lang/String;",
            "Landroidx/appcompat/widget/ResourceManagerInternal$InflateDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private final mDrawableCaches:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/content/Context;",
            "Landroidx/collection/LongSparseArray<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private mHasCheckedVectorDrawableSetup:Z

.field private mHooks:Landroidx/appcompat/widget/ResourceManagerInternal$ResourceManagerHooks;

.field private mKnownDrawableIdTags:Landroidx/collection/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SparseArrayCompat<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTintLists:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/content/Context;",
            "Landroidx/collection/SparseArrayCompat<",
            "Landroid/content/res/ColorStateList;",
            ">;>;"
        }
    .end annotation
.end field

.field private mTypedValue:Landroid/util/TypedValue;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 3
    .line 4
    sput-object v0, Landroidx/appcompat/widget/ResourceManagerInternal;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

    .line 5
    .line 6
    new-instance v0, Landroidx/appcompat/widget/ResourceManagerInternal$ColorFilterLruCache;

    .line 7
    const/4 v1, 0x6

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1}, Landroidx/appcompat/widget/ResourceManagerInternal$ColorFilterLruCache;-><init>(I)V

    .line 11
    .line 12
    sput-object v0, Landroidx/appcompat/widget/ResourceManagerInternal;->COLOR_FILTER_CACHE:Landroidx/appcompat/widget/ResourceManagerInternal$ColorFilterLruCache;

    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Ljava/util/WeakHashMap;

    .line 6
    const/4 v1, 0x0

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/util/WeakHashMap;-><init>(I)V

    .line 10
    .line 11
    iput-object v0, p0, Landroidx/appcompat/widget/ResourceManagerInternal;->mDrawableCaches:Ljava/util/WeakHashMap;

    .line 12
    return-void
.end method

.method private a(Ljava/lang/String;Landroidx/appcompat/widget/ResourceManagerInternal$InflateDelegate;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/appcompat/widget/ResourceManagerInternal$InflateDelegate;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/ResourceManagerInternal;->mDelegates:Landroidx/collection/SimpleArrayMap;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Landroidx/collection/SimpleArrayMap;

    .line 7
    .line 8
    .line 9
    invoke-direct {v0}, Landroidx/collection/SimpleArrayMap;-><init>()V

    .line 10
    .line 11
    iput-object v0, p0, Landroidx/appcompat/widget/ResourceManagerInternal;->mDelegates:Landroidx/collection/SimpleArrayMap;

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/ResourceManagerInternal;->mDelegates:Landroidx/collection/SimpleArrayMap;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1, p2}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    return-void
.end method

.method private declared-synchronized b(Landroid/content/Context;JLandroid/graphics/drawable/Drawable;)Z
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    .line 5
    move-result-object p4

    .line 6
    .line 7
    if-eqz p4, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/appcompat/widget/ResourceManagerInternal;->mDrawableCaches:Ljava/util/WeakHashMap;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    check-cast v0, Landroidx/collection/LongSparseArray;

    .line 16
    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    new-instance v0, Landroidx/collection/LongSparseArray;

    .line 20
    .line 21
    .line 22
    invoke-direct {v0}, Landroidx/collection/LongSparseArray;-><init>()V

    .line 23
    .line 24
    iget-object v1, p0, Landroidx/appcompat/widget/ResourceManagerInternal;->mDrawableCaches:Ljava/util/WeakHashMap;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception p1

    .line 30
    goto :goto_1

    .line 31
    .line 32
    :cond_0
    :goto_0
    new-instance p1, Ljava/lang/ref/WeakReference;

    .line 33
    .line 34
    .line 35
    invoke-direct {p1, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, p2, p3, p1}, Landroidx/collection/LongSparseArray;->m(JLjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    monitor-exit p0

    .line 40
    const/4 p1, 0x1

    .line 41
    return p1

    .line 42
    :cond_1
    monitor-exit p0

    .line 43
    const/4 p1, 0x0

    .line 44
    return p1

    .line 45
    :goto_1
    monitor-exit p0

    .line 46
    throw p1
.end method

.method private c(Landroid/content/Context;ILandroid/content/res/ColorStateList;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .param p3    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/ResourceManagerInternal;->mTintLists:Ljava/util/WeakHashMap;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Ljava/util/WeakHashMap;

    .line 7
    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 10
    .line 11
    iput-object v0, p0, Landroidx/appcompat/widget/ResourceManagerInternal;->mTintLists:Ljava/util/WeakHashMap;

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/ResourceManagerInternal;->mTintLists:Ljava/util/WeakHashMap;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    check-cast v0, Landroidx/collection/SparseArrayCompat;

    .line 20
    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    new-instance v0, Landroidx/collection/SparseArrayCompat;

    .line 24
    .line 25
    .line 26
    invoke-direct {v0}, Landroidx/collection/SparseArrayCompat;-><init>()V

    .line 27
    .line 28
    iget-object v1, p0, Landroidx/appcompat/widget/ResourceManagerInternal;->mTintLists:Ljava/util/WeakHashMap;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    :cond_1
    invoke-virtual {v0, p2, p3}, Landroidx/collection/SparseArrayCompat;->b(ILjava/lang/Object;)V

    .line 35
    return-void
.end method

.method private d(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-boolean v0, p0, Landroidx/appcompat/widget/ResourceManagerInternal;->mHasCheckedVectorDrawableSetup:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    .line 8
    iput-boolean v0, p0, Landroidx/appcompat/widget/ResourceManagerInternal;->mHasCheckedVectorDrawableSetup:Z

    .line 9
    .line 10
    sget v0, Landroidx/appcompat/resources/R$drawable;->abc_vector_test:I

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/widget/ResourceManagerInternal;->j(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    .line 19
    invoke-static {p1}, Landroidx/appcompat/widget/ResourceManagerInternal;->q(Landroid/graphics/drawable/Drawable;)Z

    .line 20
    move-result p1

    .line 21
    .line 22
    if-eqz p1, :cond_1

    .line 23
    return-void

    .line 24
    :cond_1
    const/4 p1, 0x0

    .line 25
    .line 26
    iput-boolean p1, p0, Landroidx/appcompat/widget/ResourceManagerInternal;->mHasCheckedVectorDrawableSetup:Z

    .line 27
    .line 28
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 29
    .line 30
    const-string v0, "This app has been built with an incorrect configuration. Please configure your build for VectorDrawableCompat."

    .line 31
    .line 32
    .line 33
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 34
    throw p1
.end method

.method private static e(Landroid/util/TypedValue;)J
    .locals 4

    .line 1
    .line 2
    iget v0, p0, Landroid/util/TypedValue;->assetCookie:I

    .line 3
    int-to-long v0, v0

    .line 4
    .line 5
    const/16 v2, 0x20

    .line 6
    shl-long/2addr v0, v2

    .line 7
    .line 8
    iget p0, p0, Landroid/util/TypedValue;->data:I

    .line 9
    int-to-long v2, p0

    .line 10
    or-long/2addr v0, v2

    .line 11
    return-wide v0
.end method

.method private f(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/ResourceManagerInternal;->mTypedValue:Landroid/util/TypedValue;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Landroid/util/TypedValue;

    .line 7
    .line 8
    .line 9
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 10
    .line 11
    iput-object v0, p0, Landroidx/appcompat/widget/ResourceManagerInternal;->mTypedValue:Landroid/util/TypedValue;

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/ResourceManagerInternal;->mTypedValue:Landroid/util/TypedValue;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 17
    move-result-object v1

    .line 18
    const/4 v2, 0x1

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, p2, v0, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 22
    .line 23
    .line 24
    invoke-static {v0}, Landroidx/appcompat/widget/ResourceManagerInternal;->e(Landroid/util/TypedValue;)J

    .line 25
    move-result-wide v1

    .line 26
    .line 27
    .line 28
    invoke-direct {p0, p1, v1, v2}, Landroidx/appcompat/widget/ResourceManagerInternal;->i(Landroid/content/Context;J)Landroid/graphics/drawable/Drawable;

    .line 29
    move-result-object v3

    .line 30
    .line 31
    if-eqz v3, :cond_1

    .line 32
    return-object v3

    .line 33
    .line 34
    :cond_1
    iget-object v3, p0, Landroidx/appcompat/widget/ResourceManagerInternal;->mHooks:Landroidx/appcompat/widget/ResourceManagerInternal$ResourceManagerHooks;

    .line 35
    .line 36
    if-nez v3, :cond_2

    .line 37
    const/4 p2, 0x0

    .line 38
    goto :goto_0

    .line 39
    .line 40
    .line 41
    :cond_2
    invoke-interface {v3, p0, p1, p2}, Landroidx/appcompat/widget/ResourceManagerInternal$ResourceManagerHooks;->a(Landroidx/appcompat/widget/ResourceManagerInternal;Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 42
    move-result-object p2

    .line 43
    .line 44
    :goto_0
    if-eqz p2, :cond_3

    .line 45
    .line 46
    iget v0, v0, Landroid/util/TypedValue;->changingConfigurations:I

    .line 47
    .line 48
    .line 49
    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->setChangingConfigurations(I)V

    .line 50
    .line 51
    .line 52
    invoke-direct {p0, p1, v1, v2, p2}, Landroidx/appcompat/widget/ResourceManagerInternal;->b(Landroid/content/Context;JLandroid/graphics/drawable/Drawable;)Z

    .line 53
    :cond_3
    return-object p2
.end method

.method private static g(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;[I)Landroid/graphics/PorterDuffColorFilter;
    .locals 1

    .line 1
    .line 2
    if-eqz p0, :cond_1

    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p2, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 10
    move-result p0

    .line 11
    .line 12
    .line 13
    invoke-static {p0, p1}, Landroidx/appcompat/widget/ResourceManagerInternal;->l(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    .line 14
    move-result-object p0

    .line 15
    return-object p0

    .line 16
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 17
    return-object p0
.end method

.method public static declared-synchronized h()Landroidx/appcompat/widget/ResourceManagerInternal;
    .locals 2

    .line 1
    .line 2
    const-class v0, Landroidx/appcompat/widget/ResourceManagerInternal;

    .line 3
    monitor-enter v0

    .line 4
    .line 5
    :try_start_0
    sget-object v1, Landroidx/appcompat/widget/ResourceManagerInternal;->INSTANCE:Landroidx/appcompat/widget/ResourceManagerInternal;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    new-instance v1, Landroidx/appcompat/widget/ResourceManagerInternal;

    .line 10
    .line 11
    .line 12
    invoke-direct {v1}, Landroidx/appcompat/widget/ResourceManagerInternal;-><init>()V

    .line 13
    .line 14
    sput-object v1, Landroidx/appcompat/widget/ResourceManagerInternal;->INSTANCE:Landroidx/appcompat/widget/ResourceManagerInternal;

    .line 15
    .line 16
    .line 17
    invoke-static {v1}, Landroidx/appcompat/widget/ResourceManagerInternal;->p(Landroidx/appcompat/widget/ResourceManagerInternal;)V

    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception v1

    .line 20
    goto :goto_1

    .line 21
    .line 22
    :cond_0
    :goto_0
    sget-object v1, Landroidx/appcompat/widget/ResourceManagerInternal;->INSTANCE:Landroidx/appcompat/widget/ResourceManagerInternal;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    monitor-exit v0

    .line 24
    return-object v1

    .line 25
    :goto_1
    monitor-exit v0

    .line 26
    throw v1
.end method

.method private declared-synchronized i(Landroid/content/Context;J)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    :try_start_0
    iget-object v0, p0, Landroidx/appcompat/widget/ResourceManagerInternal;->mDrawableCaches:Ljava/util/WeakHashMap;

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    check-cast v0, Landroidx/collection/LongSparseArray;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    const/4 v1, 0x0

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    monitor-exit p0

    .line 14
    return-object v1

    .line 15
    .line 16
    .line 17
    :cond_0
    :try_start_1
    invoke-virtual {v0, p2, p3}, Landroidx/collection/LongSparseArray;->h(J)Ljava/lang/Object;

    .line 18
    move-result-object v2

    .line 19
    .line 20
    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 21
    .line 22
    if-eqz v2, :cond_2

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 26
    move-result-object v2

    .line 27
    .line 28
    check-cast v2, Landroid/graphics/drawable/Drawable$ConstantState;

    .line 29
    .line 30
    if-eqz v2, :cond_1

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 34
    move-result-object p1

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    .line 38
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    monitor-exit p0

    .line 40
    return-object p1

    .line 41
    :catchall_0
    move-exception p1

    .line 42
    goto :goto_0

    .line 43
    .line 44
    .line 45
    :cond_1
    :try_start_2
    invoke-virtual {v0, p2, p3}, Landroidx/collection/LongSparseArray;->n(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 46
    :cond_2
    monitor-exit p0

    .line 47
    return-object v1

    .line 48
    :goto_0
    monitor-exit p0

    .line 49
    throw p1
.end method

.method public static declared-synchronized l(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
    .locals 3

    .line 1
    .line 2
    const-class v0, Landroidx/appcompat/widget/ResourceManagerInternal;

    .line 3
    monitor-enter v0

    .line 4
    .line 5
    :try_start_0
    sget-object v1, Landroidx/appcompat/widget/ResourceManagerInternal;->COLOR_FILTER_CACHE:Landroidx/appcompat/widget/ResourceManagerInternal$ColorFilterLruCache;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1, p0, p1}, Landroidx/appcompat/widget/ResourceManagerInternal$ColorFilterLruCache;->b(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    .line 9
    move-result-object v2

    .line 10
    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    .line 14
    .line 15
    .line 16
    invoke-direct {v2, p0, p1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, p0, p1, v2}, Landroidx/appcompat/widget/ResourceManagerInternal$ColorFilterLruCache;->c(ILandroid/graphics/PorterDuff$Mode;Landroid/graphics/PorterDuffColorFilter;)Landroid/graphics/PorterDuffColorFilter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    :goto_0
    monitor-exit v0

    .line 24
    return-object v2

    .line 25
    :goto_1
    monitor-exit v0

    .line 26
    throw p0
.end method

.method private n(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/ResourceManagerInternal;->mTintLists:Ljava/util/WeakHashMap;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    check-cast p1, Landroidx/collection/SparseArrayCompat;

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, p2}, Landroidx/collection/SparseArrayCompat;->j(I)Ljava/lang/Object;

    .line 17
    move-result-object p1

    .line 18
    move-object v1, p1

    .line 19
    .line 20
    check-cast v1, Landroid/content/res/ColorStateList;

    .line 21
    :cond_0
    return-object v1
.end method

.method private static p(Landroidx/appcompat/widget/ResourceManagerInternal;)V
    .locals 2
    .param p0    # Landroidx/appcompat/widget/ResourceManagerInternal;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    .line 4
    const/16 v1, 0x18

    .line 5
    .line 6
    if-ge v0, v1, :cond_0

    .line 7
    .line 8
    new-instance v0, Landroidx/appcompat/widget/ResourceManagerInternal$VdcInflateDelegate;

    .line 9
    .line 10
    .line 11
    invoke-direct {v0}, Landroidx/appcompat/widget/ResourceManagerInternal$VdcInflateDelegate;-><init>()V

    .line 12
    .line 13
    const-string/jumbo v1, "vector"

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, v1, v0}, Landroidx/appcompat/widget/ResourceManagerInternal;->a(Ljava/lang/String;Landroidx/appcompat/widget/ResourceManagerInternal$InflateDelegate;)V

    .line 17
    .line 18
    new-instance v0, Landroidx/appcompat/widget/ResourceManagerInternal$AvdcInflateDelegate;

    .line 19
    .line 20
    .line 21
    invoke-direct {v0}, Landroidx/appcompat/widget/ResourceManagerInternal$AvdcInflateDelegate;-><init>()V

    .line 22
    .line 23
    const-string v1, "animated-vector"

    .line 24
    .line 25
    .line 26
    invoke-direct {p0, v1, v0}, Landroidx/appcompat/widget/ResourceManagerInternal;->a(Ljava/lang/String;Landroidx/appcompat/widget/ResourceManagerInternal$InflateDelegate;)V

    .line 27
    .line 28
    new-instance v0, Landroidx/appcompat/widget/ResourceManagerInternal$AsldcInflateDelegate;

    .line 29
    .line 30
    .line 31
    invoke-direct {v0}, Landroidx/appcompat/widget/ResourceManagerInternal$AsldcInflateDelegate;-><init>()V

    .line 32
    .line 33
    const-string v1, "animated-selector"

    .line 34
    .line 35
    .line 36
    invoke-direct {p0, v1, v0}, Landroidx/appcompat/widget/ResourceManagerInternal;->a(Ljava/lang/String;Landroidx/appcompat/widget/ResourceManagerInternal$InflateDelegate;)V

    .line 37
    .line 38
    new-instance v0, Landroidx/appcompat/widget/ResourceManagerInternal$DrawableDelegate;

    .line 39
    .line 40
    .line 41
    invoke-direct {v0}, Landroidx/appcompat/widget/ResourceManagerInternal$DrawableDelegate;-><init>()V

    .line 42
    .line 43
    const-string v1, "drawable"

    .line 44
    .line 45
    .line 46
    invoke-direct {p0, v1, v0}, Landroidx/appcompat/widget/ResourceManagerInternal;->a(Ljava/lang/String;Landroidx/appcompat/widget/ResourceManagerInternal$InflateDelegate;)V

    .line 47
    :cond_0
    return-void
.end method

.method private static q(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p0    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    instance-of v0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    .line 3
    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    move-result-object p0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 12
    move-result-object p0

    .line 13
    .line 14
    const-string v0, "android.graphics.drawable.VectorDrawable"

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    move-result p0

    .line 19
    .line 20
    if-eqz p0, :cond_0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 p0, 0x0

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 25
    :goto_1
    return p0
.end method

.method private r(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 10
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/ResourceManagerInternal;->mDelegates:Landroidx/collection/SimpleArrayMap;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-eqz v0, :cond_a

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/collection/SimpleArrayMap;->isEmpty()Z

    .line 9
    move-result v0

    .line 10
    .line 11
    if-nez v0, :cond_a

    .line 12
    .line 13
    iget-object v0, p0, Landroidx/appcompat/widget/ResourceManagerInternal;->mKnownDrawableIdTags:Landroidx/collection/SparseArrayCompat;

    .line 14
    .line 15
    const-string v2, "appcompat_skip_skip"

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p2}, Landroidx/collection/SparseArrayCompat;->j(I)Ljava/lang/Object;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    check-cast v0, Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    move-result v3

    .line 28
    .line 29
    if-nez v3, :cond_0

    .line 30
    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    iget-object v3, p0, Landroidx/appcompat/widget/ResourceManagerInternal;->mDelegates:Landroidx/collection/SimpleArrayMap;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v3, v0}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    move-result-object v0

    .line 38
    .line 39
    if-nez v0, :cond_2

    .line 40
    :cond_0
    return-object v1

    .line 41
    .line 42
    :cond_1
    new-instance v0, Landroidx/collection/SparseArrayCompat;

    .line 43
    .line 44
    .line 45
    invoke-direct {v0}, Landroidx/collection/SparseArrayCompat;-><init>()V

    .line 46
    .line 47
    iput-object v0, p0, Landroidx/appcompat/widget/ResourceManagerInternal;->mKnownDrawableIdTags:Landroidx/collection/SparseArrayCompat;

    .line 48
    .line 49
    :cond_2
    iget-object v0, p0, Landroidx/appcompat/widget/ResourceManagerInternal;->mTypedValue:Landroid/util/TypedValue;

    .line 50
    .line 51
    if-nez v0, :cond_3

    .line 52
    .line 53
    new-instance v0, Landroid/util/TypedValue;

    .line 54
    .line 55
    .line 56
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 57
    .line 58
    iput-object v0, p0, Landroidx/appcompat/widget/ResourceManagerInternal;->mTypedValue:Landroid/util/TypedValue;

    .line 59
    .line 60
    :cond_3
    iget-object v0, p0, Landroidx/appcompat/widget/ResourceManagerInternal;->mTypedValue:Landroid/util/TypedValue;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 64
    move-result-object v1

    .line 65
    const/4 v3, 0x1

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1, p2, v0, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 69
    .line 70
    .line 71
    invoke-static {v0}, Landroidx/appcompat/widget/ResourceManagerInternal;->e(Landroid/util/TypedValue;)J

    .line 72
    move-result-wide v4

    .line 73
    .line 74
    .line 75
    invoke-direct {p0, p1, v4, v5}, Landroidx/appcompat/widget/ResourceManagerInternal;->i(Landroid/content/Context;J)Landroid/graphics/drawable/Drawable;

    .line 76
    move-result-object v6

    .line 77
    .line 78
    if-eqz v6, :cond_4

    .line 79
    return-object v6

    .line 80
    .line 81
    :cond_4
    iget-object v7, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    .line 82
    .line 83
    if-eqz v7, :cond_8

    .line 84
    .line 85
    .line 86
    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 87
    move-result-object v7

    .line 88
    .line 89
    const-string v8, ".xml"

    .line 90
    .line 91
    .line 92
    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 93
    move-result v7

    .line 94
    .line 95
    if-eqz v7, :cond_8

    .line 96
    .line 97
    .line 98
    :try_start_0
    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    .line 99
    move-result-object v1

    .line 100
    .line 101
    .line 102
    invoke-static {v1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    .line 103
    move-result-object v7

    .line 104
    .line 105
    .line 106
    :goto_0
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 107
    move-result v8

    .line 108
    const/4 v9, 0x2

    .line 109
    .line 110
    if-eq v8, v9, :cond_5

    .line 111
    .line 112
    if-eq v8, v3, :cond_5

    .line 113
    goto :goto_0

    .line 114
    .line 115
    :cond_5
    if-ne v8, v9, :cond_7

    .line 116
    .line 117
    .line 118
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 119
    move-result-object v3

    .line 120
    .line 121
    iget-object v8, p0, Landroidx/appcompat/widget/ResourceManagerInternal;->mKnownDrawableIdTags:Landroidx/collection/SparseArrayCompat;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v8, p2, v3}, Landroidx/collection/SparseArrayCompat;->b(ILjava/lang/Object;)V

    .line 125
    .line 126
    iget-object v8, p0, Landroidx/appcompat/widget/ResourceManagerInternal;->mDelegates:Landroidx/collection/SimpleArrayMap;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v8, v3}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    move-result-object v3

    .line 131
    .line 132
    check-cast v3, Landroidx/appcompat/widget/ResourceManagerInternal$InflateDelegate;

    .line 133
    .line 134
    if-eqz v3, :cond_6

    .line 135
    .line 136
    .line 137
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 138
    move-result-object v8

    .line 139
    .line 140
    .line 141
    invoke-interface {v3, p1, v1, v7, v8}, Landroidx/appcompat/widget/ResourceManagerInternal$InflateDelegate;->a(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 142
    move-result-object v6

    .line 143
    goto :goto_1

    .line 144
    :catch_0
    move-exception p1

    .line 145
    goto :goto_2

    .line 146
    .line 147
    :cond_6
    :goto_1
    if-eqz v6, :cond_8

    .line 148
    .line 149
    iget v0, v0, Landroid/util/TypedValue;->changingConfigurations:I

    .line 150
    .line 151
    .line 152
    invoke-virtual {v6, v0}, Landroid/graphics/drawable/Drawable;->setChangingConfigurations(I)V

    .line 153
    .line 154
    .line 155
    invoke-direct {p0, p1, v4, v5, v6}, Landroidx/appcompat/widget/ResourceManagerInternal;->b(Landroid/content/Context;JLandroid/graphics/drawable/Drawable;)Z

    .line 156
    goto :goto_3

    .line 157
    .line 158
    :cond_7
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    .line 159
    .line 160
    const-string v0, "No start tag found"

    .line 161
    .line 162
    .line 163
    invoke-direct {p1, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 164
    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    .line 166
    :goto_2
    const-string v0, "ResourceManagerInternal"

    .line 167
    .line 168
    const-string v1, "Exception while inflating drawable"

    .line 169
    .line 170
    .line 171
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 172
    .line 173
    :cond_8
    :goto_3
    if-nez v6, :cond_9

    .line 174
    .line 175
    iget-object p1, p0, Landroidx/appcompat/widget/ResourceManagerInternal;->mKnownDrawableIdTags:Landroidx/collection/SparseArrayCompat;

    .line 176
    .line 177
    .line 178
    invoke-virtual {p1, p2, v2}, Landroidx/collection/SparseArrayCompat;->b(ILjava/lang/Object;)V

    .line 179
    :cond_9
    return-object v6

    .line 180
    :cond_a
    return-object v1
.end method

.method private v(Landroid/content/Context;IZLandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .param p4    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/widget/ResourceManagerInternal;->m(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    .line 9
    invoke-static {p4}, Landroidx/appcompat/widget/DrawableUtils;->a(Landroid/graphics/drawable/Drawable;)Z

    .line 10
    move-result p1

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 16
    move-result-object p4

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-static {p4}, Landroidx/core/graphics/drawable/DrawableCompat;->r(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 20
    move-result-object p4

    .line 21
    .line 22
    .line 23
    invoke-static {p4, v0}, Landroidx/core/graphics/drawable/DrawableCompat;->o(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, p2}, Landroidx/appcompat/widget/ResourceManagerInternal;->o(I)Landroid/graphics/PorterDuff$Mode;

    .line 27
    move-result-object p1

    .line 28
    .line 29
    if-eqz p1, :cond_3

    .line 30
    .line 31
    .line 32
    invoke-static {p4, p1}, Landroidx/core/graphics/drawable/DrawableCompat;->p(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 33
    goto :goto_0

    .line 34
    .line 35
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/ResourceManagerInternal;->mHooks:Landroidx/appcompat/widget/ResourceManagerInternal$ResourceManagerHooks;

    .line 36
    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    .line 40
    invoke-interface {v0, p1, p2, p4}, Landroidx/appcompat/widget/ResourceManagerInternal$ResourceManagerHooks;->d(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;)Z

    .line 41
    move-result v0

    .line 42
    .line 43
    if-eqz v0, :cond_2

    .line 44
    goto :goto_0

    .line 45
    .line 46
    .line 47
    :cond_2
    invoke-virtual {p0, p1, p2, p4}, Landroidx/appcompat/widget/ResourceManagerInternal;->x(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;)Z

    .line 48
    move-result p1

    .line 49
    .line 50
    if-nez p1, :cond_3

    .line 51
    .line 52
    if-eqz p3, :cond_3

    .line 53
    const/4 p4, 0x0

    .line 54
    :cond_3
    :goto_0
    return-object p4
.end method

.method static w(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/TintInfo;[I)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroidx/appcompat/widget/DrawableUtils;->a(Landroid/graphics/drawable/Drawable;)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    if-eq v0, p0, :cond_0

    .line 13
    .line 14
    const-string p0, "ResourceManagerInternal"

    .line 15
    .line 16
    const-string p1, "Mutated drawable is not the same instance as the input."

    .line 17
    .line 18
    .line 19
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    return-void

    .line 21
    .line 22
    :cond_0
    iget-boolean v0, p1, Landroidx/appcompat/widget/TintInfo;->mHasTintList:Z

    .line 23
    .line 24
    if-nez v0, :cond_2

    .line 25
    .line 26
    iget-boolean v1, p1, Landroidx/appcompat/widget/TintInfo;->mHasTintMode:Z

    .line 27
    .line 28
    if-eqz v1, :cond_1

    .line 29
    goto :goto_0

    .line 30
    .line 31
    .line 32
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    .line 33
    goto :goto_3

    .line 34
    .line 35
    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    .line 36
    .line 37
    iget-object v0, p1, Landroidx/appcompat/widget/TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    .line 38
    goto :goto_1

    .line 39
    :cond_3
    const/4 v0, 0x0

    .line 40
    .line 41
    :goto_1
    iget-boolean v1, p1, Landroidx/appcompat/widget/TintInfo;->mHasTintMode:Z

    .line 42
    .line 43
    if-eqz v1, :cond_4

    .line 44
    .line 45
    iget-object p1, p1, Landroidx/appcompat/widget/TintInfo;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 46
    goto :goto_2

    .line 47
    .line 48
    :cond_4
    sget-object p1, Landroidx/appcompat/widget/ResourceManagerInternal;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

    .line 49
    .line 50
    .line 51
    :goto_2
    invoke-static {v0, p1, p2}, Landroidx/appcompat/widget/ResourceManagerInternal;->g(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;[I)Landroid/graphics/PorterDuffColorFilter;

    .line 52
    move-result-object p1

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 56
    .line 57
    :goto_3
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 58
    .line 59
    const/16 p2, 0x17

    .line 60
    .line 61
    if-gt p1, p2, :cond_5

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 65
    :cond_5
    return-void
.end method


# virtual methods
.method public declared-synchronized j(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x0

    .line 3
    .line 4
    .line 5
    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Landroidx/appcompat/widget/ResourceManagerInternal;->k(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;

    .line 6
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    monitor-exit p0

    .line 8
    return-object p1

    .line 9
    :catchall_0
    move-exception p1

    .line 10
    monitor-exit p0

    .line 11
    throw p1
.end method

.method declared-synchronized k(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/ResourceManagerInternal;->d(Landroid/content/Context;)V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/ResourceManagerInternal;->r(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/ResourceManagerInternal;->f(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 14
    move-result-object v0

    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    goto :goto_1

    .line 18
    .line 19
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 20
    .line 21
    .line 22
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    :cond_1
    if-eqz v0, :cond_2

    .line 26
    .line 27
    .line 28
    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/appcompat/widget/ResourceManagerInternal;->v(Landroid/content/Context;IZLandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    :cond_2
    if-eqz v0, :cond_3

    .line 32
    .line 33
    .line 34
    invoke-static {v0}, Landroidx/appcompat/widget/DrawableUtils;->b(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    :cond_3
    monitor-exit p0

    .line 36
    return-object v0

    .line 37
    :goto_1
    monitor-exit p0

    .line 38
    throw p1
.end method

.method declared-synchronized m(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/ResourceManagerInternal;->n(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 5
    move-result-object v0

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/appcompat/widget/ResourceManagerInternal;->mHooks:Landroidx/appcompat/widget/ResourceManagerInternal$ResourceManagerHooks;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    const/4 v0, 0x0

    .line 13
    goto :goto_0

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-interface {v0, p1, p2}, Landroidx/appcompat/widget/ResourceManagerInternal$ResourceManagerHooks;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    :goto_0
    if-eqz v0, :cond_1

    .line 20
    .line 21
    .line 22
    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/ResourceManagerInternal;->c(Landroid/content/Context;ILandroid/content/res/ColorStateList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    goto :goto_1

    .line 24
    :catchall_0
    move-exception p1

    .line 25
    goto :goto_2

    .line 26
    :cond_1
    :goto_1
    monitor-exit p0

    .line 27
    return-object v0

    .line 28
    :goto_2
    monitor-exit p0

    .line 29
    throw p1
.end method

.method o(I)Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/ResourceManagerInternal;->mHooks:Landroidx/appcompat/widget/ResourceManagerInternal$ResourceManagerHooks;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    const/4 p1, 0x0

    .line 6
    goto :goto_0

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-interface {v0, p1}, Landroidx/appcompat/widget/ResourceManagerInternal$ResourceManagerHooks;->c(I)Landroid/graphics/PorterDuff$Mode;

    .line 10
    move-result-object p1

    .line 11
    :goto_0
    return-object p1
.end method

.method public declared-synchronized s(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    :try_start_0
    iget-object v0, p0, Landroidx/appcompat/widget/ResourceManagerInternal;->mDrawableCaches:Ljava/util/WeakHashMap;

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    check-cast p1, Landroidx/collection/LongSparseArray;

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Landroidx/collection/LongSparseArray;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    :goto_0
    monitor-exit p0

    .line 19
    return-void

    .line 20
    :goto_1
    monitor-exit p0

    .line 21
    throw p1
.end method

.method declared-synchronized t(Landroid/content/Context;Landroidx/appcompat/widget/VectorEnabledTintResources;I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/appcompat/widget/VectorEnabledTintResources;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-direct {p0, p1, p3}, Landroidx/appcompat/widget/ResourceManagerInternal;->r(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 5
    move-result-object v0

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/ResourcesWrapper;->a(I)Landroid/graphics/drawable/Drawable;

    .line 11
    move-result-object v0

    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    move-exception p1

    .line 14
    goto :goto_1

    .line 15
    .line 16
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 17
    const/4 p2, 0x0

    .line 18
    .line 19
    .line 20
    invoke-direct {p0, p1, p3, p2, v0}, Landroidx/appcompat/widget/ResourceManagerInternal;->v(Landroid/content/Context;IZLandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 21
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    monitor-exit p0

    .line 23
    return-object p1

    .line 24
    :cond_1
    monitor-exit p0

    .line 25
    const/4 p1, 0x0

    .line 26
    return-object p1

    .line 27
    :goto_1
    monitor-exit p0

    .line 28
    throw p1
.end method

.method public declared-synchronized u(Landroidx/appcompat/widget/ResourceManagerInternal$ResourceManagerHooks;)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    :try_start_0
    iput-object p1, p0, Landroidx/appcompat/widget/ResourceManagerInternal;->mHooks:Landroidx/appcompat/widget/ResourceManagerInternal$ResourceManagerHooks;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    .line 5
    return-void

    .line 6
    :catchall_0
    move-exception p1

    .line 7
    monitor-exit p0

    .line 8
    throw p1
.end method

.method x(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/ResourceManagerInternal;->mHooks:Landroidx/appcompat/widget/ResourceManagerInternal$ResourceManagerHooks;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, p1, p2, p3}, Landroidx/appcompat/widget/ResourceManagerInternal$ResourceManagerHooks;->e(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;)Z

    .line 8
    move-result p1

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    const/4 p1, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    :goto_0
    return p1
.end method
