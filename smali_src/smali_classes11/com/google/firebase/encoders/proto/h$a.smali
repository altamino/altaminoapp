.class public final Lcom/google/firebase/encoders/proto/h$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk4/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/encoders/proto/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lk4/b<",
        "Lcom/google/firebase/encoders/proto/h$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_FALLBACK_ENCODER:Lj4/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj4/d<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private fallbackEncoder:Lj4/d;
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
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/google/firebase/encoders/proto/g;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/google/firebase/encoders/proto/g;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lcom/google/firebase/encoders/proto/h$a;->DEFAULT_FALLBACK_ENCODER:Lj4/d;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Ljava/util/HashMap;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/google/firebase/encoders/proto/h$a;->objectEncoders:Ljava/util/Map;

    .line 11
    .line 12
    new-instance v0, Ljava/util/HashMap;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 16
    .line 17
    iput-object v0, p0, Lcom/google/firebase/encoders/proto/h$a;->valueEncoders:Ljava/util/Map;

    .line 18
    .line 19
    sget-object v0, Lcom/google/firebase/encoders/proto/h$a;->DEFAULT_FALLBACK_ENCODER:Lj4/d;

    .line 20
    .line 21
    iput-object v0, p0, Lcom/google/firebase/encoders/proto/h$a;->fallbackEncoder:Lj4/d;

    .line 22
    return-void
.end method

.method public static synthetic b(Ljava/lang/Object;Lj4/e;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/firebase/encoders/proto/h$a;->e(Ljava/lang/Object;Lj4/e;)V

    return-void
.end method

.method private static synthetic e(Ljava/lang/Object;Lj4/e;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    new-instance p1, Lj4/b;

    .line 3
    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    const-string v1, "Couldn\'t find encoder for type "

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    move-result-object p0

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 20
    move-result-object p0

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    move-result-object p0

    .line 28
    .line 29
    .line 30
    invoke-direct {p1, p0}, Lj4/b;-><init>(Ljava/lang/String;)V

    .line 31
    throw p1
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Class;Lj4/d;)Lk4/b;
    .locals 0
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lj4/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/encoders/proto/h$a;->f(Ljava/lang/Class;Lj4/d;)Lcom/google/firebase/encoders/proto/h$a;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public c()Lcom/google/firebase/encoders/proto/h;
    .locals 4

    .line 1
    .line 2
    new-instance v0, Lcom/google/firebase/encoders/proto/h;

    .line 3
    .line 4
    new-instance v1, Ljava/util/HashMap;

    .line 5
    .line 6
    iget-object v2, p0, Lcom/google/firebase/encoders/proto/h$a;->objectEncoders:Ljava/util/Map;

    .line 7
    .line 8
    .line 9
    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 10
    .line 11
    new-instance v2, Ljava/util/HashMap;

    .line 12
    .line 13
    iget-object v3, p0, Lcom/google/firebase/encoders/proto/h$a;->valueEncoders:Ljava/util/Map;

    .line 14
    .line 15
    .line 16
    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 17
    .line 18
    iget-object v3, p0, Lcom/google/firebase/encoders/proto/h$a;->fallbackEncoder:Lj4/d;

    .line 19
    .line 20
    .line 21
    invoke-direct {v0, v1, v2, v3}, Lcom/google/firebase/encoders/proto/h;-><init>(Ljava/util/Map;Ljava/util/Map;Lj4/d;)V

    .line 22
    return-object v0
.end method

.method public d(Lk4/a;)Lcom/google/firebase/encoders/proto/h$a;
    .locals 0
    .param p1    # Lk4/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-interface {p1, p0}, Lk4/a;->a(Lk4/b;)V

    .line 4
    return-object p0
.end method

.method public f(Ljava/lang/Class;Lj4/d;)Lcom/google/firebase/encoders/proto/h$a;
    .locals 1
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lj4/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TU;>;",
            "Lj4/d<",
            "-TU;>;)",
            "Lcom/google/firebase/encoders/proto/h$a;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/encoders/proto/h$a;->objectEncoders:Ljava/util/Map;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    iget-object p2, p0, Lcom/google/firebase/encoders/proto/h$a;->valueEncoders:Ljava/util/Map;

    .line 8
    .line 9
    .line 10
    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    return-object p0
.end method
