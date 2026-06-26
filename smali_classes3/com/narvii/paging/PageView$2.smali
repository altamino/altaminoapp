.class Lcom/narvii/paging/PageView$2;
.super Ljava/lang/Object;
.source "PageView.java"

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

    .line 201
    iput-object p1, p0, Lcom/narvii/paging/PageView$2;->this$0:Lcom/narvii/paging/PageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 204
    iget-object v0, p0, Lcom/narvii/paging/PageView$2;->this$0:Lcom/narvii/paging/PageView;

    invoke-static {v0}, Lcom/narvii/paging/PageView;->access$000(Lcom/narvii/paging/PageView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/paging/PageView$2;->this$0:Lcom/narvii/paging/PageView;

    invoke-static {v0}, Lcom/narvii/paging/PageView;->access$100(Lcom/narvii/paging/PageView;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 205
    :goto_0
    iget-object v1, p0, Lcom/narvii/paging/PageView$2;->this$0:Lcom/narvii/paging/PageView;

    invoke-static {v1}, Lcom/narvii/paging/PageView;->access$200(Lcom/narvii/paging/PageView;)Z

    move-result v1

    if-eq v1, v0, :cond_1

    .line 206
    iget-object v1, p0, Lcom/narvii/paging/PageView$2;->this$0:Lcom/narvii/paging/PageView;

    invoke-static {v1, v0}, Lcom/narvii/paging/PageView;->access$202(Lcom/narvii/paging/PageView;Z)Z

    .line 207
    iget-object v0, p0, Lcom/narvii/paging/PageView$2;->this$0:Lcom/narvii/paging/PageView;

    invoke-static {v0}, Lcom/narvii/paging/PageView;->access$200(Lcom/narvii/paging/PageView;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/narvii/paging/PageView;->onActiveChanged(Z)V

    :cond_1
    return-void
.end method
