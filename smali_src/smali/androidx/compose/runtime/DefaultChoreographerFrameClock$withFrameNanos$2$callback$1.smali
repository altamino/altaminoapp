.class final Landroidx/compose/runtime/DefaultChoreographerFrameClock$withFrameNanos$2$callback$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/runtime/DefaultChoreographerFrameClock;->k(Le8/l;Lkotlin/coroutines/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nActualAndroid.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ActualAndroid.android.kt\nandroidx/compose/runtime/DefaultChoreographerFrameClock$withFrameNanos$2$callback$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,93:1\n1#2:94\n*E\n"
.end annotation


# instance fields
.field final synthetic $co:Lkotlinx/coroutines/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/o<",
            "TR;>;"
        }
    .end annotation
.end field

.field final synthetic $onFrame:Le8/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/l<",
            "Ljava/lang/Long;",
            "TR;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lkotlinx/coroutines/o;Le8/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/o<",
            "-TR;>;",
            "Le8/l<",
            "-",
            "Ljava/lang/Long;",
            "+TR;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/compose/runtime/DefaultChoreographerFrameClock$withFrameNanos$2$callback$1;->$co:Lkotlinx/coroutines/o;

    iput-object p2, p0, Landroidx/compose/runtime/DefaultChoreographerFrameClock$withFrameNanos$2$callback$1;->$onFrame:Le8/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final doFrame(J)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/runtime/DefaultChoreographerFrameClock$withFrameNanos$2$callback$1;->$co:Lkotlinx/coroutines/o;

    .line 3
    .line 4
    sget-object v1, Landroidx/compose/runtime/DefaultChoreographerFrameClock;->INSTANCE:Landroidx/compose/runtime/DefaultChoreographerFrameClock;

    .line 5
    .line 6
    iget-object v1, p0, Landroidx/compose/runtime/DefaultChoreographerFrameClock$withFrameNanos$2$callback$1;->$onFrame:Le8/l;

    .line 7
    .line 8
    :try_start_0
    sget-object v2, Lw7/v;->Companion:Lw7/v$a;

    .line 9
    .line 10
    .line 11
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    .line 15
    invoke-interface {v1, p1}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    .line 19
    invoke-static {p1}, Lw7/v;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception p1

    .line 23
    .line 24
    sget-object p2, Lw7/v;->Companion:Lw7/v$a;

    .line 25
    .line 26
    .line 27
    invoke-static {p1}, Lw7/w;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 28
    move-result-object p1

    .line 29
    .line 30
    .line 31
    invoke-static {p1}, Lw7/v;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    move-result-object p1

    .line 33
    .line 34
    .line 35
    :goto_0
    invoke-interface {v0, p1}, Lkotlin/coroutines/d;->resumeWith(Ljava/lang/Object;)V

    .line 36
    return-void
.end method
