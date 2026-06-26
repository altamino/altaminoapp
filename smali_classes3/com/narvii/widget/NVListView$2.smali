.class Lcom/narvii/widget/NVListView$2;
.super Ljava/lang/Object;
.source "NVListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/widget/NVListView;->onOverScrolled(IIZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/widget/NVListView;


# direct methods
.method constructor <init>(Lcom/narvii/widget/NVListView;)V
    .locals 0

    .line 490
    iput-object p1, p0, Lcom/narvii/widget/NVListView$2;->this$0:Lcom/narvii/widget/NVListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 493
    iget-object v0, p0, Lcom/narvii/widget/NVListView$2;->this$0:Lcom/narvii/widget/NVListView;

    invoke-static {v0}, Lcom/narvii/widget/NVListView;->access$300(Lcom/narvii/widget/NVListView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 494
    iget-object v0, p0, Lcom/narvii/widget/NVListView$2;->this$0:Lcom/narvii/widget/NVListView;

    invoke-virtual {v0}, Lcom/narvii/widget/NVListView;->requestLayout()V

    .line 496
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/NVListView$2;->this$0:Lcom/narvii/widget/NVListView;

    invoke-static {v0}, Lcom/narvii/widget/NVListView;->access$400(Lcom/narvii/widget/NVListView;)Ljava/lang/Runnable;

    move-result-object v0

    if-ne v0, p0, :cond_1

    .line 497
    iget-object v0, p0, Lcom/narvii/widget/NVListView$2;->this$0:Lcom/narvii/widget/NVListView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/narvii/widget/NVListView;->access$402(Lcom/narvii/widget/NVListView;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    :cond_1
    return-void
.end method
