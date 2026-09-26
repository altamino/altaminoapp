.class public final Lio/ktor/client/plugins/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ktor/client/plugins/a$a;
    }
.end annotation


# static fields
.field public static final Plugin:Lio/ktor/client/plugins/a$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final key:Lio/ktor/util/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/ktor/util/a<",
            "Lio/ktor/client/plugins/a;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lio/ktor/client/plugins/a$a;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Lio/ktor/client/plugins/a$a;-><init>(Lkotlin/jvm/internal/k;)V

    .line 7
    .line 8
    sput-object v0, Lio/ktor/client/plugins/a;->Plugin:Lio/ktor/client/plugins/a$a;

    .line 9
    .line 10
    new-instance v0, Lio/ktor/util/a;

    .line 11
    .line 12
    const-string v1, "BodyProgress"

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, v1}, Lio/ktor/util/a;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    sput-object v0, Lio/ktor/client/plugins/a;->key:Lio/ktor/util/a;

    .line 18
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static final synthetic a()Lio/ktor/util/a;
    .locals 1

    .line 1
    sget-object v0, Lio/ktor/client/plugins/a;->key:Lio/ktor/util/a;

    return-object v0
.end method

.method public static final synthetic b(Lio/ktor/client/plugins/a;Lio/ktor/client/a;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lio/ktor/client/plugins/a;->c(Lio/ktor/client/a;)V

    .line 4
    return-void
.end method

.method private final c(Lio/ktor/client/a;)V
    .locals 4

    .line 1
    .line 2
    new-instance v0, Lio/ktor/util/pipeline/h;

    .line 3
    .line 4
    const-string v1, "ObservableContent"

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1}, Lio/ktor/util/pipeline/h;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Lio/ktor/client/a;->n()Li7/g;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    sget-object v2, Li7/g;->Phases:Li7/g$a;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v2}, Li7/g$a;->b()Lio/ktor/util/pipeline/h;

    .line 17
    move-result-object v2

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, v2, v0}, Lio/ktor/util/pipeline/d;->j(Lio/ktor/util/pipeline/h;Lio/ktor/util/pipeline/h;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Lio/ktor/client/a;->n()Li7/g;

    .line 24
    move-result-object v1

    .line 25
    .line 26
    new-instance v2, Lio/ktor/client/plugins/a$b;

    .line 27
    const/4 v3, 0x0

    .line 28
    .line 29
    .line 30
    invoke-direct {v2, v3}, Lio/ktor/client/plugins/a$b;-><init>(Lkotlin/coroutines/d;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v0, v2}, Lio/ktor/util/pipeline/d;->l(Lio/ktor/util/pipeline/h;Le8/q;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Lio/ktor/client/a;->m()Lio/ktor/client/statement/b;

    .line 37
    move-result-object p1

    .line 38
    .line 39
    sget-object v0, Lio/ktor/client/statement/b;->Phases:Lio/ktor/client/statement/b$a;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Lio/ktor/client/statement/b$a;->a()Lio/ktor/util/pipeline/h;

    .line 43
    move-result-object v0

    .line 44
    .line 45
    new-instance v1, Lio/ktor/client/plugins/a$c;

    .line 46
    .line 47
    .line 48
    invoke-direct {v1, v3}, Lio/ktor/client/plugins/a$c;-><init>(Lkotlin/coroutines/d;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, v0, v1}, Lio/ktor/util/pipeline/d;->l(Lio/ktor/util/pipeline/h;Le8/q;)V

    .line 52
    return-void
.end method
