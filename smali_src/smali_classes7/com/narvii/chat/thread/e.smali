.class public final synthetic Lcom/narvii/chat/thread/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/narvii/chat/thread/MyChatsListFragment$MyChatListAdapter;

.field public final synthetic b:[I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/chat/thread/MyChatsListFragment$MyChatListAdapter;[ILjava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/thread/e;->a:Lcom/narvii/chat/thread/MyChatsListFragment$MyChatListAdapter;

    iput-object p2, p0, Lcom/narvii/chat/thread/e;->b:[I

    iput-object p3, p0, Lcom/narvii/chat/thread/e;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/narvii/chat/thread/e;->a:Lcom/narvii/chat/thread/MyChatsListFragment$MyChatListAdapter;

    iget-object v1, p0, Lcom/narvii/chat/thread/e;->b:[I

    iget-object v2, p0, Lcom/narvii/chat/thread/e;->c:Ljava/lang/Object;

    invoke-static {v0, v1, v2, p1, p2}, Lcom/narvii/chat/thread/MyChatsListFragment$MyChatListAdapter;->f(Lcom/narvii/chat/thread/MyChatsListFragment$MyChatListAdapter;[ILjava/lang/Object;Landroid/content/DialogInterface;I)V

    return-void
.end method
