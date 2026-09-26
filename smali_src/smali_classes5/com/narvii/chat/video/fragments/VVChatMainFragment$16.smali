.class Lcom/narvii/chat/video/fragments/VVChatMainFragment$16;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$16;->this$0:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$16;->val$dlg:Lcom/narvii/util/dialog/AlertDialog;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$16;->val$dlg:Lcom/narvii/util/dialog/AlertDialog;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 6
    .line 7
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$16;->this$0:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    .line 8
    const/4 v0, 0x0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, v0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->leaveCurrentLiveChannel(Ljava/lang/String;)V

    .line 12
    return-void
.end method
