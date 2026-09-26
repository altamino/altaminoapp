.class public final synthetic Lcom/narvii/chat/video/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/narvii/chat/video/RtcChatManager$4;

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:S

.field public final synthetic f:S


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/chat/video/RtcChatManager$4;IISS)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/video/e;->a:Lcom/narvii/chat/video/RtcChatManager$4;

    iput p2, p0, Lcom/narvii/chat/video/e;->b:I

    iput p3, p0, Lcom/narvii/chat/video/e;->c:I

    iput-short p4, p0, Lcom/narvii/chat/video/e;->d:S

    iput-short p5, p0, Lcom/narvii/chat/video/e;->f:S

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/narvii/chat/video/e;->a:Lcom/narvii/chat/video/RtcChatManager$4;

    iget v1, p0, Lcom/narvii/chat/video/e;->b:I

    iget v2, p0, Lcom/narvii/chat/video/e;->c:I

    iget-short v3, p0, Lcom/narvii/chat/video/e;->d:S

    iget-short v4, p0, Lcom/narvii/chat/video/e;->f:S

    invoke-static {v0, v1, v2, v3, v4}, Lcom/narvii/chat/video/RtcChatManager$4;->a(Lcom/narvii/chat/video/RtcChatManager$4;IISS)V

    return-void
.end method
