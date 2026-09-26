.class Lcom/narvii/widget/EditTextIMG$2;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/widget/EditTextIMG$2;->this$0:Lcom/narvii/widget/EditTextIMG;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/EditTextIMG$2;->this$0:Lcom/narvii/widget/EditTextIMG;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/widget/EditTextIMG;->imgMode:Landroid/view/ActionMode$Callback;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    .line 10
    move-result p1

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    iget-object p1, p0, Lcom/narvii/widget/EditTextIMG$2;->this$0:Lcom/narvii/widget/EditTextIMG;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/narvii/widget/EditTextIMG;->dismissActionMode()Z

    .line 18
    const/4 p1, 0x1

    .line 19
    return p1

    .line 20
    :cond_0
    const/4 p1, 0x0

    .line 21
    return p1
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/EditTextIMG$2;->this$0:Lcom/narvii/widget/EditTextIMG;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/widget/EditTextIMG;->imgMode:Landroid/view/ActionMode$Callback;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    .line 10
    move-result p1

    .line 11
    return p1

    .line 12
    :cond_0
    const/4 p1, 0x1

    .line 13
    return p1
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/EditTextIMG$2;->this$0:Lcom/narvii/widget/EditTextIMG;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Lcom/narvii/widget/EditTextIMG;->c(Lcom/narvii/widget/EditTextIMG;Z)V

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/widget/EditTextIMG$2;->this$0:Lcom/narvii/widget/EditTextIMG;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/narvii/widget/EditTextIMG;->imgMode:Landroid/view/ActionMode$Callback;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-interface {v0, p1}, Landroid/view/ActionMode$Callback;->onDestroyActionMode(Landroid/view/ActionMode;)V

    .line 16
    :cond_0
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/EditTextIMG$2;->this$0:Lcom/narvii/widget/EditTextIMG;

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Lcom/narvii/widget/EditTextIMG;->c(Lcom/narvii/widget/EditTextIMG;Z)V

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/widget/EditTextIMG$2;->this$0:Lcom/narvii/widget/EditTextIMG;

    .line 9
    .line 10
    .line 11
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 12
    move-result-wide v2

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v2, v3}, Lcom/narvii/widget/EditTextIMG;->d(Lcom/narvii/widget/EditTextIMG;J)V

    .line 16
    .line 17
    iget-object v0, p0, Lcom/narvii/widget/EditTextIMG$2;->this$0:Lcom/narvii/widget/EditTextIMG;

    .line 18
    .line 19
    iget-object v0, v0, Lcom/narvii/widget/EditTextIMG;->imgMode:Landroid/view/ActionMode$Callback;

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    .line 24
    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    .line 25
    move-result p1

    .line 26
    return p1

    .line 27
    :cond_0
    return v1
.end method
