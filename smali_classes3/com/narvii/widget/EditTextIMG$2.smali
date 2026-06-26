.class Lcom/narvii/widget/EditTextIMG$2;
.super Ljava/lang/Object;
.source "EditTextIMG.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/widget/EditTextIMG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/widget/EditTextIMG;


# direct methods
.method constructor <init>(Lcom/narvii/widget/EditTextIMG;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/narvii/widget/EditTextIMG$2;->this$0:Lcom/narvii/widget/EditTextIMG;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/narvii/widget/EditTextIMG$2;->this$0:Lcom/narvii/widget/EditTextIMG;

    iget-object v0, v0, Lcom/narvii/widget/EditTextIMG;->imgMode:Landroid/view/ActionMode$Callback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 108
    iget-object p1, p0, Lcom/narvii/widget/EditTextIMG$2;->this$0:Lcom/narvii/widget/EditTextIMG;

    invoke-virtual {p1}, Lcom/narvii/widget/EditTextIMG;->dismissActionMode()Z

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/narvii/widget/EditTextIMG$2;->this$0:Lcom/narvii/widget/EditTextIMG;

    iget-object v0, v0, Lcom/narvii/widget/EditTextIMG;->imgMode:Landroid/view/ActionMode$Callback;

    if-eqz v0, :cond_0

    .line 99
    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 2

    .line 90
    iget-object v0, p0, Lcom/narvii/widget/EditTextIMG$2;->this$0:Lcom/narvii/widget/EditTextIMG;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/narvii/widget/EditTextIMG;->access$002(Lcom/narvii/widget/EditTextIMG;Z)Z

    .line 91
    iget-object v0, p0, Lcom/narvii/widget/EditTextIMG$2;->this$0:Lcom/narvii/widget/EditTextIMG;

    iget-object v0, v0, Lcom/narvii/widget/EditTextIMG;->imgMode:Landroid/view/ActionMode$Callback;

    if-eqz v0, :cond_0

    .line 92
    invoke-interface {v0, p1}, Landroid/view/ActionMode$Callback;->onDestroyActionMode(Landroid/view/ActionMode;)V

    :cond_0
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 4

    .line 79
    iget-object v0, p0, Lcom/narvii/widget/EditTextIMG$2;->this$0:Lcom/narvii/widget/EditTextIMG;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/narvii/widget/EditTextIMG;->access$002(Lcom/narvii/widget/EditTextIMG;Z)Z

    .line 80
    iget-object v0, p0, Lcom/narvii/widget/EditTextIMG$2;->this$0:Lcom/narvii/widget/EditTextIMG;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/narvii/widget/EditTextIMG;->access$102(Lcom/narvii/widget/EditTextIMG;J)J

    .line 81
    iget-object v0, p0, Lcom/narvii/widget/EditTextIMG$2;->this$0:Lcom/narvii/widget/EditTextIMG;

    iget-object v0, v0, Lcom/narvii/widget/EditTextIMG;->imgMode:Landroid/view/ActionMode$Callback;

    if-eqz v0, :cond_0

    .line 82
    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result p1

    return p1

    :cond_0
    return v1
.end method
