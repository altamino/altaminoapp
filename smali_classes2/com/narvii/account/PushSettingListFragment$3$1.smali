.class Lcom/narvii/account/PushSettingListFragment$3$1;
.super Ljava/lang/Object;
.source "PushSettingListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/account/PushSettingListFragment$3;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/account/PushSettingListFragment$3;

.field final synthetic val$dialog:Lcom/narvii/util/dialog/AlertDialog;


# direct methods
.method constructor <init>(Lcom/narvii/account/PushSettingListFragment$3;Lcom/narvii/util/dialog/AlertDialog;)V
    .locals 0

    .line 228
    iput-object p1, p0, Lcom/narvii/account/PushSettingListFragment$3$1;->this$1:Lcom/narvii/account/PushSettingListFragment$3;

    iput-object p2, p0, Lcom/narvii/account/PushSettingListFragment$3$1;->val$dialog:Lcom/narvii/util/dialog/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 231
    iget-object p1, p0, Lcom/narvii/account/PushSettingListFragment$3$1;->val$dialog:Lcom/narvii/util/dialog/AlertDialog;

    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 232
    iget-object p1, p0, Lcom/narvii/account/PushSettingListFragment$3$1;->this$1:Lcom/narvii/account/PushSettingListFragment$3;

    iget-object p1, p1, Lcom/narvii/account/PushSettingListFragment$3;->this$0:Lcom/narvii/account/PushSettingListFragment;

    iget-object p1, p1, Lcom/narvii/account/PushSettingListFragment;->myAdapter:Lcom/narvii/account/PushSettingListFragment$GlobalNotificationAdapter;

    invoke-virtual {p1}, Lcom/narvii/list/prefs/PrefsAdapter;->notifyDataSetChanged()V

    return-void
.end method
