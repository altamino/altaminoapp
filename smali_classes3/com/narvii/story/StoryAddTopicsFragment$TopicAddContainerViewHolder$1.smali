.class Lcom/narvii/story/StoryAddTopicsFragment$TopicAddContainerViewHolder$1;
.super Ljava/lang/Object;
.source "StoryAddTopicsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/story/StoryAddTopicsFragment$TopicAddContainerViewHolder;->afterTextChangedNotEmpty(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/story/StoryAddTopicsFragment$TopicAddContainerViewHolder;

.field final synthetic val$s:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/narvii/story/StoryAddTopicsFragment$TopicAddContainerViewHolder;Ljava/lang/String;)V
    .locals 0

    .line 379
    iput-object p1, p0, Lcom/narvii/story/StoryAddTopicsFragment$TopicAddContainerViewHolder$1;->this$1:Lcom/narvii/story/StoryAddTopicsFragment$TopicAddContainerViewHolder;

    iput-object p2, p0, Lcom/narvii/story/StoryAddTopicsFragment$TopicAddContainerViewHolder$1;->val$s:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 382
    iget-object v0, p0, Lcom/narvii/story/StoryAddTopicsFragment$TopicAddContainerViewHolder$1;->val$s:Ljava/lang/String;

    iget-object v1, p0, Lcom/narvii/story/StoryAddTopicsFragment$TopicAddContainerViewHolder$1;->this$1:Lcom/narvii/story/StoryAddTopicsFragment$TopicAddContainerViewHolder;

    iget-object v1, v1, Lcom/narvii/story/StoryAddTopicsFragment$TopicAddContainerViewHolder;->this$0:Lcom/narvii/story/StoryAddTopicsFragment;

    invoke-static {v1}, Lcom/narvii/story/StoryAddTopicsFragment;->access$900(Lcom/narvii/story/StoryAddTopicsFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 383
    iget-object v0, p0, Lcom/narvii/story/StoryAddTopicsFragment$TopicAddContainerViewHolder$1;->this$1:Lcom/narvii/story/StoryAddTopicsFragment$TopicAddContainerViewHolder;

    iget-object v0, v0, Lcom/narvii/story/StoryAddTopicsFragment$TopicAddContainerViewHolder;->this$0:Lcom/narvii/story/StoryAddTopicsFragment;

    iget-object v1, p0, Lcom/narvii/story/StoryAddTopicsFragment$TopicAddContainerViewHolder$1;->val$s:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/narvii/story/StoryAddTopicsFragment;->access$1000(Lcom/narvii/story/StoryAddTopicsFragment;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
