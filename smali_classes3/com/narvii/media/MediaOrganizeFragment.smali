.class public Lcom/narvii/media/MediaOrganizeFragment;
.super Lcom/narvii/list/DragSortListFragment;
.source "MediaOrganizeFragment.java"

# interfaces
.implements Lcom/narvii/app/FragmentWillFinishListener;
.implements Lcom/narvii/media/MediaPickerFragment$OnResultListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/media/MediaOrganizeFragment$Adapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/list/DragSortListFragment<",
        "Lcom/narvii/model/Media;",
        ">;",
        "Lcom/narvii/app/FragmentWillFinishListener;",
        "Lcom/narvii/media/MediaPickerFragment$OnResultListener;"
    }
.end annotation


# static fields
.field private static rnd:Ljava/util/Random;


# instance fields
.field adapter:Lcom/narvii/media/MediaOrganizeFragment$Adapter;

.field coverMedia:Lcom/narvii/model/Media;

.field dir:Ljava/io/File;

.field existsRefIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field flags:I

.field picker:Lcom/narvii/media/MediaPickerFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/narvii/list/DragSortListFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/media/MediaOrganizeFragment;)I
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/narvii/media/MediaOrganizeFragment;->getCurrentCoverMediaIndex()I

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/narvii/media/MediaOrganizeFragment;Lcom/narvii/model/Media;)Z
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/narvii/media/MediaOrganizeFragment;->isCoverMedia(Lcom/narvii/model/Media;)Z

    move-result p0

    return p0
.end method

.method private getCurrentCoverMediaIndex()I
    .locals 5

    .line 97
    iget-object v0, p0, Lcom/narvii/media/MediaOrganizeFragment;->coverMedia:Lcom/narvii/model/Media;

    const/4 v1, -0x1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/narvii/media/MediaOrganizeFragment;->adapter:Lcom/narvii/media/MediaOrganizeFragment$Adapter;

    if-nez v0, :cond_0

    goto :goto_1

    .line 100
    :cond_0
    invoke-virtual {v0}, Lcom/narvii/list/NVArrayAdapter;->getList()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 104
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    .line 106
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/narvii/model/Media;

    invoke-direct {p0, v4}, Lcom/narvii/media/MediaOrganizeFragment;->isCoverMedia(Lcom/narvii/model/Media;)Z

    move-result v4

    if-eqz v4, :cond_2

    return v3

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v1
.end method

.method private isCoverMedia(Lcom/narvii/model/Media;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 362
    iget-object v0, p0, Lcom/narvii/media/MediaOrganizeFragment;->coverMedia:Lcom/narvii/model/Media;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private newRefId(Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/Media;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 404
    sget-object v0, Lcom/narvii/media/MediaOrganizeFragment;->rnd:Ljava/util/Random;

    if-nez v0, :cond_0

    .line 405
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    sput-object v0, Lcom/narvii/media/MediaOrganizeFragment;->rnd:Ljava/util/Random;

    :cond_0
    const/4 v0, 0x0

    const-string v1, ""

    move-object v2, v1

    const/4 v1, 0x0

    :goto_0
    const/4 v3, 0x3

    if-ge v1, v3, :cond_2

    .line 412
    sget-object v3, Lcom/narvii/media/MediaOrganizeFragment;->rnd:Ljava/util/Random;

    const/16 v4, 0x24

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    const/16 v4, 0xa

    if-ge v3, v4, :cond_1

    .line 414
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x30

    int-to-char v2, v3

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 416
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, -0xa

    add-int/lit8 v3, v3, 0x41

    int-to-char v2, v3

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 419
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/model/Media;

    .line 420
    iget-object v3, v3, Lcom/narvii/model/Media;->refId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v0, 0x1

    :cond_4
    if-nez v0, :cond_0

    return-object v2
.end method


# virtual methods
.method protected bridge synthetic createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 0

    .line 53
    invoke-virtual {p0, p1}, Lcom/narvii/media/MediaOrganizeFragment;->createAdapter(Landroid/os/Bundle;)Lcom/narvii/list/NVArrayAdapter;

    move-result-object p1

    return-object p1
.end method

.method protected createAdapter(Landroid/os/Bundle;)Lcom/narvii/list/NVArrayAdapter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Lcom/narvii/list/NVArrayAdapter<",
            "Lcom/narvii/model/Media;",
            ">;"
        }
    .end annotation

    const-string v0, "coverMediaIndex"

    const/4 v1, -0x1

    .line 116
    invoke-virtual {p0, v0, v1}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;I)I

    move-result v0

    if-nez p1, :cond_0

    const-string p1, "mediaList"

    .line 118
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 119
    const-class v1, Lcom/narvii/model/Media;

    invoke-static {p1, v1}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object p1

    if-ltz v0, :cond_1

    .line 120
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 121
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/Media;

    iput-object v0, p0, Lcom/narvii/media/MediaOrganizeFragment;->coverMedia:Lcom/narvii/model/Media;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 125
    :cond_1
    :goto_0
    new-instance v0, Lcom/narvii/media/MediaOrganizeFragment$Adapter;

    invoke-direct {v0, p0, p1}, Lcom/narvii/media/MediaOrganizeFragment$Adapter;-><init>(Lcom/narvii/media/MediaOrganizeFragment;Ljava/util/List;)V

    iput-object v0, p0, Lcom/narvii/media/MediaOrganizeFragment;->adapter:Lcom/narvii/media/MediaOrganizeFragment$Adapter;

    .line 126
    invoke-virtual {p0}, Lcom/narvii/media/MediaOrganizeFragment;->isPick()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "existsRefIds"

    .line 127
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-class v0, Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/media/MediaOrganizeFragment;->existsRefIds:Ljava/util/ArrayList;

    .line 129
    :cond_2
    iget-object p1, p0, Lcom/narvii/media/MediaOrganizeFragment;->adapter:Lcom/narvii/media/MediaOrganizeFragment$Adapter;

    return-object p1
.end method

.method public isModel()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isPick()Z
    .locals 2

    .line 68
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.PICK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 73
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    .line 74
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setHasOptionsMenu(Z)V

    const-string v0, "flags"

    .line 76
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/narvii/media/MediaOrganizeFragment;->flags:I

    const-string v0, "picker"

    if-nez p1, :cond_0

    .line 78
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    new-instance v1, Lcom/narvii/media/MediaPickerFragment;

    invoke-direct {v1}, Lcom/narvii/media/MediaPickerFragment;-><init>()V

    iput-object v1, p0, Lcom/narvii/media/MediaOrganizeFragment;->picker:Lcom/narvii/media/MediaPickerFragment;

    invoke-virtual {p1, v1, v0}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_0

    .line 80
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/narvii/media/MediaPickerFragment;

    iput-object p1, p0, Lcom/narvii/media/MediaOrganizeFragment;->picker:Lcom/narvii/media/MediaPickerFragment;

    .line 82
    :goto_0
    iget-object p1, p0, Lcom/narvii/media/MediaOrganizeFragment;->picker:Lcom/narvii/media/MediaPickerFragment;

    invoke-virtual {p1, p0}, Lcom/narvii/media/MediaPickerFragment;->addOnResultListener(Lcom/narvii/media/MediaPickerFragment$OnResultListener;)V

    .line 83
    new-instance p1, Ljava/io/File;

    const-string v0, "dir"

    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/media/MediaOrganizeFragment;->dir:Ljava/io/File;

    .line 85
    invoke-virtual {p0}, Lcom/narvii/media/MediaOrganizeFragment;->isPick()Z

    move-result p1

    if-eqz p1, :cond_1

    sget p1, Lcom/narvii/lib/R$string;->post_insert_image:I

    goto :goto_1

    :cond_1
    sget p1, Lcom/narvii/lib/R$string;->post_images:I

    :goto_1
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    .line 175
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 177
    invoke-virtual {p0}, Lcom/narvii/media/MediaOrganizeFragment;->isPick()Z

    move-result p2

    if-nez p2, :cond_0

    const p2, 0x104000a

    const/4 v0, 0x0

    .line 178
    invoke-interface {p1, v0, p2, v0, p2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p1

    new-instance p2, Lcom/narvii/util/ActionBarIcon;

    .line 179
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/narvii/lib/R$string;->fa_check:I

    invoke-direct {p2, v0, v1}, Lcom/narvii/util/ActionBarIcon;-><init>(Landroid/content/Context;I)V

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object p1

    const/4 p2, 0x2

    .line 180
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 90
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onDestroy()V

    .line 91
    iget-object v0, p0, Lcom/narvii/media/MediaOrganizeFragment;->picker:Lcom/narvii/media/MediaPickerFragment;

    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {v0, p0}, Lcom/narvii/media/MediaPickerFragment;->removeOnResultListener(Lcom/narvii/media/MediaPickerFragment$OnResultListener;)V

    :cond_0
    return-void
.end method

.method protected onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 5

    .line 134
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V

    .line 136
    invoke-virtual {p0}, Lcom/narvii/media/MediaOrganizeFragment;->isPick()Z

    move-result p2

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    .line 137
    invoke-virtual {p0, v2}, Landroid/support/v4/app/Fragment;->getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v3, Lcom/narvii/lib/R$layout;->media_insert_all_item:I

    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {p2, v3, v4, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 138
    new-instance v3, Lcom/narvii/media/MediaOrganizeFragment$1;

    invoke-direct {v3, p0}, Lcom/narvii/media/MediaOrganizeFragment$1;-><init>(Lcom/narvii/media/MediaOrganizeFragment;)V

    invoke-virtual {p2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    invoke-virtual {p1, p2, v2, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 147
    :cond_0
    invoke-virtual {p0, v2}, Landroid/support/v4/app/Fragment;->getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v3, Lcom/narvii/lib/R$layout;->media_add_more_list_item:I

    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {p2, v3, v4, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 148
    new-instance v1, Lcom/narvii/media/MediaOrganizeFragment$2;

    invoke-direct {v1, p0}, Lcom/narvii/media/MediaOrganizeFragment$2;-><init>(Lcom/narvii/media/MediaOrganizeFragment;)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    invoke-virtual {p1, p2, v2, v0}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 186
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x104000a

    if-ne v0, v1, :cond_0

    .line 187
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    .line 189
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onPickMediaResult(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/Media;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 194
    new-instance p2, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/narvii/media/MediaOrganizeFragment;->adapter:Lcom/narvii/media/MediaOrganizeFragment$Adapter;

    invoke-virtual {v0}, Lcom/narvii/list/NVArrayAdapter;->getList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 195
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 196
    iget-object v0, p0, Lcom/narvii/media/MediaOrganizeFragment;->adapter:Lcom/narvii/media/MediaOrganizeFragment$Adapter;

    invoke-virtual {v0}, Lcom/narvii/list/NVArrayAdapter;->clear()V

    .line 197
    iget-object v0, p0, Lcom/narvii/media/MediaOrganizeFragment;->adapter:Lcom/narvii/media/MediaOrganizeFragment$Adapter;

    invoke-virtual {v0, p2}, Lcom/narvii/list/NVArrayAdapter;->addAll(Ljava/util/Collection;)V

    .line 199
    invoke-virtual {p0}, Lcom/narvii/media/MediaOrganizeFragment;->isPick()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_0

    const/4 p2, 0x0

    .line 200
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/Media;

    invoke-virtual {p0, p1}, Lcom/narvii/media/MediaOrganizeFragment;->pickAndReturn(Lcom/narvii/model/Media;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 5

    .line 166
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onResume()V

    .line 168
    invoke-virtual {p0}, Lcom/narvii/media/MediaOrganizeFragment;->isPick()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/media/MediaOrganizeFragment;->adapter:Lcom/narvii/media/MediaOrganizeFragment$Adapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/narvii/media/MediaOrganizeFragment;->picker:Lcom/narvii/media/MediaPickerFragment;

    iget-object v1, p0, Lcom/narvii/media/MediaOrganizeFragment;->dir:Ljava/io/File;

    const/4 v2, 0x0

    iget v3, p0, Lcom/narvii/media/MediaOrganizeFragment;->flags:I

    or-int/lit8 v3, v3, 0x4

    const-string v4, "maximum"

    invoke-virtual {p0, v4}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/narvii/media/MediaPickerFragment;->pickMedia(Ljava/io/File;Landroid/os/Bundle;II)V

    :cond_0
    return-void
.end method

.method pickAllAndReturn()V
    .locals 6

    .line 382
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 383
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/narvii/media/MediaOrganizeFragment;->adapter:Lcom/narvii/media/MediaOrganizeFragment$Adapter;

    invoke-virtual {v2}, Lcom/narvii/list/NVArrayAdapter;->getList()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 384
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/model/Media;

    .line 385
    iget-object v4, v3, Lcom/narvii/model/Media;->refId:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 386
    invoke-direct {p0, v1}, Lcom/narvii/media/MediaOrganizeFragment;->newRefId(Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/narvii/model/Media;->refId:Ljava/lang/String;

    .line 388
    :cond_1
    iget-object v4, p0, Lcom/narvii/media/MediaOrganizeFragment;->existsRefIds:Ljava/util/ArrayList;

    iget-object v5, v3, Lcom/narvii/model/Media;->refId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 389
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_2

    const/16 v4, 0x2c

    .line 390
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 392
    :cond_2
    iget-object v3, v3, Lcom/narvii/model/Media;->refId:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 396
    :cond_3
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 397
    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "mediaList"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 398
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "refIdList"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, -0x1

    .line 399
    invoke-virtual {p0, v0, v2}, Lcom/narvii/app/NVFragment;->setResult(ILandroid/content/Intent;)V

    .line 400
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    return-void
.end method

.method pickAndReturn(Lcom/narvii/model/Media;)V
    .locals 3

    .line 367
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/narvii/media/MediaOrganizeFragment;->adapter:Lcom/narvii/media/MediaOrganizeFragment$Adapter;

    invoke-virtual {v1}, Lcom/narvii/list/NVArrayAdapter;->getList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 368
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 369
    iget-object v1, p1, Lcom/narvii/model/Media;->refId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 370
    invoke-direct {p0, v0}, Lcom/narvii/media/MediaOrganizeFragment;->newRefId(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/narvii/model/Media;->refId:Ljava/lang/String;

    .line 373
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 374
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "mediaList"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 375
    iget-object p1, p1, Lcom/narvii/model/Media;->refId:Ljava/lang/String;

    const-string v0, "refIdList"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, -0x1

    .line 376
    invoke-virtual {p0, p1, v1}, Lcom/narvii/app/NVFragment;->setResult(ILandroid/content/Intent;)V

    .line 377
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    :cond_1
    return-void
.end method

.method public willFinish(Lcom/narvii/app/NVActivity;)V
    .locals 3

    .line 206
    invoke-virtual {p0}, Lcom/narvii/media/MediaOrganizeFragment;->isPick()Z

    move-result v0

    if-nez v0, :cond_0

    .line 207
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 208
    iget-object v1, p0, Lcom/narvii/media/MediaOrganizeFragment;->adapter:Lcom/narvii/media/MediaOrganizeFragment$Adapter;

    invoke-virtual {v1}, Lcom/narvii/list/NVArrayAdapter;->getList()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "mediaList"

    .line 209
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 210
    invoke-direct {p0}, Lcom/narvii/media/MediaOrganizeFragment;->getCurrentCoverMediaIndex()I

    move-result v1

    const-string v2, "coverMediaIndex"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v1, -0x1

    .line 211
    invoke-virtual {p1, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    :cond_0
    return-void
.end method
