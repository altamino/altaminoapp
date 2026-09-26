.class Lcom/narvii/paging/PageView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/paging/PageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/paging/PageView;


# direct methods
.method constructor <init>(Lcom/narvii/paging/PageView;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/paging/PageView$2;->this$0:Lcom/narvii/paging/PageView;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/paging/PageView$2;->this$0:Lcom/narvii/paging/PageView;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/paging/PageView;->b(Lcom/narvii/paging/PageView;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/paging/PageView$2;->this$0:Lcom/narvii/paging/PageView;

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lcom/narvii/paging/PageView;->c(Lcom/narvii/paging/PageView;)Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    const/4 v0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    .line 21
    :goto_0
    iget-object v1, p0, Lcom/narvii/paging/PageView$2;->this$0:Lcom/narvii/paging/PageView;

    .line 22
    .line 23
    .line 24
    invoke-static {v1}, Lcom/narvii/paging/PageView;->a(Lcom/narvii/paging/PageView;)Z

    .line 25
    move-result v1

    .line 26
    .line 27
    if-eq v1, v0, :cond_1

    .line 28
    .line 29
    iget-object v1, p0, Lcom/narvii/paging/PageView$2;->this$0:Lcom/narvii/paging/PageView;

    .line 30
    .line 31
    .line 32
    invoke-static {v1, v0}, Lcom/narvii/paging/PageView;->d(Lcom/narvii/paging/PageView;Z)V

    .line 33
    .line 34
    iget-object v0, p0, Lcom/narvii/paging/PageView$2;->this$0:Lcom/narvii/paging/PageView;

    .line 35
    .line 36
    .line 37
    invoke-static {v0}, Lcom/narvii/paging/PageView;->a(Lcom/narvii/paging/PageView;)Z

    .line 38
    move-result v1

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v1}, Lcom/narvii/paging/PageView;->onActiveChanged(Z)V

    .line 42
    :cond_1
    return-void
.end method
