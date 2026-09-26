.class public Lcom/google/firebase/crashlytics/internal/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final remoteConfigInteropDeferred:Lo4/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo4/a<",
            "Ld5/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo4/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo4/a<",
            "Ld5/a;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/l;->remoteConfigInteropDeferred:Lo4/a;

    .line 6
    return-void
.end method

.method public static synthetic a(Lcom/google/firebase/crashlytics/internal/e;Lo4/b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/firebase/crashlytics/internal/l;->b(Lcom/google/firebase/crashlytics/internal/e;Lo4/b;)V

    return-void
.end method

.method private static synthetic b(Lcom/google/firebase/crashlytics/internal/e;Lo4/b;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-interface {p1}, Lo4/b;->get()Ljava/lang/Object;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    check-cast p1, Ld5/a;

    .line 7
    .line 8
    const-string v0, "firebase"

    .line 9
    .line 10
    .line 11
    invoke-interface {p1, v0, p0}, Ld5/a;->a(Ljava/lang/String;Lcom/google/firebase/remoteconfig/interop/rollouts/f;)V

    .line 12
    .line 13
    .line 14
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/g;->f()Lcom/google/firebase/crashlytics/internal/g;

    .line 15
    move-result-object p0

    .line 16
    .line 17
    const-string p1, "Registering RemoteConfig Rollouts subscriber"

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, p1}, Lcom/google/firebase/crashlytics/internal/g;->b(Ljava/lang/String;)V

    .line 21
    return-void
.end method


# virtual methods
.method public c(Lcom/google/firebase/crashlytics/internal/metadata/n;)V
    .locals 2

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/g;->f()Lcom/google/firebase/crashlytics/internal/g;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    const-string v0, "Didn\'t successfully register with UserMetadata for rollouts listener"

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, v0}, Lcom/google/firebase/crashlytics/internal/g;->k(Ljava/lang/String;)V

    .line 12
    return-void

    .line 13
    .line 14
    :cond_0
    new-instance v0, Lcom/google/firebase/crashlytics/internal/e;

    .line 15
    .line 16
    .line 17
    invoke-direct {v0, p1}, Lcom/google/firebase/crashlytics/internal/e;-><init>(Lcom/google/firebase/crashlytics/internal/metadata/n;)V

    .line 18
    .line 19
    iget-object p1, p0, Lcom/google/firebase/crashlytics/internal/l;->remoteConfigInteropDeferred:Lo4/a;

    .line 20
    .line 21
    new-instance v1, Lcom/google/firebase/crashlytics/internal/k;

    .line 22
    .line 23
    .line 24
    invoke-direct {v1, v0}, Lcom/google/firebase/crashlytics/internal/k;-><init>(Lcom/google/firebase/crashlytics/internal/e;)V

    .line 25
    .line 26
    .line 27
    invoke-interface {p1, v1}, Lo4/a;->a(Lo4/a$a;)V

    .line 28
    return-void
.end method
