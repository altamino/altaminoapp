.class public final synthetic Lcom/narvii/chat/screenroom/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/Callback;


# instance fields
.field public final synthetic a:Lcom/narvii/chat/screenroom/ScreenRoomService;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/chat/screenroom/ScreenRoomService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/screenroom/k;->a:Lcom/narvii/chat/screenroom/ScreenRoomService;

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/chat/screenroom/k;->a:Lcom/narvii/chat/screenroom/ScreenRoomService;

    check-cast p1, Lcom/narvii/chat/screenroom/VideoPlayListener;

    invoke-static {v0, p1}, Lcom/narvii/chat/screenroom/ScreenRoomService;->n(Lcom/narvii/chat/screenroom/ScreenRoomService;Lcom/narvii/chat/screenroom/VideoPlayListener;)V

    return-void
.end method
