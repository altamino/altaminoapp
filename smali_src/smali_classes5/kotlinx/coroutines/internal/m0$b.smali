.class final Lkotlinx/coroutines/internal/m0$b;
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
        "Lkotlinx/coroutines/z2<",
        "*>;",
        "Lkotlin/coroutines/g$b;",
        "Lkotlinx/coroutines/z2<",
        "*>;>;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lkotlinx/coroutines/internal/m0$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlinx/coroutines/internal/m0$b;

    invoke-direct {v0}, Lkotlinx/coroutines/internal/m0$b;-><init>()V

    sput-object v0, Lkotlinx/coroutines/internal/m0$b;->INSTANCE:Lkotlinx/coroutines/internal/m0$b;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lkotlinx/coroutines/z2;Lkotlin/coroutines/g$b;)Lkotlinx/coroutines/z2;
    .locals 0
    .param p1    # Lkotlinx/coroutines/z2;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/g$b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/z2<",
            "*>;",
            "Lkotlin/coroutines/g$b;",
            ")",
            "Lkotlinx/coroutines/z2<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    return-object p1

    .line 4
    .line 5
    :cond_0
    instance-of p1, p2, Lkotlinx/coroutines/z2;

    .line 6
    .line 7
    if-eqz p1, :cond_1

    .line 8
    .line 9
    check-cast p2, Lkotlinx/coroutines/z2;

    .line 10
    goto :goto_0

    .line 11
    :cond_1
    const/4 p2, 0x0

    .line 12
    :goto_0
    return-object p2
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    check-cast p1, Lkotlinx/coroutines/z2;

    .line 3
    .line 4
    check-cast p2, Lkotlin/coroutines/g$b;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/internal/m0$b;->a(Lkotlinx/coroutines/z2;Lkotlin/coroutines/g$b;)Lkotlinx/coroutines/z2;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method
