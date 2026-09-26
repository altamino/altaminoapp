.class public Lcom/narvii/media/MediaOrganizeFragment;
.super Lcom/narvii/list/DragSortListFragment;
.source "SourceFile"

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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/list/DragSortListFragment;-><init>()V

    .line 4
    return-void
.end method

.method private getCurrentCoverMediaIndex()I
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/media/MediaOrganizeFragment;->coverMedia:Lcom/narvii/model/Media;

    .line 3
    const/4 v1, -0x1

    .line 4
    .line 5
    if-eqz v0, :cond_3

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/media/MediaOrganizeFragment;->adapter:Lcom/narvii/media/MediaOrganizeFragment$Adapter;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    goto :goto_1

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-virtual {v0}, Lcom/narvii/list/NVArrayAdapter;->getList()Ljava/util/List;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    if-nez v0, :cond_1

    .line 17
    return v1

    .line 18
    .line 19
    .line 20
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 21
    move-result v2

    .line 22
    const/4 v3, 0x0

    .line 23
    .line 24
    :goto_0
    if-ge v3, v2, :cond_3

    .line 25
    .line 26
    .line 27
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 28
    move-result-object v4

    .line 29
    .line 30
    check-cast v4, Lcom/narvii/model/Media;

    .line 31
    .line 32
    .line 33
    invoke-direct {p0, v4}, Lcom/narvii/media/MediaOrganizeFragment;->isCoverMedia(Lcom/narvii/model/Media;)Z

    .line 34
    move-result v4

    .line 35
    .line 36
    if-eqz v4, :cond_2

    .line 37
    return v3

    .line 38
    .line 39
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 40
    goto :goto_0

    .line 41
    :cond_3
    :goto_1
    return v1
.end method

.method private isCoverMedia(Lcom/narvii/model/Media;)Z
    .locals 1

    if-eqz p1, :cond_0

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
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/Media;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/media/MediaOrganizeFragment;->rnd:Ljava/util/Random;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Ljava/util/Random;

    .line 7
    .line 8
    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 10
    move-result-wide v1

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    .line 14
    .line 15
    sput-object v0, Lcom/narvii/media/MediaOrganizeFragment;->rnd:Ljava/util/Random;

    .line 16
    .line 17
    :cond_0
    :goto_0
    const-string v0, ""

    .line 18
    const/4 v1, 0x0

    .line 19
    :goto_1
    const/4 v2, 0x3

    .line 20
    .line 21
    if-ge v1, v2, :cond_2

    .line 22
    .line 23
    sget-object v2, Lcom/narvii/media/MediaOrganizeFragment;->rnd:Ljava/util/Random;

    .line 24
    .line 25
    const/16 v3, 0x24

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    .line 29
    move-result v2

    .line 30
    .line 31
    const/16 v3, 0xa

    .line 32
    .line 33
    if-ge v2, v3, :cond_1

    .line 34
    .line 35
    new-instance v3, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    add-int/lit8 v2, v2, 0x30

    .line 44
    int-to-char v0, v2

    .line 45
    .line 46
    .line 47
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    move-result-object v0

    .line 52
    goto :goto_2

    .line 53
    .line 54
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    add-int/lit8 v2, v2, 0x37

    .line 63
    int-to-char v0, v2

    .line 64
    .line 65
    .line 66
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    move-result-object v0

    .line 71
    .line 72
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 73
    goto :goto_1

    .line 74
    .line 75
    .line 76
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 77
    move-result-object v1

    .line 78
    .line 79
    .line 80
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 81
    move-result v2

    .line 82
    .line 83
    if-eqz v2, :cond_4

    .line 84
    .line 85
    .line 86
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 87
    move-result-object v2

    .line 88
    .line 89
    check-cast v2, Lcom/narvii/model/Media;

    .line 90
    .line 91
    iget-object v2, v2, Lcom/narvii/model/Media;->refId:Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 95
    move-result v2

    .line 96
    .line 97
    if-eqz v2, :cond_3

    .line 98
    goto :goto_0

    .line 99
    :cond_4
    return-object v0
.end method

.method static bridge synthetic u(Lcom/narvii/media/MediaOrganizeFragment;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/media/MediaOrganizeFragment;->getCurrentCoverMediaIndex()I

    move-result p0

    return p0
.end method

.method static bridge synthetic v(Lcom/narvii/media/MediaOrganizeFragment;Lcom/narvii/model/Media;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/media/MediaOrganizeFragment;->isCoverMedia(Lcom/narvii/model/Media;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method protected bridge synthetic createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 0

    .line 1
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

    .line 2
    invoke-virtual {p0, v0, v1}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;I)I

    move-result v0

    if-nez p1, :cond_0

    const-string p1, "mediaList"

    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-class v1, Lcom/narvii/model/Media;

    .line 4
    invoke-static {p1, v1}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object p1

    if-ltz v0, :cond_1

    .line 5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 6
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/Media;

    iput-object v0, p0, Lcom/narvii/media/MediaOrganizeFragment;->coverMedia:Lcom/narvii/model/Media;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 7
    :cond_1
    :goto_0
    new-instance v0, Lcom/narvii/media/MediaOrganizeFragment$Adapter;

    invoke-direct {v0, p0, p1}, Lcom/narvii/media/MediaOrganizeFragment$Adapter;-><init>(Lcom/narvii/media/MediaOrganizeFragment;Ljava/util/List;)V

    iput-object v0, p0, Lcom/narvii/media/MediaOrganizeFragment;->adapter:Lcom/narvii/media/MediaOrganizeFragment$Adapter;

    .line 8
    invoke-virtual {p0}, Lcom/narvii/media/MediaOrganizeFragment;->isPick()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "existsRefIds"

    .line 9
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-class v0, Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/media/MediaOrganizeFragment;->existsRefIds:Ljava/util/ArrayList;

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

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    const-string v1, "android.intent.action.PICK"

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    move-result v0

    .line 19
    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    const/4 v0, 0x1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setHasOptionsMenu(Z)V

    .line 8
    .line 9
    const-string v0, "flags"

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    .line 13
    move-result v0

    .line 14
    .line 15
    iput v0, p0, Lcom/narvii/media/MediaOrganizeFragment;->flags:I

    .line 16
    .line 17
    const-string v0, "picker"

    .line 18
    .line 19
    if-nez p1, :cond_0

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->q()Landroidx/fragment/app/FragmentTransaction;

    .line 27
    move-result-object p1

    .line 28
    .line 29
    new-instance v1, Lcom/narvii/media/MediaPickerFragment;

    .line 30
    .line 31
    .line 32
    invoke-direct {v1}, Lcom/narvii/media/MediaPickerFragment;-><init>()V

    .line 33
    .line 34
    iput-object v1, p0, Lcom/narvii/media/MediaOrganizeFragment;->picker:Lcom/narvii/media/MediaPickerFragment;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v1, v0}, Landroidx/fragment/app/FragmentTransaction;->e(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 38
    move-result-object p1

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->j()I

    .line 42
    goto :goto_0

    .line 43
    .line 44
    .line 45
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 46
    move-result-object p1

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->m0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 50
    move-result-object p1

    .line 51
    .line 52
    check-cast p1, Lcom/narvii/media/MediaPickerFragment;

    .line 53
    .line 54
    iput-object p1, p0, Lcom/narvii/media/MediaOrganizeFragment;->picker:Lcom/narvii/media/MediaPickerFragment;

    .line 55
    .line 56
    :goto_0
    iget-object p1, p0, Lcom/narvii/media/MediaOrganizeFragment;->picker:Lcom/narvii/media/MediaPickerFragment;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, p0}, Lcom/narvii/media/MediaPickerFragment;->addOnResultListener(Lcom/narvii/media/MediaPickerFragment$OnResultListener;)V

    .line 60
    .line 61
    new-instance p1, Ljava/io/File;

    .line 62
    .line 63
    const-string v0, "dir"

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 67
    move-result-object v0

    .line 68
    .line 69
    .line 70
    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    iput-object p1, p0, Lcom/narvii/media/MediaOrganizeFragment;->dir:Ljava/io/File;

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0}, Lcom/narvii/media/MediaOrganizeFragment;->isPick()Z

    .line 76
    move-result p1

    .line 77
    .line 78
    if-eqz p1, :cond_1

    .line 79
    .line 80
    sget p1, Lcom/narvii/lib/R$string;->post_insert_image:I

    .line 81
    goto :goto_1

    .line 82
    .line 83
    :cond_1
    sget p1, Lcom/narvii/lib/R$string;->post_images:I

    .line 84
    .line 85
    .line 86
    :goto_1
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    .line 87
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/media/MediaOrganizeFragment;->isPick()Z

    .line 7
    move-result p2

    .line 8
    .line 9
    if-nez p2, :cond_0

    .line 10
    const/4 p2, 0x0

    .line 11
    .line 12
    .line 13
    const v0, 0x104000a

    .line 14
    .line 15
    .line 16
    invoke-interface {p1, p2, v0, p2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    new-instance p2, Lcom/narvii/util/ActionBarIcon;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    sget v1, Lcom/narvii/lib/R$string;->fa_check:I

    .line 26
    .line 27
    .line 28
    invoke-direct {p2, v0, v1}, Lcom/narvii/util/ActionBarIcon;-><init>(Landroid/content/Context;I)V

    .line 29
    .line 30
    .line 31
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 32
    move-result-object p1

    .line 33
    const/4 p2, 0x2

    .line 34
    .line 35
    .line 36
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 37
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onDestroy()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/media/MediaOrganizeFragment;->picker:Lcom/narvii/media/MediaPickerFragment;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p0}, Lcom/narvii/media/MediaPickerFragment;->removeOnResultListener(Lcom/narvii/media/MediaPickerFragment$OnResultListener;)V

    .line 11
    :cond_0
    return-void
.end method

.method protected onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/media/MediaOrganizeFragment;->isPick()Z

    .line 7
    move-result p2

    .line 8
    const/4 v0, 0x1

    .line 9
    const/4 v1, 0x0

    .line 10
    const/4 v2, 0x0

    .line 11
    .line 12
    if-eqz p2, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    .line 16
    move-result-object p2

    .line 17
    .line 18
    sget v3, Lcom/narvii/lib/R$layout;->media_insert_all_item:I

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 22
    move-result-object v4

    .line 23
    .line 24
    .line 25
    invoke-virtual {p2, v3, v4, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 26
    move-result-object p2

    .line 27
    .line 28
    new-instance v3, Lcom/narvii/media/MediaOrganizeFragment$1;

    .line 29
    .line 30
    .line 31
    invoke-direct {v3, p0}, Lcom/narvii/media/MediaOrganizeFragment$1;-><init>(Lcom/narvii/media/MediaOrganizeFragment;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, p2, v2, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 38
    .line 39
    .line 40
    :cond_0
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    .line 41
    move-result-object p2

    .line 42
    .line 43
    sget v3, Lcom/narvii/lib/R$layout;->media_add_more_list_item:I

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 47
    move-result-object v4

    .line 48
    .line 49
    .line 50
    invoke-virtual {p2, v3, v4, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 51
    move-result-object p2

    .line 52
    .line 53
    new-instance v1, Lcom/narvii/media/MediaOrganizeFragment$2;

    .line 54
    .line 55
    .line 56
    invoke-direct {v1, p0}, Lcom/narvii/media/MediaOrganizeFragment$2;-><init>(Lcom/narvii/media/MediaOrganizeFragment;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, p2, v2, v0}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 63
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    const v1, 0x104000a

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 16
    move-result p1

    .line 17
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

    .line 1
    .line 2
    new-instance p2, Ljava/util/ArrayList;

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/media/MediaOrganizeFragment;->adapter:Lcom/narvii/media/MediaOrganizeFragment$Adapter;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/list/NVArrayAdapter;->getList()Ljava/util/List;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 15
    .line 16
    iget-object v0, p0, Lcom/narvii/media/MediaOrganizeFragment;->adapter:Lcom/narvii/media/MediaOrganizeFragment$Adapter;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/narvii/list/NVArrayAdapter;->clear()V

    .line 20
    .line 21
    iget-object v0, p0, Lcom/narvii/media/MediaOrganizeFragment;->adapter:Lcom/narvii/media/MediaOrganizeFragment$Adapter;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p2}, Lcom/narvii/list/NVArrayAdapter;->addAll(Ljava/util/Collection;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/narvii/media/MediaOrganizeFragment;->isPick()Z

    .line 28
    move-result p2

    .line 29
    .line 30
    if-eqz p2, :cond_0

    .line 31
    .line 32
    .line 33
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 34
    move-result p2

    .line 35
    .line 36
    if-lez p2, :cond_0

    .line 37
    const/4 p2, 0x0

    .line 38
    .line 39
    .line 40
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 41
    move-result-object p1

    .line 42
    .line 43
    check-cast p1, Lcom/narvii/model/Media;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, p1}, Lcom/narvii/media/MediaOrganizeFragment;->pickAndReturn(Lcom/narvii/model/Media;)V

    .line 47
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onResume()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/media/MediaOrganizeFragment;->isPick()Z

    .line 7
    move-result v0

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/narvii/media/MediaOrganizeFragment;->adapter:Lcom/narvii/media/MediaOrganizeFragment$Adapter;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->isEmpty()Z

    .line 15
    move-result v0

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lcom/narvii/media/MediaOrganizeFragment;->picker:Lcom/narvii/media/MediaPickerFragment;

    .line 20
    .line 21
    iget-object v1, p0, Lcom/narvii/media/MediaOrganizeFragment;->dir:Ljava/io/File;

    .line 22
    .line 23
    iget v2, p0, Lcom/narvii/media/MediaOrganizeFragment;->flags:I

    .line 24
    .line 25
    or-int/lit8 v2, v2, 0x4

    .line 26
    .line 27
    const-string v3, "maximum"

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, v3}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    .line 31
    move-result v3

    .line 32
    const/4 v4, 0x0

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/narvii/media/MediaPickerFragment;->pickMedia(Ljava/io/File;Landroid/os/Bundle;II)V

    .line 36
    :cond_0
    return-void
.end method

.method pickAllAndReturn()V
    .locals 6

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    new-instance v1, Ljava/util/ArrayList;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/narvii/media/MediaOrganizeFragment;->adapter:Lcom/narvii/media/MediaOrganizeFragment$Adapter;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v2}, Lcom/narvii/list/NVArrayAdapter;->getList()Ljava/util/List;

    .line 13
    move-result-object v2

    .line 14
    .line 15
    .line 16
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 20
    move-result-object v2

    .line 21
    .line 22
    .line 23
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    move-result v3

    .line 25
    .line 26
    if-eqz v3, :cond_3

    .line 27
    .line 28
    .line 29
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    move-result-object v3

    .line 31
    .line 32
    check-cast v3, Lcom/narvii/model/Media;

    .line 33
    .line 34
    iget-object v4, v3, Lcom/narvii/model/Media;->refId:Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 38
    move-result v4

    .line 39
    .line 40
    if-eqz v4, :cond_1

    .line 41
    .line 42
    .line 43
    invoke-direct {p0, v1}, Lcom/narvii/media/MediaOrganizeFragment;->newRefId(Ljava/util/List;)Ljava/lang/String;

    .line 44
    move-result-object v4

    .line 45
    .line 46
    iput-object v4, v3, Lcom/narvii/model/Media;->refId:Ljava/lang/String;

    .line 47
    .line 48
    :cond_1
    iget-object v4, p0, Lcom/narvii/media/MediaOrganizeFragment;->existsRefIds:Ljava/util/ArrayList;

    .line 49
    .line 50
    iget-object v5, v3, Lcom/narvii/model/Media;->refId:Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 54
    move-result v4

    .line 55
    .line 56
    if-nez v4, :cond_0

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 60
    move-result v4

    .line 61
    .line 62
    if-lez v4, :cond_2

    .line 63
    .line 64
    const/16 v4, 0x2c

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    :cond_2
    iget-object v3, v3, Lcom/narvii/model/Media;->refId:Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    goto :goto_0

    .line 74
    .line 75
    :cond_3
    new-instance v2, Landroid/content/Intent;

    .line 76
    .line 77
    .line 78
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 79
    .line 80
    const-string v3, "mediaList"

    .line 81
    .line 82
    .line 83
    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 84
    move-result-object v1

    .line 85
    .line 86
    .line 87
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    .line 89
    const-string v1, "refIdList"

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    move-result-object v0

    .line 94
    .line 95
    .line 96
    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 97
    const/4 v0, -0x1

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0, v0, v2}, Lcom/narvii/app/NVFragment;->setResult(ILandroid/content/Intent;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    .line 104
    return-void
.end method

.method pickAndReturn(Lcom/narvii/model/Media;)V
    .locals 3

    .line 1
    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/media/MediaOrganizeFragment;->adapter:Lcom/narvii/media/MediaOrganizeFragment$Adapter;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/narvii/list/NVArrayAdapter;->getList()Ljava/util/List;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 15
    move-result v1

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    iget-object v1, p1, Lcom/narvii/model/Media;->refId:Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 23
    move-result v1

    .line 24
    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    .line 28
    invoke-direct {p0, v0}, Lcom/narvii/media/MediaOrganizeFragment;->newRefId(Ljava/util/List;)Ljava/lang/String;

    .line 29
    move-result-object v1

    .line 30
    .line 31
    iput-object v1, p1, Lcom/narvii/model/Media;->refId:Ljava/lang/String;

    .line 32
    .line 33
    :cond_0
    new-instance v1, Landroid/content/Intent;

    .line 34
    .line 35
    .line 36
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 37
    .line 38
    const-string v2, "mediaList"

    .line 39
    .line 40
    .line 41
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 42
    move-result-object v0

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 46
    .line 47
    const-string v0, "refIdList"

    .line 48
    .line 49
    iget-object p1, p1, Lcom/narvii/model/Media;->refId:Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 53
    const/4 p1, -0x1

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0, p1, v1}, Lcom/narvii/app/NVFragment;->setResult(ILandroid/content/Intent;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    .line 60
    :cond_1
    return-void
.end method

.method public willFinish(Lcom/narvii/app/NVActivity;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/media/MediaOrganizeFragment;->isPick()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    new-instance v0, Landroid/content/Intent;

    .line 9
    .line 10
    .line 11
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 12
    .line 13
    iget-object v1, p0, Lcom/narvii/media/MediaOrganizeFragment;->adapter:Lcom/narvii/media/MediaOrganizeFragment$Adapter;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/narvii/list/NVArrayAdapter;->getList()Ljava/util/List;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    .line 20
    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 21
    move-result-object v1

    .line 22
    .line 23
    const-string v2, "mediaList"

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 27
    .line 28
    const-string v1, "coverMediaIndex"

    .line 29
    .line 30
    .line 31
    invoke-direct {p0}, Lcom/narvii/media/MediaOrganizeFragment;->getCurrentCoverMediaIndex()I

    .line 32
    move-result v2

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 36
    const/4 v1, -0x1

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 40
    :cond_0
    return-void
.end method
