.class final Lcom/narvii/story/StoryInterstitialPageFragment$onCreateView$1;
.super Ljava/lang/Object;
.source "StoryInterstitialPageFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/story/StoryInterstitialPageFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/story/StoryInterstitialPageFragment;


# direct methods
.method constructor <init>(Lcom/narvii/story/StoryInterstitialPageFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/story/StoryInterstitialPageFragment$onCreateView$1;->this$0:Lcom/narvii/story/StoryInterstitialPageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 100
    iget-object p1, p0, Lcom/narvii/story/StoryInterstitialPageFragment$onCreateView$1;->this$0:Lcom/narvii/story/StoryInterstitialPageFragment;

    sget-object v0, Lcom/narvii/logging/ActSemantic;->share:Lcom/narvii/logging/ActSemantic;

    invoke-static {p1, v0}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    const-string v0, "StoryEnd"

    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/story/StoryInterstitialPageFragment$onCreateView$1;->this$0:Lcom/narvii/story/StoryInterstitialPageFragment;

    invoke-static {v0}, Lcom/narvii/story/StoryInterstitialPageFragment;->access$getBlog$p(Lcom/narvii/story/StoryInterstitialPageFragment;)Lcom/narvii/model/Blog;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->object(Lcom/narvii/model/NVObject;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 101
    iget-object p1, p0, Lcom/narvii/story/StoryInterstitialPageFragment$onCreateView$1;->this$0:Lcom/narvii/story/StoryInterstitialPageFragment;

    invoke-static {p1}, Lcom/narvii/story/StoryInterstitialPageFragment;->access$getBlog$p(Lcom/narvii/story/StoryInterstitialPageFragment;)Lcom/narvii/model/Blog;

    move-result-object v0

    new-instance v1, Lcom/narvii/story/StoryInterstitialPageFragment$onCreateView$1$1;

    iget-object v2, p0, Lcom/narvii/story/StoryInterstitialPageFragment$onCreateView$1;->this$0:Lcom/narvii/story/StoryInterstitialPageFragment;

    invoke-direct {v1, p0, v2}, Lcom/narvii/story/StoryInterstitialPageFragment$onCreateView$1$1;-><init>(Lcom/narvii/story/StoryInterstitialPageFragment$onCreateView$1;Lcom/narvii/app/NVContext;)V

    invoke-static {p1, v0, v1}, Lcom/narvii/share/ShareDialog;->getShareDialogFromStory(Lcom/narvii/app/NVContext;Lcom/narvii/model/Blog;Lcom/narvii/share/ShareButtonSaveStory;)Lcom/narvii/share/ShareDialog;

    move-result-object p1

    .line 105
    invoke-virtual {p1}, Lcom/narvii/share/ShareDialog;->show()V

    return-void
.end method
