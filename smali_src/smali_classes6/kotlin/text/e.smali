.class final Lkotlin/text/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/sequences/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/sequences/g<",
        "Lj8/i;",
        ">;"
    }
.end annotation


# instance fields
.field private final getNextMatch:Le8/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/p<",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/Integer;",
            "Lw7/u<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final input:Ljava/lang/CharSequence;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final limit:I

.field private final startIndex:I


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;IILe8/p;)V
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Le8/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "II",
            "Le8/p<",
            "-",
            "Ljava/lang/CharSequence;",
            "-",
            "Ljava/lang/Integer;",
            "Lw7/u<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "input"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "getNextMatch"

    .line 8
    .line 9
    .line 10
    invoke-static {p4, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    iput-object p1, p0, Lkotlin/text/e;->input:Ljava/lang/CharSequence;

    .line 16
    .line 17
    iput p2, p0, Lkotlin/text/e;->startIndex:I

    .line 18
    .line 19
    iput p3, p0, Lkotlin/text/e;->limit:I

    .line 20
    .line 21
    iput-object p4, p0, Lkotlin/text/e;->getNextMatch:Le8/p;

    .line 22
    return-void
.end method

.method public static final synthetic c(Lkotlin/text/e;)Le8/p;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lkotlin/text/e;->getNextMatch:Le8/p;

    .line 3
    return-object p0
.end method

.method public static final synthetic d(Lkotlin/text/e;)Ljava/lang/CharSequence;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lkotlin/text/e;->input:Ljava/lang/CharSequence;

    .line 3
    return-object p0
.end method

.method public static final synthetic e(Lkotlin/text/e;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Lkotlin/text/e;->limit:I

    .line 3
    return p0
.end method

.method public static final synthetic f(Lkotlin/text/e;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Lkotlin/text/e;->startIndex:I

    .line 3
    return p0
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lj8/i;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lkotlin/text/e$a;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Lkotlin/text/e$a;-><init>(Lkotlin/text/e;)V

    .line 6
    return-object v0
.end method
