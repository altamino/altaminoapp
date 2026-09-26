.class public final Lio/ktor/client/plugins/g$a$a;
.super Lk7/b$a;
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

.field private final contentLength:J

.field private final contentType:Lio/ktor/http/c;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/ktor/http/c;Ljava/lang/Object;)V
    .locals 0

    .line 1
    .line 2
    iput-object p2, p0, Lio/ktor/client/plugins/g$a$a;->$body:Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Lk7/b$a;-><init>()V

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    sget-object p1, Lio/ktor/http/c$a;->INSTANCE:Lio/ktor/http/c$a;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Lio/ktor/http/c$a;->a()Lio/ktor/http/c;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    :cond_0
    iput-object p1, p0, Lio/ktor/client/plugins/g$a$a;->contentType:Lio/ktor/http/c;

    .line 16
    .line 17
    check-cast p2, [B

    .line 18
    array-length p1, p2

    .line 19
    int-to-long p1, p1

    .line 20
    .line 21
    iput-wide p1, p0, Lio/ktor/client/plugins/g$a$a;->contentLength:J

    .line 22
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Long;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-wide v0, p0, Lio/ktor/client/plugins/g$a$a;->contentLength:J

    .line 3
    .line 4
    .line 5
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public b()Lio/ktor/http/c;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/ktor/client/plugins/g$a$a;->contentType:Lio/ktor/http/c;

    return-object v0
.end method

.method public d()[B
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lio/ktor/client/plugins/g$a$a;->$body:Ljava/lang/Object;

    .line 3
    .line 4
    check-cast v0, [B

    .line 5
    return-object v0
.end method
