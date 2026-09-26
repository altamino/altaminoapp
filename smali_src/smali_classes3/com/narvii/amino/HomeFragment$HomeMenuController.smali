.class Lcom/narvii/amino/HomeFragment$HomeMenuController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/app/NVFragment$MenuController;
.implements Ljava/lang/Runnable;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;
.implements Landroid/widget/PopupMenu$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/amino/HomeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HomeMenuController"
.end annotation


# instance fields
.field clients:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/narvii/app/NVFragment;",
            ">;"
        }
    .end annotation
.end field

.field container:Landroid/view/ViewGroup;

.field hidden:Z

.field host:Landroidx/fragment/app/Fragment;

.field iconMenus:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/MenuItem;",
            ">;"
        }
    .end annotation
.end field

.field final menuHeight:I

.field popupBtn:Landroid/view/View;

.field popupDirty:Z

.field popupMenu:Landroid/widget/PopupMenu;

.field popupShown:Z

.field scrollDisabled:Z

.field scrollY:I

.field final synthetic this$0:Lcom/narvii/amino/HomeFragment;

.field topMargin:I

.field view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/narvii/amino/HomeFragment;Landroidx/fragment/app/Fragment;)V
    .locals 1

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/amino/HomeFragment$HomeMenuController;->this$0:Lcom/narvii/amino/HomeFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    iput-object v0, p0, Lcom/narvii/amino/HomeFragment$HomeMenuController;->clients:Ljava/util/ArrayList;

    .line 13
    .line 14
    new-instance v0, Ljava/util/ArrayList;

    .line 15
    .line 16
    .line 17
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .line 19
    iput-object v0, p0, Lcom/narvii/amino/HomeFragment$HomeMenuController;->iconMenus:Ljava/util/ArrayList;

    .line 20
    .line 21
    iput-object p2, p0, Lcom/narvii/amino/HomeFragment$HomeMenuController;->host:Landroidx/fragment/app/Fragment;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    const/high16 p2, 0x42480000    # 50.0f

    .line 28
    .line 29
    .line 30
    invoke-static {p1, p2}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 31
    move-result p1

    .line 32
    float-to-int p1, p1

    .line 33
    .line 34
    iput p1, p0, Lcom/narvii/amino/HomeFragment$HomeMenuController;->menuHeight:I

    .line 35
    return-void
.end method


# virtual methods
.method getView()Landroid/view/View;
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/amino/HomeFragment$HomeMenuController;->view:Landroid/view/View;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/amino/HomeFragment$HomeMenuController;->this$0:Lcom/narvii/amino/HomeFragment;

    .line 7
    .line 8
    iget-object v0, v0, Lcom/narvii/amino/HomeFragment;->menuFrame:Landroid/widget/FrameLayout;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    iget-object v1, p0, Lcom/narvii/amino/HomeFragment$HomeMenuController;->this$0:Lcom/narvii/amino/HomeFragment;

    .line 19
    .line 20
    iget-object v1, v1, Lcom/narvii/amino/HomeFragment;->menuFrame:Landroid/widget/FrameLayout;

    .line 21
    .line 22
    .line 23
    const v2, 0x7f0d036b

    .line 24
    const/4 v3, 0x0

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 28
    move-result-object v1

    .line 29
    .line 30
    iput-object v1, p0, Lcom/narvii/amino/HomeFragment$HomeMenuController;->view:Landroid/view/View;

    .line 31
    .line 32
    check-cast v1, Landroid/view/ViewGroup;

    .line 33
    .line 34
    iput-object v1, p0, Lcom/narvii/amino/HomeFragment$HomeMenuController;->container:Landroid/view/ViewGroup;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, v3}, Lcom/narvii/amino/HomeFragment$HomeMenuController;->update(Z)V

    .line 38
    .line 39
    .line 40
    const v1, 0x7f0d036c

    .line 41
    .line 42
    iget-object v2, p0, Lcom/narvii/amino/HomeFragment$HomeMenuController;->container:Landroid/view/ViewGroup;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 46
    move-result-object v0

    .line 47
    .line 48
    iput-object v0, p0, Lcom/narvii/amino/HomeFragment$HomeMenuController;->popupBtn:Landroid/view/View;

    .line 49
    .line 50
    .line 51
    const v1, 0x7f0a067a

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 55
    move-result-object v0

    .line 56
    .line 57
    check-cast v0, Landroid/widget/ImageView;

    .line 58
    .line 59
    .line 60
    const v1, 0x7f08006f

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 64
    .line 65
    iget-object v0, p0, Lcom/narvii/amino/HomeFragment$HomeMenuController;->popupBtn:Landroid/view/View;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0}, Lcom/narvii/amino/HomeFragment$HomeMenuController;->run()V

    .line 72
    .line 73
    :cond_0
    iget-object v0, p0, Lcom/narvii/amino/HomeFragment$HomeMenuController;->view:Landroid/view/View;

    .line 74
    return-object v0
.end method

.method invalidate()V
    .locals 2

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6
    const/4 v1, 0x1

    .line 7
    .line 8
    iput-boolean v1, p0, Lcom/narvii/amino/HomeFragment$HomeMenuController;->popupDirty:Z

    .line 9
    .line 10
    iget-boolean v1, p0, Lcom/narvii/amino/HomeFragment$HomeMenuController;->popupShown:Z

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 16
    :cond_0
    return-void
.end method

.method public invalidateMenu(Lcom/narvii/app/NVFragment;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/amino/HomeFragment$HomeMenuController;->invalidate()V

    .line 4
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    instance-of v0, v0, Landroid/view/MenuItem;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    check-cast p1, Landroid/view/MenuItem;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p1}, Lcom/narvii/amino/HomeFragment$HomeMenuController;->onMenuItemClick(Landroid/view/MenuItem;)Z

    .line 18
    goto :goto_1

    .line 19
    .line 20
    :cond_0
    iget-object p1, p0, Lcom/narvii/amino/HomeFragment$HomeMenuController;->iconMenus:Ljava/util/ArrayList;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 24
    move-result-object p1

    .line 25
    .line 26
    .line 27
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    move-result v0

    .line 29
    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    .line 33
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    check-cast v0, Landroid/view/MenuItem;

    .line 37
    const/4 v1, 0x0

    .line 38
    .line 39
    .line 40
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 41
    goto :goto_0

    .line 42
    .line 43
    :cond_1
    iget-object p1, p0, Lcom/narvii/amino/HomeFragment$HomeMenuController;->popupMenu:Landroid/widget/PopupMenu;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1}, Landroid/widget/PopupMenu;->show()V

    .line 47
    :goto_1
    return-void
.end method

.method public onDismiss(Landroid/widget/PopupMenu;)V
    .locals 2

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/amino/HomeFragment$HomeMenuController;->iconMenus:Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    check-cast v0, Landroid/view/MenuItem;

    .line 19
    const/4 v1, 0x1

    .line 20
    .line 21
    .line 22
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 p1, 0x0

    .line 25
    .line 26
    iput-boolean p1, p0, Lcom/narvii/amino/HomeFragment$HomeMenuController;->popupShown:Z

    .line 27
    .line 28
    iget-boolean p1, p0, Lcom/narvii/amino/HomeFragment$HomeMenuController;->popupDirty:Z

    .line 29
    .line 30
    if-eqz p1, :cond_1

    .line 31
    .line 32
    sget-object p1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/narvii/amino/HomeFragment$HomeMenuController;->run()V

    .line 39
    :cond_1
    return-void
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/amino/HomeFragment$HomeMenuController;->clients:Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    check-cast v1, Lcom/narvii/app/NVFragment;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 22
    move-result v1

    .line 23
    .line 24
    if-eqz v1, :cond_0

    .line 25
    const/4 p1, 0x1

    .line 26
    return p1

    .line 27
    :cond_1
    const/4 p1, 0x0

    .line 28
    return p1
.end method

.method public onScrollDistance(I)V
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/amino/HomeFragment$HomeMenuController;->scrollDisabled:Z

    .line 3
    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    if-lez p1, :cond_0

    .line 7
    goto :goto_0

    .line 8
    .line 9
    :cond_0
    div-int/lit8 p1, p1, 0x2

    .line 10
    .line 11
    :goto_0
    iput p1, p0, Lcom/narvii/amino/HomeFragment$HomeMenuController;->scrollY:I

    .line 12
    const/4 p1, 0x0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p1}, Lcom/narvii/amino/HomeFragment$HomeMenuController;->update(Z)V

    .line 16
    :cond_1
    return-void
.end method

.method public onScrollFinish()V
    .locals 4

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/amino/HomeFragment$HomeMenuController;->scrollDisabled:Z

    .line 3
    .line 4
    if-nez v0, :cond_2

    .line 5
    .line 6
    iget-boolean v0, p0, Lcom/narvii/amino/HomeFragment$HomeMenuController;->hidden:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget v0, p0, Lcom/narvii/amino/HomeFragment$HomeMenuController;->menuHeight:I

    .line 11
    neg-int v0, v0

    .line 12
    goto :goto_0

    .line 13
    .line 14
    :cond_0
    iget v0, p0, Lcom/narvii/amino/HomeFragment$HomeMenuController;->topMargin:I

    .line 15
    .line 16
    :goto_0
    iget v1, p0, Lcom/narvii/amino/HomeFragment$HomeMenuController;->topMargin:I

    .line 17
    .line 18
    iget v2, p0, Lcom/narvii/amino/HomeFragment$HomeMenuController;->menuHeight:I

    .line 19
    neg-int v2, v2

    .line 20
    .line 21
    iget v3, p0, Lcom/narvii/amino/HomeFragment$HomeMenuController;->scrollY:I

    .line 22
    add-int/2addr v0, v3

    .line 23
    .line 24
    .line 25
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    .line 26
    move-result v0

    .line 27
    .line 28
    .line 29
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    .line 30
    move-result v0

    .line 31
    .line 32
    iget v1, p0, Lcom/narvii/amino/HomeFragment$HomeMenuController;->topMargin:I

    .line 33
    .line 34
    iget v2, p0, Lcom/narvii/amino/HomeFragment$HomeMenuController;->menuHeight:I

    .line 35
    sub-int/2addr v1, v2

    .line 36
    .line 37
    div-int/lit8 v1, v1, 0x2

    .line 38
    const/4 v2, 0x0

    .line 39
    const/4 v3, 0x1

    .line 40
    .line 41
    if-ge v0, v1, :cond_1

    .line 42
    move v0, v3

    .line 43
    goto :goto_1

    .line 44
    :cond_1
    move v0, v2

    .line 45
    .line 46
    :goto_1
    iput-boolean v0, p0, Lcom/narvii/amino/HomeFragment$HomeMenuController;->hidden:Z

    .line 47
    .line 48
    iput v2, p0, Lcom/narvii/amino/HomeFragment$HomeMenuController;->scrollY:I

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, v3}, Lcom/narvii/amino/HomeFragment$HomeMenuController;->update(Z)V

    .line 52
    :cond_2
    return-void
.end method

.method public registerMenu(Lcom/narvii/app/NVFragment;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/amino/HomeFragment$HomeMenuController;->clients:Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/amino/HomeFragment$HomeMenuController;->clients:Ljava/util/ArrayList;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    const/4 p1, 0x0

    .line 15
    .line 16
    iput-object p1, p0, Lcom/narvii/amino/HomeFragment$HomeMenuController;->popupMenu:Landroid/widget/PopupMenu;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/narvii/amino/HomeFragment$HomeMenuController;->invalidate()V

    .line 20
    :cond_0
    return-void
.end method

.method public run()V
    .locals 14

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/amino/HomeFragment$HomeMenuController;->view:Landroid/view/View;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    iget-boolean v0, p0, Lcom/narvii/amino/HomeFragment$HomeMenuController;->popupShown:Z

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    return-void

    .line 11
    :cond_1
    const/4 v0, 0x0

    .line 12
    .line 13
    iput-boolean v0, p0, Lcom/narvii/amino/HomeFragment$HomeMenuController;->popupDirty:Z

    .line 14
    .line 15
    new-instance v1, Ljava/util/LinkedList;

    .line 16
    .line 17
    .line 18
    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 19
    .line 20
    iget-object v2, p0, Lcom/narvii/amino/HomeFragment$HomeMenuController;->container:Landroid/view/ViewGroup;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 24
    move-result v2

    .line 25
    move v3, v0

    .line 26
    .line 27
    :goto_0
    if-ge v3, v2, :cond_3

    .line 28
    .line 29
    iget-object v4, p0, Lcom/narvii/amino/HomeFragment$HomeMenuController;->container:Landroid/view/ViewGroup;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 33
    move-result-object v4

    .line 34
    .line 35
    iget-object v5, p0, Lcom/narvii/amino/HomeFragment$HomeMenuController;->popupBtn:Landroid/view/View;

    .line 36
    .line 37
    if-eq v4, v5, :cond_2

    .line 38
    .line 39
    instance-of v5, v4, Landroid/widget/FrameLayout;

    .line 40
    .line 41
    if-eqz v5, :cond_2

    .line 42
    .line 43
    check-cast v4, Landroid/widget/FrameLayout;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, v4}, Ljava/util/LinkedList;->push(Ljava/lang/Object;)V

    .line 47
    .line 48
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 49
    goto :goto_0

    .line 50
    .line 51
    :cond_3
    iget-object v2, p0, Lcom/narvii/amino/HomeFragment$HomeMenuController;->container:Landroid/view/ViewGroup;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 55
    .line 56
    iget-object v2, p0, Lcom/narvii/amino/HomeFragment$HomeMenuController;->popupMenu:Landroid/widget/PopupMenu;

    .line 57
    .line 58
    if-nez v2, :cond_6

    .line 59
    .line 60
    iget-object v2, p0, Lcom/narvii/amino/HomeFragment$HomeMenuController;->host:Landroidx/fragment/app/Fragment;

    .line 61
    .line 62
    instance-of v3, v2, Lcom/narvii/app/NVFragment;

    .line 63
    .line 64
    if-eqz v3, :cond_4

    .line 65
    .line 66
    check-cast v2, Lcom/narvii/app/NVFragment;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v2}, Lcom/narvii/app/NVFragment;->isDarkTheme()Z

    .line 70
    move-result v2

    .line 71
    .line 72
    if-eqz v2, :cond_4

    .line 73
    const/4 v2, 0x1

    .line 74
    goto :goto_1

    .line 75
    :cond_4
    move v2, v0

    .line 76
    .line 77
    :goto_1
    new-instance v3, Landroid/widget/PopupMenu;

    .line 78
    .line 79
    new-instance v4, Landroid/view/ContextThemeWrapper;

    .line 80
    .line 81
    iget-object v5, p0, Lcom/narvii/amino/HomeFragment$HomeMenuController;->container:Landroid/view/ViewGroup;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 85
    move-result-object v5

    .line 86
    .line 87
    if-eqz v2, :cond_5

    .line 88
    .line 89
    .line 90
    const v2, 0x1030128

    .line 91
    goto :goto_2

    .line 92
    .line 93
    .line 94
    :cond_5
    const v2, 0x103012b

    .line 95
    .line 96
    .line 97
    :goto_2
    invoke-direct {v4, v5, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 98
    .line 99
    iget-object v2, p0, Lcom/narvii/amino/HomeFragment$HomeMenuController;->popupBtn:Landroid/view/View;

    .line 100
    .line 101
    .line 102
    invoke-direct {v3, v4, v2}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 103
    .line 104
    iput-object v3, p0, Lcom/narvii/amino/HomeFragment$HomeMenuController;->popupMenu:Landroid/widget/PopupMenu;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v3, p0}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 108
    .line 109
    iget-object v2, p0, Lcom/narvii/amino/HomeFragment$HomeMenuController;->popupMenu:Landroid/widget/PopupMenu;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v2, p0}, Landroid/widget/PopupMenu;->setOnDismissListener(Landroid/widget/PopupMenu$OnDismissListener;)V

    .line 113
    .line 114
    iget-object v2, p0, Lcom/narvii/amino/HomeFragment$HomeMenuController;->clients:Ljava/util/ArrayList;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 118
    move-result-object v2

    .line 119
    .line 120
    .line 121
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 122
    move-result v3

    .line 123
    .line 124
    if-eqz v3, :cond_6

    .line 125
    .line 126
    .line 127
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 128
    move-result-object v3

    .line 129
    .line 130
    check-cast v3, Lcom/narvii/app/NVFragment;

    .line 131
    .line 132
    iget-object v4, p0, Lcom/narvii/amino/HomeFragment$HomeMenuController;->popupMenu:Landroid/widget/PopupMenu;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v4}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    .line 136
    move-result-object v4

    .line 137
    .line 138
    iget-object v5, p0, Lcom/narvii/amino/HomeFragment$HomeMenuController;->popupMenu:Landroid/widget/PopupMenu;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v5}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    .line 142
    move-result-object v5

    .line 143
    .line 144
    .line 145
    invoke-virtual {v3, v4, v5}, Landroidx/fragment/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 146
    goto :goto_3

    .line 147
    .line 148
    :cond_6
    iget-object v2, p0, Lcom/narvii/amino/HomeFragment$HomeMenuController;->popupMenu:Landroid/widget/PopupMenu;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v2}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    .line 152
    move-result-object v2

    .line 153
    .line 154
    iget-object v3, p0, Lcom/narvii/amino/HomeFragment$HomeMenuController;->clients:Ljava/util/ArrayList;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 158
    move-result-object v3

    .line 159
    .line 160
    .line 161
    :cond_7
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 162
    move-result v4

    .line 163
    .line 164
    if-eqz v4, :cond_8

    .line 165
    .line 166
    .line 167
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 168
    move-result-object v4

    .line 169
    .line 170
    check-cast v4, Lcom/narvii/app/NVFragment;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 174
    move-result-object v5

    .line 175
    .line 176
    if-eqz v5, :cond_7

    .line 177
    .line 178
    .line 179
    invoke-virtual {v4, v2}, Landroidx/fragment/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 180
    goto :goto_4

    .line 181
    .line 182
    :cond_8
    iget-object v3, p0, Lcom/narvii/amino/HomeFragment$HomeMenuController;->iconMenus:Ljava/util/ArrayList;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 186
    .line 187
    .line 188
    invoke-interface {v2}, Landroid/view/Menu;->size()I

    .line 189
    move-result v3

    .line 190
    move v4, v0

    .line 191
    move v5, v4

    .line 192
    .line 193
    :goto_5
    if-ge v4, v3, :cond_c

    .line 194
    .line 195
    .line 196
    invoke-interface {v2, v4}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    .line 197
    move-result-object v6

    .line 198
    .line 199
    .line 200
    invoke-interface {v6}, Landroid/view/MenuItem;->isVisible()Z

    .line 201
    move-result v7

    .line 202
    .line 203
    if-eqz v7, :cond_b

    .line 204
    .line 205
    .line 206
    invoke-static {v6}, Lcom/narvii/amino/HomeFragment;->getMenuItemShowAsAction(Landroid/view/MenuItem;)I

    .line 207
    move-result v7

    .line 208
    .line 209
    and-int/lit8 v8, v7, 0x2

    .line 210
    .line 211
    if-nez v8, :cond_a

    .line 212
    .line 213
    and-int/lit8 v7, v7, 0x1

    .line 214
    .line 215
    if-eqz v7, :cond_9

    .line 216
    goto :goto_6

    .line 217
    .line 218
    :cond_9
    add-int/lit8 v5, v5, 0x1

    .line 219
    goto :goto_7

    .line 220
    .line 221
    :cond_a
    :goto_6
    iget-object v7, p0, Lcom/narvii/amino/HomeFragment$HomeMenuController;->iconMenus:Ljava/util/ArrayList;

    .line 222
    .line 223
    .line 224
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 225
    .line 226
    :cond_b
    :goto_7
    add-int/lit8 v4, v4, 0x1

    .line 227
    goto :goto_5

    .line 228
    .line 229
    :cond_c
    iget-object v2, p0, Lcom/narvii/amino/HomeFragment$HomeMenuController;->iconMenus:Ljava/util/ArrayList;

    .line 230
    .line 231
    .line 232
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 233
    move-result v2

    .line 234
    .line 235
    if-lez v2, :cond_15

    .line 236
    .line 237
    iget-object v2, p0, Lcom/narvii/amino/HomeFragment$HomeMenuController;->container:Landroid/view/ViewGroup;

    .line 238
    .line 239
    .line 240
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 241
    move-result-object v2

    .line 242
    .line 243
    .line 244
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 245
    move-result-object v2

    .line 246
    .line 247
    iget-object v3, p0, Lcom/narvii/amino/HomeFragment$HomeMenuController;->iconMenus:Ljava/util/ArrayList;

    .line 248
    .line 249
    .line 250
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 251
    move-result-object v3

    .line 252
    .line 253
    .line 254
    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 255
    move-result v4

    .line 256
    .line 257
    if-eqz v4, :cond_15

    .line 258
    .line 259
    .line 260
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 261
    move-result-object v4

    .line 262
    .line 263
    check-cast v4, Landroid/view/MenuItem;

    .line 264
    .line 265
    .line 266
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 267
    move-result v6

    .line 268
    const/4 v7, 0x0

    .line 269
    .line 270
    if-eqz v6, :cond_d

    .line 271
    move-object v6, v7

    .line 272
    goto :goto_9

    .line 273
    .line 274
    .line 275
    :cond_d
    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 276
    move-result-object v6

    .line 277
    .line 278
    check-cast v6, Landroid/widget/FrameLayout;

    .line 279
    .line 280
    :goto_9
    if-nez v6, :cond_e

    .line 281
    .line 282
    .line 283
    const v6, 0x7f0d036c

    .line 284
    .line 285
    iget-object v8, p0, Lcom/narvii/amino/HomeFragment$HomeMenuController;->container:Landroid/view/ViewGroup;

    .line 286
    .line 287
    .line 288
    invoke-virtual {v2, v6, v8, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 289
    move-result-object v6

    .line 290
    .line 291
    check-cast v6, Landroid/widget/FrameLayout;

    .line 292
    .line 293
    .line 294
    invoke-virtual {v6, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 295
    .line 296
    .line 297
    :cond_e
    invoke-interface {v4}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    .line 298
    move-result-object v8

    .line 299
    .line 300
    if-nez v8, :cond_f

    .line 301
    .line 302
    .line 303
    invoke-interface {v4}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    .line 304
    move-result-object v7

    .line 305
    .line 306
    .line 307
    :cond_f
    const v9, 0x7f0a067a

    .line 308
    .line 309
    .line 310
    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 311
    move-result-object v9

    .line 312
    .line 313
    check-cast v9, Landroid/widget/ImageView;

    .line 314
    .line 315
    .line 316
    const v10, 0x7f0a0679

    .line 317
    .line 318
    .line 319
    invoke-virtual {v6, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 320
    move-result-object v10

    .line 321
    .line 322
    check-cast v10, Lcom/narvii/widget/ScaleView;

    .line 323
    .line 324
    .line 325
    const v11, 0x7f08033c

    .line 326
    .line 327
    if-nez v8, :cond_10

    .line 328
    .line 329
    .line 330
    invoke-virtual {v10}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 331
    .line 332
    const/16 v8, 0x8

    .line 333
    .line 334
    .line 335
    invoke-virtual {v10, v8}, Landroid/view/View;->setVisibility(I)V

    .line 336
    goto :goto_b

    .line 337
    .line 338
    .line 339
    :cond_10
    const v12, 0x7f0a04d9

    .line 340
    .line 341
    .line 342
    invoke-virtual {v8, v12}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 343
    move-result-object v13

    .line 344
    .line 345
    instance-of v13, v13, Ljava/lang/Integer;

    .line 346
    .line 347
    if-eqz v13, :cond_11

    .line 348
    .line 349
    .line 350
    invoke-virtual {v8, v12}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 351
    move-result-object v11

    .line 352
    .line 353
    check-cast v11, Ljava/lang/Integer;

    .line 354
    .line 355
    .line 356
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    .line 357
    move-result v11

    .line 358
    .line 359
    .line 360
    :cond_11
    const v12, 0x7f0a04da

    .line 361
    .line 362
    .line 363
    invoke-virtual {v8, v12}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 364
    move-result-object v13

    .line 365
    .line 366
    instance-of v13, v13, Ljava/lang/Number;

    .line 367
    .line 368
    if-eqz v13, :cond_12

    .line 369
    .line 370
    .line 371
    invoke-virtual {v8, v12}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 372
    move-result-object v12

    .line 373
    .line 374
    check-cast v12, Ljava/lang/Number;

    .line 375
    .line 376
    .line 377
    invoke-virtual {v12}, Ljava/lang/Number;->floatValue()F

    .line 378
    move-result v12

    .line 379
    goto :goto_a

    .line 380
    .line 381
    :cond_12
    const/high16 v12, 0x3f400000    # 0.75f

    .line 382
    .line 383
    .line 384
    :goto_a
    invoke-virtual {v10, v12}, Lcom/narvii/widget/ScaleView;->setScale(F)V

    .line 385
    .line 386
    .line 387
    invoke-virtual {v10, v0}, Landroid/view/View;->setVisibility(I)V

    .line 388
    .line 389
    .line 390
    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 391
    move-result-object v12

    .line 392
    .line 393
    if-eq v12, v10, :cond_14

    .line 394
    .line 395
    .line 396
    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 397
    move-result-object v12

    .line 398
    .line 399
    if-eqz v12, :cond_13

    .line 400
    .line 401
    .line 402
    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 403
    move-result-object v12

    .line 404
    .line 405
    check-cast v12, Landroid/view/ViewGroup;

    .line 406
    .line 407
    .line 408
    invoke-virtual {v12, v8}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 409
    .line 410
    .line 411
    :cond_13
    invoke-virtual {v10}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 412
    .line 413
    .line 414
    invoke-virtual {v10, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 415
    .line 416
    .line 417
    :cond_14
    :goto_b
    invoke-virtual {v9, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 418
    .line 419
    .line 420
    invoke-virtual {v6, v11}, Landroid/view/View;->setBackgroundResource(I)V

    .line 421
    .line 422
    .line 423
    invoke-virtual {v6, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 424
    .line 425
    iget-object v4, p0, Lcom/narvii/amino/HomeFragment$HomeMenuController;->container:Landroid/view/ViewGroup;

    .line 426
    .line 427
    .line 428
    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 429
    .line 430
    goto/16 :goto_8

    .line 431
    .line 432
    :cond_15
    if-lez v5, :cond_16

    .line 433
    .line 434
    iget-object v0, p0, Lcom/narvii/amino/HomeFragment$HomeMenuController;->container:Landroid/view/ViewGroup;

    .line 435
    .line 436
    iget-object v1, p0, Lcom/narvii/amino/HomeFragment$HomeMenuController;->popupBtn:Landroid/view/View;

    .line 437
    .line 438
    .line 439
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 440
    :cond_16
    return-void
.end method

.method public setScrollEnabled(Z)V
    .locals 1

    .line 1
    .line 2
    xor-int/lit8 v0, p1, 0x1

    .line 3
    .line 4
    iput-boolean v0, p0, Lcom/narvii/amino/HomeFragment$HomeMenuController;->scrollDisabled:Z

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    const/4 p1, 0x0

    .line 8
    .line 9
    iput-boolean p1, p0, Lcom/narvii/amino/HomeFragment$HomeMenuController;->hidden:Z

    .line 10
    .line 11
    iput p1, p0, Lcom/narvii/amino/HomeFragment$HomeMenuController;->scrollY:I

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p1}, Lcom/narvii/amino/HomeFragment$HomeMenuController;->update(Z)V

    .line 15
    :cond_0
    return-void
.end method

.method public setTopMargin(IZ)V
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/amino/HomeFragment$HomeMenuController;->topMargin:I

    .line 3
    .line 4
    if-eq v0, p1, :cond_0

    .line 5
    .line 6
    iput p1, p0, Lcom/narvii/amino/HomeFragment$HomeMenuController;->topMargin:I

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p2}, Lcom/narvii/amino/HomeFragment$HomeMenuController;->update(Z)V

    .line 10
    :cond_0
    return-void
.end method

.method public unregisterMenu(Lcom/narvii/app/NVFragment;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/amino/HomeFragment$HomeMenuController;->clients:Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 6
    const/4 p1, 0x0

    .line 7
    .line 8
    iput-object p1, p0, Lcom/narvii/amino/HomeFragment$HomeMenuController;->popupMenu:Landroid/widget/PopupMenu;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/narvii/amino/HomeFragment$HomeMenuController;->invalidate()V

    .line 12
    return-void
.end method

.method update(Z)V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/amino/HomeFragment$HomeMenuController;->container:Landroid/view/ViewGroup;

    .line 3
    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    iget-boolean v0, p0, Lcom/narvii/amino/HomeFragment$HomeMenuController;->hidden:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget v0, p0, Lcom/narvii/amino/HomeFragment$HomeMenuController;->menuHeight:I

    .line 11
    neg-int v0, v0

    .line 12
    goto :goto_0

    .line 13
    .line 14
    :cond_0
    iget v0, p0, Lcom/narvii/amino/HomeFragment$HomeMenuController;->topMargin:I

    .line 15
    .line 16
    :goto_0
    iget v1, p0, Lcom/narvii/amino/HomeFragment$HomeMenuController;->topMargin:I

    .line 17
    .line 18
    iget v2, p0, Lcom/narvii/amino/HomeFragment$HomeMenuController;->menuHeight:I

    .line 19
    neg-int v2, v2

    .line 20
    .line 21
    iget v3, p0, Lcom/narvii/amino/HomeFragment$HomeMenuController;->scrollY:I

    .line 22
    add-int/2addr v0, v3

    .line 23
    .line 24
    .line 25
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    .line 26
    move-result v0

    .line 27
    .line 28
    .line 29
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    .line 30
    move-result v0

    .line 31
    .line 32
    if-eqz p1, :cond_1

    .line 33
    .line 34
    iget-object p1, p0, Lcom/narvii/amino/HomeFragment$HomeMenuController;->container:Landroid/view/ViewGroup;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 38
    move-result-object p1

    .line 39
    int-to-float v0, v0

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 43
    move-result-object p1

    .line 44
    .line 45
    const-wide/16 v0, 0xc8

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 49
    move-result-object p1

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 53
    goto :goto_1

    .line 54
    .line 55
    :cond_1
    iget-object p1, p0, Lcom/narvii/amino/HomeFragment$HomeMenuController;->container:Landroid/view/ViewGroup;

    .line 56
    int-to-float v0, v0

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 60
    :cond_2
    :goto_1
    return-void
.end method
