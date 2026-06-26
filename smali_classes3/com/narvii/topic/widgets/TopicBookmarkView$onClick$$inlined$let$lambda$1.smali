.class final Lcom/narvii/topic/widgets/TopicBookmarkView$onClick$$inlined$let$lambda$1;
.super Ljava/lang/Object;
.source "TopicBookmarkView.kt"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/topic/widgets/TopicBookmarkView;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $targetBookmark:Z

.field final synthetic this$0:Lcom/narvii/topic/widgets/TopicBookmarkView;


# direct methods
.method constructor <init>(ZLcom/narvii/topic/widgets/TopicBookmarkView;)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/topic/widgets/TopicBookmarkView$onClick$$inlined$let$lambda$1;->$targetBookmark:Z

    iput-object p2, p0, Lcom/narvii/topic/widgets/TopicBookmarkView$onClick$$inlined$let$lambda$1;->this$0:Lcom/narvii/topic/widgets/TopicBookmarkView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    if-nez p2, :cond_0

    .line 66
    iget-object p1, p0, Lcom/narvii/topic/widgets/TopicBookmarkView$onClick$$inlined$let$lambda$1;->this$0:Lcom/narvii/topic/widgets/TopicBookmarkView;

    invoke-virtual {p1}, Lcom/narvii/topic/widgets/TopicBookmarkView;->getTopic()Lcom/narvii/model/story/StoryTopic;

    move-result-object p2

    iget-boolean v0, p0, Lcom/narvii/topic/widgets/TopicBookmarkView$onClick$$inlined$let$lambda$1;->$targetBookmark:Z

    invoke-static {p1, p2, v0}, Lcom/narvii/topic/widgets/TopicBookmarkView;->access$sendBookMarkRequest(Lcom/narvii/topic/widgets/TopicBookmarkView;Lcom/narvii/model/story/StoryTopic;Z)V

    :cond_0
    return-void
.end method
