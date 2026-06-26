.class Lcom/narvii/poweruser/AdvancedOptionDialog$5$1;
.super Ljava/lang/Object;
.source "AdvancedOptionDialog.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/poweruser/AdvancedOptionDialog$5;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/poweruser/AdvancedOptionDialog$5;


# direct methods
.method constructor <init>(Lcom/narvii/poweruser/AdvancedOptionDialog$5;)V
    .locals 0

    .line 568
    iput-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$5$1;->this$1:Lcom/narvii/poweruser/AdvancedOptionDialog$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Integer;)V
    .locals 1

    if-eqz p1, :cond_2

    .line 572
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 577
    :cond_0
    iget-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$5$1;->this$1:Lcom/narvii/poweruser/AdvancedOptionDialog$5;

    iget-object p1, p1, Lcom/narvii/poweruser/AdvancedOptionDialog$5;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    invoke-static {p1}, Lcom/narvii/poweruser/AdvancedOptionDialog;->access$1100(Lcom/narvii/poweruser/AdvancedOptionDialog;)V

    goto :goto_0

    .line 574
    :cond_1
    iget-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$5$1;->this$1:Lcom/narvii/poweruser/AdvancedOptionDialog$5;

    iget-object p1, p1, Lcom/narvii/poweruser/AdvancedOptionDialog$5;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    invoke-static {p1}, Lcom/narvii/poweruser/AdvancedOptionDialog;->access$100(Lcom/narvii/poweruser/AdvancedOptionDialog;)Lcom/narvii/model/NVObject;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/narvii/poweruser/AdvancedOptionDialog;->access$1500(Lcom/narvii/poweruser/AdvancedOptionDialog;Lcom/narvii/model/NVObject;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 568
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/narvii/poweruser/AdvancedOptionDialog$5$1;->call(Ljava/lang/Integer;)V

    return-void
.end method
