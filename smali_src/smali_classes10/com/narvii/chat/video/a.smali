.class public final synthetic Lcom/narvii/chat/video/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/narvii/chat/video/RtcChatManager$4;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/chat/video/RtcChatManager$4;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/video/a;->a:Lcom/narvii/chat/video/RtcChatManager$4;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/chat/video/a;->a:Lcom/narvii/chat/video/RtcChatManager$4;

    invoke-static {v0}, Lcom/narvii/chat/video/RtcChatManager$4;->c(Lcom/narvii/chat/video/RtcChatManager$4;)V

    return-void
.end method
