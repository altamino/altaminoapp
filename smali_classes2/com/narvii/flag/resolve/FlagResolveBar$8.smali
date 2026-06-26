.class Lcom/narvii/flag/resolve/FlagResolveBar$8;
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

    .line 353
    iput-object p1, p0, Lcom/narvii/flag/resolve/FlagResolveBar$8;->this$0:Lcom/narvii/flag/resolve/FlagResolveBar;

    iput-object p2, p0, Lcom/narvii/flag/resolve/FlagResolveBar$8;->val$dialog:Lcom/narvii/util/dialog/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 356
    iget-object p1, p0, Lcom/narvii/flag/resolve/FlagResolveBar$8;->val$dialog:Lcom/narvii/util/dialog/AlertDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 357
    iget-object p1, p0, Lcom/narvii/flag/resolve/FlagResolveBar$8;->val$dialog:Lcom/narvii/util/dialog/AlertDialog;

    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 359
    :cond_0
    iget-object p1, p0, Lcom/narvii/flag/resolve/FlagResolveBar$8;->this$0:Lcom/narvii/flag/resolve/FlagResolveBar;

    invoke-virtual {p1}, Lcom/narvii/flag/resolve/FlagResolveBar;->showAlreadyResolved()V

    .line 360
    new-instance p1, Lcom/narvii/poweruser/AdvanceUserUtils;

    iget-object v0, p0, Lcom/narvii/flag/resolve/FlagResolveBar$8;->this$0:Lcom/narvii/flag/resolve/FlagResolveBar;

    invoke-static {v0}, Lcom/narvii/flag/resolve/FlagResolveBar;->access$000(Lcom/narvii/flag/resolve/FlagResolveBar;)Lcom/narvii/app/NVContext;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/narvii/poweruser/AdvanceUserUtils;-><init>(Lcom/narvii/app/NVContext;)V

    .line 361
    new-instance v0, Lcom/narvii/flag/resolve/FlagResolveBar$8$1;

    invoke-direct {v0, p0}, Lcom/narvii/flag/resolve/FlagResolveBar$8$1;-><init>(Lcom/narvii/flag/resolve/FlagResolveBar$8;)V

    invoke-virtual {p1, v0}, Lcom/narvii/poweruser/AdvanceUserUtils;->showStrikeWarningDialog(Lcom/narvii/util/Callback;)V

    return-void
.end method
