.class Lcom/narvii/blog/detail/BlogDetailFragment$6;
.super Ljava/lang/Object;
.source "BlogDetailFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/blog/detail/BlogDetailFragment;->vote(Ljava/lang/Integer;Lcom/narvii/util/http/ApiService;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

.field final synthetic val$b:Lcom/narvii/model/Blog;

.field final synthetic val$fapi:Lcom/narvii/util/http/ApiService;

.field final synthetic val$fromBottomBar:Z


# direct methods
.method constructor <init>(Lcom/narvii/blog/detail/BlogDetailFragment;Lcom/narvii/util/http/ApiService;ZLcom/narvii/model/Blog;)V
    .locals 0

    .line 2120
    iput-object p1, p0, Lcom/narvii/blog/detail/BlogDetailFragment$6;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    iput-object p2, p0, Lcom/narvii/blog/detail/BlogDetailFragment$6;->val$fapi:Lcom/narvii/util/http/ApiService;

    iput-boolean p3, p0, Lcom/narvii/blog/detail/BlogDetailFragment$6;->val$fromBottomBar:Z

    iput-object p4, p0, Lcom/narvii/blog/detail/BlogDetailFragment$6;->val$b:Lcom/narvii/model/Blog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    if-nez p2, :cond_0

    .line 2124
    iget-object p1, p0, Lcom/narvii/blog/detail/BlogDetailFragment$6;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget-object v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment$6;->val$fapi:Lcom/narvii/util/http/ApiService;

    iget-boolean v1, p0, Lcom/narvii/blog/detail/BlogDetailFragment$6;->val$fromBottomBar:Z

    invoke-virtual {p1, p2, v0, v1}, Lcom/narvii/blog/detail/BlogDetailFragment;->vote(Ljava/lang/Integer;Lcom/narvii/util/http/ApiService;Z)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    if-ne p2, p1, :cond_1

    .line 2126
    const-class p1, Lcom/narvii/feed/vote/VoterListFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    .line 2127
    iget-object p2, p0, Lcom/narvii/blog/detail/BlogDetailFragment$6;->val$b:Lcom/narvii/model/Blog;

    invoke-static {p2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "nvObject"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2128
    iget-object p2, p0, Lcom/narvii/blog/detail/BlogDetailFragment$6;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    invoke-virtual {p2, p1}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    :cond_1
    :goto_0
    return-void
.end method
