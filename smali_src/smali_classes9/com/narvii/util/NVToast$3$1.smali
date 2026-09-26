.class Lcom/narvii/util/NVToast$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/util/NVToast$3$1;->this$0:Lcom/narvii/util/NVToast$3;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/util/NVToast$3$1;->val$toast:Lcom/narvii/util/NVToast;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/narvii/util/NVToast$3$1;->val$toast:Lcom/narvii/util/NVToast;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/util/NVToast;->a(Lcom/narvii/util/NVToast;)Landroid/content/Context;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    const-string/jumbo v1, "window"

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    check-cast v0, Landroid/view/WindowManager;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/narvii/util/NVToast$3$1;->val$toast:Lcom/narvii/util/NVToast;

    .line 18
    .line 19
    .line 20
    invoke-static {v1}, Lcom/narvii/util/NVToast;->e(Lcom/narvii/util/NVToast;)Landroid/view/View;

    .line 21
    move-result-object v1

    .line 22
    .line 23
    .line 24
    invoke-interface {v0, v1}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    :catch_0
    return-void
.end method
