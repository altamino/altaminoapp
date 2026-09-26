.class public abstract Lkotlin/collections/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;
.implements Lf8/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/collections/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;",
        "Lf8/a;"
    }
.end annotation


# instance fields
.field private nextValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private state:Lkotlin/collections/a1;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    sget-object v0, Lkotlin/collections/a1;->NotReady:Lkotlin/collections/a1;

    .line 6
    .line 7
    iput-object v0, p0, Lkotlin/collections/b;->state:Lkotlin/collections/a1;

    .line 8
    return-void
.end method

.method private final e()Z
    .locals 2

    .line 1
    .line 2
    sget-object v0, Lkotlin/collections/a1;->Failed:Lkotlin/collections/a1;

    .line 3
    .line 4
    iput-object v0, p0, Lkotlin/collections/b;->state:Lkotlin/collections/a1;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lkotlin/collections/b;->a()V

    .line 8
    .line 9
    iget-object v0, p0, Lkotlin/collections/b;->state:Lkotlin/collections/a1;

    .line 10
    .line 11
    sget-object v1, Lkotlin/collections/a1;->Ready:Lkotlin/collections/a1;

    .line 12
    .line 13
    if-ne v0, v1, :cond_0

    .line 14
    const/4 v0, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    :goto_0
    return v0
.end method


# virtual methods
.method protected abstract a()V
.end method

.method protected final b()V
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lkotlin/collections/a1;->Done:Lkotlin/collections/a1;

    .line 3
    .line 4
    iput-object v0, p0, Lkotlin/collections/b;->state:Lkotlin/collections/a1;

    .line 5
    return-void
.end method

.method protected final c(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lkotlin/collections/b;->nextValue:Ljava/lang/Object;

    .line 3
    .line 4
    sget-object p1, Lkotlin/collections/a1;->Ready:Lkotlin/collections/a1;

    .line 5
    .line 6
    iput-object p1, p0, Lkotlin/collections/b;->state:Lkotlin/collections/a1;

    .line 7
    return-void
.end method

.method public hasNext()Z
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lkotlin/collections/b;->state:Lkotlin/collections/a1;

    .line 3
    .line 4
    sget-object v1, Lkotlin/collections/a1;->Failed:Lkotlin/collections/a1;

    .line 5
    .line 6
    if-eq v0, v1, :cond_2

    .line 7
    .line 8
    sget-object v1, Lkotlin/collections/b$a;->$EnumSwitchMapping$0:[I

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 12
    move-result v0

    .line 13
    .line 14
    aget v0, v1, v0

    .line 15
    const/4 v1, 0x1

    .line 16
    .line 17
    if-eq v0, v1, :cond_0

    .line 18
    const/4 v2, 0x2

    .line 19
    .line 20
    if-eq v0, v2, :cond_1

    .line 21
    .line 22
    .line 23
    invoke-direct {p0}, Lkotlin/collections/b;->e()Z

    .line 24
    move-result v1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v1, 0x0

    .line 27
    :cond_1
    :goto_0
    return v1

    .line 28
    .line 29
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 30
    .line 31
    const-string v1, "Failed requirement."

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 35
    move-result-object v1

    .line 36
    .line 37
    .line 38
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 39
    throw v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lkotlin/collections/b;->hasNext()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    sget-object v0, Lkotlin/collections/a1;->NotReady:Lkotlin/collections/a1;

    .line 9
    .line 10
    iput-object v0, p0, Lkotlin/collections/b;->state:Lkotlin/collections/a1;

    .line 11
    .line 12
    iget-object v0, p0, Lkotlin/collections/b;->nextValue:Ljava/lang/Object;

    .line 13
    return-object v0

    .line 14
    .line 15
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 16
    .line 17
    .line 18
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    .line 19
    throw v0
.end method

.method public remove()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation is not supported for read-only collection"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
