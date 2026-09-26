.class public final Lkotlin/sequences/f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;
.implements Lf8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/sequences/f;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;",
        "Lf8/a;"
    }
.end annotation


# instance fields
.field private nextItem:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private nextState:I

.field final synthetic this$0:Lkotlin/sequences/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/sequences/f<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lkotlin/sequences/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/sequences/f<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lkotlin/sequences/f$a;->this$0:Lkotlin/sequences/f;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const/4 p1, -0x2

    .line 7
    .line 8
    iput p1, p0, Lkotlin/sequences/f$a;->nextState:I

    .line 9
    return-void
.end method

.method private final a()V
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Lkotlin/sequences/f$a;->nextState:I

    .line 3
    const/4 v1, -0x2

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lkotlin/sequences/f$a;->this$0:Lkotlin/sequences/f;

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lkotlin/sequences/f;->c(Lkotlin/sequences/f;)Le8/a;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    .line 14
    invoke-interface {v0}, Le8/a;->invoke()Ljava/lang/Object;

    .line 15
    move-result-object v0

    .line 16
    goto :goto_0

    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lkotlin/sequences/f$a;->this$0:Lkotlin/sequences/f;

    .line 19
    .line 20
    .line 21
    invoke-static {v0}, Lkotlin/sequences/f;->d(Lkotlin/sequences/f;)Le8/l;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    iget-object v1, p0, Lkotlin/sequences/f$a;->nextItem:Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    invoke-static {v1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    invoke-interface {v0, v1}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    :goto_0
    iput-object v0, p0, Lkotlin/sequences/f$a;->nextItem:Ljava/lang/Object;

    .line 34
    .line 35
    if-nez v0, :cond_1

    .line 36
    const/4 v0, 0x0

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    const/4 v0, 0x1

    .line 39
    .line 40
    :goto_1
    iput v0, p0, Lkotlin/sequences/f$a;->nextState:I

    .line 41
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Lkotlin/sequences/f$a;->nextState:I

    .line 3
    .line 4
    if-gez v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lkotlin/sequences/f$a;->a()V

    .line 8
    .line 9
    :cond_0
    iget v0, p0, Lkotlin/sequences/f$a;->nextState:I

    .line 10
    const/4 v1, 0x1

    .line 11
    .line 12
    if-ne v0, v1, :cond_1

    .line 13
    goto :goto_0

    .line 14
    :cond_1
    const/4 v1, 0x0

    .line 15
    :goto_0
    return v1
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget v0, p0, Lkotlin/sequences/f$a;->nextState:I

    .line 3
    .line 4
    if-gez v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lkotlin/sequences/f$a;->a()V

    .line 8
    .line 9
    :cond_0
    iget v0, p0, Lkotlin/sequences/f$a;->nextState:I

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Lkotlin/sequences/f$a;->nextItem:Ljava/lang/Object;

    .line 14
    .line 15
    const-string v1, "null cannot be cast to non-null type T of kotlin.sequences.GeneratorSequence"

    .line 16
    .line 17
    .line 18
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    const/4 v1, -0x1

    .line 20
    .line 21
    iput v1, p0, Lkotlin/sequences/f$a;->nextState:I

    .line 22
    return-object v0

    .line 23
    .line 24
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 25
    .line 26
    .line 27
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    .line 28
    throw v0
.end method

.method public remove()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation is not supported for read-only collection"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
