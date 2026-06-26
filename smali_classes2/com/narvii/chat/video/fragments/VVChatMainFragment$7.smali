.class Lcom/narvii/chat/video/fragments/VVChatMainFragment$7;
.super Ljava/lang/Object;
.source "VVChatMainFragment.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/video/fragments/VVChatMainFragment;->leaveCurrentLiveChannelWithConfirm(Ljava/lang/String;)Z
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
.field final synthetic this$0:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

.field final synthetic val$source:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/narvii/chat/video/fragments/VVChatMainFragment;Ljava/lang/String;)V
    .locals 0

    .line 834
    iput-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$7;->this$0:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    iput-object p2, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$7;->val$source:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Boolean;)V
    .locals 1

    .line 837
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$7;->this$0:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$7;->val$source:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->leaveCurrentLiveChannel(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 834
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/narvii/chat/video/fragments/VVChatMainFragment$7;->call(Ljava/lang/Boolean;)V

    return-void
.end method
