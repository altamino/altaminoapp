.class Lcom/narvii/story/StoryAddTopicsFragment$SuggestTopicViewHolder$1;
.super Ljava/lang/Object;
.source "StoryAddTopicsFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/story/StoryAddTopicsFragment$SuggestTopicViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/story/StoryAddTopicsFragment$SuggestTopicViewHolder;


# direct methods
.method constructor <init>(Lcom/narvii/story/StoryAddTopicsFragment$SuggestTopicViewHolder;)V
    .locals 0

    .line 630
    iput-object p1, p0, Lcom/narvii/story/StoryAddTopicsFragment$SuggestTopicViewHolder$1;->this$1:Lcom/narvii/story/StoryAddTopicsFragment$SuggestTopicViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 633
    iget-object p1, p0, Lcom/narvii/story/StoryAddTopicsFragment$SuggestTopicViewHolder$1;->this$1:Lcom/narvii/story/StoryAddTopicsFragment$SuggestTopicViewHolder;

    iget-object p1, p1, Lcom/narvii/story/StoryAddTopicsFragment$SuggestTopicViewHolder;->this$0:Lcom/narvii/story/StoryAddTopicsFragment;

    invoke-virtual {p1}, Lcom/narvii/story/StoryAddTopicsFragment;->hideKeyBoard()V

    const/4 p1, 0x0

    return p1
.end method
