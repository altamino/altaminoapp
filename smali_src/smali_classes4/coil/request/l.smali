.class public final Lcoil/request/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcoil/request/d;


# instance fields
.field private final job:Lkotlinx/coroutines/v0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/v0<",
            "Lcoil/request/i;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/v0;)V
    .locals 0
    .param p1    # Lkotlinx/coroutines/v0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/v0<",
            "+",
            "Lcoil/request/i;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcoil/request/l;->job:Lkotlinx/coroutines/v0;

    .line 6
    return-void
.end method
