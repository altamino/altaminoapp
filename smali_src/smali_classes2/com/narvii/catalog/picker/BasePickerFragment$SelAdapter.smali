.class Lcom/narvii/catalog/picker/BasePickerFragment$SelAdapter;
.super Lcom/narvii/list/select/SelectableAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/catalog/picker/BasePickerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SelAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/catalog/picker/BasePickerFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/catalog/picker/BasePickerFragment;)V
    .locals 2

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/catalog/picker/BasePickerFragment$SelAdapter;->this$0:Lcom/narvii/catalog/picker/BasePickerFragment;

    .line 3
    .line 4
    .line 5
    const v0, 0x7f0d06c2

    .line 6
    const/4 v1, 0x1

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p1, v0, v1}, Lcom/narvii/list/select/SelectableAdapter;-><init>(Lcom/narvii/app/NVContext;IZ)V

    .line 10
    .line 11
    .line 12
    invoke-static {p1, p0}, Lcom/narvii/catalog/picker/BasePickerFragment;->t(Lcom/narvii/catalog/picker/BasePickerFragment;Lcom/narvii/catalog/picker/BasePickerFragment$SelAdapter;)V

    .line 13
    return-void
.end method


# virtual methods
.method protected canSelect(ILjava/lang/Object;Z)Z
    .locals 2

    .line 1
    const/4 p1, 0x1

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    iget-object p2, p0, Lcom/narvii/catalog/picker/BasePickerFragment$SelAdapter;->this$0:Lcom/narvii/catalog/picker/BasePickerFragment;

    .line 6
    .line 7
    iget-object p2, p2, Lcom/narvii/catalog/picker/BasePickerFragment;->selection:Ljava/util/ArrayList;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 11
    move-result p2

    .line 12
    .line 13
    iget-object p3, p0, Lcom/narvii/catalog/picker/BasePickerFragment$SelAdapter;->this$0:Lcom/narvii/catalog/picker/BasePickerFragment;

    .line 14
    .line 15
    iget p3, p3, Lcom/narvii/catalog/picker/BasePickerFragment;->maximum:I

    .line 16
    .line 17
    if-lt p2, p3, :cond_0

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 21
    move-result-object p2

    .line 22
    .line 23
    iget-object p3, p0, Lcom/narvii/catalog/picker/BasePickerFragment$SelAdapter;->this$0:Lcom/narvii/catalog/picker/BasePickerFragment;

    .line 24
    .line 25
    new-array p1, p1, [Ljava/lang/Object;

    .line 26
    .line 27
    iget v0, p3, Lcom/narvii/catalog/picker/BasePickerFragment;->maximum:I

    .line 28
    .line 29
    .line 30
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    move-result-object v0

    .line 32
    const/4 v1, 0x0

    .line 33
    .line 34
    aput-object v0, p1, v1

    .line 35
    .line 36
    .line 37
    const v0, 0x7f120202

    .line 38
    .line 39
    .line 40
    invoke-virtual {p3, v0, p1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 41
    move-result-object p1

    .line 42
    .line 43
    .line 44
    invoke-static {p2, p1, v1}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    .line 45
    move-result-object p1

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 49
    return v1

    .line 50
    :cond_0
    return p1
.end method

.method protected isSelectable(ILjava/lang/Object;)Z
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/catalog/picker/BasePickerFragment$SelAdapter;->this$0:Lcom/narvii/catalog/picker/BasePickerFragment;

    .line 3
    .line 4
    iget-boolean p1, p1, Lcom/narvii/catalog/picker/BasePickerFragment;->canSelectOfficial:Z

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    instance-of p1, p2, Lcom/narvii/model/Item;

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    move-object p1, p2

    .line 12
    .line 13
    check-cast p1, Lcom/narvii/model/Item;

    .line 14
    .line 15
    iget-object p1, p1, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    .line 16
    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/narvii/model/User;->isSystem()Z

    .line 21
    move-result p1

    .line 22
    .line 23
    if-eqz p1, :cond_0

    .line 24
    const/4 p1, 0x0

    .line 25
    return p1

    .line 26
    .line 27
    :cond_0
    instance-of p1, p2, Lcom/narvii/model/Item;

    .line 28
    return p1
.end method

.method public isSelected(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/catalog/picker/BasePickerFragment$SelAdapter;->this$0:Lcom/narvii/catalog/picker/BasePickerFragment;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/catalog/picker/BasePickerFragment;->selection:Ljava/util/ArrayList;

    .line 5
    .line 6
    check-cast p1, Lcom/narvii/model/Item;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/narvii/model/Item;->id()Ljava/lang/String;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    .line 13
    invoke-static {v0, p1}, Lcom/narvii/util/Utils;->containsId(Ljava/util/Collection;Ljava/lang/String;)Z

    .line 14
    move-result p1

    .line 15
    return p1
.end method

.method public onSelectionChanged(Ljava/lang/Object;Z)V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/catalog/picker/BasePickerFragment$SelAdapter;->this$0:Lcom/narvii/catalog/picker/BasePickerFragment;

    .line 3
    .line 4
    iget v1, v0, Lcom/narvii/catalog/picker/BasePickerFragment;->mode:I

    .line 5
    const/4 v2, 0x1

    .line 6
    const/4 v3, 0x2

    .line 7
    .line 8
    if-eq v1, v2, :cond_2

    .line 9
    .line 10
    if-ne v1, v3, :cond_0

    .line 11
    goto :goto_0

    .line 12
    .line 13
    :cond_0
    iget-object v0, v0, Lcom/narvii/catalog/picker/BasePickerFragment;->selection:Ljava/util/ArrayList;

    .line 14
    .line 15
    check-cast p1, Lcom/narvii/model/Item;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/narvii/model/Item;->id()Ljava/lang/String;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    .line 22
    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->removeId(Ljava/util/Collection;Ljava/lang/String;)I

    .line 23
    .line 24
    if-eqz p2, :cond_1

    .line 25
    .line 26
    iget-object p2, p0, Lcom/narvii/catalog/picker/BasePickerFragment$SelAdapter;->this$0:Lcom/narvii/catalog/picker/BasePickerFragment;

    .line 27
    .line 28
    iget-object p2, p2, Lcom/narvii/catalog/picker/BasePickerFragment;->selection:Ljava/util/ArrayList;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    :cond_1
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 35
    .line 36
    iget-object p1, p0, Lcom/narvii/catalog/picker/BasePickerFragment$SelAdapter;->this$0:Lcom/narvii/catalog/picker/BasePickerFragment;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/narvii/catalog/picker/BasePickerFragment;->update()V

    .line 40
    goto :goto_1

    .line 41
    .line 42
    :cond_2
    :goto_0
    if-nez p2, :cond_3

    .line 43
    .line 44
    if-ne v1, v3, :cond_3

    .line 45
    goto :goto_1

    .line 46
    .line 47
    :cond_3
    check-cast p1, Lcom/narvii/model/Item;

    .line 48
    .line 49
    iput-object p1, v0, Lcom/narvii/catalog/picker/BasePickerFragment;->singleSelection:Lcom/narvii/model/Item;

    .line 50
    const/4 p1, -0x1

    .line 51
    .line 52
    iput p1, v0, Lcom/narvii/catalog/picker/BasePickerFragment;->finishResult:I

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->finish()V

    .line 56
    :goto_1
    return-void
.end method
