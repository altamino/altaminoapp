.class Lcom/narvii/catalog/CatalogFragment$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/catalog/CatalogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/catalog/CatalogFragment;


# direct methods
.method constructor <init>(Lcom/narvii/catalog/CatalogFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/catalog/CatalogFragment$8;->this$0:Lcom/narvii/catalog/CatalogFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method

.method public static safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V
    .locals 1
    .param p0, "p0"    # Landroidx/fragment/app/Fragment;
    .param p1, "p1"    # Landroid/content/Intent;
    .param p2, "p2"    # I

    const-string v0, "SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    .line 4
    move-result p2

    .line 5
    .line 6
    const-string/jumbo v0, "title"

    .line 7
    .line 8
    const-string v1, "categoryId"

    .line 9
    .line 10
    const-string/jumbo v2, "uid"

    .line 11
    .line 12
    const-class v3, Lcom/narvii/catalog/category/CategoryPickerFragment;

    .line 13
    const/4 v4, 0x1

    .line 14
    .line 15
    .line 16
    sparse-switch p2, :sswitch_data_0

    .line 17
    return v4

    .line 18
    .line 19
    :sswitch_0
    iget-object p2, p0, Lcom/narvii/catalog/CatalogFragment$8;->this$0:Lcom/narvii/catalog/CatalogFragment;

    .line 20
    .line 21
    iget-object p2, p2, Lcom/narvii/catalog/CatalogFragment;->selAdapter:Lcom/narvii/catalog/CatalogFragment$SelAdapter;

    .line 22
    .line 23
    iput-boolean v4, p2, Lcom/narvii/catalog/CatalogFragment$SelAdapter;->selAll:Z

    .line 24
    .line 25
    .line 26
    invoke-virtual {p2}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/view/ActionMode;->invalidate()V

    .line 30
    .line 31
    iget-object p2, p0, Lcom/narvii/catalog/CatalogFragment$8;->this$0:Lcom/narvii/catalog/CatalogFragment;

    .line 32
    .line 33
    .line 34
    const v0, 0x7f1201ec

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 38
    move-result-object p2

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, p2}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 42
    return v4

    .line 43
    .line 44
    :sswitch_1
    iget-object p1, p0, Lcom/narvii/catalog/CatalogFragment$8;->this$0:Lcom/narvii/catalog/CatalogFragment;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Lcom/narvii/catalog/CatalogFragment;->remove()V

    .line 48
    return v4

    .line 49
    .line 50
    .line 51
    :sswitch_2
    invoke-static {v3}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 52
    move-result-object p1

    .line 53
    .line 54
    iget-object p2, p0, Lcom/narvii/catalog/CatalogFragment$8;->this$0:Lcom/narvii/catalog/CatalogFragment;

    .line 55
    .line 56
    iget-object p2, p2, Lcom/narvii/catalog/CatalogFragment;->uid:Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    .line 61
    iget-object p2, p0, Lcom/narvii/catalog/CatalogFragment$8;->this$0:Lcom/narvii/catalog/CatalogFragment;

    .line 62
    .line 63
    iget-object p2, p2, Lcom/narvii/catalog/CatalogFragment;->categoryId:Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    .line 68
    iget-object p2, p0, Lcom/narvii/catalog/CatalogFragment$8;->this$0:Lcom/narvii/catalog/CatalogFragment;

    .line 69
    .line 70
    .line 71
    const v1, 0x7f120ce2

    .line 72
    .line 73
    .line 74
    invoke-virtual {p2, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 75
    move-result-object p2

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 79
    .line 80
    iget-object p2, p0, Lcom/narvii/catalog/CatalogFragment$8;->this$0:Lcom/narvii/catalog/CatalogFragment;

    .line 81
    .line 82
    iget-object v0, p2, Lcom/narvii/catalog/CatalogFragment;->selAdapter:Lcom/narvii/catalog/CatalogFragment$SelAdapter;

    .line 83
    .line 84
    iget-boolean v0, v0, Lcom/narvii/catalog/CatalogFragment$SelAdapter;->selAll:Z

    .line 85
    .line 86
    if-eqz v0, :cond_0

    .line 87
    const/4 v0, 0x3

    .line 88
    goto :goto_0

    .line 89
    :cond_0
    move v0, v4

    .line 90
    .line 91
    .line 92
    :goto_0
    invoke-static {p2, p1, v0}, Lcom/narvii/catalog/CatalogFragment$8;->safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V

    .line 93
    return v4

    .line 94
    .line 95
    :sswitch_3
    iget-object p2, p0, Lcom/narvii/catalog/CatalogFragment$8;->this$0:Lcom/narvii/catalog/CatalogFragment;

    .line 96
    .line 97
    .line 98
    invoke-virtual {p2, v4}, Lcom/narvii/catalog/CatalogFragment;->delete(Z)V

    .line 99
    .line 100
    .line 101
    :sswitch_4
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    .line 102
    return v4

    .line 103
    .line 104
    .line 105
    :sswitch_5
    invoke-static {v3}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 106
    move-result-object p1

    .line 107
    .line 108
    iget-object p2, p0, Lcom/narvii/catalog/CatalogFragment$8;->this$0:Lcom/narvii/catalog/CatalogFragment;

    .line 109
    .line 110
    iget-object p2, p2, Lcom/narvii/catalog/CatalogFragment;->uid:Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    invoke-virtual {p1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 114
    .line 115
    iget-object p2, p0, Lcom/narvii/catalog/CatalogFragment$8;->this$0:Lcom/narvii/catalog/CatalogFragment;

    .line 116
    .line 117
    iget-object p2, p2, Lcom/narvii/catalog/CatalogFragment;->categoryId:Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    invoke-virtual {p1, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 121
    .line 122
    iget-object p2, p0, Lcom/narvii/catalog/CatalogFragment$8;->this$0:Lcom/narvii/catalog/CatalogFragment;

    .line 123
    .line 124
    .line 125
    const v1, 0x7f12008c

    .line 126
    .line 127
    .line 128
    invoke-virtual {p2, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 129
    move-result-object p2

    .line 130
    .line 131
    .line 132
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 133
    .line 134
    iget-object p2, p0, Lcom/narvii/catalog/CatalogFragment$8;->this$0:Lcom/narvii/catalog/CatalogFragment;

    .line 135
    const/4 v0, 0x2

    .line 136
    .line 137
    .line 138
    invoke-static {p2, p1, v0}, Lcom/narvii/catalog/CatalogFragment$8;->safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V

    .line 139
    return v4

    nop

    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    :sswitch_data_0
    .sparse-switch
        0x7f12008c -> :sswitch_5
        0x7f1201e2 -> :sswitch_4
        0x7f1203ae -> :sswitch_3
        0x7f120ce2 -> :sswitch_2
        0x7f120fe3 -> :sswitch_1
        0x7f12107a -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 3

    .line 1
    .line 2
    .line 3
    const v0, 0x7f120ce2

    .line 4
    const/4 v1, 0x0

    .line 5
    .line 6
    .line 7
    invoke-interface {p2, v1, v0, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 8
    move-result-object v0

    .line 9
    const/4 v2, 0x2

    .line 10
    .line 11
    .line 12
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 13
    .line 14
    .line 15
    const v0, 0x7f12008c

    .line 16
    .line 17
    .line 18
    invoke-interface {p2, v1, v0, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    .line 22
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 23
    .line 24
    .line 25
    const v0, 0x7f120fe3

    .line 26
    .line 27
    .line 28
    invoke-interface {p2, v1, v0, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    .line 32
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 33
    .line 34
    .line 35
    const v0, 0x7f1203ae

    .line 36
    .line 37
    .line 38
    invoke-interface {p2, v1, v0, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    .line 42
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 43
    .line 44
    .line 45
    const v0, 0x7f12107a

    .line 46
    .line 47
    .line 48
    invoke-interface {p2, v1, v0, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 49
    move-result-object v0

    .line 50
    .line 51
    .line 52
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 53
    .line 54
    .line 55
    const v0, 0x7f1201e2

    .line 56
    .line 57
    .line 58
    invoke-interface {p2, v1, v0, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 59
    move-result-object v0

    .line 60
    .line 61
    .line 62
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 63
    .line 64
    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment$8;->this$0:Lcom/narvii/catalog/CatalogFragment;

    .line 65
    .line 66
    iget-object v0, v0, Lcom/narvii/catalog/CatalogFragment;->selAdapter:Lcom/narvii/catalog/CatalogFragment$SelAdapter;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0}, Lcom/narvii/list/select/SelectableAdapter;->selections()Ljava/util/List;

    .line 70
    move-result-object v0

    .line 71
    .line 72
    .line 73
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 74
    move-result v0

    .line 75
    .line 76
    .line 77
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 78
    move-result-object v0

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1, v0}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0, p1, p2}, Lcom/narvii/catalog/CatalogFragment$8;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    .line 85
    const/4 p1, 0x1

    .line 86
    return p1
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/catalog/CatalogFragment$8;->this$0:Lcom/narvii/catalog/CatalogFragment;

    .line 3
    const/4 v0, 0x0

    .line 4
    .line 5
    iput-object v0, p1, Lcom/narvii/catalog/CatalogFragment;->actionMode:Landroid/view/ActionMode;

    .line 6
    .line 7
    iget-object p1, p1, Lcom/narvii/catalog/CatalogFragment;->selAdapter:Lcom/narvii/catalog/CatalogFragment$SelAdapter;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/narvii/list/select/SelectableAdapter;->finishSelect()V

    .line 11
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 5

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/catalog/CatalogFragment$8;->this$0:Lcom/narvii/catalog/CatalogFragment;

    .line 3
    .line 4
    iget-object p1, p1, Lcom/narvii/catalog/CatalogFragment;->selAdapter:Lcom/narvii/catalog/CatalogFragment$SelAdapter;

    .line 5
    .line 6
    iget-boolean p1, p1, Lcom/narvii/catalog/CatalogFragment$SelAdapter;->selAll:Z

    .line 7
    .line 8
    .line 9
    const v0, 0x7f120ce2

    .line 10
    .line 11
    .line 12
    invoke-interface {p2, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    iget-object v1, p0, Lcom/narvii/catalog/CatalogFragment$8;->this$0:Lcom/narvii/catalog/CatalogFragment;

    .line 16
    .line 17
    .line 18
    invoke-static {v1}, Lcom/narvii/catalog/CatalogFragment;->v(Lcom/narvii/catalog/CatalogFragment;)Z

    .line 19
    move-result v1

    .line 20
    const/4 v2, 0x0

    .line 21
    const/4 v3, 0x1

    .line 22
    .line 23
    if-nez v1, :cond_1

    .line 24
    .line 25
    if-nez p1, :cond_0

    .line 26
    .line 27
    iget-object v1, p0, Lcom/narvii/catalog/CatalogFragment$8;->this$0:Lcom/narvii/catalog/CatalogFragment;

    .line 28
    .line 29
    iget-object v1, v1, Lcom/narvii/catalog/CatalogFragment;->selAdapter:Lcom/narvii/catalog/CatalogFragment$SelAdapter;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Lcom/narvii/list/select/SelectableAdapter;->selections()Ljava/util/List;

    .line 33
    move-result-object v1

    .line 34
    .line 35
    .line 36
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 37
    move-result v1

    .line 38
    .line 39
    if-lez v1, :cond_1

    .line 40
    :cond_0
    move v1, v3

    .line 41
    goto :goto_0

    .line 42
    :cond_1
    move v1, v2

    .line 43
    .line 44
    .line 45
    :goto_0
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 46
    .line 47
    .line 48
    const v0, 0x7f12008c

    .line 49
    .line 50
    .line 51
    invoke-interface {p2, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 52
    move-result-object v1

    .line 53
    .line 54
    xor-int/lit8 v4, p1, 0x1

    .line 55
    .line 56
    .line 57
    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 58
    .line 59
    .line 60
    invoke-interface {p2, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 61
    move-result-object v0

    .line 62
    .line 63
    iget-object v1, p0, Lcom/narvii/catalog/CatalogFragment$8;->this$0:Lcom/narvii/catalog/CatalogFragment;

    .line 64
    .line 65
    iget-object v1, v1, Lcom/narvii/catalog/CatalogFragment;->selAdapter:Lcom/narvii/catalog/CatalogFragment$SelAdapter;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1}, Lcom/narvii/list/select/SelectableAdapter;->selections()Ljava/util/List;

    .line 69
    move-result-object v1

    .line 70
    .line 71
    .line 72
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 73
    move-result v1

    .line 74
    .line 75
    if-lez v1, :cond_2

    .line 76
    move v1, v3

    .line 77
    goto :goto_1

    .line 78
    :cond_2
    move v1, v2

    .line 79
    .line 80
    .line 81
    :goto_1
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 82
    .line 83
    .line 84
    const v0, 0x7f120fe3

    .line 85
    .line 86
    .line 87
    invoke-interface {p2, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 88
    move-result-object v1

    .line 89
    .line 90
    iget-object v4, p0, Lcom/narvii/catalog/CatalogFragment$8;->this$0:Lcom/narvii/catalog/CatalogFragment;

    .line 91
    .line 92
    .line 93
    invoke-static {v4}, Lcom/narvii/catalog/CatalogFragment;->v(Lcom/narvii/catalog/CatalogFragment;)Z

    .line 94
    move-result v4

    .line 95
    .line 96
    if-nez v4, :cond_3

    .line 97
    .line 98
    if-nez p1, :cond_3

    .line 99
    move v4, v3

    .line 100
    goto :goto_2

    .line 101
    :cond_3
    move v4, v2

    .line 102
    .line 103
    .line 104
    :goto_2
    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 105
    .line 106
    .line 107
    invoke-interface {p2, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 108
    move-result-object v0

    .line 109
    .line 110
    iget-object v1, p0, Lcom/narvii/catalog/CatalogFragment$8;->this$0:Lcom/narvii/catalog/CatalogFragment;

    .line 111
    .line 112
    iget-object v1, v1, Lcom/narvii/catalog/CatalogFragment;->selAdapter:Lcom/narvii/catalog/CatalogFragment$SelAdapter;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v1}, Lcom/narvii/list/select/SelectableAdapter;->selections()Ljava/util/List;

    .line 116
    move-result-object v1

    .line 117
    .line 118
    .line 119
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 120
    move-result v1

    .line 121
    .line 122
    if-lez v1, :cond_4

    .line 123
    move v1, v3

    .line 124
    goto :goto_3

    .line 125
    :cond_4
    move v1, v2

    .line 126
    .line 127
    .line 128
    :goto_3
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 129
    .line 130
    .line 131
    const v0, 0x7f1203ae

    .line 132
    .line 133
    .line 134
    invoke-interface {p2, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 135
    move-result-object v1

    .line 136
    .line 137
    iget-object v4, p0, Lcom/narvii/catalog/CatalogFragment$8;->this$0:Lcom/narvii/catalog/CatalogFragment;

    .line 138
    .line 139
    .line 140
    invoke-static {v4}, Lcom/narvii/catalog/CatalogFragment;->v(Lcom/narvii/catalog/CatalogFragment;)Z

    .line 141
    move-result v4

    .line 142
    .line 143
    if-eqz v4, :cond_5

    .line 144
    .line 145
    if-nez p1, :cond_5

    .line 146
    move v4, v3

    .line 147
    goto :goto_4

    .line 148
    :cond_5
    move v4, v2

    .line 149
    .line 150
    .line 151
    :goto_4
    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 152
    .line 153
    .line 154
    invoke-interface {p2, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 155
    move-result-object v0

    .line 156
    .line 157
    iget-object v1, p0, Lcom/narvii/catalog/CatalogFragment$8;->this$0:Lcom/narvii/catalog/CatalogFragment;

    .line 158
    .line 159
    iget-object v1, v1, Lcom/narvii/catalog/CatalogFragment;->selAdapter:Lcom/narvii/catalog/CatalogFragment$SelAdapter;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v1}, Lcom/narvii/list/select/SelectableAdapter;->selections()Ljava/util/List;

    .line 163
    move-result-object v1

    .line 164
    .line 165
    .line 166
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 167
    move-result v1

    .line 168
    .line 169
    if-lez v1, :cond_6

    .line 170
    move v2, v3

    .line 171
    .line 172
    .line 173
    :cond_6
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 174
    .line 175
    .line 176
    const v0, 0x7f12107a

    .line 177
    .line 178
    .line 179
    invoke-interface {p2, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 180
    move-result-object v0

    .line 181
    .line 182
    xor-int/lit8 v1, p1, 0x1

    .line 183
    .line 184
    .line 185
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 186
    .line 187
    .line 188
    const v0, 0x7f1201e2

    .line 189
    .line 190
    .line 191
    invoke-interface {p2, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 192
    move-result-object p2

    .line 193
    .line 194
    .line 195
    invoke-interface {p2, p1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 196
    return v3
.end method
