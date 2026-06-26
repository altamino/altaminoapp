.class Lcom/narvii/story/widgets/StoryItemView$3;
.super Ljava/lang/Object;
.source "StoryItemView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/story/widgets/StoryItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/story/widgets/StoryItemView;


# direct methods
.method constructor <init>(Lcom/narvii/story/widgets/StoryItemView;)V
    .locals 0

    .line 238
    iput-object p1, p0, Lcom/narvii/story/widgets/StoryItemView$3;->this$0:Lcom/narvii/story/widgets/StoryItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 241
    iget-object p1, p0, Lcom/narvii/story/widgets/StoryItemView$3;->this$0:Lcom/narvii/story/widgets/StoryItemView;

    invoke-virtual {p1}, Lcom/narvii/story/widgets/StoryItemView;->isFansOnly()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 242
    iget-object p1, p0, Lcom/narvii/story/widgets/StoryItemView$3;->this$0:Lcom/narvii/story/widgets/StoryItemView;

    invoke-virtual {p1}, Lcom/narvii/story/widgets/StoryItemView;->performBecomeFansClick()V

    return-void

    .line 246
    :cond_0
    iget-object p1, p0, Lcom/narvii/story/widgets/StoryItemView$3;->this$0:Lcom/narvii/story/widgets/StoryItemView;

    invoke-static {p1}, Lcom/narvii/story/widgets/StoryItemView;->access$600(Lcom/narvii/story/widgets/StoryItemView;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 247
    iget-object p1, p0, Lcom/narvii/story/widgets/StoryItemView$3;->this$0:Lcom/narvii/story/widgets/StoryItemView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0f10b1

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    return-void

    .line 250
    :cond_1
    iget-object p1, p0, Lcom/narvii/story/widgets/StoryItemView$3;->this$0:Lcom/narvii/story/widgets/StoryItemView;

    invoke-static {p1}, Lcom/narvii/story/widgets/StoryItemView;->access$200(Lcom/narvii/story/widgets/StoryItemView;)Lcom/narvii/model/Blog;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 252
    iget-object p1, p0, Lcom/narvii/story/widgets/StoryItemView$3;->this$0:Lcom/narvii/story/widgets/StoryItemView;

    invoke-static {p1}, Lcom/narvii/story/widgets/StoryItemView;->access$300(Lcom/narvii/story/widgets/StoryItemView;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    const-string v0, "CommentBar"

    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    sget-object v0, Lcom/narvii/logging/ActSemantic;->checkComment:Lcom/narvii/logging/ActSemantic;

    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->actSemantic(Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 254
    iget-object p1, p0, Lcom/narvii/story/widgets/StoryItemView$3;->this$0:Lcom/narvii/story/widgets/StoryItemView;

    iget-object p1, p1, Lcom/narvii/story/widgets/StoryItemView;->bottomSheetListener:Lcom/narvii/story/IStoryBottomSheetListener;

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    .line 255
    invoke-interface {p1, v0}, Lcom/narvii/story/IStoryBottomSheetListener;->onBottomSheetShow(I)V

    :cond_2
    return-void
.end method
