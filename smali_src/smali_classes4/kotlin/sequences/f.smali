.class final Lkotlin/sequences/f;
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
.field private final getInitialValue:Le8/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/a<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final getNextValue:Le8/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/l<",
            "TT;TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le8/a;Le8/l;)V
    .locals 1
    .param p1    # Le8/a;
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
            "Le8/a<",
            "+TT;>;",
            "Le8/l<",
            "-TT;+TT;>;)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "getInitialValue"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "getNextValue"

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
    iput-object p1, p0, Lkotlin/sequences/f;->getInitialValue:Le8/a;

    .line 16
    .line 17
    iput-object p2, p0, Lkotlin/sequences/f;->getNextValue:Le8/l;

    .line 18
    return-void
.end method

.method public static final synthetic c(Lkotlin/sequences/f;)Le8/a;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lkotlin/sequences/f;->getInitialValue:Le8/a;

    .line 3
    return-object p0
.end method

.method public static final synthetic d(Lkotlin/sequences/f;)Le8/l;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lkotlin/sequences/f;->getNextValue:Le8/l;

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
    new-instance v0, Lkotlin/sequences/f$a;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Lkotlin/sequences/f$a;-><init>(Lkotlin/sequences/f;)V

    .line 6
    return-object v0
.end method
