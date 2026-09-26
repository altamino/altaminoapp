.class Lcom/narvii/flag/resolve/FlagResolveBar$9;
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
    iput-object p1, p0, Lcom/narvii/flag/resolve/FlagResolveBar$9;->this$0:Lcom/narvii/flag/resolve/FlagResolveBar;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/flag/resolve/FlagResolveBar$9;->val$dialog:Lcom/narvii/util/dialog/AlertDialog;

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
    iget-object p1, p0, Lcom/narvii/flag/resolve/FlagResolveBar$9;->val$dialog:Lcom/narvii/util/dialog/AlertDialog;

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
    iget-object p1, p0, Lcom/narvii/flag/resolve/FlagResolveBar$9;->val$dialog:Lcom/narvii/util/dialog/AlertDialog;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 14
    .line 15
    :cond_0
    iget-object p1, p0, Lcom/narvii/flag/resolve/FlagResolveBar$9;->this$0:Lcom/narvii/flag/resolve/FlagResolveBar;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/narvii/flag/resolve/FlagResolveBar;->showAlreadyResolved()V

    .line 19
    .line 20
    iget-object p1, p0, Lcom/narvii/flag/resolve/FlagResolveBar$9;->this$0:Lcom/narvii/flag/resolve/FlagResolveBar;

    .line 21
    .line 22
    .line 23
    invoke-static {p1}, Lcom/narvii/flag/resolve/FlagResolveBar;->h(Lcom/narvii/flag/resolve/FlagResolveBar;)Lcom/narvii/app/NVActivity;

    .line 24
    move-result-object p1

    .line 25
    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    iget-object p1, p0, Lcom/narvii/flag/resolve/FlagResolveBar$9;->this$0:Lcom/narvii/flag/resolve/FlagResolveBar;

    .line 29
    .line 30
    .line 31
    invoke-static {p1}, Lcom/narvii/flag/resolve/FlagResolveBar;->h(Lcom/narvii/flag/resolve/FlagResolveBar;)Lcom/narvii/app/NVActivity;

    .line 32
    move-result-object p1

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/narvii/app/NVActivity;->getRootFragment()Landroidx/fragment/app/Fragment;

    .line 36
    move-result-object p1

    .line 37
    .line 38
    instance-of p1, p1, Lcom/narvii/flag/resolve/FlagResolveBar$FlagAttachObject;

    .line 39
    .line 40
    if-eqz p1, :cond_1

    .line 41
    .line 42
    iget-object p1, p0, Lcom/narvii/flag/resolve/FlagResolveBar$9;->this$0:Lcom/narvii/flag/resolve/FlagResolveBar;

    .line 43
    .line 44
    .line 45
    invoke-static {p1}, Lcom/narvii/flag/resolve/FlagResolveBar;->h(Lcom/narvii/flag/resolve/FlagResolveBar;)Lcom/narvii/app/NVActivity;

    .line 46
    move-result-object p1

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Lcom/narvii/app/NVActivity;->getRootFragment()Landroidx/fragment/app/Fragment;

    .line 50
    move-result-object p1

    .line 51
    .line 52
    check-cast p1, Lcom/narvii/flag/resolve/FlagResolveBar$FlagAttachObject;

    .line 53
    .line 54
    .line 55
    invoke-interface {p1}, Lcom/narvii/flag/resolve/FlagResolveBar$FlagAttachObject;->attachObject()Lcom/narvii/model/NVObject;

    .line 56
    move-result-object p1

    .line 57
    goto :goto_0

    .line 58
    :cond_1
    const/4 p1, 0x0

    .line 59
    .line 60
    :goto_0
    iget-object v0, p0, Lcom/narvii/flag/resolve/FlagResolveBar$9;->this$0:Lcom/narvii/flag/resolve/FlagResolveBar;

    .line 61
    .line 62
    if-nez p1, :cond_2

    .line 63
    .line 64
    iget-object p1, v0, Lcom/narvii/flag/resolve/FlagResolveBar;->mFlag:Lcom/narvii/flag/model/Flag;

    .line 65
    .line 66
    iget-object p1, p1, Lcom/narvii/flag/model/Flag;->objectUser:Lcom/narvii/model/User;

    .line 67
    .line 68
    .line 69
    :cond_2
    invoke-static {v0, p1}, Lcom/narvii/flag/resolve/FlagResolveBar;->j(Lcom/narvii/flag/resolve/FlagResolveBar;Lcom/narvii/model/NVObject;)V

    .line 70
    return-void
.end method
