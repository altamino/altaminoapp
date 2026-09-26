.class Lcom/narvii/theme/ThemePackService$Worker$1;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/theme/ThemePackService$Worker$1;->this$1:Lcom/narvii/theme/ThemePackService$Worker;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/theme/ThemePackService$Worker$1;->this$1:Lcom/narvii/theme/ThemePackService$Worker;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/theme/ThemePackService$Worker;->this$0:Lcom/narvii/theme/ThemePackService;

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Lcom/narvii/theme/ThemePackService;->c(Lcom/narvii/theme/ThemePackService;)Ljava/util/Set;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    iget-object v1, p0, Lcom/narvii/theme/ThemePackService$Worker$1;->this$1:Lcom/narvii/theme/ThemePackService$Worker;

    .line 11
    .line 12
    iget v1, v1, Lcom/narvii/theme/ThemePackService$Worker;->cid:I

    .line 13
    .line 14
    .line 15
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    .line 19
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 20
    move-result v0

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    iget-object v0, p0, Lcom/narvii/theme/ThemePackService$Worker$1;->this$1:Lcom/narvii/theme/ThemePackService$Worker;

    .line 25
    .line 26
    iget-object v0, v0, Lcom/narvii/theme/ThemePackService$Worker;->this$0:Lcom/narvii/theme/ThemePackService;

    .line 27
    .line 28
    .line 29
    invoke-static {v0}, Lcom/narvii/theme/ThemePackService;->c(Lcom/narvii/theme/ThemePackService;)Ljava/util/Set;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    iget-object v1, p0, Lcom/narvii/theme/ThemePackService$Worker$1;->this$1:Lcom/narvii/theme/ThemePackService$Worker;

    .line 33
    .line 34
    iget v1, v1, Lcom/narvii/theme/ThemePackService$Worker;->cid:I

    .line 35
    .line 36
    .line 37
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    move-result-object v1

    .line 39
    .line 40
    .line 41
    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 42
    .line 43
    new-instance v0, Landroid/content/Intent;

    .line 44
    .line 45
    const-string v1, "com.narvii.action.THEME_DOWNLOAD_SUCCESS"

    .line 46
    .line 47
    .line 48
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    iget-object v1, p0, Lcom/narvii/theme/ThemePackService$Worker$1;->this$1:Lcom/narvii/theme/ThemePackService$Worker;

    .line 51
    .line 52
    iget v1, v1, Lcom/narvii/theme/ThemePackService$Worker;->cid:I

    .line 53
    .line 54
    const-string v2, "cid"

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 58
    .line 59
    iget-object v1, p0, Lcom/narvii/theme/ThemePackService$Worker$1;->this$1:Lcom/narvii/theme/ThemePackService$Worker;

    .line 60
    .line 61
    iget-object v1, v1, Lcom/narvii/theme/ThemePackService$Worker;->this$0:Lcom/narvii/theme/ThemePackService;

    .line 62
    .line 63
    .line 64
    invoke-static {v1}, Lcom/narvii/theme/ThemePackService;->e(Lcom/narvii/theme/ThemePackService;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 65
    move-result-object v1

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->d(Landroid/content/Intent;)Z

    .line 69
    :cond_0
    return-void
.end method
