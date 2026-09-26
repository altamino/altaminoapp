.class public abstract Lcom/narvii/adapter/FragmentGalleryAdapter;
.super Lcom/narvii/util/FixedFragmentStatePagerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/adapter/FragmentGalleryAdapter$ErrorFragment;,
        Lcom/narvii/adapter/FragmentGalleryAdapter$LoadingFragment;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/narvii/model/NVObject;",
        "E:",
        "Lcom/narvii/model/api/ListResponse<",
        "+TT;>;>",
        "Lcom/narvii/util/FixedFragmentStatePagerAdapter;"
    }
.end annotation


# static fields
.field public static final PRE_LOAD_NUMBER:I = 0x5


# instance fields
.field protected _errorMsg:Ljava/lang/String;

.field protected _isEnd:Z

.field protected _list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field protected _start:I

.field protected _stopTime:Ljava/lang/String;

.field loadNextPageRunnable:Ljava/lang/Runnable;

.field nvContext:Lcom/narvii/app/NVContext;

.field private request:Lcom/narvii/util/http/ApiRequest;

.field protected final requestListener:Lcom/narvii/util/http/ApiResponseListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/http/ApiResponseListener<",
            "TE;>;"
        }
    .end annotation
.end field

.field public runnable:Ljava/lang/Runnable;

.field public viewpagerIdle:Z


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentManager;Lcom/narvii/app/NVContext;Ljava/util/List;Ljava/lang/String;IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentManager;",
            "Lcom/narvii/app/NVContext;",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/lang/String;",
            "IZ)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/util/FixedFragmentStatePagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 4
    const/4 p1, 0x1

    .line 5
    .line 6
    iput-boolean p1, p0, Lcom/narvii/adapter/FragmentGalleryAdapter;->viewpagerIdle:Z

    .line 7
    .line 8
    new-instance p1, Lcom/narvii/adapter/FragmentGalleryAdapter$1;

    .line 9
    .line 10
    .line 11
    invoke-direct {p1, p0}, Lcom/narvii/adapter/FragmentGalleryAdapter$1;-><init>(Lcom/narvii/adapter/FragmentGalleryAdapter;)V

    .line 12
    .line 13
    iput-object p1, p0, Lcom/narvii/adapter/FragmentGalleryAdapter;->loadNextPageRunnable:Ljava/lang/Runnable;

    .line 14
    .line 15
    new-instance p1, Lcom/narvii/adapter/FragmentGalleryAdapter$2;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/narvii/adapter/FragmentGalleryAdapter;->responseType()Ljava/lang/Class;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    .line 22
    invoke-direct {p1, p0, v0}, Lcom/narvii/adapter/FragmentGalleryAdapter$2;-><init>(Lcom/narvii/adapter/FragmentGalleryAdapter;Ljava/lang/Class;)V

    .line 23
    .line 24
    iput-object p1, p0, Lcom/narvii/adapter/FragmentGalleryAdapter;->requestListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 25
    .line 26
    iput-object p2, p0, Lcom/narvii/adapter/FragmentGalleryAdapter;->nvContext:Lcom/narvii/app/NVContext;

    .line 27
    .line 28
    if-eqz p3, :cond_0

    .line 29
    .line 30
    iput-object p3, p0, Lcom/narvii/adapter/FragmentGalleryAdapter;->_list:Ljava/util/List;

    .line 31
    .line 32
    iput-object p4, p0, Lcom/narvii/adapter/FragmentGalleryAdapter;->_stopTime:Ljava/lang/String;

    .line 33
    .line 34
    iput p5, p0, Lcom/narvii/adapter/FragmentGalleryAdapter;->_start:I

    .line 35
    .line 36
    iput-boolean p6, p0, Lcom/narvii/adapter/FragmentGalleryAdapter;->_isEnd:Z

    .line 37
    :cond_0
    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/adapter/FragmentGalleryAdapter;Lcom/narvii/util/http/ApiRequest;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/adapter/FragmentGalleryAdapter;->request:Lcom/narvii/util/http/ApiRequest;

    return-void
.end method

.method private createErrorFragment()Landroidx/fragment/app/Fragment;
    .locals 4

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/adapter/FragmentGalleryAdapter$ErrorFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/narvii/adapter/FragmentGalleryAdapter$ErrorFragment;-><init>()V

    .line 6
    .line 7
    new-instance v1, Landroid/os/Bundle;

    .line 8
    .line 9
    .line 10
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 11
    .line 12
    const-string v2, "_errorMsg"

    .line 13
    .line 14
    iget-object v3, p0, Lcom/narvii/adapter/FragmentGalleryAdapter;->_errorMsg:Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 21
    .line 22
    new-instance v1, Lcom/narvii/adapter/FragmentGalleryAdapter$3;

    .line 23
    .line 24
    .line 25
    invoke-direct {v1, p0}, Lcom/narvii/adapter/FragmentGalleryAdapter$3;-><init>(Lcom/narvii/adapter/FragmentGalleryAdapter;)V

    .line 26
    .line 27
    iput-object v1, v0, Lcom/narvii/adapter/FragmentGalleryAdapter$ErrorFragment;->errorRetryCallback:Lcom/narvii/util/Callback;

    .line 28
    return-object v0
.end method

.method private createLoadingFragment()Landroidx/fragment/app/Fragment;
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/adapter/FragmentGalleryAdapter$LoadingFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/narvii/adapter/FragmentGalleryAdapter$LoadingFragment;-><init>()V

    .line 6
    return-object v0
.end method

.method private isError()Z
    .locals 1

    iget-object v0, p0, Lcom/narvii/adapter/FragmentGalleryAdapter;->_errorMsg:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method protected abstract createFragment(Lcom/narvii/model/NVObject;)Landroidx/fragment/app/Fragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Landroidx/fragment/app/Fragment;"
        }
    .end annotation
.end method

.method protected abstract createRequest(IILjava/lang/String;)Lcom/narvii/util/http/ApiRequest;
.end method

.method protected abstract dataType()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end method

.method public editList(Lcom/narvii/notification/Notification;Z)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/adapter/FragmentGalleryAdapter;->_list:Ljava/util/List;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/adapter/FragmentGalleryAdapter;->dataType()Ljava/lang/Class;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    iget-object v1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 15
    move-result v0

    .line 16
    .line 17
    if-eqz v0, :cond_6

    .line 18
    .line 19
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v0, Lcom/narvii/model/NVObject;

    .line 22
    .line 23
    iget-object p1, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    .line 24
    .line 25
    const-string v1, "new"

    .line 26
    const/4 v2, 0x0

    .line 27
    .line 28
    if-ne p1, v1, :cond_1

    .line 29
    .line 30
    iget-object p1, p0, Lcom/narvii/adapter/FragmentGalleryAdapter;->_list:Ljava/util/List;

    .line 31
    .line 32
    .line 33
    invoke-interface {p1, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    .line 37
    goto :goto_1

    .line 38
    .line 39
    :cond_1
    const-string v1, "edit"

    .line 40
    .line 41
    if-ne p1, v1, :cond_4

    .line 42
    .line 43
    iget-object p1, p0, Lcom/narvii/adapter/FragmentGalleryAdapter;->_list:Ljava/util/List;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    .line 47
    move-result-object v1

    .line 48
    .line 49
    .line 50
    invoke-static {p1, v1}, Lcom/narvii/util/Utils;->indexOfId(Ljava/util/Collection;Ljava/lang/String;)I

    .line 51
    move-result p1

    .line 52
    .line 53
    if-ltz p1, :cond_3

    .line 54
    .line 55
    if-eqz p2, :cond_2

    .line 56
    .line 57
    iget-object p2, p0, Lcom/narvii/adapter/FragmentGalleryAdapter;->_list:Ljava/util/List;

    .line 58
    .line 59
    .line 60
    invoke-interface {p2, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 61
    .line 62
    iget-object p1, p0, Lcom/narvii/adapter/FragmentGalleryAdapter;->_list:Ljava/util/List;

    .line 63
    .line 64
    .line 65
    invoke-interface {p1, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 66
    .line 67
    iget p1, p0, Lcom/narvii/adapter/FragmentGalleryAdapter;->_start:I

    .line 68
    .line 69
    add-int/lit8 p1, p1, -0x1

    .line 70
    .line 71
    iput p1, p0, Lcom/narvii/adapter/FragmentGalleryAdapter;->_start:I

    .line 72
    goto :goto_0

    .line 73
    .line 74
    :cond_2
    iget-object p2, p0, Lcom/narvii/adapter/FragmentGalleryAdapter;->_list:Ljava/util/List;

    .line 75
    .line 76
    .line 77
    invoke-interface {p2, p1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    :goto_0
    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    .line 81
    goto :goto_1

    .line 82
    .line 83
    :cond_3
    if-eqz p2, :cond_6

    .line 84
    .line 85
    iget-object p1, p0, Lcom/narvii/adapter/FragmentGalleryAdapter;->_list:Ljava/util/List;

    .line 86
    .line 87
    .line 88
    invoke-interface {p1, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    .line 92
    goto :goto_1

    .line 93
    .line 94
    :cond_4
    const-string p2, "update"

    .line 95
    .line 96
    if-ne p1, p2, :cond_5

    .line 97
    .line 98
    iget-object p1, p0, Lcom/narvii/adapter/FragmentGalleryAdapter;->_list:Ljava/util/List;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    .line 102
    move-result-object p2

    .line 103
    .line 104
    .line 105
    invoke-static {p1, p2}, Lcom/narvii/util/Utils;->indexOfId(Ljava/util/Collection;Ljava/lang/String;)I

    .line 106
    move-result p1

    .line 107
    .line 108
    if-ltz p1, :cond_6

    .line 109
    .line 110
    iget-object p2, p0, Lcom/narvii/adapter/FragmentGalleryAdapter;->_list:Ljava/util/List;

    .line 111
    .line 112
    .line 113
    invoke-interface {p2, p1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    .line 117
    goto :goto_1

    .line 118
    .line 119
    :cond_5
    const-string p2, "delete"

    .line 120
    .line 121
    if-ne p1, p2, :cond_6

    .line 122
    .line 123
    iget-object p1, p0, Lcom/narvii/adapter/FragmentGalleryAdapter;->_list:Ljava/util/List;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    .line 127
    move-result-object p2

    .line 128
    .line 129
    .line 130
    invoke-static {p1, p2}, Lcom/narvii/util/Utils;->removeId(Ljava/util/Collection;Ljava/lang/String;)I

    .line 131
    move-result p1

    .line 132
    .line 133
    iget p2, p0, Lcom/narvii/adapter/FragmentGalleryAdapter;->_start:I

    .line 134
    sub-int/2addr p2, p1

    .line 135
    .line 136
    iput p2, p0, Lcom/narvii/adapter/FragmentGalleryAdapter;->_start:I

    .line 137
    .line 138
    if-eqz p1, :cond_6

    .line 139
    .line 140
    .line 141
    invoke-virtual {p0}, Lcom/narvii/adapter/FragmentGalleryAdapter;->onNotificationDeleteSuccess()V

    .line 142
    .line 143
    .line 144
    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    .line 145
    :cond_6
    :goto_1
    return-void
.end method

.method protected filterResponseList(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/util/FilterHelper;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/adapter/FragmentGalleryAdapter;->nvContext:Lcom/narvii/app/NVContext;

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1}, Lcom/narvii/util/FilterHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lcom/narvii/util/FilterHelper;->filter(Ljava/util/List;)Ljava/util/List;

    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method public getCount()I
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/adapter/FragmentGalleryAdapter;->_list:Ljava/util/List;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 10
    move-result v0

    .line 11
    .line 12
    :goto_0
    iget-boolean v1, p0, Lcom/narvii/adapter/FragmentGalleryAdapter;->_isEnd:Z

    .line 13
    .line 14
    if-nez v1, :cond_1

    .line 15
    .line 16
    add-int/lit8 v0, v0, 0x1

    .line 17
    :cond_1
    return v0
.end method

.method public getFragmentAt(I)Landroidx/fragment/app/Fragment;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/util/FixedFragmentStatePagerAdapter;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    return-object v1

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-virtual {p0, p1}, Lcom/narvii/adapter/FragmentGalleryAdapter;->getTag(I)Ljava/lang/String;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    if-nez p1, :cond_1

    .line 15
    return-object v1

    .line 16
    .line 17
    .line 18
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/util/FixedFragmentStatePagerAdapter;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentManager;->m0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 23
    move-result-object p1

    .line 24
    return-object p1
.end method

.method public getItem(I)Landroidx/fragment/app/Fragment;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/adapter/FragmentGalleryAdapter;->getCount()I

    .line 4
    move-result v0

    .line 5
    .line 6
    add-int/lit8 v0, v0, -0x5

    .line 7
    .line 8
    if-le p1, v0, :cond_0

    .line 9
    .line 10
    iget-boolean v0, p0, Lcom/narvii/adapter/FragmentGalleryAdapter;->_isEnd:Z

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-direct {p0}, Lcom/narvii/adapter/FragmentGalleryAdapter;->isError()Z

    .line 16
    move-result v0

    .line 17
    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    iget-object v0, p0, Lcom/narvii/adapter/FragmentGalleryAdapter;->request:Lcom/narvii/util/http/ApiRequest;

    .line 21
    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 25
    .line 26
    iget-object v1, p0, Lcom/narvii/adapter/FragmentGalleryAdapter;->loadNextPageRunnable:Ljava/lang/Runnable;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 30
    .line 31
    iget-object v0, p0, Lcom/narvii/adapter/FragmentGalleryAdapter;->loadNextPageRunnable:Ljava/lang/Runnable;

    .line 32
    .line 33
    .line 34
    invoke-static {v0}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 35
    .line 36
    :cond_0
    iget-object v0, p0, Lcom/narvii/adapter/FragmentGalleryAdapter;->_list:Ljava/util/List;

    .line 37
    .line 38
    .line 39
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 40
    move-result v0

    .line 41
    .line 42
    if-ge p1, v0, :cond_1

    .line 43
    .line 44
    iget-object v0, p0, Lcom/narvii/adapter/FragmentGalleryAdapter;->_list:Ljava/util/List;

    .line 45
    .line 46
    .line 47
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 48
    move-result-object p1

    .line 49
    .line 50
    check-cast p1, Lcom/narvii/model/NVObject;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, p1}, Lcom/narvii/adapter/FragmentGalleryAdapter;->createFragment(Lcom/narvii/model/NVObject;)Landroidx/fragment/app/Fragment;

    .line 54
    move-result-object p1

    .line 55
    return-object p1

    .line 56
    .line 57
    .line 58
    :cond_1
    invoke-direct {p0}, Lcom/narvii/adapter/FragmentGalleryAdapter;->isError()Z

    .line 59
    move-result p1

    .line 60
    .line 61
    if-eqz p1, :cond_2

    .line 62
    .line 63
    .line 64
    invoke-direct {p0}, Lcom/narvii/adapter/FragmentGalleryAdapter;->createErrorFragment()Landroidx/fragment/app/Fragment;

    .line 65
    move-result-object p1

    .line 66
    return-object p1

    .line 67
    .line 68
    .line 69
    :cond_2
    invoke-direct {p0}, Lcom/narvii/adapter/FragmentGalleryAdapter;->createLoadingFragment()Landroidx/fragment/app/Fragment;

    .line 70
    move-result-object p1

    .line 71
    return-object p1
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 0

    const/4 p1, -0x2

    return p1
.end method

.method public getObject(I)Lcom/narvii/model/NVObject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/adapter/FragmentGalleryAdapter;->_list:Ljava/util/List;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    check-cast p1, Lcom/narvii/model/NVObject;

    .line 9
    return-object p1
.end method

.method public getTag(I)Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/adapter/FragmentGalleryAdapter;->_list:Ljava/util/List;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    move-result v0

    .line 7
    .line 8
    if-ge p1, v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/adapter/FragmentGalleryAdapter;->_list:Ljava/util/List;

    .line 11
    .line 12
    .line 13
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    check-cast p1, Lcom/narvii/model/NVObject;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    .line 20
    move-result-object p1

    .line 21
    return-object p1

    .line 22
    .line 23
    .line 24
    :cond_0
    invoke-super {p0, p1}, Lcom/narvii/util/FixedFragmentStatePagerAdapter;->getTag(I)Ljava/lang/String;

    .line 25
    move-result-object p1

    .line 26
    return-object p1
.end method

.method public loadNextPage()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/adapter/FragmentGalleryAdapter;->_list:Ljava/util/List;

    .line 3
    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    iget-boolean v0, p0, Lcom/narvii/adapter/FragmentGalleryAdapter;->_isEnd:Z

    .line 7
    .line 8
    if-nez v0, :cond_2

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/adapter/FragmentGalleryAdapter;->request:Lcom/narvii/util/http/ApiRequest;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    goto :goto_1

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    .line 16
    iput-object v0, p0, Lcom/narvii/adapter/FragmentGalleryAdapter;->runnable:Ljava/lang/Runnable;

    .line 17
    .line 18
    iput-object v0, p0, Lcom/narvii/adapter/FragmentGalleryAdapter;->_errorMsg:Ljava/lang/String;

    .line 19
    .line 20
    iget-object v0, p0, Lcom/narvii/adapter/FragmentGalleryAdapter;->nvContext:Lcom/narvii/app/NVContext;

    .line 21
    .line 22
    const-string v1, "api"

    .line 23
    .line 24
    .line 25
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 29
    .line 30
    iget v1, p0, Lcom/narvii/adapter/FragmentGalleryAdapter;->_start:I

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/narvii/adapter/FragmentGalleryAdapter;->pageSize()I

    .line 34
    move-result v2

    .line 35
    .line 36
    iget-object v3, p0, Lcom/narvii/adapter/FragmentGalleryAdapter;->_stopTime:Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, v1, v2, v3}, Lcom/narvii/adapter/FragmentGalleryAdapter;->createRequest(IILjava/lang/String;)Lcom/narvii/util/http/ApiRequest;

    .line 40
    move-result-object v1

    .line 41
    .line 42
    iput-object v1, p0, Lcom/narvii/adapter/FragmentGalleryAdapter;->request:Lcom/narvii/util/http/ApiRequest;

    .line 43
    .line 44
    if-nez v1, :cond_1

    .line 45
    .line 46
    const-string v0, "loadNextPage pending..."

    .line 47
    .line 48
    .line 49
    invoke-static {v0}, Lcom/narvii/util/Log;->d(Ljava/lang/String;)V

    .line 50
    goto :goto_0

    .line 51
    .line 52
    :cond_1
    iget-object v2, p0, Lcom/narvii/adapter/FragmentGalleryAdapter;->requestListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 56
    .line 57
    .line 58
    :goto_0
    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    .line 59
    :cond_2
    :goto_1
    return-void
.end method

.method protected onFailResponse(Lcom/narvii/util/http/ApiRequest;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0

    .line 1
    .line 2
    iput-object p2, p0, Lcom/narvii/adapter/FragmentGalleryAdapter;->_errorMsg:Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    .line 6
    return-void
.end method

.method protected onNotificationDeleteSuccess()V
    .locals 0

    return-void
.end method

.method protected onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/util/http/ApiRequest;",
            "TE;)V"
        }
    .end annotation

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/adapter/FragmentGalleryAdapter;->_start:I

    .line 3
    .line 4
    .line 5
    invoke-virtual {p2}, Lcom/narvii/model/api/ListResponse;->list()Ljava/util/List;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    if-nez v1, :cond_0

    .line 9
    const/4 v1, 0x0

    .line 10
    goto :goto_0

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-virtual {p2}, Lcom/narvii/model/api/ListResponse;->list()Ljava/util/List;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    .line 17
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 18
    move-result v1

    .line 19
    .line 20
    .line 21
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest;->url()Ljava/lang/String;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    .line 25
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    const-string v2, "start"

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    move-result-object v2

    .line 33
    .line 34
    const-string v3, "size"

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 38
    move-result-object p1

    .line 39
    .line 40
    .line 41
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 42
    move-result v3

    .line 43
    .line 44
    if-nez v3, :cond_1

    .line 45
    .line 46
    .line 47
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 48
    move-result v3

    .line 49
    .line 50
    if-nez v3, :cond_1

    .line 51
    .line 52
    .line 53
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 54
    move-result v0

    .line 55
    .line 56
    .line 57
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 58
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :catch_0
    :cond_1
    const/4 p1, 0x0

    .line 60
    .line 61
    iput-object p1, p0, Lcom/narvii/adapter/FragmentGalleryAdapter;->_errorMsg:Ljava/lang/String;

    .line 62
    .line 63
    iget-object p1, p0, Lcom/narvii/adapter/FragmentGalleryAdapter;->_list:Ljava/util/List;

    .line 64
    .line 65
    if-nez p1, :cond_2

    .line 66
    .line 67
    new-instance p1, Ljava/util/ArrayList;

    .line 68
    .line 69
    .line 70
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 71
    .line 72
    iput-object p1, p0, Lcom/narvii/adapter/FragmentGalleryAdapter;->_list:Ljava/util/List;

    .line 73
    .line 74
    .line 75
    :cond_2
    invoke-virtual {p2}, Lcom/narvii/model/api/ListResponse;->list()Ljava/util/List;

    .line 76
    move-result-object p1

    .line 77
    .line 78
    if-eqz p1, :cond_4

    .line 79
    .line 80
    .line 81
    invoke-virtual {p2}, Lcom/narvii/model/api/ListResponse;->list()Ljava/util/List;

    .line 82
    move-result-object p1

    .line 83
    .line 84
    .line 85
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 86
    move-result p1

    .line 87
    .line 88
    if-nez p1, :cond_3

    .line 89
    goto :goto_1

    .line 90
    .line 91
    .line 92
    :cond_3
    invoke-virtual {p2}, Lcom/narvii/model/api/ListResponse;->list()Ljava/util/List;

    .line 93
    move-result-object p1

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0, p1}, Lcom/narvii/adapter/FragmentGalleryAdapter;->filterResponseList(Ljava/util/List;)Ljava/util/List;

    .line 97
    move-result-object p1

    .line 98
    .line 99
    iget-object v2, p0, Lcom/narvii/adapter/FragmentGalleryAdapter;->_list:Ljava/util/List;

    .line 100
    .line 101
    .line 102
    invoke-interface {v2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 103
    add-int/2addr v0, v1

    .line 104
    .line 105
    iput v0, p0, Lcom/narvii/adapter/FragmentGalleryAdapter;->_start:I

    .line 106
    goto :goto_2

    .line 107
    :cond_4
    :goto_1
    const/4 p1, 0x1

    .line 108
    .line 109
    iput-boolean p1, p0, Lcom/narvii/adapter/FragmentGalleryAdapter;->_isEnd:Z

    .line 110
    .line 111
    :goto_2
    iget-object p1, p0, Lcom/narvii/adapter/FragmentGalleryAdapter;->_stopTime:Ljava/lang/String;

    .line 112
    .line 113
    if-nez p1, :cond_5

    .line 114
    .line 115
    iget-object p1, p2, Lcom/narvii/model/api/ApiResponse;->timestamp:Ljava/lang/String;

    .line 116
    .line 117
    iput-object p1, p0, Lcom/narvii/adapter/FragmentGalleryAdapter;->_stopTime:Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    :cond_5
    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    .line 121
    return-void
.end method

.method protected pageSize()I
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/adapter/FragmentGalleryAdapter;->nvContext:Lcom/narvii/app/NVContext;

    .line 3
    .line 4
    const-string v1, "config"

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getPageSize()I

    .line 14
    move-result v0

    .line 15
    return v0
.end method

.method protected abstract responseType()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+TE;>;"
        }
    .end annotation
.end method

.method public setViewPagerIdle(Z)V
    .locals 0

    .line 1
    .line 2
    iput-boolean p1, p0, Lcom/narvii/adapter/FragmentGalleryAdapter;->viewpagerIdle:Z

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    iget-object p1, p0, Lcom/narvii/adapter/FragmentGalleryAdapter;->runnable:Ljava/lang/Runnable;

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 12
    const/4 p1, 0x0

    .line 13
    .line 14
    iput-object p1, p0, Lcom/narvii/adapter/FragmentGalleryAdapter;->runnable:Ljava/lang/Runnable;

    .line 15
    :cond_0
    return-void
.end method
