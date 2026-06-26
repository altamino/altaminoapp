.class Lcom/narvii/account/CommunityPushSettingFragment$2$3;
.super Ljava/lang/Object;
.source "CommunityPushSettingFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/account/CommunityPushSettingFragment$2;->call(Lcom/narvii/list/prefs/PrefsToggle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/account/CommunityPushSettingFragment$2;

.field final synthetic val$offItem:[I

.field final synthetic val$res:Lcom/narvii/master/setting/CommunityPushResponse;


# direct methods
.method constructor <init>(Lcom/narvii/account/CommunityPushSettingFragment$2;Lcom/narvii/master/setting/CommunityPushResponse;[I)V
    .locals 0

    .line 175
    iput-object p1, p0, Lcom/narvii/account/CommunityPushSettingFragment$2$3;->this$1:Lcom/narvii/account/CommunityPushSettingFragment$2;

    iput-object p2, p0, Lcom/narvii/account/CommunityPushSettingFragment$2$3;->val$res:Lcom/narvii/master/setting/CommunityPushResponse;

    iput-object p3, p0, Lcom/narvii/account/CommunityPushSettingFragment$2$3;->val$offItem:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 178
    iget-object p1, p0, Lcom/narvii/account/CommunityPushSettingFragment$2$3;->this$1:Lcom/narvii/account/CommunityPushSettingFragment$2;

    iget-object p1, p1, Lcom/narvii/account/CommunityPushSettingFragment$2;->this$0:Lcom/narvii/account/CommunityPushSettingFragment;

    iget-object v0, p0, Lcom/narvii/account/CommunityPushSettingFragment$2$3;->val$res:Lcom/narvii/master/setting/CommunityPushResponse;

    iget-object v1, p0, Lcom/narvii/account/CommunityPushSettingFragment$2$3;->val$offItem:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-static {p1, v0, v1}, Lcom/narvii/account/CommunityPushSettingFragment;->access$000(Lcom/narvii/account/CommunityPushSettingFragment;Lcom/narvii/master/setting/CommunityPushResponse;I)V

    return-void
.end method
