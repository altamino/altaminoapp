.class Lcom/narvii/poweruser/strike/StrikeWarningFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment$2;->this$0:Lcom/narvii/poweruser/strike/StrikeWarningFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onCustomize(ILandroid/util/SparseArray;)Landroid/util/SparseArray;
    .locals 2
    .param p2    # Landroid/util/SparseArray;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

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

    .line 1
    .line 2
    .line 3
    invoke-virtual {p2}, Landroid/util/SparseArray;->clear()V

    .line 4
    const/4 p1, 0x0

    .line 5
    .line 6
    :goto_0
    iget-object v0, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment$2;->this$0:Lcom/narvii/poweruser/strike/StrikeWarningFragment;

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->p(Lcom/narvii/poweruser/strike/StrikeWarningFragment;)Landroid/util/SparseArray;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 14
    move-result v0

    .line 15
    .line 16
    if-ge p1, v0, :cond_0

    .line 17
    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    iget-object v1, p0, Lcom/narvii/poweruser/strike/StrikeWarningFragment$2;->this$0:Lcom/narvii/poweruser/strike/StrikeWarningFragment;

    .line 24
    .line 25
    .line 26
    invoke-static {v1}, Lcom/narvii/poweruser/strike/StrikeWarningFragment;->p(Lcom/narvii/poweruser/strike/StrikeWarningFragment;)Landroid/util/SparseArray;

    .line 27
    move-result-object v1

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 31
    move-result-object v1

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    const-string v1, "h"

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    move-result-object v0

    .line 44
    .line 45
    .line 46
    invoke-virtual {p2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 47
    .line 48
    add-int/lit8 p1, p1, 0x1

    .line 49
    goto :goto_0

    .line 50
    :cond_0
    return-object p2
.end method
