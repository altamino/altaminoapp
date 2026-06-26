.class Lcom/narvii/catalog/picker/BasePickerFragment$SelAdapter;
.super Lcom/narvii/list/select/SelectableAdapter;
.source "BasePickerFragment.java"


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

    .line 105
    iput-object p1, p0, Lcom/narvii/catalog/picker/BasePickerFragment$SelAdapter;->this$0:Lcom/narvii/catalog/picker/BasePickerFragment;

    const v0, 0x7f0b060e

    const/4 v1, 0x1

    .line 106
    invoke-direct {p0, p1, v0, v1}, Lcom/narvii/list/select/SelectableAdapter;-><init>(Lcom/narvii/app/NVContext;IZ)V

    .line 107
    invoke-static {p1, p0}, Lcom/narvii/catalog/picker/BasePickerFragment;->access$002(Lcom/narvii/catalog/picker/BasePickerFragment;Lcom/narvii/catalog/picker/BasePickerFragment$SelAdapter;)Lcom/narvii/catalog/picker/BasePickerFragment$SelAdapter;

    return-void
.end method


# virtual methods
.method protected canSelect(ILjava/lang/Object;Z)Z
    .locals 3

    const/4 p1, 0x1

    if-eqz p3, :cond_0

    .line 122
    iget-object p2, p0, Lcom/narvii/catalog/picker/BasePickerFragment$SelAdapter;->this$0:Lcom/narvii/catalog/picker/BasePickerFragment;

    iget-object p2, p2, Lcom/narvii/catalog/picker/BasePickerFragment;->selection:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    iget-object p3, p0, Lcom/narvii/catalog/picker/BasePickerFragment$SelAdapter;->this$0:Lcom/narvii/catalog/picker/BasePickerFragment;

    iget p3, p3, Lcom/narvii/catalog/picker/BasePickerFragment;->maximum:I

    if-lt p2, p3, :cond_0

    .line 123
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object p3, p0, Lcom/narvii/catalog/picker/BasePickerFragment$SelAdapter;->this$0:Lcom/narvii/catalog/picker/BasePickerFragment;

    const v0, 0x7f0f01b3

    new-array p1, p1, [Ljava/lang/Object;

    iget v1, p3, Lcom/narvii/catalog/picker/BasePickerFragment;->maximum:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, p1, v2

    invoke-virtual {p3, v0, p1}, Landroid/support/v4/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1, v2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    return v2

    :cond_0
    return p1
.end method

.method protected isSelectable(ILjava/lang/Object;)Z
    .locals 0

    .line 112
    iget-object p1, p0, Lcom/narvii/catalog/picker/BasePickerFragment$SelAdapter;->this$0:Lcom/narvii/catalog/picker/BasePickerFragment;

    iget-boolean p1, p1, Lcom/narvii/catalog/picker/BasePickerFragment;->canSelectOfficial:Z

    if-nez p1, :cond_0

    instance-of p1, p2, Lcom/narvii/model/Item;

    if-eqz p1, :cond_0

    .line 113
    move-object p1, p2

    check-cast p1, Lcom/narvii/model/Item;

    iget-object p1, p1, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/narvii/model/User;->isSystem()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 117
    :cond_0
    instance-of p1, p2, Lcom/narvii/model/Item;

    return p1
.end method

.method public isSelected(Ljava/lang/Object;)Z
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/narvii/catalog/picker/BasePickerFragment$SelAdapter;->this$0:Lcom/narvii/catalog/picker/BasePickerFragment;

    iget-object v0, v0, Lcom/narvii/catalog/picker/BasePickerFragment;->selection:Ljava/util/ArrayList;

    check-cast p1, Lcom/narvii/model/Item;

    invoke-virtual {p1}, Lcom/narvii/model/Item;->id()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/narvii/util/Utils;->containsId(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public onSelectionChanged(Ljava/lang/Object;Z)V
    .locals 4

    .line 136
    iget-object v0, p0, Lcom/narvii/catalog/picker/BasePickerFragment$SelAdapter;->this$0:Lcom/narvii/catalog/picker/BasePickerFragment;

    iget v1, v0, Lcom/narvii/catalog/picker/BasePickerFragment;->mode:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v1, v3, :cond_2

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 144
    :cond_0
    iget-object v0, v0, Lcom/narvii/catalog/picker/BasePickerFragment;->selection:Ljava/util/ArrayList;

    check-cast p1, Lcom/narvii/model/Item;

    invoke-virtual {p1}, Lcom/narvii/model/Item;->id()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->removeId(Ljava/util/Collection;Ljava/lang/String;)I

    if-eqz p2, :cond_1

    .line 146
    iget-object p2, p0, Lcom/narvii/catalog/picker/BasePickerFragment$SelAdapter;->this$0:Lcom/narvii/catalog/picker/BasePickerFragment;

    iget-object p2, p2, Lcom/narvii/catalog/picker/BasePickerFragment;->selection:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    :cond_1
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 149
    iget-object p1, p0, Lcom/narvii/catalog/picker/BasePickerFragment$SelAdapter;->this$0:Lcom/narvii/catalog/picker/BasePickerFragment;

    invoke-virtual {p1}, Lcom/narvii/catalog/picker/BasePickerFragment;->update()V

    goto :goto_1

    :cond_2
    :goto_0
    if-nez p2, :cond_3

    .line 137
    iget-object p2, p0, Lcom/narvii/catalog/picker/BasePickerFragment$SelAdapter;->this$0:Lcom/narvii/catalog/picker/BasePickerFragment;

    iget p2, p2, Lcom/narvii/catalog/picker/BasePickerFragment;->mode:I

    if-ne p2, v2, :cond_3

    goto :goto_1

    .line 139
    :cond_3
    iget-object p2, p0, Lcom/narvii/catalog/picker/BasePickerFragment$SelAdapter;->this$0:Lcom/narvii/catalog/picker/BasePickerFragment;

    check-cast p1, Lcom/narvii/model/Item;

    iput-object p1, p2, Lcom/narvii/catalog/picker/BasePickerFragment;->singleSelection:Lcom/narvii/model/Item;

    const/4 p1, -0x1

    .line 140
    iput p1, p2, Lcom/narvii/catalog/picker/BasePickerFragment;->finishResult:I

    .line 141
    invoke-virtual {p2}, Lcom/narvii/app/NVFragment;->finish()V

    :goto_1
    return-void
.end method
