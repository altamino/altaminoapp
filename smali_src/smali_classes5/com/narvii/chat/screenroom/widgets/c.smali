.class public final synthetic Lcom/narvii/chat/screenroom/widgets/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout$HostUpdateListener;


# instance fields
.field public final synthetic a:Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/screenroom/widgets/c;->a:Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;

    return-void
.end method


# virtual methods
.method public final onHostUpdated(Lcom/narvii/chat/rtc/ChannelUserWrapper;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/c;->a:Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;

    invoke-static {v0, p1}, Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;->a(Lcom/narvii/chat/screenroom/widgets/ScreenRoomMainLayout;Lcom/narvii/chat/rtc/ChannelUserWrapper;)V

    return-void
.end method
