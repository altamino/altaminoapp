.class abstract Lcom/narvii/catalog/picker/BasePickerFragment;
.super Lcom/narvii/catalog/CatalogThemeFragment;
.source "SourceFile"

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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/catalog/CatalogThemeFragment;-><init>()V

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/catalog/picker/BasePickerFragment;->selection:Ljava/util/ArrayList;

    .line 11
    const/4 v0, 0x0

    .line 12
    .line 13
    iput-object v0, p0, Lcom/narvii/catalog/picker/BasePickerFragment;->singleSelection:Lcom/narvii/model/Item;

    .line 14
    const/4 v0, 0x2

    .line 15
    .line 16
    iput v0, p0, Lcom/narvii/catalog/picker/BasePickerFragment;->finishResult:I

    .line 17
    const/4 v0, 0x1

    .line 18
    .line 19
    iput-boolean v0, p0, Lcom/narvii/catalog/picker/BasePickerFragment;->canSelectOfficial:Z

    .line 20
    .line 21
    new-instance v0, Lcom/narvii/catalog/picker/BasePickerFragment$1;

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, p0}, Lcom/narvii/catalog/picker/BasePickerFragment$1;-><init>(Lcom/narvii/catalog/picker/BasePickerFragment;)V

    .line 25
    .line 26
    iput-object v0, p0, Lcom/narvii/catalog/picker/BasePickerFragment;->pickListener:Landroid/view/View$OnClickListener;

    .line 27
    return-void
.end method

.method static bridge synthetic t(Lcom/narvii/catalog/picker/BasePickerFragment;Lcom/narvii/catalog/picker/BasePickerFragment$SelAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/catalog/picker/BasePickerFragment;->sAdapter:Lcom/narvii/catalog/picker/BasePickerFragment$SelAdapter;

    return-void
.end method


# virtual methods
.method public hasPostEntry()Ljava/lang/Boolean;
    .locals 1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    if-ne p1, v0, :cond_6

    .line 4
    const/4 v1, 0x2

    .line 5
    const/4 v2, -0x1

    .line 6
    .line 7
    if-eq p2, v1, :cond_0

    .line 8
    .line 9
    if-ne p2, v2, :cond_6

    .line 10
    .line 11
    :cond_0
    if-eqz p3, :cond_6

    .line 12
    .line 13
    iget p1, p0, Lcom/narvii/catalog/picker/BasePickerFragment;->mode:I

    .line 14
    .line 15
    const-class v3, Lcom/narvii/model/Item;

    .line 16
    .line 17
    if-eq p1, v0, :cond_4

    .line 18
    .line 19
    if-ne p1, v1, :cond_1

    .line 20
    goto :goto_0

    .line 21
    .line 22
    :cond_1
    const-string p1, "itemList"

    .line 23
    .line 24
    .line 25
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    .line 29
    invoke-static {p1, v3}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    .line 30
    move-result-object p1

    .line 31
    .line 32
    if-eqz p1, :cond_2

    .line 33
    .line 34
    iget-object p3, p0, Lcom/narvii/catalog/picker/BasePickerFragment;->selection:Ljava/util/ArrayList;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p3}, Ljava/util/ArrayList;->clear()V

    .line 38
    .line 39
    iget-object p3, p0, Lcom/narvii/catalog/picker/BasePickerFragment;->selection:Ljava/util/ArrayList;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 43
    .line 44
    iget-object p1, p0, Lcom/narvii/catalog/picker/BasePickerFragment;->sAdapter:Lcom/narvii/catalog/picker/BasePickerFragment$SelAdapter;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Lcom/narvii/catalog/picker/BasePickerFragment;->update()V

    .line 51
    .line 52
    :cond_2
    if-ne p2, v2, :cond_3

    .line 53
    .line 54
    iput v2, p0, Lcom/narvii/catalog/picker/BasePickerFragment;->finishResult:I

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    .line 58
    goto :goto_1

    .line 59
    .line 60
    :cond_3
    if-ne p2, v1, :cond_5

    .line 61
    const/4 p1, 0x0

    .line 62
    .line 63
    iput p1, p0, Lcom/narvii/catalog/picker/BasePickerFragment;->finishResult:I

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    .line 67
    goto :goto_1

    .line 68
    .line 69
    :cond_4
    :goto_0
    const-string p1, "item"

    .line 70
    .line 71
    .line 72
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 73
    move-result-object p1

    .line 74
    .line 75
    .line 76
    invoke-static {p1, v3}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 77
    move-result-object p1

    .line 78
    .line 79
    check-cast p1, Lcom/narvii/model/Item;

    .line 80
    .line 81
    iput-object p1, p0, Lcom/narvii/catalog/picker/BasePickerFragment;->singleSelection:Lcom/narvii/model/Item;

    .line 82
    .line 83
    iput v2, p0, Lcom/narvii/catalog/picker/BasePickerFragment;->finishResult:I

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    .line 87
    :cond_5
    :goto_1
    return-void

    .line 88
    .line 89
    .line 90
    :cond_6
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/app/NVFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 91
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    const-string p1, "itemList"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    const-class v0, Lcom/narvii/model/Item;

    .line 12
    .line 13
    .line 14
    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lcom/narvii/catalog/picker/BasePickerFragment;->selection:Ljava/util/ArrayList;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 23
    .line 24
    :cond_0
    const-string p1, "mode"

    .line 25
    const/4 v0, 0x0

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, p1, v0}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;I)I

    .line 29
    move-result p1

    .line 30
    .line 31
    iput p1, p0, Lcom/narvii/catalog/picker/BasePickerFragment;->mode:I

    .line 32
    .line 33
    const-string p1, "title"

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 37
    move-result-object p1

    .line 38
    .line 39
    iput-object p1, p0, Lcom/narvii/catalog/picker/BasePickerFragment;->title:Ljava/lang/String;

    .line 40
    .line 41
    const-string p1, "maximum"

    .line 42
    .line 43
    const/16 v0, 0xa

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, p1, v0}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;I)I

    .line 47
    move-result p1

    .line 48
    .line 49
    iput p1, p0, Lcom/narvii/catalog/picker/BasePickerFragment;->maximum:I

    .line 50
    .line 51
    const-string p1, "canSelectOfficial"

    .line 52
    const/4 v0, 0x1

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0, p1, v0}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;Z)Z

    .line 56
    move-result p1

    .line 57
    .line 58
    iput-boolean p1, p0, Lcom/narvii/catalog/picker/BasePickerFragment;->canSelectOfficial:Z

    .line 59
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/catalog/CatalogThemeFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4
    .line 5
    iget-object p1, p0, Lcom/narvii/catalog/picker/BasePickerFragment;->title:Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 9
    move-result p1

    .line 10
    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    iget-object p1, p0, Lcom/narvii/catalog/picker/BasePickerFragment;->title:Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/catalog/picker/BasePickerFragment;->update()V

    .line 20
    return-void
.end method

.method update()V
    .locals 3

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/catalog/picker/BasePickerFragment;->mode:I

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    if-eq v0, v1, :cond_2

    .line 6
    const/4 v1, 0x2

    .line 7
    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    goto :goto_1

    .line 10
    .line 11
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    const v1, 0x7f120e82

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 21
    move-result-object v1

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    iget-object v1, p0, Lcom/narvii/catalog/picker/BasePickerFragment;->selection:Ljava/util/ArrayList;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 30
    move-result v1

    .line 31
    .line 32
    if-nez v1, :cond_1

    .line 33
    .line 34
    const-string v1, ""

    .line 35
    goto :goto_0

    .line 36
    .line 37
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .line 42
    const-string v2, " ("

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    iget-object v2, p0, Lcom/narvii/catalog/picker/BasePickerFragment;->selection:Ljava/util/ArrayList;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 51
    move-result v2

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    const-string v2, ")"

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    move-result-object v1

    .line 64
    .line 65
    .line 66
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    move-result-object v0

    .line 71
    .line 72
    iget-object v1, p0, Lcom/narvii/catalog/picker/BasePickerFragment;->pickListener:Landroid/view/View$OnClickListener;

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0, v0, v1}, Lcom/narvii/app/NVFragment;->setActionBarRightButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    .line 76
    goto :goto_2

    .line 77
    :cond_2
    :goto_1
    const/4 v0, 0x0

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setActionBarRightView(Landroid/view/View;)V

    .line 81
    :goto_2
    return-void
.end method

.method public willFinish(Lcom/narvii/app/NVActivity;)V
    .locals 3

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/catalog/picker/BasePickerFragment;->mode:I

    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x2

    .line 5
    .line 6
    if-eq v0, v1, :cond_0

    .line 7
    .line 8
    if-ne v0, v2, :cond_1

    .line 9
    .line 10
    :cond_0
    iget-object v1, p0, Lcom/narvii/catalog/picker/BasePickerFragment;->singleSelection:Lcom/narvii/model/Item;

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    iget-object v1, p0, Lcom/narvii/catalog/picker/BasePickerFragment;->singleSelection:Lcom/narvii/model/Item;

    .line 19
    .line 20
    .line 21
    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    const-string v2, "item"

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 28
    .line 29
    iget v1, p0, Lcom/narvii/catalog/picker/BasePickerFragment;->finishResult:I

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 33
    goto :goto_0

    .line 34
    .line 35
    :cond_1
    if-nez v0, :cond_4

    .line 36
    .line 37
    iget v0, p0, Lcom/narvii/catalog/picker/BasePickerFragment;->finishResult:I

    .line 38
    .line 39
    if-ne v0, v2, :cond_2

    .line 40
    .line 41
    const-string v0, "pickOnFinish"

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 45
    move-result v0

    .line 46
    .line 47
    if-nez v0, :cond_3

    .line 48
    .line 49
    :cond_2
    iget v0, p0, Lcom/narvii/catalog/picker/BasePickerFragment;->finishResult:I

    .line 50
    const/4 v1, -0x1

    .line 51
    .line 52
    if-ne v0, v1, :cond_4

    .line 53
    .line 54
    .line 55
    :cond_3
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 56
    move-result-object v0

    .line 57
    .line 58
    iget-object v1, p0, Lcom/narvii/catalog/picker/BasePickerFragment;->selection:Ljava/util/ArrayList;

    .line 59
    .line 60
    .line 61
    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 62
    move-result-object v1

    .line 63
    .line 64
    const-string v2, "itemList"

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    .line 69
    iget v1, p0, Lcom/narvii/catalog/picker/BasePickerFragment;->finishResult:I

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 73
    :cond_4
    :goto_0
    return-void
.end method
