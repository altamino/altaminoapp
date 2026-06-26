.class public final synthetic Lcom/narvii/chat/thread/-$$Lambda$ThreadHelper$2$MSRcMYyjg-6mCYCQlmVsvTeHrT4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/narvii/chat/thread/ThreadHelper$2;

.field private final synthetic f$1:Ljava/lang/String;

.field private final synthetic f$2:Lcom/narvii/model/ChatBubble;

.field private final synthetic f$3:Ljava/lang/String;

.field private final synthetic f$4:Lcom/narvii/util/Callback;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/chat/thread/ThreadHelper$2;Ljava/lang/String;Lcom/narvii/model/ChatBubble;Ljava/lang/String;Lcom/narvii/util/Callback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/thread/-$$Lambda$ThreadHelper$2$MSRcMYyjg-6mCYCQlmVsvTeHrT4;->f$0:Lcom/narvii/chat/thread/ThreadHelper$2;

    iput-object p2, p0, Lcom/narvii/chat/thread/-$$Lambda$ThreadHelper$2$MSRcMYyjg-6mCYCQlmVsvTeHrT4;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/narvii/chat/thread/-$$Lambda$ThreadHelper$2$MSRcMYyjg-6mCYCQlmVsvTeHrT4;->f$2:Lcom/narvii/model/ChatBubble;

    iput-object p4, p0, Lcom/narvii/chat/thread/-$$Lambda$ThreadHelper$2$MSRcMYyjg-6mCYCQlmVsvTeHrT4;->f$3:Ljava/lang/String;

    iput-object p5, p0, Lcom/narvii/chat/thread/-$$Lambda$ThreadHelper$2$MSRcMYyjg-6mCYCQlmVsvTeHrT4;->f$4:Lcom/narvii/util/Callback;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    iget-object v0, p0, Lcom/narvii/chat/thread/-$$Lambda$ThreadHelper$2$MSRcMYyjg-6mCYCQlmVsvTeHrT4;->f$0:Lcom/narvii/chat/thread/ThreadHelper$2;

    iget-object v1, p0, Lcom/narvii/chat/thread/-$$Lambda$ThreadHelper$2$MSRcMYyjg-6mCYCQlmVsvTeHrT4;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/narvii/chat/thread/-$$Lambda$ThreadHelper$2$MSRcMYyjg-6mCYCQlmVsvTeHrT4;->f$2:Lcom/narvii/model/ChatBubble;

    iget-object v3, p0, Lcom/narvii/chat/thread/-$$Lambda$ThreadHelper$2$MSRcMYyjg-6mCYCQlmVsvTeHrT4;->f$3:Ljava/lang/String;

    iget-object v4, p0, Lcom/narvii/chat/thread/-$$Lambda$ThreadHelper$2$MSRcMYyjg-6mCYCQlmVsvTeHrT4;->f$4:Lcom/narvii/util/Callback;

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/narvii/chat/thread/ThreadHelper$2;->lambda$onClick$1$ThreadHelper$2(Ljava/lang/String;Lcom/narvii/model/ChatBubble;Ljava/lang/String;Lcom/narvii/util/Callback;Landroid/view/View;)V

    return-void
.end method
