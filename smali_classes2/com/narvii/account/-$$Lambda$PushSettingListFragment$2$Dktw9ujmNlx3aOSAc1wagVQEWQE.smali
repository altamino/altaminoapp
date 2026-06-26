.class public final synthetic Lcom/narvii/account/-$$Lambda$PushSettingListFragment$2$Dktw9ujmNlx3aOSAc1wagVQEWQE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/narvii/account/PushSettingListFragment$2;

.field private final synthetic f$1:Lcom/narvii/master/setting/CommunityPushResponse;

.field private final synthetic f$2:[I


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/account/PushSettingListFragment$2;Lcom/narvii/master/setting/CommunityPushResponse;[I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/account/-$$Lambda$PushSettingListFragment$2$Dktw9ujmNlx3aOSAc1wagVQEWQE;->f$0:Lcom/narvii/account/PushSettingListFragment$2;

    iput-object p2, p0, Lcom/narvii/account/-$$Lambda$PushSettingListFragment$2$Dktw9ujmNlx3aOSAc1wagVQEWQE;->f$1:Lcom/narvii/master/setting/CommunityPushResponse;

    iput-object p3, p0, Lcom/narvii/account/-$$Lambda$PushSettingListFragment$2$Dktw9ujmNlx3aOSAc1wagVQEWQE;->f$2:[I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/narvii/account/-$$Lambda$PushSettingListFragment$2$Dktw9ujmNlx3aOSAc1wagVQEWQE;->f$0:Lcom/narvii/account/PushSettingListFragment$2;

    iget-object v1, p0, Lcom/narvii/account/-$$Lambda$PushSettingListFragment$2$Dktw9ujmNlx3aOSAc1wagVQEWQE;->f$1:Lcom/narvii/master/setting/CommunityPushResponse;

    iget-object v2, p0, Lcom/narvii/account/-$$Lambda$PushSettingListFragment$2$Dktw9ujmNlx3aOSAc1wagVQEWQE;->f$2:[I

    invoke-virtual {v0, v1, v2, p1}, Lcom/narvii/account/PushSettingListFragment$2;->lambda$call$2$PushSettingListFragment$2(Lcom/narvii/master/setting/CommunityPushResponse;[ILandroid/view/View;)V

    return-void
.end method
