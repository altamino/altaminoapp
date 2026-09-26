.class public abstract Lcom/coloros/ocs/base/common/api/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<O::",
        "Lcom/coloros/ocs/base/common/api/a$c;",
        "R:",
        "Lcom/coloros/ocs/base/common/api/c;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field a:Lcom/coloros/ocs/base/common/api/a$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TO;"
        }
    .end annotation
.end field

.field private b:Landroid/content/Context;

.field private c:Lcom/coloros/ocs/base/common/api/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/coloros/ocs/base/common/api/a<",
            "TO;>;"
        }
    .end annotation
.end field

.field private d:Lcom/coloros/ocs/base/common/api/j;

.field private e:Lf1/a;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/coloros/ocs/base/common/api/a;Lcom/coloros/ocs/base/common/api/a$c;Lf1/a;)V
    .locals 0
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/coloros/ocs/base/common/api/a$c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/coloros/ocs/base/common/api/a<",
            "TO;>;TO;",
            "Lf1/a;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p3, "Null activity is not permitted."

    .line 2
    invoke-static {p1, p3}, Lc1/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "Api must not be null."

    .line 3
    invoke-static {p2, p3}, Lc1/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/ocs/base/common/api/c;->b:Landroid/content/Context;

    .line 5
    invoke-static {p1}, Lc1/a;->a(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/coloros/ocs/base/common/api/c;->c:Lcom/coloros/ocs/base/common/api/a;

    iput-object p4, p0, Lcom/coloros/ocs/base/common/api/c;->e:Lf1/a;

    iget-object p1, p0, Lcom/coloros/ocs/base/common/api/c;->b:Landroid/content/Context;

    .line 6
    invoke-static {p1}, Lcom/coloros/ocs/base/common/api/j;->b(Landroid/content/Context;)Lcom/coloros/ocs/base/common/api/j;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/ocs/base/common/api/c;->d:Lcom/coloros/ocs/base/common/api/j;

    iget-object p2, p0, Lcom/coloros/ocs/base/common/api/c;->e:Lf1/a;

    .line 7
    invoke-virtual {p1, p0, p2}, Lcom/coloros/ocs/base/common/api/j;->g(Lcom/coloros/ocs/base/common/api/c;Lf1/a;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/coloros/ocs/base/common/api/a;Lcom/coloros/ocs/base/common/api/a$c;Lf1/a;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/coloros/ocs/base/common/api/a$c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/coloros/ocs/base/common/api/a<",
            "TO;>;TO;",
            "Lf1/a;",
            ")V"
        }
    .end annotation

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p3, "Null context is not permitted."

    .line 9
    invoke-static {p1, p3}, Lc1/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "Api must not be null."

    .line 10
    invoke-static {p2, p3}, Lc1/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/ocs/base/common/api/c;->b:Landroid/content/Context;

    .line 12
    invoke-static {p1}, Lc1/a;->a(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/coloros/ocs/base/common/api/c;->c:Lcom/coloros/ocs/base/common/api/a;

    iput-object p4, p0, Lcom/coloros/ocs/base/common/api/c;->e:Lf1/a;

    iget-object p1, p0, Lcom/coloros/ocs/base/common/api/c;->b:Landroid/content/Context;

    .line 13
    invoke-static {p1}, Lcom/coloros/ocs/base/common/api/j;->b(Landroid/content/Context;)Lcom/coloros/ocs/base/common/api/j;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/ocs/base/common/api/c;->d:Lcom/coloros/ocs/base/common/api/j;

    iget-object p2, p0, Lcom/coloros/ocs/base/common/api/c;->e:Lf1/a;

    .line 14
    invoke-virtual {p1, p0, p2}, Lcom/coloros/ocs/base/common/api/j;->g(Lcom/coloros/ocs/base/common/api/c;Lf1/a;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/coloros/ocs/base/common/api/f;)Lcom/coloros/ocs/base/common/api/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/coloros/ocs/base/common/api/f;",
            ")TR;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Landroid/os/Handler;

    .line 3
    .line 4
    .line 5
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1, v0}, Lcom/coloros/ocs/base/common/api/c;->b(Lcom/coloros/ocs/base/common/api/f;Landroid/os/Handler;)Lcom/coloros/ocs/base/common/api/c;

    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

.method public b(Lcom/coloros/ocs/base/common/api/f;Landroid/os/Handler;)Lcom/coloros/ocs/base/common/api/c;
    .locals 1
    .param p2    # Landroid/os/Handler;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/coloros/ocs/base/common/api/f;",
            "Landroid/os/Handler;",
            ")TR;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/coloros/ocs/base/common/api/c;->d:Lcom/coloros/ocs/base/common/api/j;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p0, p1, p2}, Lcom/coloros/ocs/base/common/api/j;->e(Lcom/coloros/ocs/base/common/api/c;Lcom/coloros/ocs/base/common/api/f;Landroid/os/Handler;)V

    .line 6
    return-object p0
.end method

.method protected c(Landroid/os/Looper;Lcom/coloros/ocs/base/common/api/g$b;Lcom/coloros/ocs/base/common/api/g$a;)Lg1/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/Looper;",
            "Lcom/coloros/ocs/base/common/api/g$b<",
            "TTResult;>;",
            "Lcom/coloros/ocs/base/common/api/g$a<",
            "TTResult;>;)",
            "Lg1/a<",
            "TTResult;>;"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "color doRegisterListener"

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lc1/a;->b(Ljava/lang/String;)V

    .line 6
    .line 7
    new-instance v0, Lg1/b;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0}, Lg1/b;-><init>()V

    .line 11
    .line 12
    new-instance v1, Lcom/coloros/ocs/base/common/api/g;

    .line 13
    .line 14
    .line 15
    invoke-direct {v1, p1, v0, p2, p3}, Lcom/coloros/ocs/base/common/api/g;-><init>(Landroid/os/Looper;Lg1/b;Lcom/coloros/ocs/base/common/api/g$b;Lcom/coloros/ocs/base/common/api/g$a;)V

    .line 16
    .line 17
    .line 18
    invoke-static {p0, v1}, Lcom/coloros/ocs/base/common/api/j;->f(Lcom/coloros/ocs/base/common/api/c;Lcom/coloros/ocs/base/common/api/g;)V

    .line 19
    return-object v0
.end method

.method protected d()Lcom/coloros/ocs/base/common/api/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/coloros/ocs/base/common/api/a<",
            "TO;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/coloros/ocs/base/common/api/c;->c:Lcom/coloros/ocs/base/common/api/a;

    return-object v0
.end method

.method protected e()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lcom/coloros/ocs/base/common/api/j;->i(Lcom/coloros/ocs/base/common/api/c;)Z

    .line 4
    move-result v0

    .line 5
    return v0
.end method
