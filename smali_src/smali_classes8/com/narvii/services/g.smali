.class public final synthetic Lcom/narvii/services/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/Callback;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/narvii/chat/video/overlay/VVchatPermissionInviteListener;

    invoke-static {p1}, Lcom/narvii/services/PushInviteHelper;->a(Lcom/narvii/chat/video/overlay/VVchatPermissionInviteListener;)V

    return-void
.end method
