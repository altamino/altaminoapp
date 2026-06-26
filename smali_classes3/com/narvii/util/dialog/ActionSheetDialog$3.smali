.class Lcom/narvii/util/dialog/ActionSheetDialog$3;
.super Ljava/lang/Object;
.source "ActionSheetDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/util/dialog/ActionSheetDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/util/dialog/ActionSheetDialog;


# direct methods
.method constructor <init>(Lcom/narvii/util/dialog/ActionSheetDialog;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/narvii/util/dialog/ActionSheetDialog$3;->this$0:Lcom/narvii/util/dialog/ActionSheetDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 184
    iget-object v0, p0, Lcom/narvii/util/dialog/ActionSheetDialog$3;->this$0:Lcom/narvii/util/dialog/ActionSheetDialog;

    invoke-static {v0}, Lcom/narvii/util/dialog/ActionSheetDialog;->access$300(Lcom/narvii/util/dialog/ActionSheetDialog;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/narvii/util/dialog/ActionSheetDialog$3;->this$0:Lcom/narvii/util/dialog/ActionSheetDialog;

    invoke-virtual {v0}, Lcom/narvii/util/dialog/ActionSheetDialog;->updateViews()V

    .line 187
    iget-object v0, p0, Lcom/narvii/util/dialog/ActionSheetDialog$3;->this$0:Lcom/narvii/util/dialog/ActionSheetDialog;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->access$302(Lcom/narvii/util/dialog/ActionSheetDialog;Z)Z

    return-void
.end method
