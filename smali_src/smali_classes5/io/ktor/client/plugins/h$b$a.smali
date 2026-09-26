.class public final Lio/ktor/client/plugins/h$b$a;
.super Ljava/io/InputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/client/plugins/h$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $$this$intercept:Lio/ktor/util/pipeline/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/ktor/util/pipeline/e<",
            "Lio/ktor/client/statement/d;",
            "Lio/ktor/client/call/b;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $stream:Ljava/io/InputStream;


# direct methods
.method constructor <init>(Ljava/io/InputStream;Lio/ktor/util/pipeline/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Lio/ktor/util/pipeline/e<",
            "Lio/ktor/client/statement/d;",
            "Lio/ktor/client/call/b;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lio/ktor/client/plugins/h$b$a;->$stream:Ljava/io/InputStream;

    .line 3
    .line 4
    iput-object p2, p0, Lio/ktor/client/plugins/h$b$a;->$$this$intercept:Lio/ktor/util/pipeline/e;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public available()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lio/ktor/client/plugins/h$b$a;->$stream:Ljava/io/InputStream;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public close()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Ljava/io/InputStream;->close()V

    .line 4
    .line 5
    iget-object v0, p0, Lio/ktor/client/plugins/h$b$a;->$stream:Ljava/io/InputStream;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 9
    .line 10
    iget-object v0, p0, Lio/ktor/client/plugins/h$b$a;->$$this$intercept:Lio/ktor/util/pipeline/e;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lio/ktor/util/pipeline/e;->b()Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    check-cast v0, Lio/ktor/client/call/b;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Lio/ktor/client/call/b;->f()Lio/ktor/client/statement/c;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    .line 23
    invoke-static {v0}, Lio/ktor/client/statement/e;->d(Lio/ktor/client/statement/c;)V

    .line 24
    return-void
.end method

.method public read()I
    .locals 1

    iget-object v0, p0, Lio/ktor/client/plugins/h$b$a;->$stream:Ljava/io/InputStream;

    .line 1
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 1
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "b"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/ktor/client/plugins/h$b$a;->$stream:Ljava/io/InputStream;

    .line 2
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    return p1
.end method
