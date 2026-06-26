.class Lcom/narvii/blog/detail/BlogDetailFragment$1;
.super Ljava/lang/Object;
.source "BlogDetailFragment.java"

# interfaces
.implements Lcom/narvii/scene/TemplateListFragment$OnChooseTemplateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/blog/detail/BlogDetailFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/blog/detail/BlogDetailFragment;


# direct methods
.method constructor <init>(Lcom/narvii/blog/detail/BlogDetailFragment;)V
    .locals 0

    .line 229
    iput-object p1, p0, Lcom/narvii/blog/detail/BlogDetailFragment$1;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$onChoose$0(Lcom/narvii/widget/ACMAlertDialog;Landroid/view/View;)V
    .locals 0

    .line 236
    invoke-virtual {p0}, Lcom/narvii/widget/ACMAlertDialog;->dismiss()V

    return-void
.end method


# virtual methods
.method public onChoose(Lcom/narvii/scene/model/TemplateConfig;)V
    .locals 3

    .line 232
    invoke-static {}, Lcom/narvii/editor/utils/MeisheUtils;->isSupportMeishe()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/narvii/editors/ffmpeg/FFmpegJni;->ffmpegInstalled:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 243
    :cond_0
    const-class v0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;

    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 244
    iget-object v1, p0, Lcom/narvii/blog/detail/BlogDetailFragment$1;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    invoke-virtual {v1}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    move-result-object v1

    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "blogPost"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 245
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "templateConfig"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 246
    iget-object p1, p0, Lcom/narvii/blog/detail/BlogDetailFragment$1;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 233
    :cond_1
    :goto_0
    new-instance p1, Lcom/narvii/widget/ACMAlertDialog;

    iget-object v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment$1;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    .line 234
    iget-object v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment$1;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    const v1, 0x7f0f013c

    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    const v0, 0x104000a

    .line 235
    new-instance v1, Lcom/narvii/blog/detail/-$$Lambda$BlogDetailFragment$1$m_q7sbAuDTWkOg51kOlNpUmSOT0;

    invoke-direct {v1, p1}, Lcom/narvii/blog/detail/-$$Lambda$BlogDetailFragment$1$m_q7sbAuDTWkOg51kOlNpUmSOT0;-><init>(Lcom/narvii/widget/ACMAlertDialog;)V

    invoke-virtual {p1, v0, v1}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const/4 v0, 0x0

    .line 238
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 239
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    return-void
.end method

.method public onDismiss()V
    .locals 2

    .line 251
    iget-object v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment$1;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->getLifecycleState()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    .line 252
    iget-object v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment$1;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/narvii/blog/detail/BlogDetailFragment;->onActiveChanged(Z)V

    :cond_0
    return-void
.end method
