.class Lcom/narvii/chat/video/fragments/VVChatMainFragment$16;
.super Ljava/lang/Object;
.source "VVChatMainFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/video/fragments/VVChatMainFragment;->onLiveChannelError(ILcom/narvii/util/ws/WsError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

.field final synthetic val$dlg:Lcom/narvii/util/dialog/AlertDialog;


# direct methods
.method constructor <init>(Lcom/narvii/chat/video/fragments/VVChatMainFragment;Lcom/narvii/util/dialog/AlertDialog;)V
    .locals 0

    .line 1301
    iput-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$16;->this$0:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    iput-object p2, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$16;->val$dlg:Lcom/narvii/util/dialog/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1304
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$16;->val$dlg:Lcom/narvii/util/dialog/AlertDialog;

    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 1305
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$16;->this$0:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->leaveCurrentLiveChannel(Ljava/lang/String;)V

    return-void
.end method
