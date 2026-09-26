.class public Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;
.super Lcom/narvii/monetization/avatarframe/SwipeableFragment;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/notification/NotificationListener;
.implements Lcom/narvii/app/FragmentOnBackListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment$AvatarFrameListAdapter;,
        Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment$OnPickAvatarFrameListener;,
        Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment$ManageProfileFrameAdapter;,
        Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment$DividerAdapter;,
        Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment$RecommendHeaderAdapter;,
        Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment$MoreAvatarAdapter;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "AvatarFrameSettingPickerFragment"


# instance fields
.field private avatarFrameListAdapter:Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment$AvatarFrameListAdapter;

.field private avatarFramePickListener:Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment$OnPickAvatarFrameListener;

.field private curSelectedFrameId:Ljava/lang/String;

.field private isGlobal:Z

.field private layoutMarginTop:I

.field private membershipService:Lcom/narvii/wallet/MembershipService;

.field private originAvatarFrame:Lcom/narvii/model/User$AvatarFrameLite;

.field private receiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/monetization/avatarframe/SwipeableFragment;-><init>()V

    .line 4
    .line 5
    new-instance v0, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment$1;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p0}, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment$1;-><init>(Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;)V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 11
    return-void
.end method

.method static bridge synthetic A(Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;->curSelectedFrameId:Ljava/lang/String;

    return-void
.end method

.method private synthetic lambda$onViewCreated$0(Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;->dismiss()V

    .line 4
    return-void
.end method

.method private synthetic lambda$onViewCreated$1(Lcom/narvii/monetization/avatarframe/AvatarFrame;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 4
    move-result p2

    .line 5
    .line 6
    if-eqz p2, :cond_1

    .line 7
    .line 8
    iget-object p2, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;->avatarFramePickListener:Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment$OnPickAvatarFrameListener;

    .line 9
    .line 10
    if-eqz p2, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-interface {p2, p1}, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment$OnPickAvatarFrameListener;->onSubmitSuccess(Lcom/narvii/monetization/avatarframe/AvatarFrame;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;->close()V

    .line 17
    :cond_1
    return-void
.end method

.method private synthetic lambda$onViewCreated$2(Landroid/view/View;)V
    .locals 3

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;->avatarFramePickListener:Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment$OnPickAvatarFrameListener;

    .line 3
    .line 4
    if-eqz p1, :cond_2

    .line 5
    .line 6
    iget-object p1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;->avatarFrameListAdapter:Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment$AvatarFrameListAdapter;

    .line 7
    .line 8
    if-eqz p1, :cond_1

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment$AvatarFrameListAdapter;->m(Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment$AvatarFrameListAdapter;)Ljava/util/List;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    .line 17
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 18
    move-result v0

    .line 19
    .line 20
    if-lez v0, :cond_1

    .line 21
    .line 22
    .line 23
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 24
    move-result-object p1

    .line 25
    .line 26
    .line 27
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    move-result v0

    .line 29
    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    .line 33
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    check-cast v0, Lcom/narvii/monetization/avatarframe/AvatarFrame;

    .line 37
    .line 38
    if-eqz v0, :cond_0

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/narvii/monetization/avatarframe/AvatarFrame;->id()Ljava/lang/String;

    .line 42
    move-result-object v1

    .line 43
    .line 44
    iget-object v2, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;->curSelectedFrameId:Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 48
    move-result v1

    .line 49
    .line 50
    if-eqz v1, :cond_0

    .line 51
    goto :goto_0

    .line 52
    :cond_1
    const/4 v0, 0x0

    .line 53
    .line 54
    :goto_0
    new-instance p1, Lcom/narvii/monetization/avatarframe/b;

    .line 55
    .line 56
    .line 57
    invoke-direct {p1, p0, v0}, Lcom/narvii/monetization/avatarframe/b;-><init>(Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;Lcom/narvii/monetization/avatarframe/AvatarFrame;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0, v0, p1}, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;->postAvatarFrame(Lcom/narvii/monetization/avatarframe/AvatarFrame;Lcom/narvii/util/Callback;)V

    .line 61
    :cond_2
    return-void
.end method

.method public static show(Lcom/narvii/app/NVActivity;IZ)Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Landroid/os/Bundle;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 6
    .line 7
    const-string v1, "isGlobal"

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1, p2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 11
    .line 12
    sget-object p2, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;->TAG:Ljava/lang/String;

    .line 13
    .line 14
    const-class v1, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;

    .line 15
    .line 16
    .line 17
    invoke-static {p0, p1, p2, v1, v0}, Lcom/narvii/monetization/avatarframe/SwipeableFragment;->show(Lcom/narvii/app/NVActivity;ILjava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    .line 18
    move-result-object p0

    .line 19
    .line 20
    instance-of p1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;

    .line 21
    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    check-cast p0, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;

    .line 25
    return-object p0

    .line 26
    :cond_0
    const/4 p0, 0x0

    .line 27
    return-object p0
.end method

.method public static synthetic t(Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;Lcom/narvii/monetization/avatarframe/AvatarFrame;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;->lambda$onViewCreated$1(Lcom/narvii/monetization/avatarframe/AvatarFrame;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic u(Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;->lambda$onViewCreated$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic v(Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;->lambda$onViewCreated$0(Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic w(Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;)Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment$AvatarFrameListAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;->avatarFrameListAdapter:Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment$AvatarFrameListAdapter;

    return-object p0
.end method

.method static bridge synthetic x(Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;)Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment$OnPickAvatarFrameListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;->avatarFramePickListener:Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment$OnPickAvatarFrameListener;

    return-object p0
.end method

.method static bridge synthetic y(Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;->curSelectedFrameId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic z(Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;)Lcom/narvii/wallet/MembershipService;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;->membershipService:Lcom/narvii/wallet/MembershipService;

    return-object p0
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/SwipeableFragment;->swipeableLayout:Lcom/narvii/widget/SwipeableLayout;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    const/4 v1, 0x2

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/narvii/widget/SwipeableLayout;->dismiss(I)V

    .line 9
    goto :goto_0

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/monetization/avatarframe/SwipeableFragment;->remove()V

    .line 13
    :goto_0
    return-void
.end method

.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 10

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    .line 11
    const v0, 0x7f0700aa

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 15
    move-result p1

    .line 16
    .line 17
    new-instance v0, Lcom/narvii/list/MergeAdapter;

    .line 18
    .line 19
    .line 20
    invoke-direct {v0, p0}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 21
    .line 22
    new-instance v7, Lcom/narvii/list/DivideColumnAdapter;

    .line 23
    move-object v1, v7

    .line 24
    move-object v2, p0

    .line 25
    move v3, p1

    .line 26
    move v4, p1

    .line 27
    move v5, p1

    .line 28
    move v6, p1

    .line 29
    .line 30
    .line 31
    invoke-direct/range {v1 .. v6}, Lcom/narvii/list/DivideColumnAdapter;-><init>(Lcom/narvii/app/NVContext;IIII)V

    .line 32
    .line 33
    new-instance v1, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment$AvatarFrameListAdapter;

    .line 34
    .line 35
    .line 36
    invoke-direct {v1, p0}, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment$AvatarFrameListAdapter;-><init>(Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;)V

    .line 37
    .line 38
    iput-object v1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;->avatarFrameListAdapter:Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment$AvatarFrameListAdapter;

    .line 39
    const/4 v8, 0x3

    .line 40
    .line 41
    .line 42
    invoke-virtual {v7, v1, v8}, Lcom/narvii/list/DivideColumnAdapter;->setAdapter(Landroid/widget/ListAdapter;I)V

    .line 43
    const/4 v1, 0x1

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v7, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;Z)V

    .line 47
    .line 48
    new-instance v1, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment$ManageProfileFrameAdapter;

    .line 49
    .line 50
    .line 51
    invoke-direct {v1, p0, p0}, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment$ManageProfileFrameAdapter;-><init>(Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;Lcom/narvii/app/NVContext;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 55
    .line 56
    new-instance v1, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment$DividerAdapter;

    .line 57
    .line 58
    .line 59
    invoke-direct {v1, p0, p0}, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment$DividerAdapter;-><init>(Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;Lcom/narvii/app/NVContext;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 63
    .line 64
    new-instance v7, Lcom/narvii/monetization/store/StoreRecommendAdapter;

    .line 65
    .line 66
    const-string v1, "avatar-frame"

    .line 67
    .line 68
    .line 69
    invoke-direct {v7, p0, v1}, Lcom/narvii/monetization/store/StoreRecommendAdapter;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/String;)V

    .line 70
    .line 71
    new-instance v9, Lcom/narvii/list/DivideColumnAdapter;

    .line 72
    move-object v1, v9

    .line 73
    .line 74
    .line 75
    invoke-direct/range {v1 .. v6}, Lcom/narvii/list/DivideColumnAdapter;-><init>(Lcom/narvii/app/NVContext;IIII)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v9, v7, v8}, Lcom/narvii/list/DivideColumnAdapter;->setAdapter(Landroid/widget/ListAdapter;I)V

    .line 79
    .line 80
    new-instance p1, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment$RecommendHeaderAdapter;

    .line 81
    .line 82
    .line 83
    invoke-direct {p1, p0, p0}, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment$RecommendHeaderAdapter;-><init>(Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;Lcom/narvii/app/NVContext;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1, v7}, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment$RecommendHeaderAdapter;->setAttachAdapter(Lcom/narvii/list/NVAdapter;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0, p1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, v9}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 93
    .line 94
    new-instance p1, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment$MoreAvatarAdapter;

    .line 95
    .line 96
    .line 97
    invoke-direct {p1, p0}, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment$MoreAvatarAdapter;-><init>(Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0, p1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 101
    return-object v0
.end method

.method public dismiss()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;->avatarFramePickListener:Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment$OnPickAvatarFrameListener;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment$OnPickAvatarFrameListener;->onCancel()V

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;->close()V

    .line 11
    return-void
.end method

.method protected getContentView()I
    .locals 1

    const v0, 0x7f0d02ab

    return v0
.end method

.method public isSwipeRefresh()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onBackPressed(Lcom/narvii/app/NVActivity;)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;->dismiss()V

    .line 4
    const/4 p1, 0x1

    .line 5
    return p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/monetization/avatarframe/SwipeableFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    const-string v0, "membership"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    check-cast v0, Lcom/narvii/wallet/MembershipService;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;->membershipService:Lcom/narvii/wallet/MembershipService;

    .line 14
    .line 15
    const-string v0, "isGlobal"

    .line 16
    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    const-string v1, "curSelectedFrameId"

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    move-result-object v1

    .line 24
    .line 25
    iput-object v1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;->curSelectedFrameId:Ljava/lang/String;

    .line 26
    .line 27
    const-string v1, "originAvatarFrame"

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    move-result-object v1

    .line 32
    .line 33
    const-class v2, Lcom/narvii/model/User$AvatarFrameLite;

    .line 34
    .line 35
    .line 36
    invoke-static {v1, v2}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 37
    move-result-object v1

    .line 38
    .line 39
    check-cast v1, Lcom/narvii/model/User$AvatarFrameLite;

    .line 40
    .line 41
    iput-object v1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;->originAvatarFrame:Lcom/narvii/model/User$AvatarFrameLite;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 45
    move-result p1

    .line 46
    .line 47
    iput-boolean p1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;->isGlobal:Z

    .line 48
    goto :goto_0

    .line 49
    .line 50
    .line 51
    :cond_0
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 52
    move-result p1

    .line 53
    .line 54
    iput-boolean p1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;->isGlobal:Z

    .line 55
    .line 56
    :goto_0
    iget-object p1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 57
    .line 58
    new-instance v0, Landroid/content/IntentFilter;

    .line 59
    .line 60
    const-string v1, "com.narvii.action.MEMBERSHIP_CHANGED"

    .line 61
    .line 62
    .line 63
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0, p1, v0}, Lcom/narvii/app/NVFragment;->registerLocalReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 67
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->unregisterLocalReceiver(Landroid/content/BroadcastReceiver;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onDestroy()V

    .line 9
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
    .locals 0

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
    const-string v0, "curSelectedFrameId"

    .line 6
    .line 7
    iget-object v1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;->curSelectedFrameId:Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;->originAvatarFrame:Lcom/narvii/model/User$AvatarFrameLite;

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    const-string v1, "originAvatarFrame"

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    const-string v0, "isGlobal"

    .line 24
    .line 25
    iget-boolean v1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;->isGlobal:Z

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 29
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/monetization/avatarframe/SwipeableFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4
    .line 5
    iget-boolean p2, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;->isGlobal:Z

    .line 6
    const/4 v0, 0x0

    .line 7
    .line 8
    if-eqz p2, :cond_0

    .line 9
    .line 10
    iget-object p2, p0, Lcom/narvii/monetization/avatarframe/SwipeableFragment;->swipeableLayout:Lcom/narvii/widget/SwipeableLayout;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p2, v0}, Lcom/narvii/widget/SwipeableLayout;->setAllowDirection(I)V

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 17
    move-result-object p2

    .line 18
    const/4 v1, 0x0

    .line 19
    .line 20
    .line 21
    invoke-virtual {p2, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 25
    move-result-object p2

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2, v0}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 29
    .line 30
    iget-object p2, p0, Lcom/narvii/monetization/avatarframe/SwipeableFragment;->swipeableLayout:Lcom/narvii/widget/SwipeableLayout;

    .line 31
    .line 32
    if-eqz p2, :cond_1

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 36
    move-result-object p2

    .line 37
    .line 38
    instance-of p2, p2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 39
    .line 40
    if-eqz p2, :cond_1

    .line 41
    .line 42
    iget-object p2, p0, Lcom/narvii/monetization/avatarframe/SwipeableFragment;->swipeableLayout:Lcom/narvii/widget/SwipeableLayout;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 46
    move-result-object p2

    .line 47
    .line 48
    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 49
    .line 50
    iget v0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;->layoutMarginTop:I

    .line 51
    .line 52
    iput v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 53
    .line 54
    .line 55
    :cond_1
    const p2, 0x7f0a097b

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 59
    move-result-object p2

    .line 60
    .line 61
    iget-boolean v0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;->isGlobal:Z

    .line 62
    .line 63
    xor-int/lit8 v0, v0, 0x1

    .line 64
    .line 65
    .line 66
    invoke-static {p2, v0}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 67
    .line 68
    .line 69
    const p2, 0x7f0a0323

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 73
    move-result-object p2

    .line 74
    .line 75
    iget-boolean v0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;->isGlobal:Z

    .line 76
    .line 77
    .line 78
    invoke-static {p2, v0}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 79
    .line 80
    new-instance v0, Lcom/narvii/monetization/avatarframe/c;

    .line 81
    .line 82
    .line 83
    invoke-direct {v0, p0}, Lcom/narvii/monetization/avatarframe/c;-><init>(Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    .line 88
    .line 89
    const p2, 0x7f0a02ca

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 93
    move-result-object p1

    .line 94
    .line 95
    iget-boolean p2, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;->isGlobal:Z

    .line 96
    .line 97
    .line 98
    invoke-static {p1, p2}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 99
    .line 100
    new-instance p2, Lcom/narvii/monetization/avatarframe/d;

    .line 101
    .line 102
    .line 103
    invoke-direct {p2, p0}, Lcom/narvii/monetization/avatarframe/d;-><init>(Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    return-void
.end method

.method public postAvatarFrame(Lcom/narvii/monetization/avatarframe/AvatarFrame;Lcom/narvii/util/Callback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/monetization/avatarframe/AvatarFrame;",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    if-eqz p1, :cond_6

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/narvii/monetization/avatarframe/DefaultAvatarFrame;->isDefaultAvatarFrame(Lcom/narvii/monetization/avatarframe/AvatarFrame;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;->originAvatarFrame:Lcom/narvii/model/User$AvatarFrameLite;

    .line 11
    .line 12
    if-eqz v0, :cond_6

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;->originAvatarFrame:Lcom/narvii/model/User$AvatarFrameLite;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iget-object v1, p1, Lcom/narvii/monetization/avatarframe/AvatarFrame;->frameId:Ljava/lang/String;

    .line 19
    .line 20
    iget-object v0, v0, Lcom/narvii/model/User$AvatarFrameLite;->frameId:Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    invoke-static {v1, v0}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 24
    move-result v0

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    goto/16 :goto_1

    .line 29
    .line 30
    :cond_1
    const-string v0, "membership"

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    check-cast v0, Lcom/narvii/wallet/MembershipService;

    .line 37
    .line 38
    new-instance v5, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;

    .line 39
    .line 40
    .line 41
    invoke-direct {v5, p0}, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 42
    .line 43
    const-string v1, "Profile Frame Picker"

    .line 44
    .line 45
    iput-object v1, v5, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;->source:Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/narvii/wallet/MembershipService;->isMembership()Z

    .line 49
    move-result v1

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, v1}, Lcom/narvii/model/StoreItemBaseObject;->isUsable(Z)Z

    .line 53
    move-result v1

    .line 54
    .line 55
    if-eqz v1, :cond_2

    .line 56
    .line 57
    new-instance v0, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment$2;

    .line 58
    .line 59
    .line 60
    invoke-direct {v0, p0, p2}, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment$2;-><init>(Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;Lcom/narvii/util/Callback;)V

    .line 61
    const/4 p2, 0x0

    .line 62
    .line 63
    .line 64
    invoke-virtual {v5, p1, p2, v0}, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;->sendChangeAvatarSettingRequest(Lcom/narvii/monetization/avatarframe/AvatarFrame;ZLcom/narvii/util/Callback;)V

    .line 65
    goto :goto_0

    .line 66
    .line 67
    .line 68
    :cond_2
    invoke-virtual {p1}, Lcom/narvii/model/StoreItemBaseObject;->getRestrictionInfo()Lcom/narvii/model/RestrictionInfo;

    .line 69
    move-result-object p2

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1}, Lcom/narvii/model/StoreItemBaseObject;->getOwnershipInfo()Lcom/narvii/model/OwnershipInfo;

    .line 73
    move-result-object v1

    .line 74
    .line 75
    if-eqz p2, :cond_3

    .line 76
    .line 77
    if-eqz v1, :cond_3

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1}, Lcom/narvii/model/OwnershipInfo;->isExpired()Z

    .line 81
    move-result v1

    .line 82
    .line 83
    if-eqz v1, :cond_3

    .line 84
    .line 85
    new-instance p2, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment$3;

    .line 86
    move-object v1, p2

    .line 87
    move-object v2, p0

    .line 88
    move-object v3, p0

    .line 89
    move-object v4, p1

    .line 90
    move-object v6, p1

    .line 91
    .line 92
    .line 93
    invoke-direct/range {v1 .. v6}, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment$3;-><init>(Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;Lcom/narvii/app/NVContext;Lcom/narvii/model/IStoreItem;Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;Lcom/narvii/monetization/avatarframe/AvatarFrame;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p2}, Lcom/narvii/app/NVDialog;->show()V

    .line 97
    goto :goto_0

    .line 98
    .line 99
    :cond_3
    if-eqz p2, :cond_5

    .line 100
    .line 101
    iget p1, p2, Lcom/narvii/model/RestrictionInfo;->restrictType:I

    .line 102
    const/4 p2, 0x2

    .line 103
    .line 104
    if-ne p1, p2, :cond_5

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0}, Lcom/narvii/wallet/MembershipService;->isMembership()Z

    .line 108
    move-result p1

    .line 109
    .line 110
    if-nez p1, :cond_5

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0}, Lcom/narvii/wallet/MembershipService;->isMembershipBefore()Z

    .line 114
    move-result p1

    .line 115
    .line 116
    if-eqz p1, :cond_4

    .line 117
    .line 118
    new-instance p1, Lcom/narvii/membership/MembershipExpireDialog;

    .line 119
    .line 120
    .line 121
    invoke-direct {p1, p0}, Lcom/narvii/membership/MembershipExpireDialog;-><init>(Lcom/narvii/app/NVContext;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    .line 125
    goto :goto_0

    .line 126
    .line 127
    :cond_4
    new-instance p1, Lcom/narvii/membership/MembershipHintDialog;

    .line 128
    .line 129
    .line 130
    invoke-direct {p1, p0}, Lcom/narvii/membership/MembershipHintDialog;-><init>(Lcom/narvii/app/NVContext;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    .line 134
    :cond_5
    :goto_0
    return-void

    .line 135
    .line 136
    :cond_6
    :goto_1
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 137
    .line 138
    .line 139
    invoke-interface {p2, p1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 140
    return-void
.end method

.method public setCurSelectedFrameId(Ljava/lang/String;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const-string p1, "default"

    .line 9
    .line 10
    :cond_0
    iput-object p1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;->curSelectedFrameId:Ljava/lang/String;

    .line 11
    .line 12
    iget-object p1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;->avatarFrameListAdapter:Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment$AvatarFrameListAdapter;

    .line 13
    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment$AvatarFrameListAdapter;->notifyDataSetChanged()V

    .line 18
    :cond_1
    return-void
.end method

.method public setMarginTopSize(I)V
    .locals 1

    .line 1
    .line 2
    iput p1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;->layoutMarginTop:I

    .line 3
    .line 4
    iget-object p1, p0, Lcom/narvii/monetization/avatarframe/SwipeableFragment;->swipeableLayout:Lcom/narvii/widget/SwipeableLayout;

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    instance-of p1, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    iget-object p1, p0, Lcom/narvii/monetization/avatarframe/SwipeableFragment;->swipeableLayout:Lcom/narvii/widget/SwipeableLayout;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 23
    .line 24
    iget v0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;->layoutMarginTop:I

    .line 25
    .line 26
    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 27
    :cond_0
    return-void
.end method

.method public setOnPickAvatarFrameListener(Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment$OnPickAvatarFrameListener;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;->avatarFramePickListener:Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment$OnPickAvatarFrameListener;

    return-void
.end method

.method public setOriginAvatarFrame(Lcom/narvii/model/User$AvatarFrameLite;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;->originAvatarFrame:Lcom/narvii/model/User$AvatarFrameLite;

    return-void
.end method
