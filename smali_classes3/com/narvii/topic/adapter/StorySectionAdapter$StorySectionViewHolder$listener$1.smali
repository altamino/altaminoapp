.class public final Lcom/narvii/topic/adapter/StorySectionAdapter$StorySectionViewHolder$listener$1;
.super Ljava/lang/Object;
.source "StorySectionAdapter.kt"

# interfaces
.implements Lcom/narvii/topic/widgets/StorySectionItemView$OptionClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/topic/adapter/StorySectionAdapter$StorySectionViewHolder;-><init>(Lcom/narvii/topic/adapter/StorySectionAdapter;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/topic/adapter/StorySectionAdapter$StorySectionViewHolder;


# direct methods
.method constructor <init>(Lcom/narvii/topic/adapter/StorySectionAdapter$StorySectionViewHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 109
    iput-object p1, p0, Lcom/narvii/topic/adapter/StorySectionAdapter$StorySectionViewHolder$listener$1;->this$0:Lcom/narvii/topic/adapter/StorySectionAdapter$StorySectionViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefreshClicked(Landroid/view/View;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onSeeAllClicked(Landroid/view/View;)V
    .locals 3

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    const-class v0, Lcom/narvii/topic/TopicSubSectionStoryListFragment;

    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 116
    iget-object v1, p0, Lcom/narvii/topic/adapter/StorySectionAdapter$StorySectionViewHolder$listener$1;->this$0:Lcom/narvii/topic/adapter/StorySectionAdapter$StorySectionViewHolder;

    invoke-virtual {v1}, Lcom/narvii/topic/adapter/StorySectionAdapter$StorySectionViewHolder;->getStorySections()Lcom/narvii/topic/model/StorySections;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/narvii/topic/model/StorySections;->feedCategoryKey:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "key_section_key"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 117
    iget-object v1, p0, Lcom/narvii/topic/adapter/StorySectionAdapter$StorySectionViewHolder$listener$1;->this$0:Lcom/narvii/topic/adapter/StorySectionAdapter$StorySectionViewHolder;

    iget-object v1, v1, Lcom/narvii/topic/adapter/StorySectionAdapter$StorySectionViewHolder;->this$0:Lcom/narvii/topic/adapter/StorySectionAdapter;

    invoke-virtual {v1}, Lcom/narvii/topic/adapter/StorySectionAdapter;->getTopicId()I

    move-result v1

    const-string v2, "key_topic_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 118
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
