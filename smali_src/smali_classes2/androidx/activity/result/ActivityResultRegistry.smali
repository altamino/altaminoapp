.class public abstract Landroidx/activity/result/ActivityResultRegistry;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/activity/result/ActivityResultRegistry$LifecycleContainer;,
        Landroidx/activity/result/ActivityResultRegistry$CallbackAndContract;
    }
.end annotation


# static fields
.field private static final INITIAL_REQUEST_CODE_VALUE:I = 0x10000

.field private static final KEY_COMPONENT_ACTIVITY_LAUNCHED_KEYS:Ljava/lang/String; = "KEY_COMPONENT_ACTIVITY_LAUNCHED_KEYS"

.field private static final KEY_COMPONENT_ACTIVITY_PENDING_RESULTS:Ljava/lang/String; = "KEY_COMPONENT_ACTIVITY_PENDING_RESULT"

.field private static final KEY_COMPONENT_ACTIVITY_RANDOM_OBJECT:Ljava/lang/String; = "KEY_COMPONENT_ACTIVITY_RANDOM_OBJECT"

.field private static final KEY_COMPONENT_ACTIVITY_REGISTERED_KEYS:Ljava/lang/String; = "KEY_COMPONENT_ACTIVITY_REGISTERED_KEYS"

.field private static final KEY_COMPONENT_ACTIVITY_REGISTERED_RCS:Ljava/lang/String; = "KEY_COMPONENT_ACTIVITY_REGISTERED_RCS"

.field private static final LOG_TAG:Ljava/lang/String; = "ActivityResultRegistry"


# instance fields
.field final transient mKeyToCallback:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/activity/result/ActivityResultRegistry$CallbackAndContract<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final mKeyToLifecycleContainers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/activity/result/ActivityResultRegistry$LifecycleContainer;",
            ">;"
        }
    .end annotation
.end field

.field final mKeyToRc:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mLaunchedKeys:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mParsedPendingResults:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final mPendingResults:Landroid/os/Bundle;

.field private mRandom:Ljava/util/Random;

.field private final mRcToKey:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Ljava/util/Random;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Landroidx/activity/result/ActivityResultRegistry;->mRandom:Ljava/util/Random;

    .line 11
    .line 12
    new-instance v0, Ljava/util/HashMap;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 16
    .line 17
    iput-object v0, p0, Landroidx/activity/result/ActivityResultRegistry;->mRcToKey:Ljava/util/Map;

    .line 18
    .line 19
    new-instance v0, Ljava/util/HashMap;

    .line 20
    .line 21
    .line 22
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 23
    .line 24
    iput-object v0, p0, Landroidx/activity/result/ActivityResultRegistry;->mKeyToRc:Ljava/util/Map;

    .line 25
    .line 26
    new-instance v0, Ljava/util/HashMap;

    .line 27
    .line 28
    .line 29
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 30
    .line 31
    iput-object v0, p0, Landroidx/activity/result/ActivityResultRegistry;->mKeyToLifecycleContainers:Ljava/util/Map;

    .line 32
    .line 33
    new-instance v0, Ljava/util/ArrayList;

    .line 34
    .line 35
    .line 36
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 37
    .line 38
    iput-object v0, p0, Landroidx/activity/result/ActivityResultRegistry;->mLaunchedKeys:Ljava/util/ArrayList;

    .line 39
    .line 40
    new-instance v0, Ljava/util/HashMap;

    .line 41
    .line 42
    .line 43
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 44
    .line 45
    iput-object v0, p0, Landroidx/activity/result/ActivityResultRegistry;->mKeyToCallback:Ljava/util/Map;

    .line 46
    .line 47
    new-instance v0, Ljava/util/HashMap;

    .line 48
    .line 49
    .line 50
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 51
    .line 52
    iput-object v0, p0, Landroidx/activity/result/ActivityResultRegistry;->mParsedPendingResults:Ljava/util/Map;

    .line 53
    .line 54
    new-instance v0, Landroid/os/Bundle;

    .line 55
    .line 56
    .line 57
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 58
    .line 59
    iput-object v0, p0, Landroidx/activity/result/ActivityResultRegistry;->mPendingResults:Landroid/os/Bundle;

    .line 60
    return-void
.end method

.method private a(ILjava/lang/String;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/activity/result/ActivityResultRegistry;->mRcToKey:Ljava/util/Map;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    iget-object v0, p0, Landroidx/activity/result/ActivityResultRegistry;->mKeyToRc:Ljava/util/Map;

    .line 12
    .line 13
    .line 14
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    .line 18
    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    return-void
.end method

.method private d(Ljava/lang/String;ILandroid/content/Intent;Landroidx/activity/result/ActivityResultRegistry$CallbackAndContract;)V
    .locals 1
    .param p3    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Landroidx/activity/result/ActivityResultRegistry$CallbackAndContract;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "I",
            "Landroid/content/Intent;",
            "Landroidx/activity/result/ActivityResultRegistry$CallbackAndContract<",
            "TO;>;)V"
        }
    .end annotation

    .line 1
    .line 2
    if-eqz p4, :cond_0

    .line 3
    .line 4
    iget-object v0, p4, Landroidx/activity/result/ActivityResultRegistry$CallbackAndContract;->mCallback:Landroidx/activity/result/ActivityResultCallback;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Landroidx/activity/result/ActivityResultRegistry;->mLaunchedKeys:Ljava/util/ArrayList;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object v0, p4, Landroidx/activity/result/ActivityResultRegistry$CallbackAndContract;->mCallback:Landroidx/activity/result/ActivityResultCallback;

    .line 17
    .line 18
    iget-object p4, p4, Landroidx/activity/result/ActivityResultRegistry$CallbackAndContract;->mContract:Landroidx/activity/result/contract/ActivityResultContract;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p4, p2, p3}, Landroidx/activity/result/contract/ActivityResultContract;->c(ILandroid/content/Intent;)Ljava/lang/Object;

    .line 22
    move-result-object p2

    .line 23
    .line 24
    .line 25
    invoke-interface {v0, p2}, Landroidx/activity/result/ActivityResultCallback;->a(Ljava/lang/Object;)V

    .line 26
    .line 27
    iget-object p2, p0, Landroidx/activity/result/ActivityResultRegistry;->mLaunchedKeys:Ljava/util/ArrayList;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 31
    goto :goto_0

    .line 32
    .line 33
    :cond_0
    iget-object p4, p0, Landroidx/activity/result/ActivityResultRegistry;->mParsedPendingResults:Ljava/util/Map;

    .line 34
    .line 35
    .line 36
    invoke-interface {p4, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    iget-object p4, p0, Landroidx/activity/result/ActivityResultRegistry;->mPendingResults:Landroid/os/Bundle;

    .line 39
    .line 40
    new-instance v0, Landroidx/activity/result/ActivityResult;

    .line 41
    .line 42
    .line 43
    invoke-direct {v0, p2, p3}, Landroidx/activity/result/ActivityResult;-><init>(ILandroid/content/Intent;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p4, p1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 47
    :goto_0
    return-void
.end method

.method private e()I
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/activity/result/ActivityResultRegistry;->mRandom:Ljava/util/Random;

    .line 3
    .line 4
    const/high16 v1, 0x7fff0000

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    .line 8
    move-result v0

    .line 9
    .line 10
    const/high16 v2, 0x10000

    .line 11
    :goto_0
    add-int/2addr v0, v2

    .line 12
    .line 13
    iget-object v3, p0, Landroidx/activity/result/ActivityResultRegistry;->mRcToKey:Ljava/util/Map;

    .line 14
    .line 15
    .line 16
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    move-result-object v4

    .line 18
    .line 19
    .line 20
    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 21
    move-result v3

    .line 22
    .line 23
    if-eqz v3, :cond_0

    .line 24
    .line 25
    iget-object v0, p0, Landroidx/activity/result/ActivityResultRegistry;->mRandom:Ljava/util/Random;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    .line 29
    move-result v0

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    return v0
.end method

.method private k(Ljava/lang/String;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/activity/result/ActivityResultRegistry;->mKeyToRc:Ljava/util/Map;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Ljava/lang/Integer;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    return-void

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-direct {p0}, Landroidx/activity/result/ActivityResultRegistry;->e()I

    .line 15
    move-result v0

    .line 16
    .line 17
    .line 18
    invoke-direct {p0, v0, p1}, Landroidx/activity/result/ActivityResultRegistry;->a(ILjava/lang/String;)V

    .line 19
    return-void
.end method


# virtual methods
.method public final b(IILandroid/content/Intent;)Z
    .locals 1
    .param p3    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/activity/result/ActivityResultRegistry;->mRcToKey:Ljava/util/Map;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    check-cast p1, Ljava/lang/String;

    .line 13
    .line 14
    if-nez p1, :cond_0

    .line 15
    const/4 p1, 0x0

    .line 16
    return p1

    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Landroidx/activity/result/ActivityResultRegistry;->mKeyToCallback:Ljava/util/Map;

    .line 19
    .line 20
    .line 21
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    check-cast v0, Landroidx/activity/result/ActivityResultRegistry$CallbackAndContract;

    .line 25
    .line 26
    .line 27
    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/activity/result/ActivityResultRegistry;->d(Ljava/lang/String;ILandroid/content/Intent;Landroidx/activity/result/ActivityResultRegistry$CallbackAndContract;)V

    .line 28
    const/4 p1, 0x1

    .line 29
    return p1
.end method

.method public final c(ILjava/lang/Object;)Z
    .locals 2
    .param p2    # Ljava/lang/Object;
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "UnknownNullness"
            }
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O:",
            "Ljava/lang/Object;",
            ">(ITO;)Z"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/activity/result/ActivityResultRegistry;->mRcToKey:Ljava/util/Map;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    check-cast p1, Ljava/lang/String;

    .line 13
    .line 14
    if-nez p1, :cond_0

    .line 15
    const/4 p1, 0x0

    .line 16
    return p1

    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Landroidx/activity/result/ActivityResultRegistry;->mKeyToCallback:Ljava/util/Map;

    .line 19
    .line 20
    .line 21
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    check-cast v0, Landroidx/activity/result/ActivityResultRegistry$CallbackAndContract;

    .line 25
    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    iget-object v0, v0, Landroidx/activity/result/ActivityResultRegistry$CallbackAndContract;->mCallback:Landroidx/activity/result/ActivityResultCallback;

    .line 29
    .line 30
    if-nez v0, :cond_1

    .line 31
    goto :goto_0

    .line 32
    .line 33
    :cond_1
    iget-object v1, p0, Landroidx/activity/result/ActivityResultRegistry;->mLaunchedKeys:Ljava/util/ArrayList;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 37
    move-result p1

    .line 38
    .line 39
    if-eqz p1, :cond_3

    .line 40
    .line 41
    .line 42
    invoke-interface {v0, p2}, Landroidx/activity/result/ActivityResultCallback;->a(Ljava/lang/Object;)V

    .line 43
    goto :goto_1

    .line 44
    .line 45
    :cond_2
    :goto_0
    iget-object v0, p0, Landroidx/activity/result/ActivityResultRegistry;->mPendingResults:Landroid/os/Bundle;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 49
    .line 50
    iget-object v0, p0, Landroidx/activity/result/ActivityResultRegistry;->mParsedPendingResults:Ljava/util/Map;

    .line 51
    .line 52
    .line 53
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    :cond_3
    :goto_1
    const/4 p1, 0x1

    .line 55
    return p1
.end method

.method public abstract f(ILandroidx/activity/result/contract/ActivityResultContract;Ljava/lang/Object;Landroidx/core/app/ActivityOptionsCompat;)V
    .param p2    # Landroidx/activity/result/contract/ActivityResultContract;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "UnknownNullness"
            }
        .end annotation
    .end param
    .param p4    # Landroidx/core/app/ActivityOptionsCompat;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(I",
            "Landroidx/activity/result/contract/ActivityResultContract<",
            "TI;TO;>;TI;",
            "Landroidx/core/app/ActivityOptionsCompat;",
            ")V"
        }
    .end annotation
.end method

.method public final g(Landroid/os/Bundle;)V
    .locals 5
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    :cond_0
    const-string v0, "KEY_COMPONENT_ACTIVITY_REGISTERED_RCS"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    const-string v1, "KEY_COMPONENT_ACTIVITY_REGISTERED_KEYS"

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    if-eqz v1, :cond_3

    .line 18
    .line 19
    if-nez v0, :cond_1

    .line 20
    goto :goto_1

    .line 21
    .line 22
    :cond_1
    const-string v2, "KEY_COMPONENT_ACTIVITY_LAUNCHED_KEYS"

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 26
    move-result-object v2

    .line 27
    .line 28
    iput-object v2, p0, Landroidx/activity/result/ActivityResultRegistry;->mLaunchedKeys:Ljava/util/ArrayList;

    .line 29
    .line 30
    const-string v2, "KEY_COMPONENT_ACTIVITY_RANDOM_OBJECT"

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    .line 34
    move-result-object v2

    .line 35
    .line 36
    check-cast v2, Ljava/util/Random;

    .line 37
    .line 38
    iput-object v2, p0, Landroidx/activity/result/ActivityResultRegistry;->mRandom:Ljava/util/Random;

    .line 39
    .line 40
    iget-object v2, p0, Landroidx/activity/result/ActivityResultRegistry;->mPendingResults:Landroid/os/Bundle;

    .line 41
    .line 42
    const-string v3, "KEY_COMPONENT_ACTIVITY_PENDING_RESULT"

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 46
    move-result-object p1

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 50
    const/4 p1, 0x0

    .line 51
    .line 52
    .line 53
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 54
    move-result v2

    .line 55
    .line 56
    if-ge p1, v2, :cond_3

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 60
    move-result-object v2

    .line 61
    .line 62
    check-cast v2, Ljava/lang/String;

    .line 63
    .line 64
    iget-object v3, p0, Landroidx/activity/result/ActivityResultRegistry;->mKeyToRc:Ljava/util/Map;

    .line 65
    .line 66
    .line 67
    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 68
    move-result v3

    .line 69
    .line 70
    if-eqz v3, :cond_2

    .line 71
    .line 72
    iget-object v3, p0, Landroidx/activity/result/ActivityResultRegistry;->mKeyToRc:Ljava/util/Map;

    .line 73
    .line 74
    .line 75
    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    move-result-object v3

    .line 77
    .line 78
    check-cast v3, Ljava/lang/Integer;

    .line 79
    .line 80
    iget-object v4, p0, Landroidx/activity/result/ActivityResultRegistry;->mPendingResults:Landroid/os/Bundle;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v4, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 84
    move-result v2

    .line 85
    .line 86
    if-nez v2, :cond_2

    .line 87
    .line 88
    iget-object v2, p0, Landroidx/activity/result/ActivityResultRegistry;->mRcToKey:Ljava/util/Map;

    .line 89
    .line 90
    .line 91
    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    :cond_2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 95
    move-result-object v2

    .line 96
    .line 97
    check-cast v2, Ljava/lang/Integer;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 101
    move-result v2

    .line 102
    .line 103
    .line 104
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 105
    move-result-object v3

    .line 106
    .line 107
    check-cast v3, Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    invoke-direct {p0, v2, v3}, Landroidx/activity/result/ActivityResultRegistry;->a(ILjava/lang/String;)V

    .line 111
    .line 112
    add-int/lit8 p1, p1, 0x1

    .line 113
    goto :goto_0

    .line 114
    :cond_3
    :goto_1
    return-void
.end method

.method public final h(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    iget-object v1, p0, Landroidx/activity/result/ActivityResultRegistry;->mKeyToRc:Ljava/util/Map;

    .line 5
    .line 6
    .line 7
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 12
    .line 13
    const-string v1, "KEY_COMPONENT_ACTIVITY_REGISTERED_RCS"

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 17
    .line 18
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    .line 20
    iget-object v1, p0, Landroidx/activity/result/ActivityResultRegistry;->mKeyToRc:Ljava/util/Map;

    .line 21
    .line 22
    .line 23
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 24
    move-result-object v1

    .line 25
    .line 26
    .line 27
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 28
    .line 29
    const-string v1, "KEY_COMPONENT_ACTIVITY_REGISTERED_KEYS"

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 33
    .line 34
    new-instance v0, Ljava/util/ArrayList;

    .line 35
    .line 36
    iget-object v1, p0, Landroidx/activity/result/ActivityResultRegistry;->mLaunchedKeys:Ljava/util/ArrayList;

    .line 37
    .line 38
    .line 39
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 40
    .line 41
    const-string v1, "KEY_COMPONENT_ACTIVITY_LAUNCHED_KEYS"

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 45
    .line 46
    iget-object v0, p0, Landroidx/activity/result/ActivityResultRegistry;->mPendingResults:Landroid/os/Bundle;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    .line 50
    move-result-object v0

    .line 51
    .line 52
    check-cast v0, Landroid/os/Bundle;

    .line 53
    .line 54
    const-string v1, "KEY_COMPONENT_ACTIVITY_PENDING_RESULT"

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 58
    .line 59
    const-string v0, "KEY_COMPONENT_ACTIVITY_RANDOM_OBJECT"

    .line 60
    .line 61
    iget-object v1, p0, Landroidx/activity/result/ActivityResultRegistry;->mRandom:Ljava/util/Random;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 65
    return-void
.end method

.method public final i(Ljava/lang/String;Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/activity/result/contract/ActivityResultContract;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroidx/activity/result/ActivityResultCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Landroidx/activity/result/contract/ActivityResultContract<",
            "TI;TO;>;",
            "Landroidx/activity/result/ActivityResultCallback<",
            "TO;>;)",
            "Landroidx/activity/result/ActivityResultLauncher<",
            "TI;>;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Landroidx/activity/result/ActivityResultRegistry;->k(Ljava/lang/String;)V

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/activity/result/ActivityResultRegistry;->mKeyToCallback:Ljava/util/Map;

    .line 6
    .line 7
    new-instance v1, Landroidx/activity/result/ActivityResultRegistry$CallbackAndContract;

    .line 8
    .line 9
    .line 10
    invoke-direct {v1, p3, p2}, Landroidx/activity/result/ActivityResultRegistry$CallbackAndContract;-><init>(Landroidx/activity/result/ActivityResultCallback;Landroidx/activity/result/contract/ActivityResultContract;)V

    .line 11
    .line 12
    .line 13
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    iget-object v0, p0, Landroidx/activity/result/ActivityResultRegistry;->mParsedPendingResults:Ljava/util/Map;

    .line 16
    .line 17
    .line 18
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 19
    move-result v0

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    iget-object v0, p0, Landroidx/activity/result/ActivityResultRegistry;->mParsedPendingResults:Ljava/util/Map;

    .line 24
    .line 25
    .line 26
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    iget-object v1, p0, Landroidx/activity/result/ActivityResultRegistry;->mParsedPendingResults:Ljava/util/Map;

    .line 30
    .line 31
    .line 32
    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    invoke-interface {p3, v0}, Landroidx/activity/result/ActivityResultCallback;->a(Ljava/lang/Object;)V

    .line 36
    .line 37
    :cond_0
    iget-object v0, p0, Landroidx/activity/result/ActivityResultRegistry;->mPendingResults:Landroid/os/Bundle;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 41
    move-result-object v0

    .line 42
    .line 43
    check-cast v0, Landroidx/activity/result/ActivityResult;

    .line 44
    .line 45
    if-eqz v0, :cond_1

    .line 46
    .line 47
    iget-object v1, p0, Landroidx/activity/result/ActivityResultRegistry;->mPendingResults:Landroid/os/Bundle;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, p1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Landroidx/activity/result/ActivityResult;->e()I

    .line 54
    move-result v1

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Landroidx/activity/result/ActivityResult;->c()Landroid/content/Intent;

    .line 58
    move-result-object v0

    .line 59
    .line 60
    .line 61
    invoke-virtual {p2, v1, v0}, Landroidx/activity/result/contract/ActivityResultContract;->c(ILandroid/content/Intent;)Ljava/lang/Object;

    .line 62
    move-result-object v0

    .line 63
    .line 64
    .line 65
    invoke-interface {p3, v0}, Landroidx/activity/result/ActivityResultCallback;->a(Ljava/lang/Object;)V

    .line 66
    .line 67
    :cond_1
    new-instance p3, Landroidx/activity/result/ActivityResultRegistry$3;

    .line 68
    .line 69
    .line 70
    invoke-direct {p3, p0, p1, p2}, Landroidx/activity/result/ActivityResultRegistry$3;-><init>(Landroidx/activity/result/ActivityResultRegistry;Ljava/lang/String;Landroidx/activity/result/contract/ActivityResultContract;)V

    .line 71
    return-object p3
.end method

.method public final j(Ljava/lang/String;Landroidx/lifecycle/LifecycleOwner;Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroidx/activity/result/contract/ActivityResultContract;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroidx/activity/result/ActivityResultCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Landroidx/activity/result/contract/ActivityResultContract<",
            "TI;TO;>;",
            "Landroidx/activity/result/ActivityResultCallback<",
            "TO;>;)",
            "Landroidx/activity/result/ActivityResultLauncher<",
            "TI;>;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-interface {p2}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/lifecycle/Lifecycle;->b()Landroidx/lifecycle/Lifecycle$State;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    sget-object v2, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, v2}, Landroidx/lifecycle/Lifecycle$State;->b(Landroidx/lifecycle/Lifecycle$State;)Z

    .line 14
    move-result v1

    .line 15
    .line 16
    if-nez v1, :cond_1

    .line 17
    .line 18
    .line 19
    invoke-direct {p0, p1}, Landroidx/activity/result/ActivityResultRegistry;->k(Ljava/lang/String;)V

    .line 20
    .line 21
    iget-object p2, p0, Landroidx/activity/result/ActivityResultRegistry;->mKeyToLifecycleContainers:Ljava/util/Map;

    .line 22
    .line 23
    .line 24
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    move-result-object p2

    .line 26
    .line 27
    check-cast p2, Landroidx/activity/result/ActivityResultRegistry$LifecycleContainer;

    .line 28
    .line 29
    if-nez p2, :cond_0

    .line 30
    .line 31
    new-instance p2, Landroidx/activity/result/ActivityResultRegistry$LifecycleContainer;

    .line 32
    .line 33
    .line 34
    invoke-direct {p2, v0}, Landroidx/activity/result/ActivityResultRegistry$LifecycleContainer;-><init>(Landroidx/lifecycle/Lifecycle;)V

    .line 35
    .line 36
    :cond_0
    new-instance v0, Landroidx/activity/result/ActivityResultRegistry$1;

    .line 37
    .line 38
    .line 39
    invoke-direct {v0, p0, p1, p4, p3}, Landroidx/activity/result/ActivityResultRegistry$1;-><init>(Landroidx/activity/result/ActivityResultRegistry;Ljava/lang/String;Landroidx/activity/result/ActivityResultCallback;Landroidx/activity/result/contract/ActivityResultContract;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2, v0}, Landroidx/activity/result/ActivityResultRegistry$LifecycleContainer;->a(Landroidx/lifecycle/LifecycleEventObserver;)V

    .line 43
    .line 44
    iget-object p4, p0, Landroidx/activity/result/ActivityResultRegistry;->mKeyToLifecycleContainers:Ljava/util/Map;

    .line 45
    .line 46
    .line 47
    invoke-interface {p4, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    new-instance p2, Landroidx/activity/result/ActivityResultRegistry$2;

    .line 50
    .line 51
    .line 52
    invoke-direct {p2, p0, p1, p3}, Landroidx/activity/result/ActivityResultRegistry$2;-><init>(Landroidx/activity/result/ActivityResultRegistry;Ljava/lang/String;Landroidx/activity/result/contract/ActivityResultContract;)V

    .line 53
    return-object p2

    .line 54
    .line 55
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 56
    .line 57
    new-instance p3, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    .line 62
    const-string p4, "LifecycleOwner "

    .line 63
    .line 64
    .line 65
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    const-string p2, " is attempting to register while current state is "

    .line 71
    .line 72
    .line 73
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0}, Landroidx/lifecycle/Lifecycle;->b()Landroidx/lifecycle/Lifecycle$State;

    .line 77
    move-result-object p2

    .line 78
    .line 79
    .line 80
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    const-string p2, ". LifecycleOwners must call register before they are STARTED."

    .line 83
    .line 84
    .line 85
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    move-result-object p2

    .line 90
    .line 91
    .line 92
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 93
    throw p1
.end method

.method final l(Ljava/lang/String;)V
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/activity/result/ActivityResultRegistry;->mLaunchedKeys:Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Landroidx/activity/result/ActivityResultRegistry;->mKeyToRc:Ljava/util/Map;

    .line 11
    .line 12
    .line 13
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    check-cast v0, Ljava/lang/Integer;

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    iget-object v1, p0, Landroidx/activity/result/ActivityResultRegistry;->mRcToKey:Ljava/util/Map;

    .line 21
    .line 22
    .line 23
    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    :cond_0
    iget-object v0, p0, Landroidx/activity/result/ActivityResultRegistry;->mKeyToCallback:Ljava/util/Map;

    .line 26
    .line 27
    .line 28
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    iget-object v0, p0, Landroidx/activity/result/ActivityResultRegistry;->mParsedPendingResults:Ljava/util/Map;

    .line 31
    .line 32
    .line 33
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 34
    move-result v0

    .line 35
    .line 36
    const-string v1, ": "

    .line 37
    .line 38
    const-string v2, "Dropping pending result for request "

    .line 39
    .line 40
    const-string v3, "ActivityResultRegistry"

    .line 41
    .line 42
    if-eqz v0, :cond_1

    .line 43
    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    iget-object v4, p0, Landroidx/activity/result/ActivityResultRegistry;->mParsedPendingResults:Ljava/util/Map;

    .line 59
    .line 60
    .line 61
    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    move-result-object v4

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    move-result-object v0

    .line 70
    .line 71
    .line 72
    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    .line 74
    iget-object v0, p0, Landroidx/activity/result/ActivityResultRegistry;->mParsedPendingResults:Ljava/util/Map;

    .line 75
    .line 76
    .line 77
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    :cond_1
    iget-object v0, p0, Landroidx/activity/result/ActivityResultRegistry;->mPendingResults:Landroid/os/Bundle;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, p1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 83
    move-result v0

    .line 84
    .line 85
    if-eqz v0, :cond_2

    .line 86
    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    iget-object v1, p0, Landroidx/activity/result/ActivityResultRegistry;->mPendingResults:Landroid/os/Bundle;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v1, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 105
    move-result-object v1

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    move-result-object v0

    .line 113
    .line 114
    .line 115
    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    .line 117
    iget-object v0, p0, Landroidx/activity/result/ActivityResultRegistry;->mPendingResults:Landroid/os/Bundle;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 121
    .line 122
    :cond_2
    iget-object v0, p0, Landroidx/activity/result/ActivityResultRegistry;->mKeyToLifecycleContainers:Ljava/util/Map;

    .line 123
    .line 124
    .line 125
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    move-result-object v0

    .line 127
    .line 128
    check-cast v0, Landroidx/activity/result/ActivityResultRegistry$LifecycleContainer;

    .line 129
    .line 130
    if-eqz v0, :cond_3

    .line 131
    .line 132
    .line 133
    invoke-virtual {v0}, Landroidx/activity/result/ActivityResultRegistry$LifecycleContainer;->b()V

    .line 134
    .line 135
    iget-object v0, p0, Landroidx/activity/result/ActivityResultRegistry;->mKeyToLifecycleContainers:Ljava/util/Map;

    .line 136
    .line 137
    .line 138
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    :cond_3
    return-void
.end method
