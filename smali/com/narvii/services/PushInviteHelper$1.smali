.class Lcom/narvii/services/PushInviteHelper$1;
.super Ljava/lang/Object;
.source "PushInviteHelper.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/services/PushInviteHelper;->onPushPayload(Lcom/narvii/pushservice/PushPayload;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Lcom/narvii/chat/video/overlay/VVchatPermissionInviteListener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/services/PushInviteHelper;


# direct methods
.method constructor <init>(Lcom/narvii/services/PushInviteHelper;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/narvii/services/PushInviteHelper$1;->this$0:Lcom/narvii/services/PushInviteHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/chat/video/overlay/VVchatPermissionInviteListener;)V
    .locals 0

    .line 137
    invoke-interface {p1}, Lcom/narvii/chat/video/overlay/VVchatPermissionInviteListener;->onInvited()V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 134
    check-cast p1, Lcom/narvii/chat/video/overlay/VVchatPermissionInviteListener;

    invoke-virtual {p0, p1}, Lcom/narvii/services/PushInviteHelper$1;->call(Lcom/narvii/chat/video/overlay/VVchatPermissionInviteListener;)V

    return-void
.end method
