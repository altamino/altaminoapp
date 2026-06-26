.class Lcom/narvii/flag/resolve/FlagResolveBar$10;
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

    .line 395
    iput-object p1, p0, Lcom/narvii/flag/resolve/FlagResolveBar$10;->this$0:Lcom/narvii/flag/resolve/FlagResolveBar;

    iput-object p2, p0, Lcom/narvii/flag/resolve/FlagResolveBar$10;->val$dialog:Lcom/narvii/util/dialog/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 398
    iget-object p1, p0, Lcom/narvii/flag/resolve/FlagResolveBar$10;->val$dialog:Lcom/narvii/util/dialog/AlertDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 399
    iget-object p1, p0, Lcom/narvii/flag/resolve/FlagResolveBar$10;->val$dialog:Lcom/narvii/util/dialog/AlertDialog;

    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 401
    :cond_0
    iget-object p1, p0, Lcom/narvii/flag/resolve/FlagResolveBar$10;->this$0:Lcom/narvii/flag/resolve/FlagResolveBar;

    invoke-virtual {p1}, Lcom/narvii/flag/resolve/FlagResolveBar;->loadNextFlag()V

    return-void
.end method
