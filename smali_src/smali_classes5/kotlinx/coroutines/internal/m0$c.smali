.class final Lkotlinx/coroutines/internal/m0$c;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/internal/m0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/p<",
        "Lkotlinx/coroutines/internal/s0;",
        "Lkotlin/coroutines/g$b;",
        "Lkotlinx/coroutines/internal/s0;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lkotlinx/coroutines/internal/m0$c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlinx/coroutines/internal/m0$c;

    invoke-direct {v0}, Lkotlinx/coroutines/internal/m0$c;-><init>()V

    sput-object v0, Lkotlinx/coroutines/internal/m0$c;->INSTANCE:Lkotlinx/coroutines/internal/m0$c;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lkotlinx/coroutines/internal/s0;Lkotlin/coroutines/g$b;)Lkotlinx/coroutines/internal/s0;
    .locals 1
    .param p1    # Lkotlinx/coroutines/internal/s0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/g$b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    instance-of v0, p2, Lkotlinx/coroutines/z2;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p2, Lkotlinx/coroutines/z2;

    .line 7
    .line 8
    iget-object v0, p1, Lkotlinx/coroutines/internal/s0;->context:Lkotlin/coroutines/g;

    .line 9
    .line 10
    .line 11
    invoke-interface {p2, v0}, Lkotlinx/coroutines/z2;->E0(Lkotlin/coroutines/g;)Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, p2, v0}, Lkotlinx/coroutines/internal/s0;->a(Lkotlinx/coroutines/z2;Ljava/lang/Object;)V

    .line 16
    :cond_0
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    check-cast p1, Lkotlinx/coroutines/internal/s0;

    .line 3
    .line 4
    check-cast p2, Lkotlin/coroutines/g$b;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/internal/m0$c;->a(Lkotlinx/coroutines/internal/s0;Lkotlin/coroutines/g$b;)Lkotlinx/coroutines/internal/s0;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method
