.class public final Lio/ktor/client/plugins/g$a$b;
.super Lk7/b$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/client/plugins/g$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $body:Ljava/lang/Object;

.field private final contentLength:Ljava/lang/Long;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final contentType:Lio/ktor/http/c;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/ktor/util/pipeline/e;Lio/ktor/http/c;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/util/pipeline/e<",
            "Ljava/lang/Object;",
            "Li7/d;",
            ">;",
            "Lio/ktor/http/c;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p3, p0, Lio/ktor/client/plugins/g$a$b;->$body:Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Lk7/b$d;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lio/ktor/util/pipeline/e;->b()Ljava/lang/Object;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    check-cast p1, Li7/d;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Li7/d;->getHeaders()Lio/ktor/http/l;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    sget-object p3, Lio/ktor/http/o;->INSTANCE:Lio/ktor/http/o;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p3}, Lio/ktor/http/o;->g()Ljava/lang/String;

    .line 21
    move-result-object p3

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, p3}, Lio/ktor/util/v;->h(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    if-eqz p1, :cond_0

    .line 28
    .line 29
    .line 30
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 31
    move-result-wide v0

    .line 32
    .line 33
    .line 34
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 35
    move-result-object p1

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const/4 p1, 0x0

    .line 38
    .line 39
    :goto_0
    iput-object p1, p0, Lio/ktor/client/plugins/g$a$b;->contentLength:Ljava/lang/Long;

    .line 40
    .line 41
    if-nez p2, :cond_1

    .line 42
    .line 43
    sget-object p1, Lio/ktor/http/c$a;->INSTANCE:Lio/ktor/http/c$a;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1}, Lio/ktor/http/c$a;->a()Lio/ktor/http/c;

    .line 47
    move-result-object p2

    .line 48
    .line 49
    :cond_1
    iput-object p2, p0, Lio/ktor/client/plugins/g$a$b;->contentType:Lio/ktor/http/c;

    .line 50
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Long;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/ktor/client/plugins/g$a$b;->contentLength:Ljava/lang/Long;

    return-object v0
.end method

.method public b()Lio/ktor/http/c;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/ktor/client/plugins/g$a$b;->contentType:Lio/ktor/http/c;

    return-object v0
.end method

.method public d()Lio/ktor/utils/io/g;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lio/ktor/client/plugins/g$a$b;->$body:Ljava/lang/Object;

    .line 3
    .line 4
    check-cast v0, Lio/ktor/utils/io/g;

    .line 5
    return-object v0
.end method
