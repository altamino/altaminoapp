.class public final Landroidx/room/CoroutinesRoom;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/room/CoroutinesRoom$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/room/CoroutinesRoom$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/room/CoroutinesRoom$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/room/CoroutinesRoom$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    sput-object v0, Landroidx/room/CoroutinesRoom;->Companion:Landroidx/room/CoroutinesRoom$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static final a(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 1
    .param p0    # Landroidx/room/RoomDatabase;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/concurrent/Callable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/coroutines/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/room/RoomDatabase;",
            "Z",
            "Ljava/util/concurrent/Callable<",
            "TR;>;",
            "Lkotlin/coroutines/d<",
            "-TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    sget-object v0, Landroidx/room/CoroutinesRoom;->Companion:Landroidx/room/CoroutinesRoom$Companion;

    invoke-virtual {v0, p0, p1, p2, p3}, Landroidx/room/CoroutinesRoom$Companion;->a(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
