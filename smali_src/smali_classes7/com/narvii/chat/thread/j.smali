.class public final synthetic Lcom/narvii/chat/thread/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/narvii/chat/thread/ThreadHelper$2;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/narvii/model/ChatBubble;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic f:Lcom/narvii/util/Callback;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/chat/thread/ThreadHelper$2;Ljava/lang/String;Lcom/narvii/model/ChatBubble;Ljava/lang/String;Lcom/narvii/util/Callback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/thread/j;->a:Lcom/narvii/chat/thread/ThreadHelper$2;

    iput-object p2, p0, Lcom/narvii/chat/thread/j;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/narvii/chat/thread/j;->c:Lcom/narvii/model/ChatBubble;

    iput-object p4, p0, Lcom/narvii/chat/thread/j;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/narvii/chat/thread/j;->f:Lcom/narvii/util/Callback;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/narvii/chat/thread/j;->a:Lcom/narvii/chat/thread/ThreadHelper$2;

    iget-object v1, p0, Lcom/narvii/chat/thread/j;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/narvii/chat/thread/j;->c:Lcom/narvii/model/ChatBubble;

    iget-object v3, p0, Lcom/narvii/chat/thread/j;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/narvii/chat/thread/j;->f:Lcom/narvii/util/Callback;

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/narvii/chat/thread/ThreadHelper$2;->a(Lcom/narvii/chat/thread/ThreadHelper$2;Ljava/lang/String;Lcom/narvii/model/ChatBubble;Ljava/lang/String;Lcom/narvii/util/Callback;Landroid/view/View;)V

    return-void
.end method
