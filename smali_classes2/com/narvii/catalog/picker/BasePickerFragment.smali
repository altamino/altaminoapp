.class abstract Lcom/narvii/catalog/picker/BasePickerFragment;
.super Lcom/narvii/catalog/CatalogThemeFragment;
.source "BasePickerFragment.java"

# interfaces
.implements Lcom/narvii/app/FragmentWillFinishListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/catalog/picker/BasePickerFragment$SelAdapter;
    }
.end annotation


# static fields
.field public static final MODE_PICK_MULTIPLE:I = 0x0

.field public static final MODE_PICK_SINGLE:I = 0x1

.field public static final MODE_PICK_SINGLE_EXCLUSIVE:I = 0x2

.field static final PICK_REQUEST:I = 0x1

.field static final RESULT_PICK:I = 0x2


# instance fields
.field canSelectOfficial:Z

.field finishResult:I

.field maximum:I

.field mode:I

.field final pickListener:Landroid/view/View$OnClickListener;

.field private sAdapter:Lcom/narvii/catalog/picker/BasePickerFragment$SelAdapter;

.field final selection:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/narvii/model/Item;",
            ">;"
        }
    .end annotation
.end field

.field singleSelection:Lcom/narvii/model/Item;

.field title:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Lcom/narvii/catalog/CatalogThemeFragment;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/catalog/picker/BasePickerFragment;->selection:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Lcom/narvii/catalog/picker/BasePickerFragment;->singleSelection:Lcom/narvii/model/Item;

    const/4 v0, 0x2

    .line 43
    iput v0, p0, Lcom/narvii/catalog/picker/BasePickerFragment;->finishResult:I

    const/4 v0, 0x1

    .line 44
    iput-boolean v0, p0, Lcom/narvii/catalog/picker/BasePickerFragment;->canSelectOfficial:Z

    .line 82
    new-instance v0, Lcom/narvii/catalog/picker/BasePickerFragment$1;

    invoke-direct {v0, p0}, Lcom/narvii/catalog/picker/BasePickerFragment$1;-><init>(Lcom/narvii/catalog/picker/BasePickerFragment;)V

    iput-object v0, p0, Lcom/narvii/catalog/picker/BasePickerFragment;->pickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$002(Lcom/narvii/catalog/picker/BasePickerFragment;Lcom/narvii/catalog/picker/BasePickerFragment$SelAdapter;)Lcom/narvii/catalog/picker/BasePickerFragment$SelAdapter;
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/narvii/catalog/picker/BasePickerFragment;->sAdapter:Lcom/narvii/catalog/picker/BasePickerFragment$SelAdapter;

    return-object p1
.end method


# virtual methods
.method public hasPostEntry()Ljava/lang/Boolean;
    .locals 1

    const/4 v0, 0x0

    .line 71
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_6

    const/4 v1, 0x2

    const/4 v2, -0x1

    if-eq p2, v1, :cond_0

    if-ne p2, v2, :cond_6

    :cond_0
    if-eqz p3, :cond_6

    .line 157
    iget p1, p0, Lcom/narvii/catalog/picker/BasePickerFragment;->mode:I

    if-eq p1, v0, :cond_4

    if-ne p1, v1, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, "itemList"

    .line 162
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-class p3, Lcom/narvii/model/Item;

    invoke-static {p1, p3}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 164
    iget-object p3, p0, Lcom/narvii/catalog/picker/BasePickerFragment;->selection:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->clear()V

    .line 165
    iget-object p3, p0, Lcom/narvii/catalog/picker/BasePickerFragment;->selection:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 166
    iget-object p1, p0, Lcom/narvii/catalog/picker/BasePickerFragment;->sAdapter:Lcom/narvii/catalog/picker/BasePickerFragment$SelAdapter;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 167
    invoke-virtual {p0}, Lcom/narvii/catalog/picker/BasePickerFragment;->update()V

    :cond_2
    if-ne p2, v2, :cond_3

    .line 170
    iput v2, p0, Lcom/narvii/catalog/picker/BasePickerFragment;->finishResult:I

    .line 171
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    goto :goto_1

    :cond_3
    if-ne p2, v1, :cond_5

    const/4 p1, 0x0

    .line 174
    iput p1, p0, Lcom/narvii/catalog/picker/BasePickerFragment;->finishResult:I

    .line 175
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    goto :goto_1

    :cond_4
    :goto_0
    const-string p1, "item"

    .line 158
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-class p2, Lcom/narvii/model/Item;

    invoke-static {p1, p2}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/Item;

    iput-object p1, p0, Lcom/narvii/catalog/picker/BasePickerFragment;->singleSelection:Lcom/narvii/model/Item;

    .line 159
    iput v2, p0, Lcom/narvii/catalog/picker/BasePickerFragment;->finishResult:I

    .line 160
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    :cond_5
    :goto_1
    return-void

    .line 180
    :cond_6
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/app/NVFragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 48
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "itemList"

    .line 49
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-class v0, Lcom/narvii/model/Item;

    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 51
    iget-object v0, p0, Lcom/narvii/catalog/picker/BasePickerFragment;->selection:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    const/4 p1, 0x0

    const-string v0, "mode"

    .line 53
    invoke-virtual {p0, v0, p1}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/narvii/catalog/picker/BasePickerFragment;->mode:I

    const-string p1, "title"

    .line 54
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/catalog/picker/BasePickerFragment;->title:Ljava/lang/String;

    const/16 p1, 0xa

    const-string v0, "maximum"

    .line 55
    invoke-virtual {p0, v0, p1}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/narvii/catalog/picker/BasePickerFragment;->maximum:I

    const/4 p1, 0x1

    const-string v0, "canSelectOfficial"

    .line 56
    invoke-virtual {p0, v0, p1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/narvii/catalog/picker/BasePickerFragment;->canSelectOfficial:Z

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 61
    invoke-super {p0, p1, p2}, Lcom/narvii/catalog/CatalogThemeFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 62
    iget-object p1, p0, Lcom/narvii/catalog/picker/BasePickerFragment;->title:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 63
    iget-object p1, p0, Lcom/narvii/catalog/picker/BasePickerFragment;->title:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 66
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/catalog/picker/BasePickerFragment;->update()V

    return-void
.end method

.method update()V
    .locals 3

    .line 75
    iget v0, p0, Lcom/narvii/catalog/picker/BasePickerFragment;->mode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 78
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f0f0d55

    invoke-virtual {p0, v1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/narvii/catalog/picker/BasePickerFragment;->selection:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    const-string v1, ""

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/narvii/catalog/picker/BasePickerFragment;->selection:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/catalog/picker/BasePickerFragment;->pickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v0, v1}, Lcom/narvii/app/NVFragment;->setActionBarRightButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v0, 0x0

    .line 76
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setActionBarRightView(Landroid/view/View;)V

    :goto_2
    return-void
.end method

.method public willFinish(Lcom/narvii/app/NVActivity;)V
    .locals 3

    .line 92
    iget v0, p0, Lcom/narvii/catalog/picker/BasePickerFragment;->mode:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/narvii/catalog/picker/BasePickerFragment;->singleSelection:Lcom/narvii/model/Item;

    if-eqz v0, :cond_1

    .line 93
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 94
    iget-object v1, p0, Lcom/narvii/catalog/picker/BasePickerFragment;->singleSelection:Lcom/narvii/model/Item;

    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "item"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    iget v1, p0, Lcom/narvii/catalog/picker/BasePickerFragment;->finishResult:I

    invoke-virtual {p1, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    goto :goto_0

    .line 96
    :cond_1
    iget v0, p0, Lcom/narvii/catalog/picker/BasePickerFragment;->mode:I

    if-nez v0, :cond_4

    iget v0, p0, Lcom/narvii/catalog/picker/BasePickerFragment;->finishResult:I

    if-ne v0, v1, :cond_2

    const-string v0, "pickOnFinish"

    .line 97
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    iget v0, p0, Lcom/narvii/catalog/picker/BasePickerFragment;->finishResult:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_4

    .line 98
    :cond_3
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 99
    iget-object v1, p0, Lcom/narvii/catalog/picker/BasePickerFragment;->selection:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "itemList"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 100
    iget v1, p0, Lcom/narvii/catalog/picker/BasePickerFragment;->finishResult:I

    invoke-virtual {p1, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    :cond_4
    :goto_0
    return-void
.end method
