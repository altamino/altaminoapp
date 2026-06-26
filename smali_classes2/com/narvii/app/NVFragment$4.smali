.class Lcom/narvii/app/NVFragment$4;
.super Ljava/lang/Object;
.source "NVFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/app/NVFragment;->onSaveInstanceState(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/app/NVFragment;

.field final synthetic val$outState:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/narvii/app/NVFragment;Landroid/os/Bundle;)V
    .locals 0

    .line 400
    iput-object p1, p0, Lcom/narvii/app/NVFragment$4;->this$0:Lcom/narvii/app/NVFragment;

    iput-object p2, p0, Lcom/narvii/app/NVFragment$4;->val$outState:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 403
    iget-object v0, p0, Lcom/narvii/app/NVFragment$4;->val$outState:Landroid/os/Bundle;

    invoke-static {v0}, Lcom/narvii/util/BundleUtils;->sizeAsParcel(Landroid/os/Bundle;)I

    move-result v0

    const v1, 0x186a0

    if-ge v0, v1, :cond_0

    return-void

    .line 407
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "==="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/narvii/app/NVFragment$4;->this$0:Lcom/narvii/app/NVFragment;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")==="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onSaveInstanceState"

    invoke-static {v1, v0}, Lcom/narvii/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
