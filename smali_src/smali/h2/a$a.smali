.class public final Lh2/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh2/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private app_namespace_:Ljava/lang/String;

.field private global_metrics_:Lh2/b;

.field private log_source_metrics_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lh2/d;",
            ">;"
        }
    .end annotation
.end field

.field private window_:Lh2/f;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    iput-object v0, p0, Lh2/a$a;->window_:Lh2/f;

    .line 7
    .line 8
    new-instance v1, Ljava/util/ArrayList;

    .line 9
    .line 10
    .line 11
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    iput-object v1, p0, Lh2/a$a;->log_source_metrics_:Ljava/util/List;

    .line 14
    .line 15
    iput-object v0, p0, Lh2/a$a;->global_metrics_:Lh2/b;

    .line 16
    .line 17
    const-string v0, ""

    .line 18
    .line 19
    iput-object v0, p0, Lh2/a$a;->app_namespace_:Ljava/lang/String;

    .line 20
    return-void
.end method


# virtual methods
.method public a(Lh2/d;)Lh2/a$a;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lh2/a$a;->log_source_metrics_:Ljava/util/List;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    return-object p0
.end method

.method public b()Lh2/a;
    .locals 5

    .line 1
    .line 2
    new-instance v0, Lh2/a;

    .line 3
    .line 4
    iget-object v1, p0, Lh2/a$a;->window_:Lh2/f;

    .line 5
    .line 6
    iget-object v2, p0, Lh2/a$a;->log_source_metrics_:Ljava/util/List;

    .line 7
    .line 8
    .line 9
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 10
    move-result-object v2

    .line 11
    .line 12
    iget-object v3, p0, Lh2/a$a;->global_metrics_:Lh2/b;

    .line 13
    .line 14
    iget-object v4, p0, Lh2/a$a;->app_namespace_:Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    invoke-direct {v0, v1, v2, v3, v4}, Lh2/a;-><init>(Lh2/f;Ljava/util/List;Lh2/b;Ljava/lang/String;)V

    .line 18
    return-object v0
.end method

.method public c(Ljava/lang/String;)Lh2/a$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lh2/a$a;->app_namespace_:Ljava/lang/String;

    return-object p0
.end method

.method public d(Lh2/b;)Lh2/a$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lh2/a$a;->global_metrics_:Lh2/b;

    return-object p0
.end method

.method public e(Lh2/f;)Lh2/a$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lh2/a$a;->window_:Lh2/f;

    return-object p0
.end method
