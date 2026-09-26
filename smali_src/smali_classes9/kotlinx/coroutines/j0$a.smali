.class final Lkotlinx/coroutines/j0$a;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/j0;->a(Lkotlin/coroutines/g;Lkotlin/coroutines/g;Z)Lkotlin/coroutines/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/p<",
        "Lkotlin/coroutines/g;",
        "Lkotlin/coroutines/g$b;",
        "Lkotlin/coroutines/g;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lkotlinx/coroutines/j0$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlinx/coroutines/j0$a;

    invoke-direct {v0}, Lkotlinx/coroutines/j0$a;-><init>()V

    sput-object v0, Lkotlinx/coroutines/j0$a;->INSTANCE:Lkotlinx/coroutines/j0$a;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/coroutines/g;Lkotlin/coroutines/g$b;)Lkotlin/coroutines/g;
    .locals 1
    .param p1    # Lkotlin/coroutines/g;
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
    instance-of v0, p2, Lkotlinx/coroutines/h0;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p2, Lkotlinx/coroutines/h0;

    .line 7
    .line 8
    .line 9
    invoke-interface {p2}, Lkotlinx/coroutines/h0;->l()Lkotlinx/coroutines/h0;

    .line 10
    move-result-object p2

    .line 11
    .line 12
    .line 13
    invoke-interface {p1, p2}, Lkotlin/coroutines/g;->plus(Lkotlin/coroutines/g;)Lkotlin/coroutines/g;

    .line 14
    move-result-object p1

    .line 15
    return-object p1

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-interface {p1, p2}, Lkotlin/coroutines/g;->plus(Lkotlin/coroutines/g;)Lkotlin/coroutines/g;

    .line 19
    move-result-object p1

    .line 20
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    check-cast p1, Lkotlin/coroutines/g;

    .line 3
    .line 4
    check-cast p2, Lkotlin/coroutines/g$b;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/j0$a;->a(Lkotlin/coroutines/g;Lkotlin/coroutines/g$b;)Lkotlin/coroutines/g;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method
