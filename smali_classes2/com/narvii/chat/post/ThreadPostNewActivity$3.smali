.class Lcom/narvii/chat/post/ThreadPostNewActivity$3;
.super Ljava/lang/Object;
.source "ThreadPostNewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/post/ThreadPostNewActivity;->updateTopicView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/post/ThreadPostNewActivity;


# direct methods
.method constructor <init>(Lcom/narvii/chat/post/ThreadPostNewActivity;)V
    .locals 0

    .line 279
    iput-object p1, p0, Lcom/narvii/chat/post/ThreadPostNewActivity$3;->this$0:Lcom/narvii/chat/post/ThreadPostNewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 282
    const-class p1, Lcom/narvii/story/StoryAddTopicsFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    .line 283
    iget-object v0, p0, Lcom/narvii/chat/post/ThreadPostNewActivity$3;->this$0:Lcom/narvii/chat/post/ThreadPostNewActivity;

    invoke-static {v0}, Lcom/narvii/chat/post/ThreadPostNewActivity;->access$600(Lcom/narvii/chat/post/ThreadPostNewActivity;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/model/TopicTag;->createList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "topicList"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 284
    iget-object v0, p0, Lcom/narvii/chat/post/ThreadPostNewActivity$3;->this$0:Lcom/narvii/chat/post/ThreadPostNewActivity;

    const v1, 0xfd11

    invoke-virtual {v0, p1, v1}, Lcom/narvii/app/NVActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
