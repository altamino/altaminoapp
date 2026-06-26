.class Lcom/narvii/chat/thread/MyChatsListFragment$FavoriteUserWrapperAdapter$1;
.super Ljava/lang/Object;
.source "MyChatsListFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/thread/MyChatsListFragment$FavoriteUserWrapperAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/chat/thread/MyChatsListFragment$FavoriteUserWrapperAdapter;

.field final synthetic val$recycleView:Landroid/view/View;

.field final synthetic val$visible:Z


# direct methods
.method constructor <init>(Lcom/narvii/chat/thread/MyChatsListFragment$FavoriteUserWrapperAdapter;Landroid/view/View;Z)V
    .locals 0

    .line 404
    iput-object p1, p0, Lcom/narvii/chat/thread/MyChatsListFragment$FavoriteUserWrapperAdapter$1;->this$1:Lcom/narvii/chat/thread/MyChatsListFragment$FavoriteUserWrapperAdapter;

    iput-object p2, p0, Lcom/narvii/chat/thread/MyChatsListFragment$FavoriteUserWrapperAdapter$1;->val$recycleView:Landroid/view/View;

    iput-boolean p3, p0, Lcom/narvii/chat/thread/MyChatsListFragment$FavoriteUserWrapperAdapter$1;->val$visible:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    if-eqz p2, :cond_2

    const/4 p1, 0x1

    if-eq p2, p1, :cond_0

    goto :goto_1

    .line 413
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/thread/MyChatsListFragment$FavoriteUserWrapperAdapter$1;->val$recycleView:Landroid/view/View;

    iget-boolean p2, p0, Lcom/narvii/chat/thread/MyChatsListFragment$FavoriteUserWrapperAdapter$1;->val$visible:Z

    if-eqz p2, :cond_1

    const/16 p2, 0x8

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 414
    iget-object p1, p0, Lcom/narvii/chat/thread/MyChatsListFragment$FavoriteUserWrapperAdapter$1;->this$1:Lcom/narvii/chat/thread/MyChatsListFragment$FavoriteUserWrapperAdapter;

    iget-object p1, p1, Lcom/narvii/chat/thread/MyChatsListFragment$FavoriteUserWrapperAdapter;->this$0:Lcom/narvii/chat/thread/MyChatsListFragment;

    iget-object p1, p1, Lcom/narvii/chat/thread/MyChatsListFragment;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-boolean p2, p0, Lcom/narvii/chat/thread/MyChatsListFragment$FavoriteUserWrapperAdapter$1;->val$visible:Z

    const-string v0, "hide_fav_user"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 415
    iget-boolean p1, p0, Lcom/narvii/chat/thread/MyChatsListFragment$FavoriteUserWrapperAdapter$1;->val$visible:Z

    if-eqz p1, :cond_3

    goto :goto_1

    .line 409
    :cond_2
    const-class p1, Lcom/narvii/user/favorite/FavoriteUserListFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    .line 410
    iget-object p2, p0, Lcom/narvii/chat/thread/MyChatsListFragment$FavoriteUserWrapperAdapter$1;->this$1:Lcom/narvii/chat/thread/MyChatsListFragment$FavoriteUserWrapperAdapter;

    iget-object p2, p2, Lcom/narvii/chat/thread/MyChatsListFragment$FavoriteUserWrapperAdapter;->this$0:Lcom/narvii/chat/thread/MyChatsListFragment;

    const/16 v0, 0x64

    invoke-virtual {p2, p1, v0}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_3
    :goto_1
    return-void
.end method
