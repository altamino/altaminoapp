.class public final synthetic Lcom/narvii/chat/thread/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/narvii/chat/thread/MyChatsListFragment$FavoriteUserWrapperAdapter;

.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/chat/thread/MyChatsListFragment$FavoriteUserWrapperAdapter;Landroid/view/View;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/thread/d;->a:Lcom/narvii/chat/thread/MyChatsListFragment$FavoriteUserWrapperAdapter;

    iput-object p2, p0, Lcom/narvii/chat/thread/d;->b:Landroid/view/View;

    iput-boolean p3, p0, Lcom/narvii/chat/thread/d;->c:Z

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/narvii/chat/thread/d;->a:Lcom/narvii/chat/thread/MyChatsListFragment$FavoriteUserWrapperAdapter;

    iget-object v1, p0, Lcom/narvii/chat/thread/d;->b:Landroid/view/View;

    iget-boolean v2, p0, Lcom/narvii/chat/thread/d;->c:Z

    invoke-static {v0, v1, v2, p1, p2}, Lcom/narvii/chat/thread/MyChatsListFragment$FavoriteUserWrapperAdapter;->f(Lcom/narvii/chat/thread/MyChatsListFragment$FavoriteUserWrapperAdapter;Landroid/view/View;ZLandroid/content/DialogInterface;I)V

    return-void
.end method
