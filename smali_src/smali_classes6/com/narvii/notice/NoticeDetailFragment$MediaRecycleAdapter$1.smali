.class Lcom/narvii/notice/NoticeDetailFragment$MediaRecycleAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/notice/NoticeDetailFragment$MediaRecycleAdapter$1;->this$1:Lcom/narvii/notice/NoticeDetailFragment$MediaRecycleAdapter;

    .line 3
    .line 4
    iput p2, p0, Lcom/narvii/notice/NoticeDetailFragment$MediaRecycleAdapter$1;->val$position:I

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method

.method public static safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Landroidx/fragment/app/Fragment;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    .line 2
    new-instance p1, Landroid/content/Intent;

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/notice/NoticeDetailFragment$MediaRecycleAdapter$1;->this$1:Lcom/narvii/notice/NoticeDetailFragment$MediaRecycleAdapter;

    .line 5
    .line 6
    iget-object v0, v0, Lcom/narvii/notice/NoticeDetailFragment$MediaRecycleAdapter;->this$0:Lcom/narvii/notice/NoticeDetailFragment;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    const-class v1, Lcom/narvii/media/MediaGalleryActivity;

    .line 13
    .line 14
    .line 15
    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 16
    .line 17
    iget-object v0, p0, Lcom/narvii/notice/NoticeDetailFragment$MediaRecycleAdapter$1;->this$1:Lcom/narvii/notice/NoticeDetailFragment$MediaRecycleAdapter;

    .line 18
    .line 19
    iget-object v0, v0, Lcom/narvii/notice/NoticeDetailFragment$MediaRecycleAdapter;->list:Ljava/util/List;

    .line 20
    .line 21
    .line 22
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    const-string v1, "list"

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 29
    .line 30
    const-string v0, "position"

    .line 31
    .line 32
    iget v1, p0, Lcom/narvii/notice/NoticeDetailFragment$MediaRecycleAdapter$1;->val$position:I

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 36
    .line 37
    iget-object v0, p0, Lcom/narvii/notice/NoticeDetailFragment$MediaRecycleAdapter$1;->this$1:Lcom/narvii/notice/NoticeDetailFragment$MediaRecycleAdapter;

    .line 38
    .line 39
    iget-object v0, v0, Lcom/narvii/notice/NoticeDetailFragment$MediaRecycleAdapter;->this$0:Lcom/narvii/notice/NoticeDetailFragment;

    .line 40
    .line 41
    .line 42
    invoke-static {v0, p1}, Lcom/narvii/notice/NoticeDetailFragment$MediaRecycleAdapter$1;->safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V

    .line 43
    return-void
.end method
