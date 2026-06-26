.class Lcom/narvii/flag/report/FlagRequestDialog$2$1;
.super Ljava/lang/Object;
.source "FlagRequestDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/flag/report/FlagRequestDialog$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/flag/report/FlagRequestDialog$2;


# direct methods
.method constructor <init>(Lcom/narvii/flag/report/FlagRequestDialog$2;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/narvii/flag/report/FlagRequestDialog$2$1;->this$1:Lcom/narvii/flag/report/FlagRequestDialog$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/narvii/flag/report/FlagRequestDialog$2$1;->this$1:Lcom/narvii/flag/report/FlagRequestDialog$2;

    iget-object v0, v0, Lcom/narvii/flag/report/FlagRequestDialog$2;->this$0:Lcom/narvii/flag/report/FlagRequestDialog;

    invoke-virtual {v0}, Lcom/narvii/flag/report/FlagRequestDialog;->onSendRequest()V

    .line 93
    iget-object v0, p0, Lcom/narvii/flag/report/FlagRequestDialog$2$1;->this$1:Lcom/narvii/flag/report/FlagRequestDialog$2;

    iget-object v0, v0, Lcom/narvii/flag/report/FlagRequestDialog$2;->this$0:Lcom/narvii/flag/report/FlagRequestDialog;

    invoke-static {v0}, Lcom/narvii/flag/report/FlagRequestDialog;->access$000(Lcom/narvii/flag/report/FlagRequestDialog;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 94
    iget-object v0, p0, Lcom/narvii/flag/report/FlagRequestDialog$2$1;->this$1:Lcom/narvii/flag/report/FlagRequestDialog$2;

    iget-object v0, v0, Lcom/narvii/flag/report/FlagRequestDialog$2;->this$0:Lcom/narvii/flag/report/FlagRequestDialog;

    invoke-virtual {v0}, Lcom/narvii/flag/report/FlagRequestDialog;->hasPreBlockRequest()Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/narvii/flag/report/FlagRequestDialog$2$1;->this$1:Lcom/narvii/flag/report/FlagRequestDialog$2;

    iget-object v0, v0, Lcom/narvii/flag/report/FlagRequestDialog$2;->this$0:Lcom/narvii/flag/report/FlagRequestDialog;

    invoke-virtual {v0}, Lcom/narvii/flag/report/FlagRequestDialog;->sendFlagRequest()V

    goto :goto_0

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/narvii/flag/report/FlagRequestDialog$2$1;->this$1:Lcom/narvii/flag/report/FlagRequestDialog$2;

    iget-object v0, v0, Lcom/narvii/flag/report/FlagRequestDialog$2;->this$0:Lcom/narvii/flag/report/FlagRequestDialog;

    invoke-virtual {v0}, Lcom/narvii/flag/report/FlagRequestDialog;->execPreBlockRequest()V

    :goto_0
    return-void
.end method
