.class Lcom/narvii/flag/resolve/FlagResolveBar$8;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/flag/resolve/FlagResolveBar$8;->this$0:Lcom/narvii/flag/resolve/FlagResolveBar;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/flag/resolve/FlagResolveBar$8;->val$dialog:Lcom/narvii/util/dialog/AlertDialog;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/flag/resolve/FlagResolveBar$8;->val$dialog:Lcom/narvii/util/dialog/AlertDialog;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    .line 6
    move-result p1

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Lcom/narvii/flag/resolve/FlagResolveBar$8;->val$dialog:Lcom/narvii/util/dialog/AlertDialog;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 14
    .line 15
    :cond_0
    iget-object p1, p0, Lcom/narvii/flag/resolve/FlagResolveBar$8;->this$0:Lcom/narvii/flag/resolve/FlagResolveBar;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/narvii/flag/resolve/FlagResolveBar;->showAlreadyResolved()V

    .line 19
    .line 20
    new-instance p1, Lcom/narvii/poweruser/AdvanceUserUtils;

    .line 21
    .line 22
    iget-object v0, p0, Lcom/narvii/flag/resolve/FlagResolveBar$8;->this$0:Lcom/narvii/flag/resolve/FlagResolveBar;

    .line 23
    .line 24
    .line 25
    invoke-static {v0}, Lcom/narvii/flag/resolve/FlagResolveBar;->a(Lcom/narvii/flag/resolve/FlagResolveBar;)Lcom/narvii/app/NVContext;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    .line 29
    invoke-direct {p1, v0}, Lcom/narvii/poweruser/AdvanceUserUtils;-><init>(Lcom/narvii/app/NVContext;)V

    .line 30
    .line 31
    new-instance v0, Lcom/narvii/flag/resolve/FlagResolveBar$8$1;

    .line 32
    .line 33
    .line 34
    invoke-direct {v0, p0}, Lcom/narvii/flag/resolve/FlagResolveBar$8$1;-><init>(Lcom/narvii/flag/resolve/FlagResolveBar$8;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v0}, Lcom/narvii/poweruser/AdvanceUserUtils;->showStrikeWarningDialog(Lcom/narvii/util/Callback;)V

    .line 38
    return-void
.end method
