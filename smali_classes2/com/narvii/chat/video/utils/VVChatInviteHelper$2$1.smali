.class Lcom/narvii/chat/video/utils/VVChatInviteHelper$2$1;
.super Ljava/lang/Object;
.source "VVChatInviteHelper.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/video/utils/VVChatInviteHelper$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/chat/video/utils/VVChatInviteHelper$2;

.field final synthetic val$progressDialog:Lcom/narvii/util/dialog/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/narvii/chat/video/utils/VVChatInviteHelper$2;Lcom/narvii/util/dialog/ProgressDialog;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/narvii/chat/video/utils/VVChatInviteHelper$2$1;->this$1:Lcom/narvii/chat/video/utils/VVChatInviteHelper$2;

    iput-object p2, p0, Lcom/narvii/chat/video/utils/VVChatInviteHelper$2$1;->val$progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Boolean;)V
    .locals 0

    .line 119
    iget-object p1, p0, Lcom/narvii/chat/video/utils/VVChatInviteHelper$2$1;->val$progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 116
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/narvii/chat/video/utils/VVChatInviteHelper$2$1;->call(Ljava/lang/Boolean;)V

    return-void
.end method
