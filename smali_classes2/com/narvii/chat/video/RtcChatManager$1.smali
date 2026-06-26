.class Lcom/narvii/chat/video/RtcChatManager$1;
.super Ljava/lang/Object;
.source "RtcChatManager.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/video/RtcChatManager;->requesToBeAudience()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Lcom/narvii/chat/video/AgoraRoleChangeListener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/video/RtcChatManager;


# direct methods
.method constructor <init>(Lcom/narvii/chat/video/RtcChatManager;)V
    .locals 0

    .line 270
    iput-object p1, p0, Lcom/narvii/chat/video/RtcChatManager$1;->this$0:Lcom/narvii/chat/video/RtcChatManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/chat/video/AgoraRoleChangeListener;)V
    .locals 1

    const/4 v0, 0x2

    .line 273
    invoke-interface {p1, v0}, Lcom/narvii/chat/video/AgoraRoleChangeListener;->onUserRoleChanged(I)V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 270
    check-cast p1, Lcom/narvii/chat/video/AgoraRoleChangeListener;

    invoke-virtual {p0, p1}, Lcom/narvii/chat/video/RtcChatManager$1;->call(Lcom/narvii/chat/video/AgoraRoleChangeListener;)V

    return-void
.end method
