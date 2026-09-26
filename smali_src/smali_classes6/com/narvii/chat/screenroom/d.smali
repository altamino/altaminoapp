.class public final synthetic Lcom/narvii/chat/screenroom/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/Callback;


# instance fields
.field public final synthetic a:Z


# direct methods
.method public synthetic constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/narvii/chat/screenroom/d;->a:Z

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/narvii/chat/screenroom/d;->a:Z

    check-cast p1, Lcom/narvii/chat/screenroom/VideoPlayListener;

    invoke-static {v0, p1}, Lcom/narvii/chat/screenroom/ScreenRoomService;->c(ZLcom/narvii/chat/screenroom/VideoPlayListener;)V

    return-void
.end method
