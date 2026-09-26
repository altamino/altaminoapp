.class final Lkotlinx/coroutines/channels/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/j3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/j3;"
    }
.end annotation


# instance fields
.field public final cont:Lkotlinx/coroutines/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/p<",
            "Lkotlinx/coroutines/channels/h<",
            "+TE;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/p;)V
    .locals 0
    .param p1    # Lkotlinx/coroutines/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/p<",
            "-",
            "Lkotlinx/coroutines/channels/h<",
            "+TE;>;>;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lkotlinx/coroutines/channels/s;->cont:Lkotlinx/coroutines/p;

    .line 6
    return-void
.end method


# virtual methods
.method public a(Lkotlinx/coroutines/internal/f0;I)V
    .locals 1
    .param p1    # Lkotlinx/coroutines/internal/f0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/internal/f0<",
            "*>;I)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/channels/s;->cont:Lkotlinx/coroutines/p;

    invoke-virtual {v0, p1, p2}, Lkotlinx/coroutines/p;->a(Lkotlinx/coroutines/internal/f0;I)V

    return-void
.end method
