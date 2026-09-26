.class public final Lcom/google/firebase/encoders/json/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk4/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/encoders/json/d$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lk4/b<",
        "Lcom/google/firebase/encoders/json/d;",
        ">;"
    }
.end annotation


# static fields
.field private static final BOOLEAN_ENCODER:Lj4/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj4/f<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_FALLBACK_ENCODER:Lj4/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj4/d<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final STRING_ENCODER:Lj4/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj4/f<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TIMESTAMP_ENCODER:Lcom/google/firebase/encoders/json/d$b;


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

.field private ignoreNullValues:Z

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
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/google/firebase/encoders/json/a;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/google/firebase/encoders/json/a;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lcom/google/firebase/encoders/json/d;->DEFAULT_FALLBACK_ENCODER:Lj4/d;

    .line 8
    .line 9
    new-instance v0, Lcom/google/firebase/encoders/json/b;

    .line 10
    .line 11
    .line 12
    invoke-direct {v0}, Lcom/google/firebase/encoders/json/b;-><init>()V

    .line 13
    .line 14
    sput-object v0, Lcom/google/firebase/encoders/json/d;->STRING_ENCODER:Lj4/f;

    .line 15
    .line 16
    new-instance v0, Lcom/google/firebase/encoders/json/c;

    .line 17
    .line 18
    .line 19
    invoke-direct {v0}, Lcom/google/firebase/encoders/json/c;-><init>()V

    .line 20
    .line 21
    sput-object v0, Lcom/google/firebase/encoders/json/d;->BOOLEAN_ENCODER:Lj4/f;

    .line 22
    .line 23
    new-instance v0, Lcom/google/firebase/encoders/json/d$b;

    .line 24
    const/4 v1, 0x0

    .line 25
    .line 26
    .line 27
    invoke-direct {v0, v1}, Lcom/google/firebase/encoders/json/d$b;-><init>(Lcom/google/firebase/encoders/json/d$a;)V

    .line 28
    .line 29
    sput-object v0, Lcom/google/firebase/encoders/json/d;->TIMESTAMP_ENCODER:Lcom/google/firebase/encoders/json/d$b;

    .line 30
    return-void
.end method

.method public constructor <init>()V
    .locals 2

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
    iput-object v0, p0, Lcom/google/firebase/encoders/json/d;->objectEncoders:Ljava/util/Map;

    .line 11
    .line 12
    new-instance v0, Ljava/util/HashMap;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 16
    .line 17
    iput-object v0, p0, Lcom/google/firebase/encoders/json/d;->valueEncoders:Ljava/util/Map;

    .line 18
    .line 19
    sget-object v0, Lcom/google/firebase/encoders/json/d;->DEFAULT_FALLBACK_ENCODER:Lj4/d;

    .line 20
    .line 21
    iput-object v0, p0, Lcom/google/firebase/encoders/json/d;->fallbackEncoder:Lj4/d;

    .line 22
    const/4 v0, 0x0

    .line 23
    .line 24
    iput-boolean v0, p0, Lcom/google/firebase/encoders/json/d;->ignoreNullValues:Z

    .line 25
    .line 26
    const-class v0, Ljava/lang/String;

    .line 27
    .line 28
    sget-object v1, Lcom/google/firebase/encoders/json/d;->STRING_ENCODER:Lj4/f;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v0, v1}, Lcom/google/firebase/encoders/json/d;->p(Ljava/lang/Class;Lj4/f;)Lcom/google/firebase/encoders/json/d;

    .line 32
    .line 33
    const-class v0, Ljava/lang/Boolean;

    .line 34
    .line 35
    sget-object v1, Lcom/google/firebase/encoders/json/d;->BOOLEAN_ENCODER:Lj4/f;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, v0, v1}, Lcom/google/firebase/encoders/json/d;->p(Ljava/lang/Class;Lj4/f;)Lcom/google/firebase/encoders/json/d;

    .line 39
    .line 40
    const-class v0, Ljava/util/Date;

    .line 41
    .line 42
    sget-object v1, Lcom/google/firebase/encoders/json/d;->TIMESTAMP_ENCODER:Lcom/google/firebase/encoders/json/d$b;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, v0, v1}, Lcom/google/firebase/encoders/json/d;->p(Ljava/lang/Class;Lj4/f;)Lcom/google/firebase/encoders/json/d;

    .line 46
    return-void
.end method

.method public static synthetic b(Ljava/lang/Object;Lj4/e;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/firebase/encoders/json/d;->l(Ljava/lang/Object;Lj4/e;)V

    return-void
.end method

.method public static synthetic c(Ljava/lang/String;Lj4/g;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/firebase/encoders/json/d;->m(Ljava/lang/String;Lj4/g;)V

    return-void
.end method

.method public static synthetic d(Ljava/lang/Boolean;Lj4/g;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/firebase/encoders/json/d;->n(Ljava/lang/Boolean;Lj4/g;)V

    return-void
.end method

.method static synthetic e(Lcom/google/firebase/encoders/json/d;)Ljava/util/Map;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/firebase/encoders/json/d;->objectEncoders:Ljava/util/Map;

    .line 3
    return-object p0
.end method

.method static synthetic f(Lcom/google/firebase/encoders/json/d;)Ljava/util/Map;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/firebase/encoders/json/d;->valueEncoders:Ljava/util/Map;

    .line 3
    return-object p0
.end method

.method static synthetic g(Lcom/google/firebase/encoders/json/d;)Lj4/d;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/firebase/encoders/json/d;->fallbackEncoder:Lj4/d;

    .line 3
    return-object p0
.end method

.method static synthetic h(Lcom/google/firebase/encoders/json/d;)Z
    .locals 0

    .line 1
    .line 2
    iget-boolean p0, p0, Lcom/google/firebase/encoders/json/d;->ignoreNullValues:Z

    .line 3
    return p0
.end method

.method private static synthetic l(Ljava/lang/Object;Lj4/e;)V
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

.method private static synthetic m(Ljava/lang/String;Lj4/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-interface {p1, p0}, Lj4/g;->a(Ljava/lang/String;)Lj4/g;

    .line 4
    return-void
.end method

.method private static synthetic n(Ljava/lang/Boolean;Lj4/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 4
    move-result p0

    .line 5
    .line 6
    .line 7
    invoke-interface {p1, p0}, Lj4/g;->b(Z)Lj4/g;

    .line 8
    return-void
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
    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/encoders/json/d;->o(Ljava/lang/Class;Lj4/d;)Lcom/google/firebase/encoders/json/d;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public i()Lj4/a;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lcom/google/firebase/encoders/json/d$a;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcom/google/firebase/encoders/json/d$a;-><init>(Lcom/google/firebase/encoders/json/d;)V

    .line 6
    return-object v0
.end method

.method public j(Lk4/a;)Lcom/google/firebase/encoders/json/d;
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

.method public k(Z)Lcom/google/firebase/encoders/json/d;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/google/firebase/encoders/json/d;->ignoreNullValues:Z

    return-object p0
.end method

.method public o(Ljava/lang/Class;Lj4/d;)Lcom/google/firebase/encoders/json/d;
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
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lj4/d<",
            "-TT;>;)",
            "Lcom/google/firebase/encoders/json/d;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/encoders/json/d;->objectEncoders:Ljava/util/Map;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    iget-object p2, p0, Lcom/google/firebase/encoders/json/d;->valueEncoders:Ljava/util/Map;

    .line 8
    .line 9
    .line 10
    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    return-object p0
.end method

.method public p(Ljava/lang/Class;Lj4/f;)Lcom/google/firebase/encoders/json/d;
    .locals 1
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lj4/f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lj4/f<",
            "-TT;>;)",
            "Lcom/google/firebase/encoders/json/d;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/encoders/json/d;->valueEncoders:Ljava/util/Map;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    iget-object p2, p0, Lcom/google/firebase/encoders/json/d;->objectEncoders:Ljava/util/Map;

    .line 8
    .line 9
    .line 10
    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    return-object p0
.end method
