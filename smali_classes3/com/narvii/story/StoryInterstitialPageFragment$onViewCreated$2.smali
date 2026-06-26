.class final Lcom/narvii/story/StoryInterstitialPageFragment$onViewCreated$2;
.super Ljava/lang/Object;
.source "StoryInterstitialPageFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/story/StoryInterstitialPageFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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

    iput-object p1, p0, Lcom/narvii/story/StoryInterstitialPageFragment$onViewCreated$2;->this$0:Lcom/narvii/story/StoryInterstitialPageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 119
    iget-object p1, p0, Lcom/narvii/story/StoryInterstitialPageFragment$onViewCreated$2;->this$0:Lcom/narvii/story/StoryInterstitialPageFragment;

    sget-object v0, Lcom/narvii/logging/ActSemantic;->checkComment:Lcom/narvii/logging/ActSemantic;

    invoke-static {p1, v0}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    const-string v0, "StoryEnd"

    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/story/StoryInterstitialPageFragment$onViewCreated$2;->this$0:Lcom/narvii/story/StoryInterstitialPageFragment;

    invoke-static {v0}, Lcom/narvii/story/StoryInterstitialPageFragment;->access$getBlog$p(Lcom/narvii/story/StoryInterstitialPageFragment;)Lcom/narvii/model/Blog;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->object(Lcom/narvii/model/NVObject;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 120
    iget-object p1, p0, Lcom/narvii/story/StoryInterstitialPageFragment$onViewCreated$2;->this$0:Lcom/narvii/story/StoryInterstitialPageFragment;

    invoke-static {p1}, Lcom/narvii/story/StoryInterstitialPageFragment;->access$getAccount$p(Lcom/narvii/story/StoryInterstitialPageFragment;)Lcom/narvii/account/AccountService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result p1

    if-nez p1, :cond_0

    .line 121
    iget-object p1, p0, Lcom/narvii/story/StoryInterstitialPageFragment$onViewCreated$2;->this$0:Lcom/narvii/story/StoryInterstitialPageFragment;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p1, v0}, Lcom/narvii/app/NVFragment;->ensureLogin(Landroid/content/Intent;)V

    return-void

    .line 124
    :cond_0
    iget-object p1, p0, Lcom/narvii/story/StoryInterstitialPageFragment$onViewCreated$2;->this$0:Lcom/narvii/story/StoryInterstitialPageFragment;

    invoke-static {p1}, Lcom/narvii/story/StoryInterstitialPageFragment;->access$openCommentPage(Lcom/narvii/story/StoryInterstitialPageFragment;)V

    return-void
.end method
