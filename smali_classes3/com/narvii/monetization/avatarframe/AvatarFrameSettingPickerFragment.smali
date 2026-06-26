.class public Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;
.super Lcom/narvii/monetization/avatarframe/SwipeableFragment;
.source "AvatarFrameSettingPickerFragment.java"

# interfaces
.implements Lcom/narvii/notification/NotificationListener;
.implements Lcom/narvii/app/FragmentOnBackListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment$MoreAvatarAdapter;,
        Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment$AvatarFrameListAdapter;,
        Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment$RecommendHeaderAdapter;,
        Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment$DividerAdapter;,
        Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment$ManageProfileFrameAdapter;,
        Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment$OnPickAvatarFrameListener;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


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
    .locals 1

    .line 57
    const-class v0, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 55
    invoke-direct {p0}, Lcom/narvii/monetization/avatarframe/SwipeableFragment;-><init>()V

    .line 66
    new-instance v0, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment$1;

    invoke-direct {v0, p0}, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment$1;-><init>(Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;)V

    iput-object v0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;->receiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;)Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment$AvatarFrameListAdapter;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;->avatarFrameListAdapter:Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment$AvatarFrameListAdapter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;)Lcom/narvii/wallet/MembershipService;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;->membershipService:Lcom/narvii/wallet/MembershipService;

    return-object p0
.end method

.method static synthetic access$200(Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;)Ljava/lang/String;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;->curSelectedFrameId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$202(Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;->curSelectedFrameId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;)Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment$OnPickAvatarFrameListener;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;->avatarFramePickListener:Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment$OnPickAvatarFrameListener;

    return-object p0
.end method

.method public static show(Lcom/narvii/app/NVActivity;IZ)Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;
    .locals 2

    .line 81
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "isGlobal"

    .line 82
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 83
    sget-object p2, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;->TAG:Ljava/lang/String;

    const-class v1, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;

    invoke-static {p0, p1, p2, v1, v0}, Lcom/narvii/monetization/avatarframe/SwipeableFragment;->show(Lcom/narvii/app/NVActivity;ILjava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object p0

    .line 84
    instance-of p1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;

    if-eqz p1, :cond_0

    .line 85
    check-cast p0, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 259
    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/SwipeableFragment;->swipeableLayout:Lcom/narvii/widget/SwipeableLayout;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    .line 260
    invoke-virtual {v0, v1}, Lcom/narvii/widget/SwipeableLayout;->dismiss(I)V

    goto :goto_0

    .line 262
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/monetization/avatarframe/SwipeableFragment;->remove()V

    :goto_0
    return-void
.end method

.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 10

    .line 212
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070070

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 213
    new-instance v0, Lcom/narvii/list/MergeAdapter;

    invoke-direct {v0, p0}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 215
    new-instance v7, Lcom/narvii/list/DivideColumnAdapter;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move v4, p1

    move v5, p1

    move v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/narvii/list/DivideColumnAdapter;-><init>(Lcom/narvii/app/NVContext;IIII)V

    .line 216
    new-instance v1, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment$AvatarFrameListAdapter;

    invoke-direct {v1, p0}, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment$AvatarFrameListAdapter;-><init>(Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;)V

    iput-object v1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;->avatarFrameListAdapter:Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment$AvatarFrameListAdapter;

    .line 217
    iget-object v1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;->avatarFrameListAdapter:Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment$AvatarFrameListAdapter;

    const/4 v8, 0x3

    invoke-virtual {v7, v1, v8}, Lcom/narvii/list/DivideColumnAdapter;->setAdapter(Landroid/widget/ListAdapter;I)V

    const/4 v1, 0x1

    .line 218
    invoke-virtual {v0, v7, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;Z)V

    .line 220
    new-instance v1, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment$ManageProfileFrameAdapter;

    invoke-direct {v1, p0, p0}, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment$ManageProfileFrameAdapter;-><init>(Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;Lcom/narvii/app/NVContext;)V

    .line 221
    invoke-virtual {v0, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 223
    new-instance v1, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment$DividerAdapter;

    invoke-direct {v1, p0, p0}, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment$DividerAdapter;-><init>(Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;Lcom/narvii/app/NVContext;)V

    .line 224
    invoke-virtual {v0, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 226
    new-instance v7, Lcom/narvii/monetization/store/StoreRecommendAdapter;

    const-string v1, "avatar-frame"

    invoke-direct {v7, p0, v1}, Lcom/narvii/monetization/store/StoreRecommendAdapter;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/String;)V

    .line 228
    new-instance v9, Lcom/narvii/list/DivideColumnAdapter;

    move-object v1, v9

    invoke-direct/range {v1 .. v6}, Lcom/narvii/list/DivideColumnAdapter;-><init>(Lcom/narvii/app/NVContext;IIII)V

    .line 229
    invoke-virtual {v9, v7, v8}, Lcom/narvii/list/DivideColumnAdapter;->setAdapter(Landroid/widget/ListAdapter;I)V

    .line 231
    new-instance p1, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment$RecommendHeaderAdapter;

    invoke-direct {p1, p0, p0}, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment$RecommendHeaderAdapter;-><init>(Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;Lcom/narvii/app/NVContext;)V

    .line 232
    invoke-virtual {p1, v7}, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment$RecommendHeaderAdapter;->setAttachAdapter(Lcom/narvii/list/NVAdapter;)V

    .line 234
    invoke-virtual {v0, p1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 235
    invoke-virtual {v0, v9}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 237
    new-instance p1, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment$MoreAvatarAdapter;

    invoke-direct {p1, p0}, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment$MoreAvatarAdapter;-><init>(Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;)V

    invoke-virtual {v0, p1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    return-object v0
.end method

.method public dismiss()V
    .locals 1

    .line 252
    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;->avatarFramePickListener:Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment$OnPickAvatarFrameListener;

    if-eqz v0, :cond_0

    .line 253
    invoke-interface {v0}, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment$OnPickAvatarFrameListener;->onCancel()V

    .line 255
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;->close()V

    return-void
.end method

.method protected getContentView()I
    .locals 1

    const v0, 0x7f0b0280

    return v0
.end method

.method public isSwipeRefresh()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public synthetic lambda$null$1$AvatarFrameSettingPickerFragment(Lcom/narvii/monetization/avatarframe/AvatarFrame;Ljava/lang/Boolean;)V
    .locals 0

    .line 186
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 187
    iget-object p2, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;->avatarFramePickListener:Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment$OnPickAvatarFrameListener;

    if-eqz p2, :cond_0

    .line 188
    invoke-interface {p2, p1}, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment$OnPickAvatarFrameListener;->onSubmitSuccess(Lcom/narvii/monetization/avatarframe/AvatarFrame;)V

    .line 190
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;->close()V

    :cond_1
    return-void
.end method

.method public synthetic lambda$onViewCreated$0$AvatarFrameSettingPickerFragment(Landroid/view/View;)V
    .locals 0

    .line 166
    invoke-virtual {p0}, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;->dismiss()V

    return-void
.end method

.method public synthetic lambda$onViewCreated$2$AvatarFrameSettingPickerFragment(Landroid/view/View;)V
    .locals 4

    .line 171
    iget-object p1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;->avatarFramePickListener:Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment$OnPickAvatarFrameListener;

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    .line 173
    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;->avatarFrameListAdapter:Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment$AvatarFrameListAdapter;

    if-eqz v0, :cond_1

    .line 174
    invoke-static {v0}, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment$AvatarFrameListAdapter;->access$400(Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment$AvatarFrameListAdapter;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 175
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 176
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/monetization/avatarframe/AvatarFrame;

    if-eqz v1, :cond_0

    .line 177
    invoke-virtual {v1}, Lcom/narvii/monetization/avatarframe/AvatarFrame;->id()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;->curSelectedFrameId:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object p1, v1

    .line 185
    :cond_1
    new-instance v0, Lcom/narvii/monetization/avatarframe/-$$Lambda$AvatarFrameSettingPickerFragment$3Cr_FABMW-Bl-yFDiQYaaJ2V2YY;

    invoke-direct {v0, p0, p1}, Lcom/narvii/monetization/avatarframe/-$$Lambda$AvatarFrameSettingPickerFragment$3Cr_FABMW-Bl-yFDiQYaaJ2V2YY;-><init>(Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;Lcom/narvii/monetization/avatarframe/AvatarFrame;)V

    invoke-virtual {p0, p1, v0}, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;->postAvatarFrame(Lcom/narvii/monetization/avatarframe/AvatarFrame;Lcom/narvii/util/Callback;)V

    :cond_2
    return-void
.end method

.method public onBackPressed(Lcom/narvii/app/NVActivity;)Z
    .locals 0

    .line 317
    invoke-virtual {p0}, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;->dismiss()V

    const/4 p1, 0x1

    return p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 93
    invoke-super {p0, p1}, Lcom/narvii/monetization/avatarframe/SwipeableFragment;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "membership"

    .line 94
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/wallet/MembershipService;

    iput-object v0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;->membershipService:Lcom/narvii/wallet/MembershipService;

    const-string v0, "isGlobal"

    if-eqz p1, :cond_0

    const-string v1, "curSelectedFrameId"

    .line 99
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;->curSelectedFrameId:Ljava/lang/String;

    const-string v1, "originAvatarFrame"

    .line 100
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/narvii/model/User$AvatarFrameLite;

    invoke-static {v1, v2}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/User$AvatarFrameLite;

    iput-object v1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;->originAvatarFrame:Lcom/narvii/model/User$AvatarFrameLite;

    .line 101
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;->isGlobal:Z

    goto :goto_0

    .line 103
    :cond_0
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;->isGlobal:Z

    .line 106
    :goto_0
    iget-object p1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.narvii.action.MEMBERSHIP_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/narvii/app/NVFragment;->registerLocalReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->unregisterLocalReceiver(Landroid/content/BroadcastReceiver;)V

    .line 112
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onDestroy()V

    return-void
.end method

.method protected onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 0

    .line 205
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V

    const/4 p2, 0x0

    .line 206
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    const/4 p2, 0x0

    .line 207
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDividerHeight(I)V

    return-void
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 0

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 117
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 119
    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;->curSelectedFrameId:Ljava/lang/String;

    const-string v1, "curSelectedFrameId"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;->originAvatarFrame:Lcom/narvii/model/User$AvatarFrameLite;

    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "originAvatarFrame"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    iget-boolean v0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;->isGlobal:Z

    const-string v1, "isGlobal"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 150
    invoke-super {p0, p1, p2}, Lcom/narvii/monetization/avatarframe/SwipeableFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 152
    iget-boolean p2, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;->isGlobal:Z

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 153
    iget-object p2, p0, Lcom/narvii/monetization/avatarframe/SwipeableFragment;->swipeableLayout:Lcom/narvii/widget/SwipeableLayout;

    invoke-virtual {p2, v0}, Lcom/narvii/widget/SwipeableLayout;->setAllowDirection(I)V

    .line 155
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object p2

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 156
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 158
    iget-object p2, p0, Lcom/narvii/monetization/avatarframe/SwipeableFragment;->swipeableLayout:Lcom/narvii/widget/SwipeableLayout;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    instance-of p2, p2, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p2, :cond_1

    .line 159
    iget-object p2, p0, Lcom/narvii/monetization/avatarframe/SwipeableFragment;->swipeableLayout:Lcom/narvii/widget/SwipeableLayout;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;->layoutMarginTop:I

    iput v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    :cond_1
    const p2, 0x7f090719

    .line 161
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 162
    iget-boolean v0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;->isGlobal:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p2, v0}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    const p2, 0x7f09025f

    .line 163
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 164
    iget-boolean v0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;->isGlobal:Z

    invoke-static {p2, v0}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 165
    new-instance v0, Lcom/narvii/monetization/avatarframe/-$$Lambda$AvatarFrameSettingPickerFragment$Trn2ryrmzCQgQD5_sLBIQw6gFhs;

    invoke-direct {v0, p0}, Lcom/narvii/monetization/avatarframe/-$$Lambda$AvatarFrameSettingPickerFragment$Trn2ryrmzCQgQD5_sLBIQw6gFhs;-><init>(Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f090212

    .line 168
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 169
    iget-boolean p2, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;->isGlobal:Z

    invoke-static {p1, p2}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 170
    new-instance p2, Lcom/narvii/monetization/avatarframe/-$$Lambda$AvatarFrameSettingPickerFragment$eSHFSGUknjMb6O-DaRcpwbcEMk4;

    invoke-direct {p2, p0}, Lcom/narvii/monetization/avatarframe/-$$Lambda$AvatarFrameSettingPickerFragment$eSHFSGUknjMb6O-DaRcpwbcEMk4;-><init>(Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public postAvatarFrame(Lcom/narvii/monetization/avatarframe/AvatarFrame;Lcom/narvii/util/Callback;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/monetization/avatarframe/AvatarFrame;",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    .line 268
    invoke-static {p1}, Lcom/narvii/monetization/avatarframe/DefaultAvatarFrame;->isDefaultAvatarFrame(Lcom/narvii/monetization/avatarframe/AvatarFrame;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;->originAvatarFrame:Lcom/narvii/model/User$AvatarFrameLite;

    if-eqz v2, :cond_2

    :cond_0
    iget-object v2, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;->originAvatarFrame:Lcom/narvii/model/User$AvatarFrameLite;

    if-eqz v2, :cond_1

    iget-object v3, p1, Lcom/narvii/monetization/avatarframe/AvatarFrame;->frameId:Ljava/lang/String;

    iget-object v2, v2, Lcom/narvii/model/User$AvatarFrameLite;->frameId:Ljava/lang/String;

    .line 269
    invoke-static {v3, v2}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_3

    .line 272
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    return-void

    :cond_3
    const-string v1, "membership"

    .line 276
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/wallet/MembershipService;

    .line 277
    new-instance v6, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;

    invoke-direct {v6, p0}, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;-><init>(Lcom/narvii/app/NVContext;)V

    const-string v2, "Profile Frame Picker"

    .line 278
    iput-object v2, v6, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;->source:Ljava/lang/String;

    .line 280
    invoke-virtual {v1}, Lcom/narvii/wallet/MembershipService;->isMembership()Z

    move-result v2

    invoke-virtual {p1, v2}, Lcom/narvii/model/StoreItemBaseObject;->isUsable(Z)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 281
    new-instance v1, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment$2;

    invoke-direct {v1, p0, p2}, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment$2;-><init>(Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;Lcom/narvii/util/Callback;)V

    invoke-virtual {v6, p1, v0, v1}, Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;->sendChangeAvatarSettingRequest(Lcom/narvii/monetization/avatarframe/AvatarFrame;ZLcom/narvii/util/Callback;)V

    goto :goto_2

    .line 292
    :cond_4
    invoke-virtual {p1}, Lcom/narvii/model/StoreItemBaseObject;->getRestrictionInfo()Lcom/narvii/model/RestrictionInfo;

    move-result-object p2

    .line 293
    invoke-virtual {p1}, Lcom/narvii/model/StoreItemBaseObject;->getOwnershipInfo()Lcom/narvii/model/OwnershipInfo;

    move-result-object v0

    if-eqz p2, :cond_5

    if-eqz v0, :cond_5

    .line 294
    invoke-virtual {v0}, Lcom/narvii/model/OwnershipInfo;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 295
    new-instance p2, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment$3;

    move-object v2, p2

    move-object v3, p0

    move-object v4, p0

    move-object v5, p1

    move-object v7, p1

    invoke-direct/range {v2 .. v7}, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment$3;-><init>(Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;Lcom/narvii/app/NVContext;Lcom/narvii/model/IStoreItem;Lcom/narvii/monetization/avatarframe/AvatarFrameHelper;Lcom/narvii/monetization/avatarframe/AvatarFrame;)V

    .line 301
    invoke-virtual {p2}, Lcom/narvii/app/NVDialog;->show()V

    goto :goto_2

    :cond_5
    if-eqz p2, :cond_7

    .line 302
    iget p1, p2, Lcom/narvii/model/RestrictionInfo;->restrictType:I

    const/4 p2, 0x2

    if-ne p1, p2, :cond_7

    .line 303
    invoke-virtual {v1}, Lcom/narvii/wallet/MembershipService;->isMembership()Z

    move-result p1

    if-nez p1, :cond_7

    .line 304
    invoke-virtual {v1}, Lcom/narvii/wallet/MembershipService;->isMembershipBefore()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 305
    new-instance p1, Lcom/narvii/membership/MembershipExpireDialog;

    invoke-direct {p1, p0}, Lcom/narvii/membership/MembershipExpireDialog;-><init>(Lcom/narvii/app/NVContext;)V

    .line 306
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    goto :goto_2

    .line 308
    :cond_6
    new-instance p1, Lcom/narvii/membership/MembershipHintDialog;

    invoke-direct {p1, p0}, Lcom/narvii/membership/MembershipHintDialog;-><init>(Lcom/narvii/app/NVContext;)V

    .line 309
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    :cond_7
    :goto_2
    return-void
.end method

.method public setCurSelectedFrameId(Ljava/lang/String;)V
    .locals 1

    .line 126
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "default"

    :cond_0
    iput-object p1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;->curSelectedFrameId:Ljava/lang/String;

    .line 127
    iget-object p1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;->avatarFrameListAdapter:Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment$AvatarFrameListAdapter;

    if-eqz p1, :cond_1

    .line 128
    invoke-virtual {p1}, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment$AvatarFrameListAdapter;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method public setMarginTopSize(I)V
    .locals 1

    .line 141
    iput p1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;->layoutMarginTop:I

    .line 143
    iget-object p1, p0, Lcom/narvii/monetization/avatarframe/SwipeableFragment;->swipeableLayout:Lcom/narvii/widget/SwipeableLayout;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    instance-of p1, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p1, :cond_0

    .line 144
    iget-object p1, p0, Lcom/narvii/monetization/avatarframe/SwipeableFragment;->swipeableLayout:Lcom/narvii/widget/SwipeableLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;->layoutMarginTop:I

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    :cond_0
    return-void
.end method

.method public setOnPickAvatarFrameListener(Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment$OnPickAvatarFrameListener;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;->avatarFramePickListener:Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment$OnPickAvatarFrameListener;

    return-void
.end method

.method public setOriginAvatarFrame(Lcom/narvii/model/User$AvatarFrameLite;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/narvii/monetization/avatarframe/AvatarFrameSettingPickerFragment;->originAvatarFrame:Lcom/narvii/model/User$AvatarFrameLite;

    return-void
.end method
