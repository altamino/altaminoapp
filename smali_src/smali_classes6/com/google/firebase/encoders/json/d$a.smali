.class Lcom/google/firebase/encoders/json/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj4/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/encoders/json/d;->i()Lj4/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/firebase/encoders/json/d;


# direct methods
.method constructor <init>(Lcom/google/firebase/encoders/json/d;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/google/firebase/encoders/json/d$a;->this$0:Lcom/google/firebase/encoders/json/d;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/io/Writer;)V
    .locals 7
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/Writer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    new-instance v6, Lcom/google/firebase/encoders/json/e;

    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/firebase/encoders/json/d$a;->this$0:Lcom/google/firebase/encoders/json/d;

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Lcom/google/firebase/encoders/json/d;->e(Lcom/google/firebase/encoders/json/d;)Ljava/util/Map;

    .line 8
    move-result-object v2

    .line 9
    .line 10
    iget-object v0, p0, Lcom/google/firebase/encoders/json/d$a;->this$0:Lcom/google/firebase/encoders/json/d;

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lcom/google/firebase/encoders/json/d;->f(Lcom/google/firebase/encoders/json/d;)Ljava/util/Map;

    .line 14
    move-result-object v3

    .line 15
    .line 16
    iget-object v0, p0, Lcom/google/firebase/encoders/json/d$a;->this$0:Lcom/google/firebase/encoders/json/d;

    .line 17
    .line 18
    .line 19
    invoke-static {v0}, Lcom/google/firebase/encoders/json/d;->g(Lcom/google/firebase/encoders/json/d;)Lj4/d;

    .line 20
    move-result-object v4

    .line 21
    .line 22
    iget-object v0, p0, Lcom/google/firebase/encoders/json/d$a;->this$0:Lcom/google/firebase/encoders/json/d;

    .line 23
    .line 24
    .line 25
    invoke-static {v0}, Lcom/google/firebase/encoders/json/d;->h(Lcom/google/firebase/encoders/json/d;)Z

    .line 26
    move-result v5

    .line 27
    move-object v0, v6

    .line 28
    move-object v1, p2

    .line 29
    .line 30
    .line 31
    invoke-direct/range {v0 .. v5}, Lcom/google/firebase/encoders/json/e;-><init>(Ljava/io/Writer;Ljava/util/Map;Ljava/util/Map;Lj4/d;Z)V

    .line 32
    const/4 p2, 0x0

    .line 33
    .line 34
    .line 35
    invoke-virtual {v6, p1, p2}, Lcom/google/firebase/encoders/json/e;->k(Ljava/lang/Object;Z)Lcom/google/firebase/encoders/json/e;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v6}, Lcom/google/firebase/encoders/json/e;->u()V

    .line 39
    return-void
.end method

.method public b(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    new-instance v0, Ljava/io/StringWriter;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 6
    .line 7
    .line 8
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/encoders/json/d$a;->a(Ljava/lang/Object;Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    .line 11
    :catch_0
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method
