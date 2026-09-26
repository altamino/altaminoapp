.class public final Lv4/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/perf/application/a$a;


# static fields
.field private static final logger:Ly4/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {}, Ly4/a;->e()Ly4/a;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    sput-object v0, Lv4/f;->logger:Ly4/a;

    .line 7
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 1
    .line 2
    .line 3
    :try_start_0
    invoke-static {}, Lv4/e;->c()Lv4/e;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    goto :goto_0

    .line 5
    :catch_0
    move-exception v0

    .line 6
    .line 7
    sget-object v1, Lv4/f;->logger:Ly4/a;

    .line 8
    const/4 v2, 0x1

    .line 9
    .line 10
    new-array v2, v2, [Ljava/lang/Object;

    .line 11
    const/4 v3, 0x0

    .line 12
    .line 13
    aput-object v0, v2, v3

    .line 14
    .line 15
    const-string v0, "FirebaseApp is not initialized. Firebase Performance will not be collecting any performance metrics until initialized. %s"

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v0, v2}, Ly4/a;->k(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 19
    :goto_0
    return-void
.end method
