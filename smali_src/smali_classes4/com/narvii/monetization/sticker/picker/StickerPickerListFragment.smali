.class public Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;
.super Lcom/narvii/list/NVListFragment;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/media/MediaPickerFragment$OnResultListener;
.implements Lcom/narvii/notification/NotificationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$FavTopAdapter;,
        Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$Adapter;,
        Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$AddAdapter;,
        Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$UserCreatedInfoAdapter;
    }
.end annotation


# static fields
.field public static final COLUMN_COUNT:I = 0x4


# instance fields
.field adapter:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$Adapter;

.field public addAdapter:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$AddAdapter;

.field cacheSticker:Z

.field private editorTheme:Z

.field private error:Ljava/lang/String;

.field private infoAdapter:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$UserCreatedInfoAdapter;

.field mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

.field membershipService:Lcom/narvii/wallet/MembershipService;

.field public paddingH:I

.field photoUrl:Ljava/lang/String;

.field previewTouchListener:Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;

.field progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

.field receiver:Landroid/content/BroadcastReceiver;

.field private requesting:Z

.field selectedSticker:Lcom/narvii/model/Sticker;

.field stickerCacheService:Lcom/narvii/sticker/StickerCacheService;

.field stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

.field private stickerHelper:Lcom/narvii/monetization/sticker/StickerHelper;

.field stickerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/narvii/model/Sticker;",
            ">;"
        }
    .end annotation
.end field

.field private stickerPreviewListener:Lcom/narvii/monetization/sticker/StickerPreviewListener;

.field stickerSelectListener:Lcom/narvii/monetization/sticker/picker/StickerSelectListener;

.field stickerService:Lcom/narvii/monetization/sticker/StickerService;

.field public trial:Z

.field private videoManager:Lcom/narvii/video/services/VideoManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    .line 4
    .line 5
    new-instance v0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$1;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p0}, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$1;-><init>(Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;)V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 11
    return-void
.end method

.method static bridge synthetic A(Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->showExpireDialog()V

    return-void
.end method

.method static bridge synthetic B(Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->showMembershipDialog()V

    return-void
.end method

.method static bridge synthetic C(Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->showProfileDialog()V

    return-void
.end method

.method private refreshIfStickerListNull()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->stickerList:Ljava/util/ArrayList;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/narvii/monetization/sticker/model/StickerCollection;->isDisabled()Z

    .line 18
    move-result v0

    .line 19
    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/narvii/monetization/sticker/model/StickerCollection;->isDeleted()Z

    .line 26
    move-result v0

    .line 27
    .line 28
    if-nez v0, :cond_0

    .line 29
    .line 30
    .line 31
    invoke-direct {p0}, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->refreshStickerCollectionInfo()V

    .line 32
    :cond_0
    return-void
.end method

.method private refreshStickerCollectionInfo()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    iget-boolean v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->requesting:Z

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    return-void

    .line 11
    :cond_1
    const/4 v0, 0x1

    .line 12
    .line 13
    iput-boolean v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->requesting:Z

    .line 14
    const/4 v0, 0x0

    .line 15
    .line 16
    iput-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->error:Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    const-string v2, "/sticker-collection/"

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    iget-object v2, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2}, Lcom/narvii/monetization/sticker/model/StickerCollection;->id()Ljava/lang/String;

    .line 36
    move-result-object v2

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    move-result-object v1

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 47
    move-result-object v0

    .line 48
    .line 49
    const-string v1, "includeStickers"

    .line 50
    .line 51
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 55
    move-result-object v0

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 59
    move-result-object v0

    .line 60
    .line 61
    const-string v1, "api"

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 65
    move-result-object v1

    .line 66
    .line 67
    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 68
    .line 69
    new-instance v2, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$7;

    .line 70
    .line 71
    const-class v3, Lcom/narvii/monetization/sticker/model/StickerCollectionResponse;

    .line 72
    .line 73
    .line 74
    invoke-direct {v2, p0, v3}, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$7;-><init>(Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;Ljava/lang/Class;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 78
    .line 79
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->adapter:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$Adapter;

    .line 80
    .line 81
    if-eqz v0, :cond_2

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 85
    :cond_2
    return-void
.end method

.method private setStickerList(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/model/Sticker;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->stickerList:Ljava/util/ArrayList;

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->adapter:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$Adapter;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$Adapter;->setStickerList(Ljava/util/ArrayList;)V

    .line 10
    .line 11
    :cond_0
    iget-boolean p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->trial:Z

    .line 12
    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->refreshIfStickerListNull()V

    .line 17
    :cond_1
    return-void
.end method

.method private showExpireDialog()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/membership/MembershipExpireDialog;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcom/narvii/membership/MembershipExpireDialog;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    const-string v1, "Sticker (Dialog)"

    .line 8
    .line 9
    iput-object v1, v0, Lcom/narvii/membership/MembershipExpireDialog;->source:Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    .line 13
    return-void
.end method

.method private showMembershipDialog()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/membership/MembershipHintDialog;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcom/narvii/membership/MembershipHintDialog;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    const-string v1, "Sticker (Dialog)"

    .line 8
    .line 9
    iput-object v1, v0, Lcom/narvii/membership/MembershipHintDialog;->source:Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    .line 13
    return-void
.end method

.method private showProfileDialog()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/monetization/sticker/collection/StickerCollectionProfileDialog;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, p0, v1}, Lcom/narvii/monetization/sticker/collection/StickerCollectionProfileDialog;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/monetization/sticker/model/StickerCollection;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    .line 11
    return-void
.end method

.method static bridge synthetic t(Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->editorTheme:Z

    return p0
.end method

.method static bridge synthetic u(Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->error:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic v(Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;)Lcom/narvii/monetization/sticker/StickerHelper;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->stickerHelper:Lcom/narvii/monetization/sticker/StickerHelper;

    return-object p0
.end method

.method static bridge synthetic w(Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;)Lcom/narvii/monetization/sticker/StickerPreviewListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->stickerPreviewListener:Lcom/narvii/monetization/sticker/StickerPreviewListener;

    return-object p0
.end method

.method static bridge synthetic x(Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;)Lcom/narvii/video/services/VideoManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->videoManager:Lcom/narvii/video/services/VideoManager;

    return-object p0
.end method

.method static bridge synthetic y(Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->error:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic z(Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->requesting:Z

    return-void
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 7

    .line 1
    .line 2
    new-instance p1, Lcom/narvii/list/MergeAdapter;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1, p0}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/narvii/monetization/sticker/model/StickerCollection;->isPersonal()Z

    .line 13
    move-result v0

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    new-instance v0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$FavTopAdapter;

    .line 18
    .line 19
    .line 20
    invoke-direct {v0, p0, p0}, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$FavTopAdapter;-><init>(Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;Lcom/narvii/app/NVContext;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    const/high16 v1, 0x43c80000    # 400.0f

    .line 30
    .line 31
    .line 32
    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 33
    move-result v0

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 37
    move-result-object v2

    .line 38
    .line 39
    .line 40
    invoke-static {v2}, Lcom/narvii/util/Utils;->getScreenWidth(Landroid/content/Context;)I

    .line 41
    move-result v2

    .line 42
    int-to-float v2, v2

    .line 43
    .line 44
    .line 45
    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    .line 46
    move-result v0

    .line 47
    .line 48
    .line 49
    const v2, 0x3d4ccccd    # 0.05f

    .line 50
    mul-float/2addr v0, v2

    .line 51
    float-to-int v0, v0

    .line 52
    .line 53
    iput v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->paddingH:I

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 57
    move-result-object v0

    .line 58
    .line 59
    .line 60
    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 61
    move-result v0

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 65
    move-result-object v1

    .line 66
    .line 67
    .line 68
    invoke-static {v1}, Lcom/narvii/util/Utils;->getScreenWidth(Landroid/content/Context;)I

    .line 69
    move-result v1

    .line 70
    int-to-float v1, v1

    .line 71
    .line 72
    .line 73
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    .line 74
    move-result v0

    .line 75
    .line 76
    .line 77
    const v1, 0x3f666666    # 0.9f

    .line 78
    mul-float/2addr v0, v1

    .line 79
    .line 80
    const/high16 v1, 0x3e800000    # 0.25f

    .line 81
    mul-float/2addr v0, v1

    .line 82
    .line 83
    .line 84
    const v1, 0x3d99999a    # 0.075f

    .line 85
    mul-float/2addr v0, v1

    .line 86
    float-to-int v6, v0

    .line 87
    .line 88
    new-instance v0, Lcom/narvii/list/DivideColumnAdapter;

    .line 89
    .line 90
    iget v4, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->paddingH:I

    .line 91
    move-object v1, v0

    .line 92
    move-object v2, p0

    .line 93
    move v3, v4

    .line 94
    move v5, v6

    .line 95
    .line 96
    .line 97
    invoke-direct/range {v1 .. v6}, Lcom/narvii/list/DivideColumnAdapter;-><init>(Lcom/narvii/app/NVContext;IIII)V

    .line 98
    const/4 v1, 0x1

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, v1}, Lcom/narvii/list/DivideColumnAdapter;->setSupportLongClick(Z)V

    .line 102
    .line 103
    new-instance v2, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$Adapter;

    .line 104
    .line 105
    const-class v3, Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    invoke-direct {v2, p0, p0, v3}, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$Adapter;-><init>(Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;Lcom/narvii/app/NVContext;Ljava/lang/Class;)V

    .line 109
    .line 110
    iput-object v2, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->adapter:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$Adapter;

    .line 111
    .line 112
    new-instance v2, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$3;

    .line 113
    .line 114
    .line 115
    invoke-direct {v2, p0, p0}, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$3;-><init>(Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;Lcom/narvii/app/NVContext;)V

    .line 116
    .line 117
    new-instance v3, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$AddAdapter;

    .line 118
    .line 119
    .line 120
    invoke-direct {v3, p0, p0}, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$AddAdapter;-><init>(Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;Lcom/narvii/app/NVContext;)V

    .line 121
    .line 122
    iput-object v3, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->addAdapter:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$AddAdapter;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v2, v3}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 126
    .line 127
    iget-object v3, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->adapter:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$Adapter;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v2, v3, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;Z)V

    .line 131
    const/4 v1, 0x4

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0, v2, v1}, Lcom/narvii/list/DivideColumnAdapter;->setAdapter(Landroid/widget/ListAdapter;I)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 138
    .line 139
    new-instance v1, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$4;

    .line 140
    .line 141
    .line 142
    invoke-direct {v1, p0, p0, v0}, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$4;-><init>(Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;Lcom/narvii/app/NVContext;Lcom/narvii/list/DivideColumnAdapter;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {p1, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 146
    .line 147
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 148
    .line 149
    if-eqz v0, :cond_1

    .line 150
    .line 151
    .line 152
    invoke-virtual {v0}, Lcom/narvii/monetization/sticker/model/StickerCollection;->isUserCreated()Z

    .line 153
    move-result v0

    .line 154
    .line 155
    if-eqz v0, :cond_1

    .line 156
    .line 157
    new-instance v0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$UserCreatedInfoAdapter;

    .line 158
    .line 159
    .line 160
    invoke-direct {v0, p0, p0}, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$UserCreatedInfoAdapter;-><init>(Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;Lcom/narvii/app/NVContext;)V

    .line 161
    .line 162
    iput-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->infoAdapter:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$UserCreatedInfoAdapter;

    .line 163
    .line 164
    .line 165
    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 166
    :cond_1
    return-object p1
.end method

.method protected errorViewLayoutId()I
    .locals 1

    const v0, 0x7f0d0217

    return v0
.end method

.method protected externalOffset()I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getActionBarOverlaySize()I

    .line 4
    move-result v0

    .line 5
    neg-int v0, v0

    .line 6
    return v0
.end method

.method public getListSelector()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 7
    return-object v0
.end method

.method public isNestedScrollingChild()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSwipeRefresh()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isValidPage()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    const-string v0, "requesting"

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 11
    move-result p1

    .line 12
    .line 13
    iput-boolean p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->requesting:Z

    .line 14
    .line 15
    :cond_0
    const-string p1, "stickerCache"

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    check-cast p1, Lcom/narvii/sticker/StickerCacheService;

    .line 22
    .line 23
    iput-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->stickerCacheService:Lcom/narvii/sticker/StickerCacheService;

    .line 24
    .line 25
    const-string p1, "sticker"

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 29
    move-result-object p1

    .line 30
    .line 31
    check-cast p1, Lcom/narvii/monetization/sticker/StickerService;

    .line 32
    .line 33
    iput-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->stickerService:Lcom/narvii/monetization/sticker/StickerService;

    .line 34
    .line 35
    const-string p1, "membership"

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 39
    move-result-object p1

    .line 40
    .line 41
    check-cast p1, Lcom/narvii/wallet/MembershipService;

    .line 42
    .line 43
    iput-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->membershipService:Lcom/narvii/wallet/MembershipService;

    .line 44
    .line 45
    const-string p1, "videoManager"

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 49
    move-result-object p1

    .line 50
    .line 51
    check-cast p1, Lcom/narvii/video/services/VideoManager;

    .line 52
    .line 53
    iput-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->videoManager:Lcom/narvii/video/services/VideoManager;

    .line 54
    .line 55
    new-instance p1, Lcom/narvii/monetization/sticker/StickerHelper;

    .line 56
    .line 57
    .line 58
    invoke-direct {p1, p0}, Lcom/narvii/monetization/sticker/StickerHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 59
    .line 60
    iput-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->stickerHelper:Lcom/narvii/monetization/sticker/StickerHelper;

    .line 61
    .line 62
    const-string p1, "trial"

    .line 63
    const/4 v0, 0x0

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0, p1, v0}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;Z)Z

    .line 67
    move-result p1

    .line 68
    .line 69
    iput-boolean p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->trial:Z

    .line 70
    .line 71
    const-string p1, "stickerCollection"

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 75
    move-result-object p1

    .line 76
    .line 77
    const-class v0, Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 78
    .line 79
    .line 80
    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 81
    move-result-object p1

    .line 82
    .line 83
    check-cast p1, Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 84
    .line 85
    if-eqz p1, :cond_2

    .line 86
    .line 87
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 88
    .line 89
    if-eqz v0, :cond_1

    .line 90
    .line 91
    iget-object v1, v0, Lcom/narvii/monetization/sticker/model/StickerCollection;->stickerList:Ljava/util/ArrayList;

    .line 92
    .line 93
    if-eqz v1, :cond_1

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0}, Lcom/narvii/monetization/sticker/model/StickerCollection;->id()Ljava/lang/String;

    .line 97
    move-result-object v0

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1}, Lcom/narvii/monetization/sticker/model/StickerCollection;->id()Ljava/lang/String;

    .line 101
    move-result-object v1

    .line 102
    .line 103
    .line 104
    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 105
    move-result v0

    .line 106
    .line 107
    if-eqz v0, :cond_1

    .line 108
    .line 109
    new-instance v0, Ljava/util/ArrayList;

    .line 110
    .line 111
    iget-object v1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 112
    .line 113
    iget-object v1, v1, Lcom/narvii/monetization/sticker/model/StickerCollection;->stickerList:Ljava/util/ArrayList;

    .line 114
    .line 115
    .line 116
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 117
    .line 118
    iput-object v0, p1, Lcom/narvii/monetization/sticker/model/StickerCollection;->stickerList:Ljava/util/ArrayList;

    .line 119
    .line 120
    .line 121
    :cond_1
    invoke-virtual {p0, p1}, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->setStickerCollection(Lcom/narvii/monetization/sticker/model/StickerCollection;)V

    .line 122
    .line 123
    :cond_2
    iget-boolean p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->trial:Z

    .line 124
    .line 125
    xor-int/lit8 p1, p1, 0x1

    .line 126
    .line 127
    iput-boolean p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->cacheSticker:Z

    .line 128
    .line 129
    iget-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 130
    .line 131
    if-eqz p1, :cond_4

    .line 132
    .line 133
    .line 134
    invoke-virtual {p1}, Lcom/narvii/monetization/sticker/model/StickerCollection;->isPersonal()Z

    .line 135
    move-result p1

    .line 136
    .line 137
    if-eqz p1, :cond_4

    .line 138
    .line 139
    .line 140
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 141
    move-result-object p1

    .line 142
    .line 143
    const-string v0, "mediaPicker"

    .line 144
    .line 145
    .line 146
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->m0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 147
    move-result-object p1

    .line 148
    .line 149
    check-cast p1, Lcom/narvii/media/MediaPickerFragment;

    .line 150
    .line 151
    iput-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    .line 152
    .line 153
    if-nez p1, :cond_3

    .line 154
    .line 155
    new-instance p1, Lcom/narvii/media/MediaPickerFragment;

    .line 156
    .line 157
    .line 158
    invoke-direct {p1}, Lcom/narvii/media/MediaPickerFragment;-><init>()V

    .line 159
    .line 160
    iput-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    .line 161
    .line 162
    .line 163
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 164
    move-result-object p1

    .line 165
    .line 166
    .line 167
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->q()Landroidx/fragment/app/FragmentTransaction;

    .line 168
    move-result-object p1

    .line 169
    .line 170
    iget-object v1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    .line 171
    .line 172
    .line 173
    invoke-virtual {p1, v1, v0}, Landroidx/fragment/app/FragmentTransaction;->e(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 174
    move-result-object p1

    .line 175
    .line 176
    .line 177
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->k()I

    .line 178
    .line 179
    :cond_3
    iget-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    .line 180
    .line 181
    .line 182
    invoke-virtual {p1, p0}, Lcom/narvii/media/MediaPickerFragment;->addOnResultListener(Lcom/narvii/media/MediaPickerFragment$OnResultListener;)V

    .line 183
    .line 184
    iget-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    .line 185
    .line 186
    new-instance v0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$2;

    .line 187
    .line 188
    .line 189
    invoke-direct {v0, p0}, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$2;-><init>(Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {p1, v0}, Lcom/narvii/media/MediaPickerFragment;->setRequestActivityResultCallback(Lcom/narvii/util/Callback;)V

    .line 193
    .line 194
    :cond_4
    iget-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 195
    .line 196
    if-eqz p1, :cond_5

    .line 197
    .line 198
    .line 199
    invoke-virtual {p1}, Lcom/narvii/model/StoreItemBaseObject;->getRestrictionInfo()Lcom/narvii/model/RestrictionInfo;

    .line 200
    move-result-object p1

    .line 201
    .line 202
    if-eqz p1, :cond_5

    .line 203
    .line 204
    iget-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 205
    .line 206
    .line 207
    invoke-virtual {p1}, Lcom/narvii/model/StoreItemBaseObject;->getRestrictionInfo()Lcom/narvii/model/RestrictionInfo;

    .line 208
    move-result-object p1

    .line 209
    .line 210
    iget p1, p1, Lcom/narvii/model/RestrictionInfo;->restrictType:I

    .line 211
    const/4 v0, 0x2

    .line 212
    .line 213
    if-ne p1, v0, :cond_5

    .line 214
    .line 215
    const-string p1, "Sticker (Bar)"

    .line 216
    .line 217
    .line 218
    invoke-static {p0, p1}, Lcom/narvii/monetization/MemberShipExpireWarningFragment;->attachTo(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 219
    .line 220
    :cond_5
    iget-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 221
    .line 222
    new-instance v0, Landroid/content/IntentFilter;

    .line 223
    .line 224
    const-string v1, "com.narvii.action.MEMBERSHIP_CHANGED"

    .line 225
    .line 226
    .line 227
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {p0, p1, v0}, Lcom/narvii/app/NVFragment;->registerLocalReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 231
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 1
    .line 2
    const-string p3, "tabBottom"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p3}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 6
    move-result p3

    .line 7
    const/4 v0, 0x0

    .line 8
    .line 9
    if-eqz p3, :cond_0

    .line 10
    .line 11
    .line 12
    const p3, 0x7f0d0323

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 16
    move-result-object p1

    .line 17
    return-object p1

    .line 18
    .line 19
    .line 20
    :cond_0
    const p3, 0x7f0d0322

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 24
    move-result-object p1

    .line 25
    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->unregisterLocalReceiver(Landroid/content/BroadcastReceiver;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onDestroy()V

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p0}, Lcom/narvii/media/MediaPickerFragment;->removeOnResultListener(Lcom/narvii/media/MediaPickerFragment$OnResultListener;)V

    .line 16
    :cond_0
    return-void
.end method

.method protected onErrorRetry()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onErrorRetry()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->refreshStickerCollectionInfo()V

    .line 7
    return-void
.end method

.method protected onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V

    .line 4
    const/4 p2, 0x0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 8
    const/4 p2, 0x0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 12
    return-void
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 3

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->trial:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 8
    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    iget-object v1, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    .line 12
    .line 13
    const-string v2, "update"

    .line 14
    .line 15
    if-ne v1, v2, :cond_2

    .line 16
    .line 17
    iget-object v1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 18
    .line 19
    instance-of v1, v1, Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 20
    .line 21
    if-eqz v1, :cond_2

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/narvii/monetization/sticker/model/StickerCollection;->id()Ljava/lang/String;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    iget-object v1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v1, Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Lcom/narvii/monetization/sticker/model/StickerCollection;->id()Ljava/lang/String;

    .line 33
    move-result-object v1

    .line 34
    .line 35
    .line 36
    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 37
    move-result v0

    .line 38
    .line 39
    if-eqz v0, :cond_2

    .line 40
    .line 41
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 42
    .line 43
    iget-object p1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast p1, Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 46
    .line 47
    .line 48
    invoke-static {v0, p1}, Lcom/narvii/monetization/sticker/model/StickerCollection;->getUpdatedStickerCollection(Lcom/narvii/monetization/sticker/model/StickerCollection;Lcom/narvii/monetization/sticker/model/StickerCollection;)Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 49
    move-result-object p1

    .line 50
    .line 51
    iput-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 52
    .line 53
    if-eqz p1, :cond_1

    .line 54
    .line 55
    iget-object p1, p1, Lcom/narvii/monetization/sticker/model/StickerCollection;->stickerList:Ljava/util/ArrayList;

    .line 56
    .line 57
    .line 58
    invoke-direct {p0, p1}, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->setStickerList(Ljava/util/ArrayList;)V

    .line 59
    .line 60
    :cond_1
    iget-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->infoAdapter:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$UserCreatedInfoAdapter;

    .line 61
    .line 62
    if-eqz p1, :cond_2

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 66
    :cond_2
    return-void
.end method

.method public onPickMediaResult(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 3
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
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->stickerHelper:Lcom/narvii/monetization/sticker/StickerHelper;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/narvii/monetization/sticker/model/StickerCollection;->id()Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x0

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/narvii/monetization/sticker/StickerHelper;->onPickMediaResult(Ljava/util/List;Landroid/os/Bundle;Ljava/lang/String;Lcom/narvii/util/Callback;)V

    .line 13
    return-void
.end method

.method public onRefresh()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onRefresh()V

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->trial:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->refreshStickerCollectionInfo()V

    .line 11
    goto :goto_0

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->stickerService:Lcom/narvii/monetization/sticker/StickerService;

    .line 14
    const/4 v1, 0x1

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/narvii/monetization/sticker/StickerService;->refreshStickerCollectionInfo(Z)V

    .line 18
    :goto_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    const-string v0, "requesting"

    .line 8
    .line 9
    iget-boolean v1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->requesting:Z

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 13
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 12

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 7
    move-result-object p2

    .line 8
    .line 9
    instance-of v0, p2, Lcom/narvii/widget/NVListView;

    .line 10
    const/4 v9, 0x0

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    new-instance v10, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$5;

    .line 15
    .line 16
    iget-object v2, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 17
    .line 18
    iget-boolean v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->trial:Z

    .line 19
    const/4 v11, 0x1

    .line 20
    .line 21
    xor-int/lit8 v3, v0, 0x1

    .line 22
    .line 23
    iget-object v5, p0, Lcom/narvii/list/NVListFragment;->swipeLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    .line 24
    .line 25
    iget-object v6, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->adapter:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$Adapter;

    .line 26
    const/4 v7, 0x4

    .line 27
    .line 28
    iget v8, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->paddingH:I

    .line 29
    move-object v0, v10

    .line 30
    move-object v1, p0

    .line 31
    move-object v4, p2

    .line 32
    .line 33
    .line 34
    invoke-direct/range {v0 .. v8}, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$5;-><init>(Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;Lcom/narvii/monetization/sticker/model/StickerCollection;ZLandroid/widget/ListView;Lcom/narvii/list/refresh/SwipeRefreshLayout;Landroid/widget/Adapter;II)V

    .line 35
    .line 36
    iput-object v10, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->previewTouchListener:Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;

    .line 37
    .line 38
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->addAdapter:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$AddAdapter;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$AddAdapter;->getCount()I

    .line 42
    move-result v0

    .line 43
    .line 44
    .line 45
    invoke-virtual {v10, v0}, Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;->setPositionOffset(I)V

    .line 46
    .line 47
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->previewTouchListener:Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 51
    .line 52
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->previewTouchListener:Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;

    .line 53
    .line 54
    iget-object v1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->addAdapter:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$AddAdapter;

    .line 55
    .line 56
    if-eqz v1, :cond_0

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1}, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$AddAdapter;->getCount()I

    .line 60
    move-result v1

    .line 61
    .line 62
    if-lez v1, :cond_0

    .line 63
    goto :goto_0

    .line 64
    :cond_0
    move v11, v9

    .line 65
    .line 66
    .line 67
    :goto_0
    invoke-virtual {v0, v11}, Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;->setRowOffset(I)V

    .line 68
    .line 69
    check-cast p2, Lcom/narvii/widget/NVListView;

    .line 70
    .line 71
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->previewTouchListener:Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;

    .line 72
    .line 73
    .line 74
    invoke-virtual {p2, v0}, Lcom/narvii/widget/NVListView;->setInterceptTouchEventListener(Lcom/narvii/widget/NVListView$InterceptTouchEventListener;)V

    .line 75
    .line 76
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->previewTouchListener:Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p2, v0}, Lcom/narvii/widget/NVListView;->setDispatchTouchEventEndListener(Lcom/narvii/widget/NVListView$DispatchTouchEventEndListener;)V

    .line 80
    .line 81
    :cond_1
    iget-object p2, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 82
    .line 83
    if-eqz p2, :cond_5

    .line 84
    .line 85
    .line 86
    invoke-virtual {p2}, Lcom/narvii/monetization/sticker/model/StickerCollection;->isDisabled()Z

    .line 87
    move-result p2

    .line 88
    .line 89
    if-nez p2, :cond_2

    .line 90
    .line 91
    iget-object p2, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 92
    .line 93
    .line 94
    invoke-virtual {p2}, Lcom/narvii/monetization/sticker/model/StickerCollection;->isDeleted()Z

    .line 95
    move-result p2

    .line 96
    .line 97
    if-eqz p2, :cond_5

    .line 98
    .line 99
    .line 100
    :cond_2
    const p2, 0x7f0a07fe

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 104
    move-result-object p2

    .line 105
    .line 106
    const/16 v0, 0x8

    .line 107
    .line 108
    .line 109
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 110
    .line 111
    .line 112
    const p2, 0x7f0a0a18

    .line 113
    .line 114
    .line 115
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 116
    move-result-object p2

    .line 117
    .line 118
    .line 119
    invoke-virtual {p2, v9}, Landroid/view/View;->setVisibility(I)V

    .line 120
    .line 121
    .line 122
    const p2, 0x7f0a0a1a

    .line 123
    .line 124
    .line 125
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 126
    move-result-object p2

    .line 127
    .line 128
    check-cast p2, Landroid/widget/TextView;

    .line 129
    .line 130
    iget-boolean v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->editorTheme:Z

    .line 131
    .line 132
    if-eqz v0, :cond_3

    .line 133
    .line 134
    .line 135
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 136
    move-result-object v0

    .line 137
    .line 138
    .line 139
    const v1, 0x7f0604b1

    .line 140
    .line 141
    .line 142
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    .line 143
    move-result v0

    .line 144
    .line 145
    .line 146
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 147
    .line 148
    :cond_3
    iget-object v0, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v0}, Lcom/narvii/monetization/sticker/model/StickerCollection;->isShared()Z

    .line 152
    move-result v0

    .line 153
    .line 154
    if-eqz v0, :cond_4

    .line 155
    .line 156
    .line 157
    const v0, 0x7f121116

    .line 158
    goto :goto_1

    .line 159
    .line 160
    .line 161
    :cond_4
    const v0, 0x7f1211ad

    .line 162
    .line 163
    .line 164
    :goto_1
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 165
    .line 166
    .line 167
    const p2, 0x7f0a0c0e

    .line 168
    .line 169
    .line 170
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 171
    move-result-object p1

    .line 172
    .line 173
    new-instance p2, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$6;

    .line 174
    .line 175
    .line 176
    invoke-direct {p2, p0}, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$6;-><init>(Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    :cond_5
    return-void
.end method

.method public setIsEditorTheme(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->editorTheme:Z

    return-void
.end method

.method public setSelectedSticker(Lcom/narvii/model/Sticker;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->selectedSticker:Lcom/narvii/model/Sticker;

    .line 3
    .line 4
    iget-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->adapter:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$Adapter;

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 10
    :cond_0
    return-void
.end method

.method public setStickerCollection(Lcom/narvii/monetization/sticker/model/StickerCollection;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    iget-object p1, p1, Lcom/narvii/monetization/sticker/model/StickerCollection;->stickerList:Ljava/util/ArrayList;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p1}, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->setStickerList(Ljava/util/ArrayList;)V

    .line 10
    .line 11
    :cond_0
    iget-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->adapter:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$Adapter;

    .line 12
    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    iget-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->addAdapter:Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment$AddAdapter;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 19
    :cond_1
    return-void
.end method

.method public setStickerPreviewListener(Lcom/narvii/monetization/sticker/StickerPreviewListener;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->stickerPreviewListener:Lcom/narvii/monetization/sticker/StickerPreviewListener;

    return-void
.end method

.method public setStickerSelectListener(Lcom/narvii/monetization/sticker/picker/StickerSelectListener;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/monetization/sticker/picker/StickerPickerListFragment;->stickerSelectListener:Lcom/narvii/monetization/sticker/picker/StickerSelectListener;

    return-void
.end method
