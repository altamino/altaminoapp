.class Lcom/narvii/notice/NoticeDetailFragment$MediaRecycleAdapter$1;
.super Ljava/lang/Object;
.source "NoticeDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/notice/NoticeDetailFragment$MediaRecycleAdapter;->onBindViewHolder(Lcom/narvii/notice/NoticeDetailFragment$MediaHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/notice/NoticeDetailFragment$MediaRecycleAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/narvii/notice/NoticeDetailFragment$MediaRecycleAdapter;I)V
    .locals 0

    .line 452
    iput-object p1, p0, Lcom/narvii/notice/NoticeDetailFragment$MediaRecycleAdapter$1;->this$1:Lcom/narvii/notice/NoticeDetailFragment$MediaRecycleAdapter;

    iput p2, p0, Lcom/narvii/notice/NoticeDetailFragment$MediaRecycleAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 455
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/narvii/notice/NoticeDetailFragment$MediaRecycleAdapter$1;->this$1:Lcom/narvii/notice/NoticeDetailFragment$MediaRecycleAdapter;

    iget-object v0, v0, Lcom/narvii/notice/NoticeDetailFragment$MediaRecycleAdapter;->this$0:Lcom/narvii/notice/NoticeDetailFragment;

    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/narvii/media/MediaGalleryActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 457
    iget-object v0, p0, Lcom/narvii/notice/NoticeDetailFragment$MediaRecycleAdapter$1;->this$1:Lcom/narvii/notice/NoticeDetailFragment$MediaRecycleAdapter;

    iget-object v0, v0, Lcom/narvii/notice/NoticeDetailFragment$MediaRecycleAdapter;->list:Ljava/util/List;

    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "list"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 458
    iget v0, p0, Lcom/narvii/notice/NoticeDetailFragment$MediaRecycleAdapter$1;->val$position:I

    const-string v1, "position"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 459
    iget-object v0, p0, Lcom/narvii/notice/NoticeDetailFragment$MediaRecycleAdapter$1;->this$1:Lcom/narvii/notice/NoticeDetailFragment$MediaRecycleAdapter;

    iget-object v0, v0, Lcom/narvii/notice/NoticeDetailFragment$MediaRecycleAdapter;->this$0:Lcom/narvii/notice/NoticeDetailFragment;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
