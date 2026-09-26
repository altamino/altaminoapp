.class Lcom/narvii/flag/resolve/FlagResolveBar$10;
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
    iput-object p1, p0, Lcom/narvii/flag/resolve/FlagResolveBar$10;->this$0:Lcom/narvii/flag/resolve/FlagResolveBar;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/flag/resolve/FlagResolveBar$10;->val$dialog:Lcom/narvii/util/dialog/AlertDialog;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/flag/resolve/FlagResolveBar$10;->val$dialog:Lcom/narvii/util/dialog/AlertDialog;

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
    iget-object p1, p0, Lcom/narvii/flag/resolve/FlagResolveBar$10;->val$dialog:Lcom/narvii/util/dialog/AlertDialog;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 14
    .line 15
    :cond_0
    iget-object p1, p0, Lcom/narvii/flag/resolve/FlagResolveBar$10;->this$0:Lcom/narvii/flag/resolve/FlagResolveBar;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/narvii/flag/resolve/FlagResolveBar;->loadNextFlag()V

    .line 19
    return-void
.end method
