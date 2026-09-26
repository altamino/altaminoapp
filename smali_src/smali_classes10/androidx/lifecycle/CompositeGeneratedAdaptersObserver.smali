.class public final Landroidx/lifecycle/CompositeGeneratedAdaptersObserver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/LifecycleEventObserver;


# instance fields
.field private final generatedAdapters:[Landroidx/lifecycle/GeneratedAdapter;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>([Landroidx/lifecycle/GeneratedAdapter;)V
    .locals 1
    .param p1    # [Landroidx/lifecycle/GeneratedAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "generatedAdapters"

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
    iput-object p1, p0, Landroidx/lifecycle/CompositeGeneratedAdaptersObserver;->generatedAdapters:[Landroidx/lifecycle/GeneratedAdapter;

    .line 11
    return-void
.end method


# virtual methods
.method public onStateChanged(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 6
    .param p1    # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/lifecycle/Lifecycle$Event;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "source"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "event"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    new-instance v0, Landroidx/lifecycle/MethodCallsLogger;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0}, Landroidx/lifecycle/MethodCallsLogger;-><init>()V

    .line 16
    .line 17
    iget-object v1, p0, Landroidx/lifecycle/CompositeGeneratedAdaptersObserver;->generatedAdapters:[Landroidx/lifecycle/GeneratedAdapter;

    .line 18
    array-length v2, v1

    .line 19
    const/4 v3, 0x0

    .line 20
    move v4, v3

    .line 21
    .line 22
    :goto_0
    if-ge v4, v2, :cond_0

    .line 23
    .line 24
    aget-object v5, v1, v4

    .line 25
    .line 26
    .line 27
    invoke-interface {v5, p1, p2, v3, v0}, Landroidx/lifecycle/GeneratedAdapter;->a(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;ZLandroidx/lifecycle/MethodCallsLogger;)V

    .line 28
    .line 29
    add-int/lit8 v4, v4, 0x1

    .line 30
    goto :goto_0

    .line 31
    .line 32
    :cond_0
    iget-object v1, p0, Landroidx/lifecycle/CompositeGeneratedAdaptersObserver;->generatedAdapters:[Landroidx/lifecycle/GeneratedAdapter;

    .line 33
    array-length v2, v1

    .line 34
    .line 35
    :goto_1
    if-ge v3, v2, :cond_1

    .line 36
    .line 37
    aget-object v4, v1, v3

    .line 38
    const/4 v5, 0x1

    .line 39
    .line 40
    .line 41
    invoke-interface {v4, p1, p2, v5, v0}, Landroidx/lifecycle/GeneratedAdapter;->a(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;ZLandroidx/lifecycle/MethodCallsLogger;)V

    .line 42
    .line 43
    add-int/lit8 v3, v3, 0x1

    .line 44
    goto :goto_1

    .line 45
    :cond_1
    return-void
.end method
