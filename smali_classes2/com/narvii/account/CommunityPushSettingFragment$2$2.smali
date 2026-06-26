.class Lcom/narvii/account/CommunityPushSettingFragment$2$2;
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

.field final synthetic val$dialog:Lcom/narvii/util/dialog/AlertDialog;


# direct methods
.method constructor <init>(Lcom/narvii/account/CommunityPushSettingFragment$2;Lcom/narvii/util/dialog/AlertDialog;)V
    .locals 0

    .line 165
    iput-object p1, p0, Lcom/narvii/account/CommunityPushSettingFragment$2$2;->this$1:Lcom/narvii/account/CommunityPushSettingFragment$2;

    iput-object p2, p0, Lcom/narvii/account/CommunityPushSettingFragment$2$2;->val$dialog:Lcom/narvii/util/dialog/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 168
    iget-object p1, p0, Lcom/narvii/account/CommunityPushSettingFragment$2$2;->val$dialog:Lcom/narvii/util/dialog/AlertDialog;

    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 169
    iget-object p1, p0, Lcom/narvii/account/CommunityPushSettingFragment$2$2;->this$1:Lcom/narvii/account/CommunityPushSettingFragment$2;

    iget-object p1, p1, Lcom/narvii/account/CommunityPushSettingFragment$2;->this$0:Lcom/narvii/account/CommunityPushSettingFragment;

    iget-object p1, p1, Lcom/narvii/account/CommunityPushSettingFragment;->myAdapter:Lcom/narvii/account/CommunityPushSettingFragment$MyAdapter;

    invoke-virtual {p1}, Lcom/narvii/list/prefs/PrefsAdapter;->notifyDataSetChanged()V

    return-void
.end method
