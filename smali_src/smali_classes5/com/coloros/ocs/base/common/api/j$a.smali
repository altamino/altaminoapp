.class final Lcom/coloros/ocs/base/common/api/j$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/coloros/ocs/base/common/api/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/ocs/base/common/api/j;->g(Lcom/coloros/ocs/base/common/api/c;Lf1/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/ocs/base/common/api/c;

.field final synthetic b:Lcom/coloros/ocs/base/common/api/d;

.field final synthetic c:Lcom/coloros/ocs/base/common/api/j;


# direct methods
.method constructor <init>(Lcom/coloros/ocs/base/common/api/j;Lcom/coloros/ocs/base/common/api/c;Lcom/coloros/ocs/base/common/api/d;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/coloros/ocs/base/common/api/j$a;->c:Lcom/coloros/ocs/base/common/api/j;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/coloros/ocs/base/common/api/j$a;->a:Lcom/coloros/ocs/base/common/api/c;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/coloros/ocs/base/common/api/j$a;->b:Lcom/coloros/ocs/base/common/api/d;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/coloros/ocs/base/common/api/j$a;->a:Lcom/coloros/ocs/base/common/api/c;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/coloros/ocs/base/common/api/c;->d()Lcom/coloros/ocs/base/common/api/a;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/coloros/ocs/base/common/api/a;->b()Lcom/coloros/ocs/base/common/api/a$f;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lcom/coloros/ocs/base/common/api/j;->d(Lcom/coloros/ocs/base/common/api/a$f;)V

    .line 14
    .line 15
    .line 16
    invoke-static {}, Lcom/coloros/ocs/base/common/api/j;->c()Ljava/util/Map;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    iget-object v1, p0, Lcom/coloros/ocs/base/common/api/j$a;->a:Lcom/coloros/ocs/base/common/api/c;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Lcom/coloros/ocs/base/common/api/c;->d()Lcom/coloros/ocs/base/common/api/a;

    .line 23
    move-result-object v1

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/coloros/ocs/base/common/api/a;->b()Lcom/coloros/ocs/base/common/api/a$f;

    .line 27
    move-result-object v1

    .line 28
    .line 29
    iget-object v2, p0, Lcom/coloros/ocs/base/common/api/j$a;->b:Lcom/coloros/ocs/base/common/api/d;

    .line 30
    .line 31
    .line 32
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    return-void
.end method
