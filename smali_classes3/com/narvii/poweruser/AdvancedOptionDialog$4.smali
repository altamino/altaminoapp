.class Lcom/narvii/poweruser/AdvancedOptionDialog$4;
.super Ljava/lang/Object;
.source "AdvancedOptionDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/poweruser/AdvancedOptionDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;


# direct methods
.method constructor <init>(Lcom/narvii/poweruser/AdvancedOptionDialog;)V
    .locals 0

    .line 548
    iput-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$4;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 551
    instance-of v0, p1, Lcom/narvii/widget/FlagItemLayout;

    if-eqz v0, :cond_0

    .line 552
    check-cast p1, Lcom/narvii/widget/FlagItemLayout;

    .line 553
    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$4;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    const v1, 0x7f0f00ae

    invoke-static {v0, p1, v1}, Lcom/narvii/poweruser/AdvancedOptionDialog;->access$000(Lcom/narvii/poweruser/AdvancedOptionDialog;Lcom/narvii/widget/FlagItemLayout;I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 554
    iget-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$4;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    invoke-static {p1}, Lcom/narvii/poweruser/AdvancedOptionDialog;->access$100(Lcom/narvii/poweruser/AdvancedOptionDialog;)Lcom/narvii/model/NVObject;

    move-result-object p1

    instance-of p1, p1, Lcom/narvii/model/User;

    if-eqz p1, :cond_0

    .line 555
    iget-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$4;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    invoke-static {p1}, Lcom/narvii/poweruser/AdvancedOptionDialog;->access$100(Lcom/narvii/poweruser/AdvancedOptionDialog;)Lcom/narvii/model/NVObject;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/User;

    invoke-static {p1, v0}, Lcom/narvii/poweruser/AdvancedOptionDialog;->access$1400(Lcom/narvii/poweruser/AdvancedOptionDialog;Lcom/narvii/model/User;)V

    :cond_0
    return-void
.end method
