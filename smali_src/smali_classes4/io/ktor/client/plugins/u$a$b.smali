.class final Lio/ktor/client/plugins/u$a$b;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/client/plugins/u$a;->b(ZLe8/p;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/p<",
        "Lio/ktor/client/plugins/u$b;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $block:Le8/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/p<",
            "Lio/ktor/client/plugins/u$b;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $respectRetryAfterHeader:Z


# direct methods
.method constructor <init>(ZLe8/p;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Le8/p<",
            "-",
            "Lio/ktor/client/plugins/u$b;",
            "-",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lio/ktor/client/plugins/u$a$b;->$respectRetryAfterHeader:Z

    iput-object p2, p0, Lio/ktor/client/plugins/u$a$b;->$block:Le8/p;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lio/ktor/client/plugins/u$b;I)Ljava/lang/Long;
    .locals 4
    .param p1    # Lio/ktor/client/plugins/u$b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "$this$null"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-boolean v0, p0, Lio/ktor/client/plugins/u$a$b;->$respectRetryAfterHeader:Z

    .line 8
    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Lio/ktor/client/plugins/u$b;->a()Lio/ktor/client/statement/c;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-interface {v0}, Lio/ktor/http/q;->getHeaders()Lio/ktor/http/k;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    sget-object v1, Lio/ktor/http/o;->INSTANCE:Lio/ktor/http/o;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Lio/ktor/http/o;->t()Ljava/lang/String;

    .line 27
    move-result-object v1

    .line 28
    .line 29
    .line 30
    invoke-interface {v0, v1}, Lio/ktor/util/t;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    .line 36
    invoke-static {v0}, Lkotlin/text/k;->o(Ljava/lang/String;)Ljava/lang/Long;

    .line 37
    move-result-object v0

    .line 38
    .line 39
    if-eqz v0, :cond_0

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 43
    move-result-wide v0

    .line 44
    .line 45
    const/16 v2, 0x3e8

    .line 46
    int-to-long v2, v2

    .line 47
    mul-long/2addr v0, v2

    .line 48
    .line 49
    .line 50
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 51
    move-result-object v0

    .line 52
    goto :goto_0

    .line 53
    :cond_0
    const/4 v0, 0x0

    .line 54
    .line 55
    :goto_0
    iget-object v1, p0, Lio/ktor/client/plugins/u$a$b;->$block:Le8/p;

    .line 56
    .line 57
    .line 58
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 59
    move-result-object p2

    .line 60
    .line 61
    .line 62
    invoke-interface {v1, p1, p2}, Le8/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    move-result-object p1

    .line 64
    .line 65
    check-cast p1, Ljava/lang/Number;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    .line 69
    move-result-wide p1

    .line 70
    .line 71
    if-eqz v0, :cond_1

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 75
    move-result-wide v0

    .line 76
    goto :goto_1

    .line 77
    .line 78
    :cond_1
    const-wide/16 v0, 0x0

    .line 79
    .line 80
    .line 81
    :goto_1
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->max(JJ)J

    .line 82
    move-result-wide p1

    .line 83
    goto :goto_2

    .line 84
    .line 85
    :cond_2
    iget-object v0, p0, Lio/ktor/client/plugins/u$a$b;->$block:Le8/p;

    .line 86
    .line 87
    .line 88
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 89
    move-result-object p2

    .line 90
    .line 91
    .line 92
    invoke-interface {v0, p1, p2}, Le8/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    move-result-object p1

    .line 94
    .line 95
    check-cast p1, Ljava/lang/Number;

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    .line 99
    move-result-wide p1

    .line 100
    .line 101
    .line 102
    :goto_2
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 103
    move-result-object p1

    .line 104
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    check-cast p1, Lio/ktor/client/plugins/u$b;

    .line 3
    .line 4
    check-cast p2, Ljava/lang/Number;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 8
    move-result p2

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1, p2}, Lio/ktor/client/plugins/u$a$b;->a(Lio/ktor/client/plugins/u$b;I)Ljava/lang/Long;

    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method
