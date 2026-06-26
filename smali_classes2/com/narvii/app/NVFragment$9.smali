.class Lcom/narvii/app/NVFragment$9;
.super Ljava/lang/Object;
.source "NVFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/app/NVFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/app/NVFragment;


# direct methods
.method constructor <init>(Lcom/narvii/app/NVFragment;)V
    .locals 0

    .line 549
    iput-object p1, p0, Lcom/narvii/app/NVFragment$9;->this$0:Lcom/narvii/app/NVFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 552
    iget-object v0, p0, Lcom/narvii/app/NVFragment$9;->this$0:Lcom/narvii/app/NVFragment;

    invoke-static {v0}, Lcom/narvii/app/NVFragment;->access$000(Lcom/narvii/app/NVFragment;)I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/narvii/app/NVFragment$9;->this$0:Lcom/narvii/app/NVFragment;

    invoke-static {v0}, Lcom/narvii/app/NVFragment;->access$100(Lcom/narvii/app/NVFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 553
    :goto_0
    iget-object v1, p0, Lcom/narvii/app/NVFragment$9;->this$0:Lcom/narvii/app/NVFragment;

    invoke-static {v1}, Lcom/narvii/app/NVFragment;->access$200(Lcom/narvii/app/NVFragment;)Z

    move-result v1

    if-eq v1, v0, :cond_1

    .line 554
    iget-object v1, p0, Lcom/narvii/app/NVFragment$9;->this$0:Lcom/narvii/app/NVFragment;

    invoke-static {v1, v0}, Lcom/narvii/app/NVFragment;->access$202(Lcom/narvii/app/NVFragment;Z)Z

    .line 555
    iget-object v0, p0, Lcom/narvii/app/NVFragment$9;->this$0:Lcom/narvii/app/NVFragment;

    invoke-static {v0}, Lcom/narvii/app/NVFragment;->access$200(Lcom/narvii/app/NVFragment;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/narvii/app/NVFragment;->onActiveChanged(Z)V

    :cond_1
    return-void
.end method
