.class Lcom/narvii/chat/rtc/RtcService$19;
.super Ljava/lang/Object;
.source "RtcService.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/rtc/RtcService;->dispatcheScreenRoomRoleChange(Lcom/narvii/chat/signalling/SignallingChannel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Lcom/narvii/chat/screenroom/SRRoleChangeListener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/rtc/RtcService;

.field final synthetic val$finalIsMeHost:Z


# direct methods
.method constructor <init>(Lcom/narvii/chat/rtc/RtcService;Z)V
    .locals 0

    .line 1606
    iput-object p1, p0, Lcom/narvii/chat/rtc/RtcService$19;->this$0:Lcom/narvii/chat/rtc/RtcService;

    iput-boolean p2, p0, Lcom/narvii/chat/rtc/RtcService$19;->val$finalIsMeHost:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/chat/screenroom/SRRoleChangeListener;)V
    .locals 1

    .line 1609
    iget-boolean v0, p0, Lcom/narvii/chat/rtc/RtcService$19;->val$finalIsMeHost:Z

    invoke-interface {p1, v0}, Lcom/narvii/chat/screenroom/SRRoleChangeListener;->onScreenRoomRoleChange(Z)V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 1606
    check-cast p1, Lcom/narvii/chat/screenroom/SRRoleChangeListener;

    invoke-virtual {p0, p1}, Lcom/narvii/chat/rtc/RtcService$19;->call(Lcom/narvii/chat/screenroom/SRRoleChangeListener;)V

    return-void
.end method
