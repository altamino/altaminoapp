.class final Lcom/narvii/chat/video/utils/VVChatHelper$showSwitchChannelDialog$2;
.super Ljava/lang/Object;
.source "VVChatHelper.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/video/utils/VVChatHelper;->showSwitchChannelDialog(Lcom/narvii/util/Callback;Lcom/narvii/util/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $confirmClicked:Lcom/narvii/util/Callback;

.field final synthetic $dlg:Lcom/narvii/widget/ACMAlertDialog;


# direct methods
.method constructor <init>(Lcom/narvii/widget/ACMAlertDialog;Lcom/narvii/util/Callback;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/chat/video/utils/VVChatHelper$showSwitchChannelDialog$2;->$dlg:Lcom/narvii/widget/ACMAlertDialog;

    iput-object p2, p0, Lcom/narvii/chat/video/utils/VVChatHelper$showSwitchChannelDialog$2;->$confirmClicked:Lcom/narvii/util/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 93
    iget-object p1, p0, Lcom/narvii/chat/video/utils/VVChatHelper$showSwitchChannelDialog$2;->$dlg:Lcom/narvii/widget/ACMAlertDialog;

    invoke-virtual {p1}, Lcom/narvii/widget/ACMAlertDialog;->dismiss()V

    .line 94
    iget-object p1, p0, Lcom/narvii/chat/video/utils/VVChatHelper$showSwitchChannelDialog$2;->$confirmClicked:Lcom/narvii/util/Callback;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
