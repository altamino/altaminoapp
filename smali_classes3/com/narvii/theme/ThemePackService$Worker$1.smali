.class Lcom/narvii/theme/ThemePackService$Worker$1;
.super Ljava/lang/Object;
.source "ThemePackService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/theme/ThemePackService$Worker;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/theme/ThemePackService$Worker;


# direct methods
.method constructor <init>(Lcom/narvii/theme/ThemePackService$Worker;)V
    .locals 0

    .line 812
    iput-object p1, p0, Lcom/narvii/theme/ThemePackService$Worker$1;->this$1:Lcom/narvii/theme/ThemePackService$Worker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 815
    iget-object v0, p0, Lcom/narvii/theme/ThemePackService$Worker$1;->this$1:Lcom/narvii/theme/ThemePackService$Worker;

    iget-object v0, v0, Lcom/narvii/theme/ThemePackService$Worker;->this$0:Lcom/narvii/theme/ThemePackService;

    invoke-static {v0}, Lcom/narvii/theme/ThemePackService;->access$500(Lcom/narvii/theme/ThemePackService;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/theme/ThemePackService$Worker$1;->this$1:Lcom/narvii/theme/ThemePackService$Worker;

    iget v1, v1, Lcom/narvii/theme/ThemePackService$Worker;->cid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 816
    iget-object v0, p0, Lcom/narvii/theme/ThemePackService$Worker$1;->this$1:Lcom/narvii/theme/ThemePackService$Worker;

    iget-object v0, v0, Lcom/narvii/theme/ThemePackService$Worker;->this$0:Lcom/narvii/theme/ThemePackService;

    invoke-static {v0}, Lcom/narvii/theme/ThemePackService;->access$500(Lcom/narvii/theme/ThemePackService;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/theme/ThemePackService$Worker$1;->this$1:Lcom/narvii/theme/ThemePackService$Worker;

    iget v1, v1, Lcom/narvii/theme/ThemePackService$Worker;->cid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 817
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.narvii.action.THEME_DOWNLOAD_SUCCESS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 818
    iget-object v1, p0, Lcom/narvii/theme/ThemePackService$Worker$1;->this$1:Lcom/narvii/theme/ThemePackService$Worker;

    iget v1, v1, Lcom/narvii/theme/ThemePackService$Worker;->cid:I

    const-string v2, "cid"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 819
    iget-object v1, p0, Lcom/narvii/theme/ThemePackService$Worker$1;->this$1:Lcom/narvii/theme/ThemePackService$Worker;

    iget-object v1, v1, Lcom/narvii/theme/ThemePackService$Worker;->this$0:Lcom/narvii/theme/ThemePackService;

    invoke-static {v1}, Lcom/narvii/theme/ThemePackService;->access$300(Lcom/narvii/theme/ThemePackService;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    :cond_0
    return-void
.end method
