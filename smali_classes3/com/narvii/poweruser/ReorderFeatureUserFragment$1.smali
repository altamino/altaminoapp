.class Lcom/narvii/poweruser/ReorderFeatureUserFragment$1;
.super Ljava/lang/Object;
.source "ReorderFeatureUserFragment.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/poweruser/ReorderFeatureUserFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
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
.field final synthetic this$0:Lcom/narvii/poweruser/ReorderFeatureUserFragment;


# direct methods
.method constructor <init>(Lcom/narvii/poweruser/ReorderFeatureUserFragment;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/narvii/poweruser/ReorderFeatureUserFragment$1;->this$0:Lcom/narvii/poweruser/ReorderFeatureUserFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/model/api/ApiResponse;)V
    .locals 2

    .line 88
    iget-object p1, p0, Lcom/narvii/poweruser/ReorderFeatureUserFragment$1;->this$0:Lcom/narvii/poweruser/ReorderFeatureUserFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0f1083

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 89
    iget-object p1, p0, Lcom/narvii/poweruser/ReorderFeatureUserFragment$1;->this$0:Lcom/narvii/poweruser/ReorderFeatureUserFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_0

    .line 90
    iget-object p1, p0, Lcom/narvii/poweruser/ReorderFeatureUserFragment$1;->this$0:Lcom/narvii/poweruser/ReorderFeatureUserFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->finish()V

    :cond_0
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 85
    check-cast p1, Lcom/narvii/model/api/ApiResponse;

    invoke-virtual {p0, p1}, Lcom/narvii/poweruser/ReorderFeatureUserFragment$1;->call(Lcom/narvii/model/api/ApiResponse;)V

    return-void
.end method
