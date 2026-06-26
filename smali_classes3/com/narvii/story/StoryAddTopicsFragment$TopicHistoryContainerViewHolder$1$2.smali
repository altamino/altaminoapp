.class Lcom/narvii/story/StoryAddTopicsFragment$TopicHistoryContainerViewHolder$1$2;
.super Ljava/lang/Object;
.source "StoryAddTopicsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/story/StoryAddTopicsFragment$TopicHistoryContainerViewHolder$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/narvii/story/StoryAddTopicsFragment$TopicHistoryContainerViewHolder$1;

.field final synthetic val$dialog:Lcom/narvii/widget/ACMAlertDialog;


# direct methods
.method constructor <init>(Lcom/narvii/story/StoryAddTopicsFragment$TopicHistoryContainerViewHolder$1;Lcom/narvii/widget/ACMAlertDialog;)V
    .locals 0

    .line 522
    iput-object p1, p0, Lcom/narvii/story/StoryAddTopicsFragment$TopicHistoryContainerViewHolder$1$2;->this$2:Lcom/narvii/story/StoryAddTopicsFragment$TopicHistoryContainerViewHolder$1;

    iput-object p2, p0, Lcom/narvii/story/StoryAddTopicsFragment$TopicHistoryContainerViewHolder$1$2;->val$dialog:Lcom/narvii/widget/ACMAlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 525
    iget-object p1, p0, Lcom/narvii/story/StoryAddTopicsFragment$TopicHistoryContainerViewHolder$1$2;->val$dialog:Lcom/narvii/widget/ACMAlertDialog;

    invoke-virtual {p1}, Lcom/narvii/widget/ACMAlertDialog;->dismiss()V

    return-void
.end method
