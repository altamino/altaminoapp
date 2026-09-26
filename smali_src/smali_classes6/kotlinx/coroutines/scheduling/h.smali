.class public abstract Lkotlinx/coroutines/scheduling/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public submissionTime:J

.field public taskContext:Lkotlinx/coroutines/scheduling/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    const-wide/16 v0, 0x0

    .line 2
    sget-object v2, Lkotlinx/coroutines/scheduling/l;->NonBlockingContext:Lkotlinx/coroutines/scheduling/i;

    invoke-direct {p0, v0, v1, v2}, Lkotlinx/coroutines/scheduling/h;-><init>(JLkotlinx/coroutines/scheduling/i;)V

    return-void
.end method

.method public constructor <init>(JLkotlinx/coroutines/scheduling/i;)V
    .locals 0
    .param p3    # Lkotlinx/coroutines/scheduling/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lkotlinx/coroutines/scheduling/h;->submissionTime:J

    iput-object p3, p0, Lkotlinx/coroutines/scheduling/h;->taskContext:Lkotlinx/coroutines/scheduling/i;

    return-void
.end method
