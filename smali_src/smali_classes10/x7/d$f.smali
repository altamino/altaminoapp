.class public final Lx7/d$f;
.super Lx7/d$d;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;
.implements Lf8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx7/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lx7/d$d<",
        "TK;TV;>;",
        "Ljava/util/Iterator<",
        "TV;>;",
        "Lf8/a;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lx7/d;)V
    .locals 1
    .param p1    # Lx7/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx7/d<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "map"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, p1}, Lx7/d$d;-><init>(Lx7/d;)V

    .line 9
    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lx7/d$d;->a()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lx7/d$d;->b()I

    .line 7
    move-result v0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lx7/d$d;->e()Lx7/d;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    .line 14
    invoke-static {v1}, Lx7/d;->g(Lx7/d;)I

    .line 15
    move-result v1

    .line 16
    .line 17
    if-ge v0, v1, :cond_0

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lx7/d$d;->b()I

    .line 21
    move-result v0

    .line 22
    .line 23
    add-int/lit8 v1, v0, 0x1

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, v1}, Lx7/d$d;->g(I)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v0}, Lx7/d$d;->h(I)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Lx7/d$d;->e()Lx7/d;

    .line 33
    move-result-object v0

    .line 34
    .line 35
    .line 36
    invoke-static {v0}, Lx7/d;->k(Lx7/d;)[Ljava/lang/Object;

    .line 37
    move-result-object v0

    .line 38
    .line 39
    .line 40
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Lx7/d$d;->c()I

    .line 44
    move-result v1

    .line 45
    .line 46
    aget-object v0, v0, v1

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Lx7/d$d;->f()V

    .line 50
    return-object v0

    .line 51
    .line 52
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 53
    .line 54
    .line 55
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    .line 56
    throw v0
.end method
