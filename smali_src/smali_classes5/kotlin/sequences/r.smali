.class public final Lkotlin/sequences/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/sequences/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlin/sequences/g<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final predicate:Le8/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/l<",
            "TT;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final sequence:Lkotlin/sequences/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/sequences/g<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/sequences/g;Le8/l;)V
    .locals 1
    .param p1    # Lkotlin/sequences/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/sequences/g<",
            "+TT;>;",
            "Le8/l<",
            "-TT;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "sequence"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "predicate"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    iput-object p1, p0, Lkotlin/sequences/r;->sequence:Lkotlin/sequences/g;

    .line 16
    .line 17
    iput-object p2, p0, Lkotlin/sequences/r;->predicate:Le8/l;

    .line 18
    return-void
.end method

.method public static final synthetic c(Lkotlin/sequences/r;)Le8/l;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lkotlin/sequences/r;->predicate:Le8/l;

    .line 3
    return-object p0
.end method

.method public static final synthetic d(Lkotlin/sequences/r;)Lkotlin/sequences/g;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lkotlin/sequences/r;->sequence:Lkotlin/sequences/g;

    .line 3
    return-object p0
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lkotlin/sequences/r$a;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Lkotlin/sequences/r$a;-><init>(Lkotlin/sequences/r;)V

    .line 6
    return-object v0
.end method
