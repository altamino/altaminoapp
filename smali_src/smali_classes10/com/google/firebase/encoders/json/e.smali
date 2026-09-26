.class final Lcom/google/firebase/encoders/json/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj4/e;
.implements Lj4/g;


# instance fields
.field private active:Z

.field private childContext:Lcom/google/firebase/encoders/json/e;

.field private final fallbackEncoder:Lj4/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj4/d<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final ignoreNullValues:Z

.field private final jsonWriter:Landroid/util/JsonWriter;

.field private final objectEncoders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lj4/d<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final valueEncoders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lj4/f<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/io/Writer;Ljava/util/Map;Ljava/util/Map;Lj4/d;Z)V
    .locals 1
    .param p1    # Ljava/io/Writer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Writer;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lj4/d<",
            "*>;>;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lj4/f<",
            "*>;>;",
            "Lj4/d<",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    iput-object v0, p0, Lcom/google/firebase/encoders/json/e;->childContext:Lcom/google/firebase/encoders/json/e;

    .line 7
    const/4 v0, 0x1

    .line 8
    .line 9
    iput-boolean v0, p0, Lcom/google/firebase/encoders/json/e;->active:Z

    .line 10
    .line 11
    new-instance v0, Landroid/util/JsonWriter;

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, p1}, Landroid/util/JsonWriter;-><init>(Ljava/io/Writer;)V

    .line 15
    .line 16
    iput-object v0, p0, Lcom/google/firebase/encoders/json/e;->jsonWriter:Landroid/util/JsonWriter;

    .line 17
    .line 18
    iput-object p2, p0, Lcom/google/firebase/encoders/json/e;->objectEncoders:Ljava/util/Map;

    .line 19
    .line 20
    iput-object p3, p0, Lcom/google/firebase/encoders/json/e;->valueEncoders:Ljava/util/Map;

    .line 21
    .line 22
    iput-object p4, p0, Lcom/google/firebase/encoders/json/e;->fallbackEncoder:Lj4/d;

    .line 23
    .line 24
    iput-boolean p5, p0, Lcom/google/firebase/encoders/json/e;->ignoreNullValues:Z

    .line 25
    return-void
.end method

.method private t(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    instance-of v0, p1, Ljava/util/Collection;

    .line 15
    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    instance-of v0, p1, Ljava/util/Date;

    .line 19
    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    instance-of v0, p1, Ljava/lang/Enum;

    .line 23
    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    instance-of p1, p1, Ljava/lang/Number;

    .line 27
    .line 28
    if-eqz p1, :cond_0

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 p1, 0x0

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 33
    :goto_1
    return p1
.end method

.method private w(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/encoders/json/e;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lj4/b;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/firebase/encoders/json/e;->y()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/firebase/encoders/json/e;->jsonWriter:Landroid/util/JsonWriter;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 9
    .line 10
    if-nez p2, :cond_0

    .line 11
    .line 12
    iget-object p1, p0, Lcom/google/firebase/encoders/json/e;->jsonWriter:Landroid/util/JsonWriter;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/util/JsonWriter;->nullValue()Landroid/util/JsonWriter;

    .line 16
    return-object p0

    .line 17
    :cond_0
    const/4 p1, 0x0

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, p2, p1}, Lcom/google/firebase/encoders/json/e;->k(Ljava/lang/Object;Z)Lcom/google/firebase/encoders/json/e;

    .line 21
    move-result-object p1

    .line 22
    return-object p1
.end method

.method private x(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/encoders/json/e;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lj4/b;
        }
    .end annotation

    .line 1
    .line 2
    if-nez p2, :cond_0

    .line 3
    return-object p0

    .line 4
    .line 5
    .line 6
    :cond_0
    invoke-direct {p0}, Lcom/google/firebase/encoders/json/e;->y()V

    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/firebase/encoders/json/e;->jsonWriter:Landroid/util/JsonWriter;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 12
    const/4 p1, 0x0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p2, p1}, Lcom/google/firebase/encoders/json/e;->k(Ljava/lang/Object;Z)Lcom/google/firebase/encoders/json/e;

    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method private y()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/google/firebase/encoders/json/e;->active:Z

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/firebase/encoders/json/e;->childContext:Lcom/google/firebase/encoders/json/e;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-direct {v0}, Lcom/google/firebase/encoders/json/e;->y()V

    .line 12
    .line 13
    iget-object v0, p0, Lcom/google/firebase/encoders/json/e;->childContext:Lcom/google/firebase/encoders/json/e;

    .line 14
    const/4 v1, 0x0

    .line 15
    .line 16
    iput-boolean v1, v0, Lcom/google/firebase/encoders/json/e;->active:Z

    .line 17
    const/4 v0, 0x0

    .line 18
    .line 19
    iput-object v0, p0, Lcom/google/firebase/encoders/json/e;->childContext:Lcom/google/firebase/encoders/json/e;

    .line 20
    .line 21
    iget-object v0, p0, Lcom/google/firebase/encoders/json/e;->jsonWriter:Landroid/util/JsonWriter;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    .line 25
    :cond_0
    return-void

    .line 26
    .line 27
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 28
    .line 29
    const-string v1, "Parent context used since this context was created. Cannot use this context anymore."

    .line 30
    .line 31
    .line 32
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 33
    throw v0
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/String;)Lj4/g;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/google/firebase/encoders/json/e;->l(Ljava/lang/String;)Lcom/google/firebase/encoders/json/e;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic b(Z)Lj4/g;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/google/firebase/encoders/json/e;->r(Z)Lcom/google/firebase/encoders/json/e;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public c(Lj4/c;Ljava/lang/Object;)Lj4/e;
    .locals 0
    .param p1    # Lj4/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lj4/c;->b()Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/encoders/json/e;->p(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/encoders/json/e;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public d(Lj4/c;D)Lj4/e;
    .locals 0
    .param p1    # Lj4/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lj4/c;->b()Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/firebase/encoders/json/e;->m(Ljava/lang/String;D)Lcom/google/firebase/encoders/json/e;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public e(Lj4/c;J)Lj4/e;
    .locals 0
    .param p1    # Lj4/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lj4/c;->b()Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/firebase/encoders/json/e;->o(Ljava/lang/String;J)Lcom/google/firebase/encoders/json/e;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public f(Lj4/c;I)Lj4/e;
    .locals 0
    .param p1    # Lj4/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lj4/c;->b()Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/encoders/json/e;->n(Ljava/lang/String;I)Lcom/google/firebase/encoders/json/e;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public g(Lj4/c;Z)Lj4/e;
    .locals 0
    .param p1    # Lj4/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lj4/c;->b()Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/encoders/json/e;->q(Ljava/lang/String;Z)Lcom/google/firebase/encoders/json/e;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public h(D)Lcom/google/firebase/encoders/json/e;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/firebase/encoders/json/e;->y()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/firebase/encoders/json/e;->jsonWriter:Landroid/util/JsonWriter;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1, p2}, Landroid/util/JsonWriter;->value(D)Landroid/util/JsonWriter;

    .line 9
    return-object p0
.end method

.method public i(I)Lcom/google/firebase/encoders/json/e;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/firebase/encoders/json/e;->y()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/firebase/encoders/json/e;->jsonWriter:Landroid/util/JsonWriter;

    .line 6
    int-to-long v1, p1

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    .line 10
    return-object p0
.end method

.method public j(J)Lcom/google/firebase/encoders/json/e;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/firebase/encoders/json/e;->y()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/firebase/encoders/json/e;->jsonWriter:Landroid/util/JsonWriter;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1, p2}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    .line 9
    return-object p0
.end method

.method k(Ljava/lang/Object;Z)Lcom/google/firebase/encoders/json/e;
    .locals 5
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    .line 4
    if-eqz p2, :cond_1

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p1}, Lcom/google/firebase/encoders/json/e;->t(Ljava/lang/Object;)Z

    .line 8
    move-result v2

    .line 9
    .line 10
    if-eqz v2, :cond_1

    .line 11
    .line 12
    new-instance p2, Lj4/b;

    .line 13
    .line 14
    new-array v0, v0, [Ljava/lang/Object;

    .line 15
    .line 16
    if-nez p1, :cond_0

    .line 17
    const/4 p1, 0x0

    .line 18
    goto :goto_0

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    :goto_0
    aput-object p1, v0, v1

    .line 25
    .line 26
    const-string p1, "%s cannot be encoded inline"

    .line 27
    .line 28
    .line 29
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 30
    move-result-object p1

    .line 31
    .line 32
    .line 33
    invoke-direct {p2, p1}, Lj4/b;-><init>(Ljava/lang/String;)V

    .line 34
    throw p2

    .line 35
    .line 36
    :cond_1
    if-nez p1, :cond_2

    .line 37
    .line 38
    iget-object p1, p0, Lcom/google/firebase/encoders/json/e;->jsonWriter:Landroid/util/JsonWriter;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Landroid/util/JsonWriter;->nullValue()Landroid/util/JsonWriter;

    .line 42
    return-object p0

    .line 43
    .line 44
    :cond_2
    instance-of v2, p1, Ljava/lang/Number;

    .line 45
    .line 46
    if-eqz v2, :cond_3

    .line 47
    .line 48
    iget-object p2, p0, Lcom/google/firebase/encoders/json/e;->jsonWriter:Landroid/util/JsonWriter;

    .line 49
    .line 50
    check-cast p1, Ljava/lang/Number;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p2, p1}, Landroid/util/JsonWriter;->value(Ljava/lang/Number;)Landroid/util/JsonWriter;

    .line 54
    return-object p0

    .line 55
    .line 56
    .line 57
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    move-result-object v2

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    .line 62
    move-result v2

    .line 63
    .line 64
    if-eqz v2, :cond_b

    .line 65
    .line 66
    instance-of p2, p1, [B

    .line 67
    .line 68
    if-eqz p2, :cond_4

    .line 69
    .line 70
    check-cast p1, [B

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0, p1}, Lcom/google/firebase/encoders/json/e;->s([B)Lcom/google/firebase/encoders/json/e;

    .line 74
    move-result-object p1

    .line 75
    return-object p1

    .line 76
    .line 77
    :cond_4
    iget-object p2, p0, Lcom/google/firebase/encoders/json/e;->jsonWriter:Landroid/util/JsonWriter;

    .line 78
    .line 79
    .line 80
    invoke-virtual {p2}, Landroid/util/JsonWriter;->beginArray()Landroid/util/JsonWriter;

    .line 81
    .line 82
    instance-of p2, p1, [I

    .line 83
    .line 84
    if-eqz p2, :cond_5

    .line 85
    .line 86
    check-cast p1, [I

    .line 87
    array-length p2, p1

    .line 88
    .line 89
    :goto_1
    if-ge v1, p2, :cond_a

    .line 90
    .line 91
    aget v0, p1, v1

    .line 92
    .line 93
    iget-object v2, p0, Lcom/google/firebase/encoders/json/e;->jsonWriter:Landroid/util/JsonWriter;

    .line 94
    int-to-long v3, v0

    .line 95
    .line 96
    .line 97
    invoke-virtual {v2, v3, v4}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    .line 98
    .line 99
    add-int/lit8 v1, v1, 0x1

    .line 100
    goto :goto_1

    .line 101
    .line 102
    :cond_5
    instance-of p2, p1, [J

    .line 103
    .line 104
    if-eqz p2, :cond_6

    .line 105
    .line 106
    check-cast p1, [J

    .line 107
    array-length p2, p1

    .line 108
    .line 109
    :goto_2
    if-ge v1, p2, :cond_a

    .line 110
    .line 111
    aget-wide v2, p1, v1

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0, v2, v3}, Lcom/google/firebase/encoders/json/e;->j(J)Lcom/google/firebase/encoders/json/e;

    .line 115
    .line 116
    add-int/lit8 v1, v1, 0x1

    .line 117
    goto :goto_2

    .line 118
    .line 119
    :cond_6
    instance-of p2, p1, [D

    .line 120
    .line 121
    if-eqz p2, :cond_7

    .line 122
    .line 123
    check-cast p1, [D

    .line 124
    array-length p2, p1

    .line 125
    .line 126
    :goto_3
    if-ge v1, p2, :cond_a

    .line 127
    .line 128
    aget-wide v2, p1, v1

    .line 129
    .line 130
    iget-object v0, p0, Lcom/google/firebase/encoders/json/e;->jsonWriter:Landroid/util/JsonWriter;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v0, v2, v3}, Landroid/util/JsonWriter;->value(D)Landroid/util/JsonWriter;

    .line 134
    .line 135
    add-int/lit8 v1, v1, 0x1

    .line 136
    goto :goto_3

    .line 137
    .line 138
    :cond_7
    instance-of p2, p1, [Z

    .line 139
    .line 140
    if-eqz p2, :cond_8

    .line 141
    .line 142
    check-cast p1, [Z

    .line 143
    array-length p2, p1

    .line 144
    .line 145
    :goto_4
    if-ge v1, p2, :cond_a

    .line 146
    .line 147
    aget-boolean v0, p1, v1

    .line 148
    .line 149
    iget-object v2, p0, Lcom/google/firebase/encoders/json/e;->jsonWriter:Landroid/util/JsonWriter;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v2, v0}, Landroid/util/JsonWriter;->value(Z)Landroid/util/JsonWriter;

    .line 153
    .line 154
    add-int/lit8 v1, v1, 0x1

    .line 155
    goto :goto_4

    .line 156
    .line 157
    :cond_8
    instance-of p2, p1, [Ljava/lang/Number;

    .line 158
    .line 159
    if-eqz p2, :cond_9

    .line 160
    .line 161
    check-cast p1, [Ljava/lang/Number;

    .line 162
    array-length p2, p1

    .line 163
    move v0, v1

    .line 164
    .line 165
    :goto_5
    if-ge v0, p2, :cond_a

    .line 166
    .line 167
    aget-object v2, p1, v0

    .line 168
    .line 169
    .line 170
    invoke-virtual {p0, v2, v1}, Lcom/google/firebase/encoders/json/e;->k(Ljava/lang/Object;Z)Lcom/google/firebase/encoders/json/e;

    .line 171
    .line 172
    add-int/lit8 v0, v0, 0x1

    .line 173
    goto :goto_5

    .line 174
    .line 175
    :cond_9
    check-cast p1, [Ljava/lang/Object;

    .line 176
    array-length p2, p1

    .line 177
    move v0, v1

    .line 178
    .line 179
    :goto_6
    if-ge v0, p2, :cond_a

    .line 180
    .line 181
    aget-object v2, p1, v0

    .line 182
    .line 183
    .line 184
    invoke-virtual {p0, v2, v1}, Lcom/google/firebase/encoders/json/e;->k(Ljava/lang/Object;Z)Lcom/google/firebase/encoders/json/e;

    .line 185
    .line 186
    add-int/lit8 v0, v0, 0x1

    .line 187
    goto :goto_6

    .line 188
    .line 189
    :cond_a
    iget-object p1, p0, Lcom/google/firebase/encoders/json/e;->jsonWriter:Landroid/util/JsonWriter;

    .line 190
    .line 191
    .line 192
    invoke-virtual {p1}, Landroid/util/JsonWriter;->endArray()Landroid/util/JsonWriter;

    .line 193
    return-object p0

    .line 194
    .line 195
    :cond_b
    instance-of v2, p1, Ljava/util/Collection;

    .line 196
    .line 197
    if-eqz v2, :cond_d

    .line 198
    .line 199
    check-cast p1, Ljava/util/Collection;

    .line 200
    .line 201
    iget-object p2, p0, Lcom/google/firebase/encoders/json/e;->jsonWriter:Landroid/util/JsonWriter;

    .line 202
    .line 203
    .line 204
    invoke-virtual {p2}, Landroid/util/JsonWriter;->beginArray()Landroid/util/JsonWriter;

    .line 205
    .line 206
    .line 207
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 208
    move-result-object p1

    .line 209
    .line 210
    .line 211
    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 212
    move-result p2

    .line 213
    .line 214
    if-eqz p2, :cond_c

    .line 215
    .line 216
    .line 217
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 218
    move-result-object p2

    .line 219
    .line 220
    .line 221
    invoke-virtual {p0, p2, v1}, Lcom/google/firebase/encoders/json/e;->k(Ljava/lang/Object;Z)Lcom/google/firebase/encoders/json/e;

    .line 222
    goto :goto_7

    .line 223
    .line 224
    :cond_c
    iget-object p1, p0, Lcom/google/firebase/encoders/json/e;->jsonWriter:Landroid/util/JsonWriter;

    .line 225
    .line 226
    .line 227
    invoke-virtual {p1}, Landroid/util/JsonWriter;->endArray()Landroid/util/JsonWriter;

    .line 228
    return-object p0

    .line 229
    .line 230
    :cond_d
    instance-of v2, p1, Ljava/util/Map;

    .line 231
    .line 232
    if-eqz v2, :cond_f

    .line 233
    .line 234
    check-cast p1, Ljava/util/Map;

    .line 235
    .line 236
    iget-object p2, p0, Lcom/google/firebase/encoders/json/e;->jsonWriter:Landroid/util/JsonWriter;

    .line 237
    .line 238
    .line 239
    invoke-virtual {p2}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    .line 240
    .line 241
    .line 242
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 243
    move-result-object p1

    .line 244
    .line 245
    .line 246
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 247
    move-result-object p1

    .line 248
    .line 249
    .line 250
    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 251
    move-result p2

    .line 252
    .line 253
    if-eqz p2, :cond_e

    .line 254
    .line 255
    .line 256
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 257
    move-result-object p2

    .line 258
    .line 259
    check-cast p2, Ljava/util/Map$Entry;

    .line 260
    .line 261
    .line 262
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 263
    move-result-object v2

    .line 264
    :try_start_0
    move-object v3, v2

    .line 265
    .line 266
    check-cast v3, Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 270
    move-result-object p2

    .line 271
    .line 272
    .line 273
    invoke-virtual {p0, v3, p2}, Lcom/google/firebase/encoders/json/e;->p(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/encoders/json/e;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 274
    goto :goto_8

    .line 275
    :catch_0
    move-exception p1

    .line 276
    .line 277
    new-instance p2, Lj4/b;

    .line 278
    const/4 v3, 0x2

    .line 279
    .line 280
    new-array v3, v3, [Ljava/lang/Object;

    .line 281
    .line 282
    aput-object v2, v3, v1

    .line 283
    .line 284
    .line 285
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 286
    move-result-object v1

    .line 287
    .line 288
    aput-object v1, v3, v0

    .line 289
    .line 290
    const-string v0, "Only String keys are currently supported in maps, got %s of type %s instead."

    .line 291
    .line 292
    .line 293
    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 294
    move-result-object v0

    .line 295
    .line 296
    .line 297
    invoke-direct {p2, v0, p1}, Lj4/b;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 298
    throw p2

    .line 299
    .line 300
    :cond_e
    iget-object p1, p0, Lcom/google/firebase/encoders/json/e;->jsonWriter:Landroid/util/JsonWriter;

    .line 301
    .line 302
    .line 303
    invoke-virtual {p1}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    .line 304
    return-object p0

    .line 305
    .line 306
    :cond_f
    iget-object v0, p0, Lcom/google/firebase/encoders/json/e;->objectEncoders:Ljava/util/Map;

    .line 307
    .line 308
    .line 309
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 310
    move-result-object v1

    .line 311
    .line 312
    .line 313
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    move-result-object v0

    .line 315
    .line 316
    check-cast v0, Lj4/d;

    .line 317
    .line 318
    if-eqz v0, :cond_10

    .line 319
    .line 320
    .line 321
    invoke-virtual {p0, v0, p1, p2}, Lcom/google/firebase/encoders/json/e;->v(Lj4/d;Ljava/lang/Object;Z)Lcom/google/firebase/encoders/json/e;

    .line 322
    move-result-object p1

    .line 323
    return-object p1

    .line 324
    .line 325
    :cond_10
    iget-object v0, p0, Lcom/google/firebase/encoders/json/e;->valueEncoders:Ljava/util/Map;

    .line 326
    .line 327
    .line 328
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 329
    move-result-object v1

    .line 330
    .line 331
    .line 332
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    move-result-object v0

    .line 334
    .line 335
    check-cast v0, Lj4/f;

    .line 336
    .line 337
    if-eqz v0, :cond_11

    .line 338
    .line 339
    .line 340
    invoke-interface {v0, p1, p0}, Lj4/f;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 341
    return-object p0

    .line 342
    .line 343
    :cond_11
    instance-of v0, p1, Ljava/lang/Enum;

    .line 344
    .line 345
    if-eqz v0, :cond_13

    .line 346
    .line 347
    instance-of p2, p1, Lcom/google/firebase/encoders/json/f;

    .line 348
    .line 349
    if-eqz p2, :cond_12

    .line 350
    .line 351
    check-cast p1, Lcom/google/firebase/encoders/json/f;

    .line 352
    .line 353
    .line 354
    invoke-interface {p1}, Lcom/google/firebase/encoders/json/f;->getNumber()I

    .line 355
    move-result p1

    .line 356
    .line 357
    .line 358
    invoke-virtual {p0, p1}, Lcom/google/firebase/encoders/json/e;->i(I)Lcom/google/firebase/encoders/json/e;

    .line 359
    goto :goto_9

    .line 360
    .line 361
    :cond_12
    check-cast p1, Ljava/lang/Enum;

    .line 362
    .line 363
    .line 364
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 365
    move-result-object p1

    .line 366
    .line 367
    .line 368
    invoke-virtual {p0, p1}, Lcom/google/firebase/encoders/json/e;->l(Ljava/lang/String;)Lcom/google/firebase/encoders/json/e;

    .line 369
    :goto_9
    return-object p0

    .line 370
    .line 371
    :cond_13
    iget-object v0, p0, Lcom/google/firebase/encoders/json/e;->fallbackEncoder:Lj4/d;

    .line 372
    .line 373
    .line 374
    invoke-virtual {p0, v0, p1, p2}, Lcom/google/firebase/encoders/json/e;->v(Lj4/d;Ljava/lang/Object;Z)Lcom/google/firebase/encoders/json/e;

    .line 375
    move-result-object p1

    .line 376
    return-object p1
.end method

.method public l(Ljava/lang/String;)Lcom/google/firebase/encoders/json/e;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/firebase/encoders/json/e;->y()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/firebase/encoders/json/e;->jsonWriter:Landroid/util/JsonWriter;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 9
    return-object p0
.end method

.method public m(Ljava/lang/String;D)Lcom/google/firebase/encoders/json/e;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/firebase/encoders/json/e;->y()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/firebase/encoders/json/e;->jsonWriter:Landroid/util/JsonWriter;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p2, p3}, Lcom/google/firebase/encoders/json/e;->h(D)Lcom/google/firebase/encoders/json/e;

    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public n(Ljava/lang/String;I)Lcom/google/firebase/encoders/json/e;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/firebase/encoders/json/e;->y()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/firebase/encoders/json/e;->jsonWriter:Landroid/util/JsonWriter;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p2}, Lcom/google/firebase/encoders/json/e;->i(I)Lcom/google/firebase/encoders/json/e;

    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public o(Ljava/lang/String;J)Lcom/google/firebase/encoders/json/e;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/firebase/encoders/json/e;->y()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/firebase/encoders/json/e;->jsonWriter:Landroid/util/JsonWriter;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p2, p3}, Lcom/google/firebase/encoders/json/e;->j(J)Lcom/google/firebase/encoders/json/e;

    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public p(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/encoders/json/e;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/google/firebase/encoders/json/e;->ignoreNullValues:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/encoders/json/e;->x(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/encoders/json/e;

    .line 8
    move-result-object p1

    .line 9
    return-object p1

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/encoders/json/e;->w(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/encoders/json/e;

    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

.method public q(Ljava/lang/String;Z)Lcom/google/firebase/encoders/json/e;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/firebase/encoders/json/e;->y()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/firebase/encoders/json/e;->jsonWriter:Landroid/util/JsonWriter;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p2}, Lcom/google/firebase/encoders/json/e;->r(Z)Lcom/google/firebase/encoders/json/e;

    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public r(Z)Lcom/google/firebase/encoders/json/e;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/firebase/encoders/json/e;->y()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/firebase/encoders/json/e;->jsonWriter:Landroid/util/JsonWriter;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Landroid/util/JsonWriter;->value(Z)Landroid/util/JsonWriter;

    .line 9
    return-object p0
.end method

.method public s([B)Lcom/google/firebase/encoders/json/e;
    .locals 2
    .param p1    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/firebase/encoders/json/e;->y()V

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Lcom/google/firebase/encoders/json/e;->jsonWriter:Landroid/util/JsonWriter;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/util/JsonWriter;->nullValue()Landroid/util/JsonWriter;

    .line 11
    goto :goto_0

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/encoders/json/e;->jsonWriter:Landroid/util/JsonWriter;

    .line 14
    const/4 v1, 0x2

    .line 15
    .line 16
    .line 17
    invoke-static {p1, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p1}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 22
    :goto_0
    return-object p0
.end method

.method u()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/firebase/encoders/json/e;->y()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/firebase/encoders/json/e;->jsonWriter:Landroid/util/JsonWriter;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/util/JsonWriter;->flush()V

    .line 9
    return-void
.end method

.method v(Lj4/d;Ljava/lang/Object;Z)Lcom/google/firebase/encoders/json/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj4/d<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            "Z)",
            "Lcom/google/firebase/encoders/json/e;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    if-nez p3, :cond_0

    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/firebase/encoders/json/e;->jsonWriter:Landroid/util/JsonWriter;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-interface {p1, p2, p0}, Lj4/d;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 11
    .line 12
    if-nez p3, :cond_1

    .line 13
    .line 14
    iget-object p1, p0, Lcom/google/firebase/encoders/json/e;->jsonWriter:Landroid/util/JsonWriter;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    .line 18
    :cond_1
    return-object p0
.end method
