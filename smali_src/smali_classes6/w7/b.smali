.class public final Lw7/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final UNDEFINED_RESULT:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lw7/v;->Companion:Lw7/v$a;

    .line 3
    .line 4
    .line 5
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lw7/v;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    sput-object v0, Lw7/b;->UNDEFINED_RESULT:Ljava/lang/Object;

    .line 13
    return-void
.end method

.method public static final synthetic a()Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Lw7/b;->UNDEFINED_RESULT:Ljava/lang/Object;

    return-object v0
.end method

.method public static final b(Lw7/a;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0    # Lw7/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lw7/a<",
            "TT;TR;>;TT;)TR;"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    new-instance v0, Lw7/d;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lw7/a;->a()Le8/q;

    .line 11
    move-result-object p0

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, p0, p1}, Lw7/d;-><init>(Le8/q;Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lw7/d;->b()Ljava/lang/Object;

    .line 18
    move-result-object p0

    .line 19
    return-object p0
.end method
