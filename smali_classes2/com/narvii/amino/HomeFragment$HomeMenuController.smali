.class Lcom/narvii/amino/HomeFragment$HomeMenuController;
.super Ljava/lang/Object;
.source "HomeFragment.java"

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

.field host:Landroid/support/v4/app/Fragment;

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
.method constructor <init>(Lcom/narvii/amino/HomeFragment;Landroid/support/v4/app/Fragment;)V
    .locals 1

    .line 1011
    iput-object p1, p0, Lcom/narvii/amino/HomeFragment$HomeMenuController;->this$0:Lcom/narvii/amino/HomeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 997
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/amino/HomeFragment$HomeMenuController;->clients:Ljava/util/ArrayList;

    .line 1002
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/amino/HomeFragment$HomeMenuController;->iconMenus:Ljava/util/ArrayList;

    .line 1012
    iput-object p2, p0, Lcom/narvii/amino/HomeFragment$HomeMenuController;->host:Landroid/support/v4/app/Fragment;

    .line 1013
    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 p2, 0x42480000    # 50.0f

    invoke-static {p1, p2}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/narvii/amino/HomeFragment$HomeMenuController;->menuHeight:I

    return-void
.end method


# virtual methods
.method getView()Landroid/view/View;
    .locals 4

    .line 1105
    iget-object v0, p0, Lcom/narvii/amino/HomeFragment$HomeMenuController;->view:Landroid/view/View;

    if-nez v0, :cond_0

    .line 1106
    iget-object v0, p0, Lcom/narvii/amino/HomeFragment$HomeMenuController;->this$0:Lcom/narvii/amino/HomeFragment;

    iget-object v0, v0, Lcom/narvii/amino/HomeFragment;->menuFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1107
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b0339

    .line 1108
    iget-object v2, p0, Lcom/narvii/amino/HomeFragment$HomeMenuController;->this$0:Lcom/narvii/amino/HomeFragment;

    iget-object v2, v2, Lcom/narvii/amino/HomeFragment;->menuFrame:Landroid/widget/FrameLayout;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/narvii/amino/HomeFragment$HomeMenuController;->view:Landroid/view/View;

    .line 1109
    iget-object v1, p0, Lcom/narvii/amino/HomeFragment$HomeMenuController;->view:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/narvii/amino/HomeFragment$HomeMenuController;->container:Landroid/view/ViewGroup;

    .line 1110
    invoke-virtual {p0, v3}, Lcom/narvii/amino/HomeFragment$HomeMenuController;->update(Z)V

    const v1, 0x7f0b033a

    .line 1111
    iget-object v2, p0, Lcom/narvii/amino/HomeFragment$HomeMenuController;->container:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/amino/HomeFragment$HomeMenuController;->popupBtn:Landroid/view/View;

    .line 1112
    iget-object v0, p0, Lcom/narvii/amino/HomeFragment$HomeMenuController;->popupBtn:Landroid/view/View;

    const v1, 0x7f09051f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f080068

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1113
    iget-object v0, p0, Lcom/narvii/amino/HomeFragment$HomeMenuController;->popupBtn:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1115
    invoke-virtual {p0}, Lcom/narvii/amino/HomeFragment$HomeMenuController;->run()V

    .line 1117
    :cond_0
    iget-object v0, p0, Lcom/narvii/amino/HomeFragment$HomeMenuController;->view:Landroid/view/View;

    return-object v0
.end method

.method invalidate()V
    .locals 1

    .line 1097
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    .line 1098
    iput-boolean v0, p0, Lcom/narvii/amino/HomeFragment$HomeMenuController;->popupDirty:Z

    .line 1099
    iget-boolean v0, p0, Lcom/narvii/amino/HomeFragment$HomeMenuController;->popupShown:Z

    if-nez v0, :cond_0

    .line 1100
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public invalidateMenu(Lcom/narvii/app/NVFragment;)V
    .locals 0

    .line 1034
    invoke-virtual {p0}, Lcom/narvii/amino/HomeFragment$HomeMenuController;->invalidate()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1122
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 1123
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/MenuItem;

    invoke-virtual {p0, p1}, Lcom/narvii/amino/HomeFragment$HomeMenuController;->onMenuItemClick(Landroid/view/MenuItem;)Z

    goto :goto_1

    .line 1125
    :cond_0
    iget-object p1, p0, Lcom/narvii/amino/HomeFragment$HomeMenuController;->iconMenus:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MenuItem;

    const/4 v1, 0x0

    .line 1126
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 1128
    :cond_1
    iget-object p1, p0, Lcom/narvii/amino/HomeFragment$HomeMenuController;->popupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {p1}, Landroid/widget/PopupMenu;->show()V

    :goto_1
    return-void
.end method

.method public onDismiss(Landroid/widget/PopupMenu;)V
    .locals 2

    .line 1144
    iget-object p1, p0, Lcom/narvii/amino/HomeFragment$HomeMenuController;->iconMenus:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MenuItem;

    const/4 v1, 0x1

    .line 1145
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1147
    iput-boolean p1, p0, Lcom/narvii/amino/HomeFragment$HomeMenuController;->popupShown:Z

    .line 1148
    iget-boolean p1, p0, Lcom/narvii/amino/HomeFragment$HomeMenuController;->popupDirty:Z

    if-eqz p1, :cond_1

    .line 1149
    sget-object p1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1150
    invoke-virtual {p0}, Lcom/narvii/amino/HomeFragment$HomeMenuController;->run()V

    :cond_1
    return-void
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2

    .line 1134
    iget-object v0, p0, Lcom/narvii/amino/HomeFragment$HomeMenuController;->clients:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/app/NVFragment;

    .line 1135
    invoke-virtual {v1, p1}, Landroid/support/v4/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public onScrollDistance(I)V
    .locals 1

    .line 1057
    iget-boolean v0, p0, Lcom/narvii/amino/HomeFragment$HomeMenuController;->scrollDisabled:Z

    if-nez v0, :cond_1

    if-lez p1, :cond_0

    goto :goto_0

    .line 1058
    :cond_0
    div-int/lit8 p1, p1, 0x2

    :goto_0
    iput p1, p0, Lcom/narvii/amino/HomeFragment$HomeMenuController;->scrollY:I

    const/4 p1, 0x0

    .line 1059
    invoke-virtual {p0, p1}, Lcom/narvii/amino/HomeFragment$HomeMenuController;->update(Z)V

    :cond_1
    return-void
.end method

.method public onScrollFinish()V
    .locals 4

    .line 1065
    iget-boolean v0, p0, Lcom/narvii/amino/HomeFragment$HomeMenuController;->scrollDisabled:Z

    if-nez v0, :cond_2

    .line 1067
    iget-boolean v0, p0, Lcom/narvii/amino/HomeFragment$HomeMenuController;->hidden:Z

    if-eqz v0, :cond_0

    .line 1068
    iget v0, p0, Lcom/narvii/amino/HomeFragment$HomeMenuController;->menuHeight:I

    neg-int v0, v0

    goto :goto_0

    .line 1070
    :cond_0
    iget v0, p0, Lcom/narvii/amino/HomeFragment$HomeMenuController;->topMargin:I

    .line 1072
    :goto_0
    iget v1, p0, Lcom/narvii/amino/HomeFragment$HomeMenuController;->topMargin:I

    iget v2, p0, Lcom/narvii/amino/HomeFragment$HomeMenuController;->menuHeight:I

    neg-int v2, v2

    iget v3, p0, Lcom/narvii/amino/HomeFragment$HomeMenuController;->scrollY:I

    add-int/2addr v0, v3

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1073
    iget v1, p0, Lcom/narvii/amino/HomeFragment$HomeMenuController;->topMargin:I

    iget v2, p0, Lcom/narvii/amino/HomeFragment$HomeMenuController;->menuHeight:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ge v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lcom/narvii/amino/HomeFragment$HomeMenuController;->hidden:Z

    .line 1074
    iput v3, p0, Lcom/narvii/amino/HomeFragment$HomeMenuController;->scrollY:I

    .line 1075
    invoke-virtual {p0, v2}, Lcom/narvii/amino/HomeFragment$HomeMenuController;->update(Z)V

    :cond_2
    return-void
.end method

.method public registerMenu(Lcom/narvii/app/NVFragment;)V
    .locals 1

    .line 1018
    iget-object v0, p0, Lcom/narvii/amino/HomeFragment$HomeMenuController;->clients:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1019
    iget-object v0, p0, Lcom/narvii/amino/HomeFragment$HomeMenuController;->clients:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    .line 1020
    iput-object p1, p0, Lcom/narvii/amino/HomeFragment$HomeMenuController;->popupMenu:Landroid/widget/PopupMenu;

    .line 1021
    invoke-virtual {p0}, Lcom/narvii/amino/HomeFragment$HomeMenuController;->invalidate()V

    :cond_0
    return-void
.end method

.method public run()V
    .locals 15

    .line 1156
    iget-object v0, p0, Lcom/narvii/amino/HomeFragment$HomeMenuController;->view:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 1159
    :cond_0
    iget-boolean v0, p0, Lcom/narvii/amino/HomeFragment$HomeMenuController;->popupShown:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 1162
    iput-boolean v0, p0, Lcom/narvii/amino/HomeFragment$HomeMenuController;->popupDirty:Z

    .line 1164
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 1165
    iget-object v2, p0, Lcom/narvii/amino/HomeFragment$HomeMenuController;->container:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    .line 1166
    iget-object v4, p0, Lcom/narvii/amino/HomeFragment$HomeMenuController;->container:Landroid/view/ViewGroup;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1167
    iget-object v5, p0, Lcom/narvii/amino/HomeFragment$HomeMenuController;->popupBtn:Landroid/view/View;

    if-eq v4, v5, :cond_2

    instance-of v5, v4, Landroid/widget/FrameLayout;

    if-eqz v5, :cond_2

    .line 1168
    check-cast v4, Landroid/widget/FrameLayout;

    invoke-virtual {v1, v4}, Ljava/util/LinkedList;->push(Ljava/lang/Object;)V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1171
    :cond_3
    iget-object v2, p0, Lcom/narvii/amino/HomeFragment$HomeMenuController;->container:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1173
    iget-object v2, p0, Lcom/narvii/amino/HomeFragment$HomeMenuController;->popupMenu:Landroid/widget/PopupMenu;

    if-nez v2, :cond_6

    .line 1174
    iget-object v2, p0, Lcom/narvii/amino/HomeFragment$HomeMenuController;->host:Landroid/support/v4/app/Fragment;

    instance-of v3, v2, Lcom/narvii/app/NVFragment;

    if-eqz v3, :cond_4

    check-cast v2, Lcom/narvii/app/NVFragment;

    invoke-virtual {v2}, Lcom/narvii/app/NVFragment;->isDarkTheme()Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    .line 1175
    :goto_1
    new-instance v3, Landroid/widget/PopupMenu;

    new-instance v4, Landroid/view/ContextThemeWrapper;

    iget-object v5, p0, Lcom/narvii/amino/HomeFragment$HomeMenuController;->container:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    if-eqz v2, :cond_5

    const v2, 0x1030128

    goto :goto_2

    :cond_5
    const v2, 0x103012b

    :goto_2
    invoke-direct {v4, v5, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iget-object v2, p0, Lcom/narvii/amino/HomeFragment$HomeMenuController;->popupBtn:Landroid/view/View;

    invoke-direct {v3, v4, v2}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v3, p0, Lcom/narvii/amino/HomeFragment$HomeMenuController;->popupMenu:Landroid/widget/PopupMenu;

    .line 1176
    iget-object v2, p0, Lcom/narvii/amino/HomeFragment$HomeMenuController;->popupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v2, p0}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 1177
    iget-object v2, p0, Lcom/narvii/amino/HomeFragment$HomeMenuController;->popupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v2, p0}, Landroid/widget/PopupMenu;->setOnDismissListener(Landroid/widget/PopupMenu$OnDismissListener;)V

    .line 1178
    iget-object v2, p0, Lcom/narvii/amino/HomeFragment$HomeMenuController;->clients:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/app/NVFragment;

    .line 1179
    iget-object v4, p0, Lcom/narvii/amino/HomeFragment$HomeMenuController;->popupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v4}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v4

    iget-object v5, p0, Lcom/narvii/amino/HomeFragment$HomeMenuController;->popupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v5}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/support/v4/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    goto :goto_3

    .line 1183
    :cond_6
    iget-object v2, p0, Lcom/narvii/amino/HomeFragment$HomeMenuController;->popupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v2}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    .line 1184
    iget-object v3, p0, Lcom/narvii/amino/HomeFragment$HomeMenuController;->clients:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_7
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/narvii/app/NVFragment;

    .line 1185
    invoke-virtual {v4}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 1186
    invoke-virtual {v4, v2}, Landroid/support/v4/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    goto :goto_4

    .line 1191
    :cond_8
    iget-object v3, p0, Lcom/narvii/amino/HomeFragment$HomeMenuController;->iconMenus:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1192
    invoke-interface {v2}, Landroid/view/Menu;->size()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_5
    if-ge v4, v3, :cond_c

    .line 1193
    invoke-interface {v2, v4}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v6

    .line 1194
    invoke-interface {v6}, Landroid/view/MenuItem;->isVisible()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 1195
    invoke-static {v6}, Lcom/narvii/amino/HomeFragment;->getMenuItemShowAsAction(Landroid/view/MenuItem;)I

    move-result v7

    and-int/lit8 v8, v7, 0x2

    if-nez v8, :cond_a

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_9

    goto :goto_6

    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 1197
    :cond_a
    :goto_6
    iget-object v7, p0, Lcom/narvii/amino/HomeFragment$HomeMenuController;->iconMenus:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    :goto_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 1204
    :cond_c
    iget-object v2, p0, Lcom/narvii/amino/HomeFragment$HomeMenuController;->iconMenus:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_15

    .line 1205
    iget-object v2, p0, Lcom/narvii/amino/HomeFragment$HomeMenuController;->container:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 1206
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 1208
    iget-object v3, p0, Lcom/narvii/amino/HomeFragment$HomeMenuController;->iconMenus:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_15

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/MenuItem;

    .line 1209
    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_d

    move-object v6, v7

    goto :goto_9

    :cond_d
    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout;

    :goto_9
    if-nez v6, :cond_e

    const v6, 0x7f0b033a

    .line 1211
    iget-object v8, p0, Lcom/narvii/amino/HomeFragment$HomeMenuController;->container:Landroid/view/ViewGroup;

    invoke-virtual {v2, v6, v8, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout;

    .line 1212
    invoke-virtual {v6, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1214
    :cond_e
    invoke-interface {v4}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v8

    if-nez v8, :cond_f

    .line 1215
    invoke-interface {v4}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    :cond_f
    const v9, 0x7f09051f

    .line 1216
    invoke-virtual {v6, v9}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    const v10, 0x7f09051e

    .line 1217
    invoke-virtual {v6, v10}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/narvii/widget/ScaleView;

    const v11, 0x7f080244

    const/high16 v12, 0x3f400000    # 0.75f

    if-nez v8, :cond_10

    .line 1221
    invoke-virtual {v10}, Landroid/widget/LinearLayout;->removeAllViews()V

    const/16 v8, 0x8

    .line 1222
    invoke-virtual {v10, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_a

    :cond_10
    const v13, 0x7f0903da

    .line 1224
    invoke-virtual {v8, v13}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v14

    instance-of v14, v14, Ljava/lang/Integer;

    if-eqz v14, :cond_11

    .line 1225
    invoke-virtual {v8, v13}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    :cond_11
    const v13, 0x7f0903db

    .line 1227
    invoke-virtual {v8, v13}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v14

    instance-of v14, v14, Ljava/lang/Number;

    if-eqz v14, :cond_12

    .line 1228
    invoke-virtual {v8, v13}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Number;

    invoke-virtual {v12}, Ljava/lang/Number;->floatValue()F

    move-result v12

    .line 1230
    :cond_12
    invoke-virtual {v10, v12}, Lcom/narvii/widget/ScaleView;->setScale(F)V

    .line 1231
    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1232
    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v12

    if-eq v12, v10, :cond_14

    .line 1233
    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v12

    if-eqz v12, :cond_13

    .line 1234
    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v12

    check-cast v12, Landroid/view/ViewGroup;

    invoke-virtual {v12, v8}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1236
    :cond_13
    invoke-virtual {v10}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1237
    invoke-virtual {v10, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1240
    :cond_14
    :goto_a
    invoke-virtual {v9, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1241
    invoke-virtual {v6, v11}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 1242
    invoke-virtual {v6, v4}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 1243
    iget-object v4, p0, Lcom/narvii/amino/HomeFragment$HomeMenuController;->container:Landroid/view/ViewGroup;

    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_8

    :cond_15
    if-lez v5, :cond_16

    .line 1248
    iget-object v0, p0, Lcom/narvii/amino/HomeFragment$HomeMenuController;->container:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/narvii/amino/HomeFragment$HomeMenuController;->popupBtn:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_16
    return-void
.end method

.method public setScrollEnabled(Z)V
    .locals 1

    xor-int/lit8 v0, p1, 0x1

    .line 1047
    iput-boolean v0, p0, Lcom/narvii/amino/HomeFragment$HomeMenuController;->scrollDisabled:Z

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 1049
    iput-boolean p1, p0, Lcom/narvii/amino/HomeFragment$HomeMenuController;->hidden:Z

    .line 1050
    iput p1, p0, Lcom/narvii/amino/HomeFragment$HomeMenuController;->scrollY:I

    .line 1051
    invoke-virtual {p0, p1}, Lcom/narvii/amino/HomeFragment$HomeMenuController;->update(Z)V

    :cond_0
    return-void
.end method

.method public setTopMargin(IZ)V
    .locals 1

    .line 1039
    iget v0, p0, Lcom/narvii/amino/HomeFragment$HomeMenuController;->topMargin:I

    if-eq v0, p1, :cond_0

    .line 1040
    iput p1, p0, Lcom/narvii/amino/HomeFragment$HomeMenuController;->topMargin:I

    .line 1041
    invoke-virtual {p0, p2}, Lcom/narvii/amino/HomeFragment$HomeMenuController;->update(Z)V

    :cond_0
    return-void
.end method

.method public unregisterMenu(Lcom/narvii/app/NVFragment;)V
    .locals 1

    .line 1027
    iget-object v0, p0, Lcom/narvii/amino/HomeFragment$HomeMenuController;->clients:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    .line 1028
    iput-object p1, p0, Lcom/narvii/amino/HomeFragment$HomeMenuController;->popupMenu:Landroid/widget/PopupMenu;

    .line 1029
    invoke-virtual {p0}, Lcom/narvii/amino/HomeFragment$HomeMenuController;->invalidate()V

    return-void
.end method

.method update(Z)V
    .locals 4

    .line 1080
    iget-object v0, p0, Lcom/narvii/amino/HomeFragment$HomeMenuController;->container:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 1082
    iget-boolean v0, p0, Lcom/narvii/amino/HomeFragment$HomeMenuController;->hidden:Z

    if-eqz v0, :cond_0

    .line 1083
    iget v0, p0, Lcom/narvii/amino/HomeFragment$HomeMenuController;->menuHeight:I

    neg-int v0, v0

    goto :goto_0

    .line 1085
    :cond_0
    iget v0, p0, Lcom/narvii/amino/HomeFragment$HomeMenuController;->topMargin:I

    .line 1087
    :goto_0
    iget v1, p0, Lcom/narvii/amino/HomeFragment$HomeMenuController;->topMargin:I

    iget v2, p0, Lcom/narvii/amino/HomeFragment$HomeMenuController;->menuHeight:I

    neg-int v2, v2

    iget v3, p0, Lcom/narvii/amino/HomeFragment$HomeMenuController;->scrollY:I

    add-int/2addr v0, v3

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-eqz p1, :cond_1

    .line 1089
    iget-object p1, p0, Lcom/narvii/amino/HomeFragment$HomeMenuController;->container:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_1

    .line 1091
    :cond_1
    iget-object p1, p0, Lcom/narvii/amino/HomeFragment$HomeMenuController;->container:Landroid/view/ViewGroup;

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setTranslationY(F)V

    :cond_2
    :goto_1
    return-void
.end method
