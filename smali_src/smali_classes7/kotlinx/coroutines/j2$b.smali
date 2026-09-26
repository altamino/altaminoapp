.class final Lkotlinx/coroutines/j2$b;
.super Lkotlinx/coroutines/i2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/j2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private final child:Lkotlinx/coroutines/v;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final parent:Lkotlinx/coroutines/j2;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final proposedUpdate:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final state:Lkotlinx/coroutines/j2$c;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/j2;Lkotlinx/coroutines/j2$c;Lkotlinx/coroutines/v;Ljava/lang/Object;)V
    .locals 0
    .param p1    # Lkotlinx/coroutines/j2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlinx/coroutines/j2$c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlinx/coroutines/v;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lkotlinx/coroutines/i2;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lkotlinx/coroutines/j2$b;->parent:Lkotlinx/coroutines/j2;

    .line 6
    .line 7
    iput-object p2, p0, Lkotlinx/coroutines/j2$b;->state:Lkotlinx/coroutines/j2$c;

    .line 8
    .line 9
    iput-object p3, p0, Lkotlinx/coroutines/j2$b;->child:Lkotlinx/coroutines/v;

    .line 10
    .line 11
    iput-object p4, p0, Lkotlinx/coroutines/j2$b;->proposedUpdate:Ljava/lang/Object;

    .line 12
    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    check-cast p1, Ljava/lang/Throwable;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/j2$b;->r(Ljava/lang/Throwable;)V

    .line 6
    .line 7
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 8
    return-object p1
.end method

.method public r(Ljava/lang/Throwable;)V
    .locals 3
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object p1, p0, Lkotlinx/coroutines/j2$b;->parent:Lkotlinx/coroutines/j2;

    .line 3
    .line 4
    iget-object v0, p0, Lkotlinx/coroutines/j2$b;->state:Lkotlinx/coroutines/j2$c;

    .line 5
    .line 6
    iget-object v1, p0, Lkotlinx/coroutines/j2$b;->child:Lkotlinx/coroutines/v;

    .line 7
    .line 8
    iget-object v2, p0, Lkotlinx/coroutines/j2$b;->proposedUpdate:Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    invoke-static {p1, v0, v1, v2}, Lkotlinx/coroutines/j2;->y(Lkotlinx/coroutines/j2;Lkotlinx/coroutines/j2$c;Lkotlinx/coroutines/v;Ljava/lang/Object;)V

    .line 12
    return-void
.end method
