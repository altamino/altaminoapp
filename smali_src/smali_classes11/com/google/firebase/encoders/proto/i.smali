.class Lcom/google/firebase/encoders/proto/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj4/g;


# instance fields
.field private encoded:Z

.field private field:Lj4/c;

.field private final objEncoderCtx:Lcom/google/firebase/encoders/proto/f;

.field private skipDefault:Z


# direct methods
.method constructor <init>(Lcom/google/firebase/encoders/proto/f;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    iput-boolean v0, p0, Lcom/google/firebase/encoders/proto/i;->encoded:Z

    .line 7
    .line 8
    iput-boolean v0, p0, Lcom/google/firebase/encoders/proto/i;->skipDefault:Z

    .line 9
    .line 10
    iput-object p1, p0, Lcom/google/firebase/encoders/proto/i;->objEncoderCtx:Lcom/google/firebase/encoders/proto/f;

    .line 11
    return-void
.end method

.method private c()V
    .locals 2

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/google/firebase/encoders/proto/i;->encoded:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    const/4 v0, 0x1

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/google/firebase/encoders/proto/i;->encoded:Z

    .line 8
    return-void

    .line 9
    .line 10
    :cond_0
    new-instance v0, Lj4/b;

    .line 11
    .line 12
    const-string v1, "Cannot encode a second value in the ValueEncoderContext"

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, v1}, Lj4/b;-><init>(Ljava/lang/String;)V

    .line 16
    throw v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lj4/g;
    .locals 3
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
    invoke-direct {p0}, Lcom/google/firebase/encoders/proto/i;->c()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/firebase/encoders/proto/i;->objEncoderCtx:Lcom/google/firebase/encoders/proto/f;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/google/firebase/encoders/proto/i;->field:Lj4/c;

    .line 8
    .line 9
    iget-boolean v2, p0, Lcom/google/firebase/encoders/proto/i;->skipDefault:Z

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1, p1, v2}, Lcom/google/firebase/encoders/proto/f;->o(Lj4/c;Ljava/lang/Object;Z)Lj4/e;

    .line 13
    return-object p0
.end method

.method public b(Z)Lj4/g;
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
    invoke-direct {p0}, Lcom/google/firebase/encoders/proto/i;->c()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/firebase/encoders/proto/i;->objEncoderCtx:Lcom/google/firebase/encoders/proto/f;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/google/firebase/encoders/proto/i;->field:Lj4/c;

    .line 8
    .line 9
    iget-boolean v2, p0, Lcom/google/firebase/encoders/proto/i;->skipDefault:Z

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1, p1, v2}, Lcom/google/firebase/encoders/proto/f;->l(Lj4/c;ZZ)Lcom/google/firebase/encoders/proto/f;

    .line 13
    return-object p0
.end method

.method d(Lj4/c;Z)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/firebase/encoders/proto/i;->encoded:Z

    iput-object p1, p0, Lcom/google/firebase/encoders/proto/i;->field:Lj4/c;

    iput-boolean p2, p0, Lcom/google/firebase/encoders/proto/i;->skipDefault:Z

    return-void
.end method
