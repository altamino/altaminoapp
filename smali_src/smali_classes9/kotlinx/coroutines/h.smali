.class public final Lkotlinx/coroutines/h;
.super Lkotlinx/coroutines/l1;
.source "SourceFile"


# instance fields
.field private final thread:Ljava/lang/Thread;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Thread;)V
    .locals 0
    .param p1    # Ljava/lang/Thread;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lkotlinx/coroutines/l1;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lkotlinx/coroutines/h;->thread:Ljava/lang/Thread;

    .line 6
    return-void
.end method


# virtual methods
.method protected P0()Ljava/lang/Thread;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/h;->thread:Ljava/lang/Thread;

    return-object v0
.end method
