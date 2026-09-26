.class public final synthetic Lcom/narvii/chat/global/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/narvii/chat/global/GlobalChatCategoryItemView;

.field public final synthetic b:Lcom/narvii/model/ChatThread;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/chat/global/GlobalChatCategoryItemView;Lcom/narvii/model/ChatThread;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/global/b;->a:Lcom/narvii/chat/global/GlobalChatCategoryItemView;

    iput-object p2, p0, Lcom/narvii/chat/global/b;->b:Lcom/narvii/model/ChatThread;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/narvii/chat/global/b;->a:Lcom/narvii/chat/global/GlobalChatCategoryItemView;

    iget-object v1, p0, Lcom/narvii/chat/global/b;->b:Lcom/narvii/model/ChatThread;

    invoke-static {v0, v1, p1}, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->a(Lcom/narvii/chat/global/GlobalChatCategoryItemView;Lcom/narvii/model/ChatThread;Landroid/view/View;)V

    return-void
.end method
