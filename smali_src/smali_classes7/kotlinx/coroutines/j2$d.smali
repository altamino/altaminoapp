.class public final Lkotlinx/coroutines/j2$d;
.super Lkotlinx/coroutines/internal/t$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/j2;->z(Ljava/lang/Object;Lkotlinx/coroutines/o2;Lkotlinx/coroutines/i2;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLockFreeLinkedList.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LockFreeLinkedList.kt\nkotlinx/coroutines/internal/LockFreeLinkedListNode$makeCondAddOp$1\n+ 2 JobSupport.kt\nkotlinx/coroutines/JobSupport\n*L\n1#1,367:1\n526#2:368\n*E\n"
.end annotation


# instance fields
.field final synthetic $expect$inlined:Ljava/lang/Object;

.field final synthetic this$0:Lkotlinx/coroutines/j2;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/internal/t;Lkotlinx/coroutines/j2;Ljava/lang/Object;)V
    .locals 0

    .line 1
    .line 2
    iput-object p2, p0, Lkotlinx/coroutines/j2$d;->this$0:Lkotlinx/coroutines/j2;

    .line 3
    .line 4
    iput-object p3, p0, Lkotlinx/coroutines/j2$d;->$expect$inlined:Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p1}, Lkotlinx/coroutines/internal/t$a;-><init>(Lkotlinx/coroutines/internal/t;)V

    .line 8
    return-void
.end method


# virtual methods
.method public bridge synthetic d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    check-cast p1, Lkotlinx/coroutines/internal/t;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/j2$d;->f(Lkotlinx/coroutines/internal/t;)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public f(Lkotlinx/coroutines/internal/t;)Ljava/lang/Object;
    .locals 1
    .param p1    # Lkotlinx/coroutines/internal/t;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    iget-object p1, p0, Lkotlinx/coroutines/j2$d;->this$0:Lkotlinx/coroutines/j2;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lkotlinx/coroutines/j2;->n0()Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    iget-object v0, p0, Lkotlinx/coroutines/j2$d;->$expect$inlined:Ljava/lang/Object;

    .line 9
    .line 10
    if-ne p1, v0, :cond_0

    .line 11
    const/4 p1, 0x0

    .line 12
    goto :goto_0

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-static {}, Lkotlinx/coroutines/internal/s;->a()Ljava/lang/Object;

    .line 16
    move-result-object p1

    .line 17
    :goto_0
    return-object p1
.end method
