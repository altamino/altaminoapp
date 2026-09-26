.class public Lcom/google/firebase/encoders/proto/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/encoders/proto/h$a;
    }
.end annotation


# instance fields
.field private final fallbackEncoder:Lj4/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj4/d<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

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
.method constructor <init>(Ljava/util/Map;Ljava/util/Map;Lj4/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/google/firebase/encoders/proto/h;->objectEncoders:Ljava/util/Map;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/google/firebase/encoders/proto/h;->valueEncoders:Ljava/util/Map;

    .line 8
    .line 9
    iput-object p3, p0, Lcom/google/firebase/encoders/proto/h;->fallbackEncoder:Lj4/d;

    .line 10
    return-void
.end method

.method public static a()Lcom/google/firebase/encoders/proto/h$a;
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/google/firebase/encoders/proto/h$a;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/google/firebase/encoders/proto/h$a;-><init>()V

    .line 6
    return-object v0
.end method


# virtual methods
.method public b(Ljava/lang/Object;Ljava/io/OutputStream;)V
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/OutputStream;
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
    new-instance v0, Lcom/google/firebase/encoders/proto/f;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/google/firebase/encoders/proto/h;->objectEncoders:Ljava/util/Map;

    .line 5
    .line 6
    iget-object v2, p0, Lcom/google/firebase/encoders/proto/h;->valueEncoders:Ljava/util/Map;

    .line 7
    .line 8
    iget-object v3, p0, Lcom/google/firebase/encoders/proto/h;->fallbackEncoder:Lj4/d;

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, p2, v1, v2, v3}, Lcom/google/firebase/encoders/proto/f;-><init>(Ljava/io/OutputStream;Ljava/util/Map;Ljava/util/Map;Lj4/d;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1}, Lcom/google/firebase/encoders/proto/f;->t(Ljava/lang/Object;)Lcom/google/firebase/encoders/proto/f;

    .line 15
    return-void
.end method

.method public c(Ljava/lang/Object;)[B
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 6
    .line 7
    .line 8
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/encoders/proto/h;->b(Ljava/lang/Object;Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    .line 11
    :catch_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method
