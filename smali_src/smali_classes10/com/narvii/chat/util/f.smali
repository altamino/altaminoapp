.class public final synthetic Lcom/narvii/chat/util/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/narvii/model/ChatThread;

.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Integer;

.field public final synthetic d:Lcom/narvii/chat/util/ChatHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/model/ChatThread;ILjava/lang/Integer;Lcom/narvii/chat/util/ChatHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/util/f;->a:Lcom/narvii/model/ChatThread;

    iput p2, p0, Lcom/narvii/chat/util/f;->b:I

    iput-object p3, p0, Lcom/narvii/chat/util/f;->c:Ljava/lang/Integer;

    iput-object p4, p0, Lcom/narvii/chat/util/f;->d:Lcom/narvii/chat/util/ChatHelper;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/narvii/chat/util/f;->a:Lcom/narvii/model/ChatThread;

    iget v1, p0, Lcom/narvii/chat/util/f;->b:I

    iget-object v2, p0, Lcom/narvii/chat/util/f;->c:Ljava/lang/Integer;

    iget-object v3, p0, Lcom/narvii/chat/util/f;->d:Lcom/narvii/chat/util/ChatHelper;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/narvii/chat/util/ChatHelper;->f(Lcom/narvii/model/ChatThread;ILjava/lang/Integer;Lcom/narvii/chat/util/ChatHelper;Landroid/view/View;)V

    return-void
.end method
