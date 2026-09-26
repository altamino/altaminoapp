.class public final Lh2/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lh2/a$a;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lh2/a;


# instance fields
.field private final app_namespace_:Ljava/lang/String;

.field private final global_metrics_:Lh2/b;

.field private final log_source_metrics_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lh2/d;",
            ">;"
        }
    .end annotation
.end field

.field private final window_:Lh2/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lh2/a$a;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lh2/a$a;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lh2/a$a;->b()Lh2/a;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    sput-object v0, Lh2/a;->DEFAULT_INSTANCE:Lh2/a;

    .line 12
    return-void
.end method

.method constructor <init>(Lh2/f;Ljava/util/List;Lh2/b;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh2/f;",
            "Ljava/util/List<",
            "Lh2/d;",
            ">;",
            "Lh2/b;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lh2/a;->window_:Lh2/f;

    .line 6
    .line 7
    iput-object p2, p0, Lh2/a;->log_source_metrics_:Ljava/util/List;

    .line 8
    .line 9
    iput-object p3, p0, Lh2/a;->global_metrics_:Lh2/b;

    .line 10
    .line 11
    iput-object p4, p0, Lh2/a;->app_namespace_:Ljava/lang/String;

    .line 12
    return-void
.end method

.method public static e()Lh2/a$a;
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lh2/a$a;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lh2/a$a;-><init>()V

    .line 6
    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/google/firebase/encoders/proto/d;
        tag = 0x4
    .end annotation

    .line 1
    iget-object v0, p0, Lh2/a;->app_namespace_:Ljava/lang/String;

    return-object v0
.end method

.method public b()Lh2/b;
    .locals 1
    .annotation build Lcom/google/firebase/encoders/proto/d;
        tag = 0x3
    .end annotation

    .line 1
    iget-object v0, p0, Lh2/a;->global_metrics_:Lh2/b;

    return-object v0
.end method

.method public c()Ljava/util/List;
    .locals 1
    .annotation build Lcom/google/firebase/encoders/proto/d;
        tag = 0x2
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lh2/d;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lh2/a;->log_source_metrics_:Ljava/util/List;

    return-object v0
.end method

.method public d()Lh2/f;
    .locals 1
    .annotation build Lcom/google/firebase/encoders/proto/d;
        tag = 0x1
    .end annotation

    .line 1
    iget-object v0, p0, Lh2/a;->window_:Lh2/f;

    return-object v0
.end method

.method public f()[B
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lcom/google/android/datatransport/runtime/m;->a(Ljava/lang/Object;)[B

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
