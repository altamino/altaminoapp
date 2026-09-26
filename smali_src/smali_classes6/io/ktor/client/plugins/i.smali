.class public final Lio/ktor/client/plugins/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/ktor/client/plugins/j;


# instance fields
.field private final handler:Le8/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/p<",
            "Ljava/lang/Throwable;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lw7/l0;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le8/p;)V
    .locals 1
    .param p1    # Le8/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le8/p<",
            "-",
            "Ljava/lang/Throwable;",
            "-",
            "Lkotlin/coroutines/d<",
            "-",
            "Lw7/l0;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "handler"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    iput-object p1, p0, Lio/ktor/client/plugins/i;->handler:Le8/p;

    .line 11
    return-void
.end method


# virtual methods
.method public final a()Le8/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le8/p<",
            "Ljava/lang/Throwable;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lw7/l0;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/ktor/client/plugins/i;->handler:Le8/p;

    return-object v0
.end method
