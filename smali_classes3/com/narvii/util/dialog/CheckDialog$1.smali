.class Lcom/narvii/util/dialog/CheckDialog$1;
.super Ljava/lang/Object;
.source "CheckDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/util/dialog/CheckDialog;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/util/dialog/CheckDialog;


# direct methods
.method constructor <init>(Lcom/narvii/util/dialog/CheckDialog;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/narvii/util/dialog/CheckDialog$1;->this$0:Lcom/narvii/util/dialog/CheckDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/narvii/util/dialog/CheckDialog$1;->this$0:Lcom/narvii/util/dialog/CheckDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/util/dialog/CheckDialog$1;->this$0:Lcom/narvii/util/dialog/CheckDialog;

    invoke-static {v0}, Lcom/narvii/util/dialog/CheckDialog;->access$000(Lcom/narvii/util/dialog/CheckDialog;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/narvii/util/dialog/CheckDialog$1;->this$0:Lcom/narvii/util/dialog/CheckDialog;

    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->dismiss()V

    :cond_0
    return-void
.end method
