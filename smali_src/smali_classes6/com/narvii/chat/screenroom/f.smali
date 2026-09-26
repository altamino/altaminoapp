.class public final synthetic Lcom/narvii/chat/screenroom/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/Callback;


# instance fields
.field public final synthetic a:Lcom/narvii/model/PlayList;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/model/PlayList;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/screenroom/f;->a:Lcom/narvii/model/PlayList;

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/chat/screenroom/f;->a:Lcom/narvii/model/PlayList;

    check-cast p1, Lcom/narvii/chat/screenroom/playlist/PlayListChangeListener;

    invoke-static {v0, p1}, Lcom/narvii/chat/screenroom/ScreenRoomService;->b(Lcom/narvii/model/PlayList;Lcom/narvii/chat/screenroom/playlist/PlayListChangeListener;)V

    return-void
.end method
