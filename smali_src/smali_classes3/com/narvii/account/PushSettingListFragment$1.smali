.class Lcom/narvii/account/PushSettingListFragment$1;
.super Lcom/narvii/account/PushSettingListFragment$SectionAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/account/PushSettingListFragment;->createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/account/PushSettingListFragment;


# direct methods
.method constructor <init>(Lcom/narvii/account/PushSettingListFragment;I)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/account/PushSettingListFragment$1;->this$0:Lcom/narvii/account/PushSettingListFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1, p2}, Lcom/narvii/account/PushSettingListFragment$SectionAdapter;-><init>(Lcom/narvii/account/PushSettingListFragment;I)V

    .line 6
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/account/PushSettingListFragment$1;->this$0:Lcom/narvii/account/PushSettingListFragment;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/account/PushSettingListFragment;->notificationAdapter:Lcom/narvii/account/PushSettingListFragment$NotificationAdapter;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->getCount()I

    .line 8
    move-result v0

    .line 9
    .line 10
    if-lez v0, :cond_0

    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method
