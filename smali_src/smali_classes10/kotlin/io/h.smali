.class public final Lkotlin/io/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/sequences/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/io/h$a;,
        Lkotlin/io/h$b;,
        Lkotlin/io/h$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/sequences/g<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field private final direction:Lkotlin/io/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final maxDepth:I

.field private final onEnter:Le8/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/l<",
            "Ljava/io/File;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final onFail:Le8/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/p<",
            "Ljava/io/File;",
            "Ljava/io/IOException;",
            "Lw7/l0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final onLeave:Le8/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/l<",
            "Ljava/io/File;",
            "Lw7/l0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final start:Ljava/io/File;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/io/File;Lkotlin/io/i;)V
    .locals 10
    .param p1    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/io/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "start"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "direction"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x20

    const/4 v9, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    .line 4
    invoke-direct/range {v1 .. v9}, Lkotlin/io/h;-><init>(Ljava/io/File;Lkotlin/io/i;Le8/l;Le8/l;Le8/p;IILkotlin/jvm/internal/k;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/io/File;Lkotlin/io/i;ILkotlin/jvm/internal/k;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 5
    sget-object p2, Lkotlin/io/i;->TOP_DOWN:Lkotlin/io/i;

    :cond_0
    invoke-direct {p0, p1, p2}, Lkotlin/io/h;-><init>(Ljava/io/File;Lkotlin/io/i;)V

    return-void
.end method

.method private constructor <init>(Ljava/io/File;Lkotlin/io/i;Le8/l;Le8/l;Le8/p;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lkotlin/io/i;",
            "Le8/l<",
            "-",
            "Ljava/io/File;",
            "Ljava/lang/Boolean;",
            ">;",
            "Le8/l<",
            "-",
            "Ljava/io/File;",
            "Lw7/l0;",
            ">;",
            "Le8/p<",
            "-",
            "Ljava/io/File;",
            "-",
            "Ljava/io/IOException;",
            "Lw7/l0;",
            ">;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/io/h;->start:Ljava/io/File;

    iput-object p2, p0, Lkotlin/io/h;->direction:Lkotlin/io/i;

    iput-object p3, p0, Lkotlin/io/h;->onEnter:Le8/l;

    iput-object p4, p0, Lkotlin/io/h;->onLeave:Le8/l;

    iput-object p5, p0, Lkotlin/io/h;->onFail:Le8/p;

    iput p6, p0, Lkotlin/io/h;->maxDepth:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/io/File;Lkotlin/io/i;Le8/l;Le8/l;Le8/p;IILkotlin/jvm/internal/k;)V
    .locals 7

    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_0

    .line 2
    sget-object p2, Lkotlin/io/i;->TOP_DOWN:Lkotlin/io/i;

    :cond_0
    move-object v2, p2

    and-int/lit8 p2, p7, 0x20

    if-eqz p2, :cond_1

    const p6, 0x7fffffff

    :cond_1
    move v6, p6

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 3
    invoke-direct/range {v0 .. v6}, Lkotlin/io/h;-><init>(Ljava/io/File;Lkotlin/io/i;Le8/l;Le8/l;Le8/p;I)V

    return-void
.end method

.method public static final synthetic c(Lkotlin/io/h;)Lkotlin/io/i;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lkotlin/io/h;->direction:Lkotlin/io/i;

    .line 3
    return-object p0
.end method

.method public static final synthetic d(Lkotlin/io/h;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Lkotlin/io/h;->maxDepth:I

    .line 3
    return p0
.end method

.method public static final synthetic e(Lkotlin/io/h;)Le8/l;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lkotlin/io/h;->onEnter:Le8/l;

    .line 3
    return-object p0
.end method

.method public static final synthetic f(Lkotlin/io/h;)Le8/p;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lkotlin/io/h;->onFail:Le8/p;

    .line 3
    return-object p0
.end method

.method public static final synthetic g(Lkotlin/io/h;)Le8/l;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lkotlin/io/h;->onLeave:Le8/l;

    .line 3
    return-object p0
.end method

.method public static final synthetic h(Lkotlin/io/h;)Ljava/io/File;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lkotlin/io/h;->start:Ljava/io/File;

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
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lkotlin/io/h$b;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Lkotlin/io/h$b;-><init>(Lkotlin/io/h;)V

    .line 6
    return-object v0
.end method
