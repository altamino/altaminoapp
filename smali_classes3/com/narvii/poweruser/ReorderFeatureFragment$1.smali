.class Lcom/narvii/poweruser/ReorderFeatureFragment$1;
.super Ljava/lang/Object;
.source "ReorderFeatureFragment.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/poweruser/ReorderFeatureFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Lcom/narvii/model/api/ApiResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/poweruser/ReorderFeatureFragment;


# direct methods
.method constructor <init>(Lcom/narvii/poweruser/ReorderFeatureFragment;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/narvii/poweruser/ReorderFeatureFragment$1;->this$0:Lcom/narvii/poweruser/ReorderFeatureFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/model/api/ApiResponse;)V
    .locals 2

    .line 96
    iget-object p1, p0, Lcom/narvii/poweruser/ReorderFeatureFragment$1;->this$0:Lcom/narvii/poweruser/ReorderFeatureFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/poweruser/ReorderFeatureFragment$1;->this$0:Lcom/narvii/poweruser/ReorderFeatureFragment;

    const v1, 0x7f0f0eda

    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 97
    iget-object p1, p0, Lcom/narvii/poweruser/ReorderFeatureFragment$1;->this$0:Lcom/narvii/poweruser/ReorderFeatureFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_0

    .line 98
    iget-object p1, p0, Lcom/narvii/poweruser/ReorderFeatureFragment$1;->this$0:Lcom/narvii/poweruser/ReorderFeatureFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->finish()V

    :cond_0
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 93
    check-cast p1, Lcom/narvii/model/api/ApiResponse;

    invoke-virtual {p0, p1}, Lcom/narvii/poweruser/ReorderFeatureFragment$1;->call(Lcom/narvii/model/api/ApiResponse;)V

    return-void
.end method
