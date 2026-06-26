.class Lcom/narvii/poweruser/strike/StrikeWarningFragment$2;
.super Ljava/lang/Object;
.source "StrikeWarningFragment.java"

# interfaces
.implements Lcom/narvii/poweruser/SectionSeekBar$CustomSectionTextArray;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/poweruser/strike/StrikeWarningFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/poweruser/strike/StrikeWarningFragment;


# direct methods
.method constructor <init>(Lcom/narvii/poweruser/strike/StrikeWarningFragment;)V
    .locals 0

    .line 197
    iput-object p1, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment$2;->this$0:Lcom/narvii/poweruser/strike/StrikeWarningFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCustomize(ILandroid/util/SparseArray;)Landroid/util/SparseArray;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 201
    invoke-virtual {p2}, Landroid/util/SparseArray;->clear()V

    const/4 p1, 0x0

    .line 202
    :goto_0
    iget-object v0, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment$2;->this$0:Lcom/narvii/poweruser/strike/StrikeWarningFragment;

    invoke-static {v0}, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->access$000(Lcom/narvii/poweruser/strike/StrikeWarningFragment;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment$2;->this$0:Lcom/narvii/poweruser/strike/StrikeWarningFragment;

    invoke-static {v1}, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->access$000(Lcom/narvii/poweruser/strike/StrikeWarningFragment;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "h"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-object p2
.end method
