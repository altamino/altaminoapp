.class Lcom/narvii/flag/resolve/FlagResolveBar$9;
.super Ljava/lang/Object;
.source "FlagResolveBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/flag/resolve/FlagResolveBar;->showMessageUserDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/flag/resolve/FlagResolveBar;

.field final synthetic val$dialog:Lcom/narvii/util/dialog/AlertDialog;


# direct methods
.method constructor <init>(Lcom/narvii/flag/resolve/FlagResolveBar;Lcom/narvii/util/dialog/AlertDialog;)V
    .locals 0

    .line 379
    iput-object p1, p0, Lcom/narvii/flag/resolve/FlagResolveBar$9;->this$0:Lcom/narvii/flag/resolve/FlagResolveBar;

    iput-object p2, p0, Lcom/narvii/flag/resolve/FlagResolveBar$9;->val$dialog:Lcom/narvii/util/dialog/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 382
    iget-object p1, p0, Lcom/narvii/flag/resolve/FlagResolveBar$9;->val$dialog:Lcom/narvii/util/dialog/AlertDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 383
    iget-object p1, p0, Lcom/narvii/flag/resolve/FlagResolveBar$9;->val$dialog:Lcom/narvii/util/dialog/AlertDialog;

    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 385
    :cond_0
    iget-object p1, p0, Lcom/narvii/flag/resolve/FlagResolveBar$9;->this$0:Lcom/narvii/flag/resolve/FlagResolveBar;

    invoke-virtual {p1}, Lcom/narvii/flag/resolve/FlagResolveBar;->showAlreadyResolved()V

    const/4 p1, 0x0

    .line 387
    iget-object v0, p0, Lcom/narvii/flag/resolve/FlagResolveBar$9;->this$0:Lcom/narvii/flag/resolve/FlagResolveBar;

    invoke-static {v0}, Lcom/narvii/flag/resolve/FlagResolveBar;->access$1000(Lcom/narvii/flag/resolve/FlagResolveBar;)Lcom/narvii/app/NVActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/narvii/flag/resolve/FlagResolveBar$9;->this$0:Lcom/narvii/flag/resolve/FlagResolveBar;

    invoke-static {v0}, Lcom/narvii/flag/resolve/FlagResolveBar;->access$1000(Lcom/narvii/flag/resolve/FlagResolveBar;)Lcom/narvii/app/NVActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/app/NVActivity;->getRootFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/narvii/flag/resolve/FlagResolveBar$FlagAttachObject;

    if-eqz v0, :cond_1

    .line 388
    iget-object p1, p0, Lcom/narvii/flag/resolve/FlagResolveBar$9;->this$0:Lcom/narvii/flag/resolve/FlagResolveBar;

    invoke-static {p1}, Lcom/narvii/flag/resolve/FlagResolveBar;->access$1000(Lcom/narvii/flag/resolve/FlagResolveBar;)Lcom/narvii/app/NVActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/app/NVActivity;->getRootFragment()Landroid/support/v4/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/narvii/flag/resolve/FlagResolveBar$FlagAttachObject;

    invoke-interface {p1}, Lcom/narvii/flag/resolve/FlagResolveBar$FlagAttachObject;->attachObject()Lcom/narvii/model/NVObject;

    move-result-object p1

    .line 390
    :cond_1
    iget-object v0, p0, Lcom/narvii/flag/resolve/FlagResolveBar$9;->this$0:Lcom/narvii/flag/resolve/FlagResolveBar;

    if-nez p1, :cond_2

    iget-object p1, v0, Lcom/narvii/flag/resolve/FlagResolveBar;->mFlag:Lcom/narvii/flag/model/Flag;

    iget-object p1, p1, Lcom/narvii/flag/model/Flag;->objectUser:Lcom/narvii/model/User;

    :cond_2
    invoke-static {v0, p1}, Lcom/narvii/flag/resolve/FlagResolveBar;->access$800(Lcom/narvii/flag/resolve/FlagResolveBar;Lcom/narvii/model/NVObject;)V

    return-void
.end method
