.class public final synthetic Lcom/narvii/chat/global/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/narvii/chat/global/RecentChatListComponent;

.field public final synthetic b:Lcom/narvii/chat/global/GlobalChatThread;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/chat/global/RecentChatListComponent;Lcom/narvii/chat/global/GlobalChatThread;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/global/j;->a:Lcom/narvii/chat/global/RecentChatListComponent;

    iput-object p2, p0, Lcom/narvii/chat/global/j;->b:Lcom/narvii/chat/global/GlobalChatThread;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/narvii/chat/global/j;->a:Lcom/narvii/chat/global/RecentChatListComponent;

    iget-object v1, p0, Lcom/narvii/chat/global/j;->b:Lcom/narvii/chat/global/GlobalChatThread;

    invoke-static {v0, v1, p1}, Lcom/narvii/chat/global/RecentChatListComponent$RecentChatItemHolder;->a(Lcom/narvii/chat/global/RecentChatListComponent;Lcom/narvii/chat/global/GlobalChatThread;Landroid/view/View;)V

    return-void
.end method
