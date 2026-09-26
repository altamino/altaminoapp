.class public Lcom/coloros/ocs/base/common/api/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/ocs/base/common/api/a$d;,
        Lcom/coloros/ocs/base/common/api/a$a;,
        Lcom/coloros/ocs/base/common/api/a$c;,
        Lcom/coloros/ocs/base/common/api/a$b;,
        Lcom/coloros/ocs/base/common/api/a$f;,
        Lcom/coloros/ocs/base/common/api/a$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<O::",
        "Lcom/coloros/ocs/base/common/api/a$c;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mClientBuilder:Lcom/coloros/ocs/base/common/api/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/coloros/ocs/base/common/api/a$a<",
            "*TO;>;"
        }
    .end annotation
.end field

.field private mClientKey:Lcom/coloros/ocs/base/common/api/a$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/coloros/ocs/base/common/api/a$f<",
            "*>;"
        }
    .end annotation
.end field

.field private mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/coloros/ocs/base/common/api/a$a;Lcom/coloros/ocs/base/common/api/a$f;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Lcom/coloros/ocs/base/common/api/a$e;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/coloros/ocs/base/common/api/a$a<",
            "TC;TO;>;",
            "Lcom/coloros/ocs/base/common/api/a$f<",
            "TC;>;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    const-string v0, "can not construct whit the null AbstractClientBuilder"

    .line 6
    .line 7
    .line 8
    invoke-static {p2, v0}, Lc1/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    const-string v0, "can not construct with the null ClientKey"

    .line 11
    .line 12
    .line 13
    invoke-static {p3, v0}, Lc1/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    iput-object p1, p0, Lcom/coloros/ocs/base/common/api/a;->mName:Ljava/lang/String;

    .line 16
    .line 17
    iput-object p2, p0, Lcom/coloros/ocs/base/common/api/a;->mClientBuilder:Lcom/coloros/ocs/base/common/api/a$a;

    .line 18
    .line 19
    iput-object p3, p0, Lcom/coloros/ocs/base/common/api/a;->mClientKey:Lcom/coloros/ocs/base/common/api/a$f;

    .line 20
    return-void
.end method


# virtual methods
.method public a()Lcom/coloros/ocs/base/common/api/a$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/coloros/ocs/base/common/api/a$a<",
            "*TO;>;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/coloros/ocs/base/common/api/a;->mClientBuilder:Lcom/coloros/ocs/base/common/api/a$a;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    .line 9
    :goto_0
    const-string v1, "The ClientBuilder is null"

    .line 10
    .line 11
    .line 12
    invoke-static {v0, v1}, Lc1/b;->b(ZLjava/lang/Object;)V

    .line 13
    .line 14
    iget-object v0, p0, Lcom/coloros/ocs/base/common/api/a;->mClientBuilder:Lcom/coloros/ocs/base/common/api/a$a;

    .line 15
    return-object v0
.end method

.method public b()Lcom/coloros/ocs/base/common/api/a$f;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/coloros/ocs/base/common/api/a$f<",
            "*>;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/coloros/ocs/base/common/api/a;->mClientKey:Lcom/coloros/ocs/base/common/api/a$f;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-object v0

    .line 6
    .line 7
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 8
    .line 9
    const-string v1, "This API was constructed with null clientKey."

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 13
    throw v0
.end method
