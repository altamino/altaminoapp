.class public final Lkotlinx/coroutines/selects/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/selects/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSelect.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Select.kt\nkotlinx/coroutines/selects/SelectImplementation$ClauseData\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,873:1\n1#2:874\n*E\n"
.end annotation


# instance fields
.field private final block:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final clauseObject:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public disposableHandleOrSegment:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public indexInSegment:I

.field public final onCancellationConstructor:Le8/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/q<",
            "Lkotlinx/coroutines/selects/b<",
            "*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Le8/l<",
            "Ljava/lang/Throwable;",
            "Lw7/l0;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final param:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final processResFunc:Le8/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/q<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final regFunc:Le8/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/q<",
            "Ljava/lang/Object;",
            "Lkotlinx/coroutines/selects/b<",
            "*>;",
            "Ljava/lang/Object;",
            "Lw7/l0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field final synthetic this$0:Lkotlinx/coroutines/selects/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/selects/a<",
            "TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/selects/a;Ljava/lang/Object;Le8/q;Le8/q;Ljava/lang/Object;Ljava/lang/Object;Le8/q;)V
    .locals 0
    .param p1    # Lkotlinx/coroutines/selects/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Le8/q;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Le8/q;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Le8/q<",
            "Ljava/lang/Object;",
            "-",
            "Lkotlinx/coroutines/selects/b<",
            "*>;",
            "Ljava/lang/Object;",
            "Lw7/l0;",
            ">;",
            "Le8/q<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Le8/q<",
            "-",
            "Lkotlinx/coroutines/selects/b<",
            "*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "+",
            "Le8/l<",
            "-",
            "Ljava/lang/Throwable;",
            "Lw7/l0;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lkotlinx/coroutines/selects/a$a;->this$0:Lkotlinx/coroutines/selects/a;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    iput-object p2, p0, Lkotlinx/coroutines/selects/a$a;->clauseObject:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p3, p0, Lkotlinx/coroutines/selects/a$a;->regFunc:Le8/q;

    .line 10
    .line 11
    iput-object p4, p0, Lkotlinx/coroutines/selects/a$a;->processResFunc:Le8/q;

    .line 12
    .line 13
    iput-object p5, p0, Lkotlinx/coroutines/selects/a$a;->param:Ljava/lang/Object;

    .line 14
    .line 15
    iput-object p6, p0, Lkotlinx/coroutines/selects/a$a;->block:Ljava/lang/Object;

    .line 16
    .line 17
    iput-object p7, p0, Lkotlinx/coroutines/selects/a$a;->onCancellationConstructor:Le8/q;

    .line 18
    const/4 p1, -0x1

    .line 19
    .line 20
    iput p1, p0, Lkotlinx/coroutines/selects/a$a;->indexInSegment:I

    .line 21
    return-void
.end method


# virtual methods
.method public final a(Lkotlinx/coroutines/selects/b;Ljava/lang/Object;)Le8/l;
    .locals 2
    .param p1    # Lkotlinx/coroutines/selects/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/selects/b<",
            "*>;",
            "Ljava/lang/Object;",
            ")",
            "Le8/l<",
            "Ljava/lang/Throwable;",
            "Lw7/l0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lkotlinx/coroutines/selects/a$a;->onCancellationConstructor:Le8/q;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v1, p0, Lkotlinx/coroutines/selects/a$a;->param:Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    invoke-interface {v0, p1, v1, p2}, Le8/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    check-cast p1, Le8/l;

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    :goto_0
    return-object p1
.end method

.method public final b()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lkotlinx/coroutines/selects/a$a;->disposableHandleOrSegment:Ljava/lang/Object;

    .line 3
    .line 4
    iget-object v1, p0, Lkotlinx/coroutines/selects/a$a;->this$0:Lkotlinx/coroutines/selects/a;

    .line 5
    .line 6
    instance-of v2, v0, Lkotlinx/coroutines/internal/f0;

    .line 7
    const/4 v3, 0x0

    .line 8
    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    check-cast v0, Lkotlinx/coroutines/internal/f0;

    .line 12
    .line 13
    iget v2, p0, Lkotlinx/coroutines/selects/a$a;->indexInSegment:I

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Lkotlinx/coroutines/selects/a;->getContext()Lkotlin/coroutines/g;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v2, v3, v1}, Lkotlinx/coroutines/internal/f0;->o(ILjava/lang/Throwable;Lkotlin/coroutines/g;)V

    .line 21
    goto :goto_0

    .line 22
    .line 23
    :cond_0
    instance-of v1, v0, Lkotlinx/coroutines/g1;

    .line 24
    .line 25
    if-eqz v1, :cond_1

    .line 26
    move-object v3, v0

    .line 27
    .line 28
    check-cast v3, Lkotlinx/coroutines/g1;

    .line 29
    .line 30
    :cond_1
    if-eqz v3, :cond_2

    .line 31
    .line 32
    .line 33
    invoke-interface {v3}, Lkotlinx/coroutines/g1;->t()V

    .line 34
    :cond_2
    :goto_0
    return-void
.end method
