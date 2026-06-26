.class final Lcom/narvii/story/StoryInterstitialPageFragment$onViewCreated$1;
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

    iput-object p1, p0, Lcom/narvii/story/StoryInterstitialPageFragment$onViewCreated$1;->this$0:Lcom/narvii/story/StoryInterstitialPageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 116
    iget-object p1, p0, Lcom/narvii/story/StoryInterstitialPageFragment$onViewCreated$1;->this$0:Lcom/narvii/story/StoryInterstitialPageFragment;

    invoke-static {p1}, Lcom/narvii/story/StoryInterstitialPageFragment;->access$getAccount$p(Lcom/narvii/story/StoryInterstitialPageFragment;)Lcom/narvii/account/AccountService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/narvii/user/profile/UserProfileFragment;->intent(Lcom/narvii/app/NVContext;Lcom/narvii/model/User;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
