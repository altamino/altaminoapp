.class Lcom/narvii/chat/video/invite/VVChatInviteActivity$3;
.super Ljava/lang/Object;
.source "VVChatInviteActivity.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/video/invite/VVChatInviteActivity;->onPermissionDenied(IZLjava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/video/invite/VVChatInviteActivity;


# direct methods
.method constructor <init>(Lcom/narvii/chat/video/invite/VVChatInviteActivity;)V
    .locals 0

    .line 284
    iput-object p1, p0, Lcom/narvii/chat/video/invite/VVChatInviteActivity$3;->this$0:Lcom/narvii/chat/video/invite/VVChatInviteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Integer;)V
    .locals 0

    .line 287
    iget-object p1, p0, Lcom/narvii/chat/video/invite/VVChatInviteActivity$3;->this$0:Lcom/narvii/chat/video/invite/VVChatInviteActivity;

    invoke-static {p1}, Lcom/narvii/chat/video/invite/VVChatInviteActivity;->access$000(Lcom/narvii/chat/video/invite/VVChatInviteActivity;)V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 284
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/narvii/chat/video/invite/VVChatInviteActivity$3;->call(Ljava/lang/Integer;)V

    return-void
.end method
