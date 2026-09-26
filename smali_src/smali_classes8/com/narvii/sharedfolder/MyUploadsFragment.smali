.class public Lcom/narvii/sharedfolder/MyUploadsFragment;
.super Lcom/narvii/sharedfolder/MyUploadsBaseFragment;
.source "SourceFile"


# instance fields
.field public mergeAdapter:Lcom/narvii/list/MergeAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/sharedfolder/MyUploadsBaseFragment;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 4

    .line 1
    .line 2
    new-instance p1, Lcom/narvii/list/MergeAdapter;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1, p0}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    iput-object p1, p0, Lcom/narvii/sharedfolder/MyUploadsFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    .line 8
    .line 9
    new-instance p1, Lcom/narvii/list/StaticViewAdapter;

    .line 10
    .line 11
    .line 12
    invoke-direct {p1}, Lcom/narvii/list/StaticViewAdapter;-><init>()V

    .line 13
    const/4 v0, 0x1

    .line 14
    .line 15
    new-array v1, v0, [Landroid/view/View;

    .line 16
    .line 17
    new-instance v2, Lcom/narvii/list/overlay/OverlayListPlaceholder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 21
    move-result-object v3

    .line 22
    .line 23
    .line 24
    invoke-direct {v2, v3}, Lcom/narvii/list/overlay/OverlayListPlaceholder;-><init>(Landroid/content/Context;)V

    .line 25
    const/4 v3, 0x0

    .line 26
    .line 27
    aput-object v2, v1, v3

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v1}, Lcom/narvii/list/StaticViewAdapter;->addViews([Landroid/view/View;)V

    .line 31
    .line 32
    iget-object v1, p0, Lcom/narvii/sharedfolder/MyUploadsFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, p1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 36
    .line 37
    new-instance p1, Lcom/narvii/sharedfolder/MyUploadsBaseFragment$UploadAdapter;

    .line 38
    .line 39
    .line 40
    invoke-direct {p1, p0, p0}, Lcom/narvii/sharedfolder/MyUploadsBaseFragment$UploadAdapter;-><init>(Lcom/narvii/sharedfolder/MyUploadsBaseFragment;Lcom/narvii/app/NVContext;)V

    .line 41
    .line 42
    iget-object v1, p0, Lcom/narvii/sharedfolder/MyUploadsFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, p1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 46
    .line 47
    iget-object p1, p0, Lcom/narvii/sharedfolder/MyUploadsFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, v3}, Lcom/narvii/sharedfolder/MyUploadsBaseFragment;->getPhotoAdapter(Z)Lcom/narvii/list/NVAdapter;

    .line 51
    move-result-object v1

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, v1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;Z)V

    .line 55
    .line 56
    iget-object p1, p0, Lcom/narvii/sharedfolder/MyUploadsBaseFragment;->sharedPhotosAdapter:Lcom/narvii/sharedfolder/SharedPhotosAdapter;

    .line 57
    .line 58
    new-instance v0, Lcom/narvii/sharedfolder/MyUploadsFragment$1;

    .line 59
    .line 60
    .line 61
    invoke-direct {v0, p0}, Lcom/narvii/sharedfolder/MyUploadsFragment$1;-><init>(Lcom/narvii/sharedfolder/MyUploadsFragment;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, v0}, Lcom/narvii/sharedfolder/SharedPhotosAdapter;->setOnPhotosCountChangeListener(Lcom/narvii/sharedfolder/SharedPhotosAdapter$OnPhotosCountChangeListener;)V

    .line 65
    .line 66
    iget-object p1, p0, Lcom/narvii/sharedfolder/MyUploadsFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    .line 67
    return-object p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/sharedfolder/SharedBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const-string p1, "statistics"

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    check-cast p1, Lcom/narvii/util/statistics/StatisticsService;

    .line 14
    .line 15
    const-string v0, "My Uploads Opened"

    .line 16
    .line 17
    .line 18
    invoke-interface {p1, v0}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    const-string v0, "My Uploads Opened Total"

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v0}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 25
    :cond_0
    return-void
.end method
