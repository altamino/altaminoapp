.class Lcom/narvii/util/NVToast$3$1;
.super Ljava/lang/Object;
.source "NVToast.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/util/NVToast$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/util/NVToast$3;

.field final synthetic val$toast:Lcom/narvii/util/NVToast;


# direct methods
.method constructor <init>(Lcom/narvii/util/NVToast$3;Lcom/narvii/util/NVToast;)V
    .locals 0

    .line 259
    iput-object p1, p0, Lcom/narvii/util/NVToast$3$1;->this$0:Lcom/narvii/util/NVToast$3;

    iput-object p2, p0, Lcom/narvii/util/NVToast$3$1;->val$toast:Lcom/narvii/util/NVToast;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 263
    :try_start_0
    iget-object v0, p0, Lcom/narvii/util/NVToast$3$1;->val$toast:Lcom/narvii/util/NVToast;

    invoke-static {v0}, Lcom/narvii/util/NVToast;->access$400(Lcom/narvii/util/NVToast;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 264
    iget-object v1, p0, Lcom/narvii/util/NVToast$3$1;->val$toast:Lcom/narvii/util/NVToast;

    invoke-static {v1}, Lcom/narvii/util/NVToast;->access$500(Lcom/narvii/util/NVToast;)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
