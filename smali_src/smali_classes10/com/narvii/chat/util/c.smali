.class public final synthetic Lcom/narvii/chat/util/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/narvii/model/ChatThread;

.field public final synthetic b:Lcom/narvii/chat/util/ChatHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/model/ChatThread;Lcom/narvii/chat/util/ChatHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/util/c;->a:Lcom/narvii/model/ChatThread;

    iput-object p2, p0, Lcom/narvii/chat/util/c;->b:Lcom/narvii/chat/util/ChatHelper;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/narvii/chat/util/c;->a:Lcom/narvii/model/ChatThread;

    iget-object v1, p0, Lcom/narvii/chat/util/c;->b:Lcom/narvii/chat/util/ChatHelper;

    invoke-static {v0, v1, p1}, Lcom/narvii/chat/util/ChatHelper;->c(Lcom/narvii/model/ChatThread;Lcom/narvii/chat/util/ChatHelper;Landroid/view/View;)V

    return-void
.end method
