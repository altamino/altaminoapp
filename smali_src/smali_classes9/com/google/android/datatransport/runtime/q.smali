.class final Lcom/google/android/datatransport/runtime/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf2/g;


# instance fields
.field private final supportedPayloadEncodings:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lf2/b;",
            ">;"
        }
    .end annotation
.end field

.field private final transportContext:Lcom/google/android/datatransport/runtime/p;

.field private final transportInternal:Lcom/google/android/datatransport/runtime/t;


# direct methods
.method constructor <init>(Ljava/util/Set;Lcom/google/android/datatransport/runtime/p;Lcom/google/android/datatransport/runtime/t;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lf2/b;",
            ">;",
            "Lcom/google/android/datatransport/runtime/p;",
            "Lcom/google/android/datatransport/runtime/t;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/google/android/datatransport/runtime/q;->supportedPayloadEncodings:Ljava/util/Set;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/google/android/datatransport/runtime/q;->transportContext:Lcom/google/android/datatransport/runtime/p;

    .line 8
    .line 9
    iput-object p3, p0, Lcom/google/android/datatransport/runtime/q;->transportInternal:Lcom/google/android/datatransport/runtime/t;

    .line 10
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/Class;Lf2/b;Lf2/e;)Lf2/f;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lf2/b;",
            "Lf2/e<",
            "TT;[B>;)",
            "Lf2/f<",
            "TT;>;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object p2, p0, Lcom/google/android/datatransport/runtime/q;->supportedPayloadEncodings:Ljava/util/Set;

    .line 3
    .line 4
    .line 5
    invoke-interface {p2, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 6
    move-result p2

    .line 7
    .line 8
    if-eqz p2, :cond_0

    .line 9
    .line 10
    new-instance p2, Lcom/google/android/datatransport/runtime/s;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/google/android/datatransport/runtime/q;->transportContext:Lcom/google/android/datatransport/runtime/p;

    .line 13
    .line 14
    iget-object v5, p0, Lcom/google/android/datatransport/runtime/q;->transportInternal:Lcom/google/android/datatransport/runtime/t;

    .line 15
    move-object v0, p2

    .line 16
    move-object v2, p1

    .line 17
    move-object v3, p3

    .line 18
    move-object v4, p4

    .line 19
    .line 20
    .line 21
    invoke-direct/range {v0 .. v5}, Lcom/google/android/datatransport/runtime/s;-><init>(Lcom/google/android/datatransport/runtime/p;Ljava/lang/String;Lf2/b;Lf2/e;Lcom/google/android/datatransport/runtime/t;)V

    .line 22
    return-object p2

    .line 23
    .line 24
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 25
    const/4 p2, 0x2

    .line 26
    .line 27
    new-array p2, p2, [Ljava/lang/Object;

    .line 28
    const/4 p4, 0x0

    .line 29
    .line 30
    aput-object p3, p2, p4

    .line 31
    const/4 p3, 0x1

    .line 32
    .line 33
    iget-object p4, p0, Lcom/google/android/datatransport/runtime/q;->supportedPayloadEncodings:Ljava/util/Set;

    .line 34
    .line 35
    aput-object p4, p2, p3

    .line 36
    .line 37
    const-string p3, "%s is not supported byt this factory. Supported encodings are: %s."

    .line 38
    .line 39
    .line 40
    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 41
    move-result-object p2

    .line 42
    .line 43
    .line 44
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 45
    throw p1
.end method
