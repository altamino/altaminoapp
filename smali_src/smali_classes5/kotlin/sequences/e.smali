.class public final Lkotlin/sequences/e;
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

.field private final sendWhen:Z

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
.method public constructor <init>(Lkotlin/sequences/g;ZLe8/l;)V
    .locals 1
    .param p1    # Lkotlin/sequences/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/sequences/g<",
            "+TT;>;Z",
            "Le8/l<",
            "-TT;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "sequence"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "predicate"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/sequences/e;->sequence:Lkotlin/sequences/g;

    iput-boolean p2, p0, Lkotlin/sequences/e;->sendWhen:Z

    iput-object p3, p0, Lkotlin/sequences/e;->predicate:Le8/l;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/sequences/g;ZLe8/l;ILkotlin/jvm/internal/k;)V
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p2, 0x1

    .line 2
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lkotlin/sequences/e;-><init>(Lkotlin/sequences/g;ZLe8/l;)V

    return-void
.end method

.method public static final synthetic c(Lkotlin/sequences/e;)Le8/l;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lkotlin/sequences/e;->predicate:Le8/l;

    .line 3
    return-object p0
.end method

.method public static final synthetic d(Lkotlin/sequences/e;)Z
    .locals 0

    .line 1
    .line 2
    iget-boolean p0, p0, Lkotlin/sequences/e;->sendWhen:Z

    .line 3
    return p0
.end method

.method public static final synthetic e(Lkotlin/sequences/e;)Lkotlin/sequences/g;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lkotlin/sequences/e;->sequence:Lkotlin/sequences/g;

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
    new-instance v0, Lkotlin/sequences/e$a;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Lkotlin/sequences/e$a;-><init>(Lkotlin/sequences/e;)V

    .line 6
    return-object v0
.end method
