.class public final Lcoil/request/g;
.super Landroidx/lifecycle/Lifecycle;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcoil/request/g;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final owner:Landroidx/lifecycle/LifecycleOwner;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcoil/request/g;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcoil/request/g;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lcoil/request/g;->INSTANCE:Lcoil/request/g;

    .line 8
    .line 9
    new-instance v0, Lcoil/request/f;

    .line 10
    .line 11
    .line 12
    invoke-direct {v0}, Lcoil/request/f;-><init>()V

    .line 13
    .line 14
    sput-object v0, Lcoil/request/g;->owner:Landroidx/lifecycle/LifecycleOwner;

    .line 15
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/lifecycle/Lifecycle;-><init>()V

    .line 4
    return-void
.end method

.method public static synthetic e()Landroidx/lifecycle/Lifecycle;
    .locals 1

    .line 1
    invoke-static {}, Lcoil/request/g;->f()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    return-object v0
.end method

.method private static final f()Landroidx/lifecycle/Lifecycle;
    .locals 1

    .line 1
    sget-object v0, Lcoil/request/g;->INSTANCE:Lcoil/request/g;

    return-object v0
.end method


# virtual methods
.method public a(Landroidx/lifecycle/LifecycleObserver;)V
    .locals 1
    .param p1    # Landroidx/lifecycle/LifecycleObserver;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    instance-of v0, p1, Landroidx/lifecycle/DefaultLifecycleObserver;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p1, Landroidx/lifecycle/DefaultLifecycleObserver;

    .line 7
    .line 8
    sget-object v0, Lcoil/request/g;->owner:Landroidx/lifecycle/LifecycleOwner;

    .line 9
    .line 10
    .line 11
    invoke-interface {p1, v0}, Landroidx/lifecycle/DefaultLifecycleObserver;->onCreate(Landroidx/lifecycle/LifecycleOwner;)V

    .line 12
    .line 13
    .line 14
    invoke-interface {p1, v0}, Landroidx/lifecycle/DefaultLifecycleObserver;->onStart(Landroidx/lifecycle/LifecycleOwner;)V

    .line 15
    .line 16
    .line 17
    invoke-interface {p1, v0}, Landroidx/lifecycle/DefaultLifecycleObserver;->onResume(Landroidx/lifecycle/LifecycleOwner;)V

    .line 18
    return-void

    .line 19
    .line 20
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    const-string p1, " must implement androidx.lifecycle.DefaultLifecycleObserver."

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    move-result-object p1

    .line 36
    .line 37
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 41
    move-result-object p1

    .line 42
    .line 43
    .line 44
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 45
    throw v0
.end method

.method public b()Landroidx/lifecycle/Lifecycle$State;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    sget-object v0, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    .line 3
    return-object v0
.end method

.method public d(Landroidx/lifecycle/LifecycleObserver;)V
    .locals 0
    .param p1    # Landroidx/lifecycle/LifecycleObserver;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "coil.request.GlobalLifecycle"

    return-object v0
.end method
