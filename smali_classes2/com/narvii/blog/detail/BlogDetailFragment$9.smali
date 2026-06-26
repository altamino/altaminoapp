.class Lcom/narvii/blog/detail/BlogDetailFragment$9;
.super Ljava/lang/Object;
.source "BlogDetailFragment.java"

# interfaces
.implements Lcom/narvii/scene/TemplateListFragment$OnChooseTemplateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/blog/detail/BlogDetailFragment;->showTemplateList()V
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

    .line 2370
    iput-object p1, p0, Lcom/narvii/blog/detail/BlogDetailFragment$9;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$onChoose$0(Lcom/narvii/widget/ACMAlertDialog;Landroid/view/View;)V
    .locals 0

    .line 2378
    invoke-virtual {p0}, Lcom/narvii/widget/ACMAlertDialog;->dismiss()V

    return-void
.end method


# virtual methods
.method public onChoose(Lcom/narvii/scene/model/TemplateConfig;)V
    .locals 3

    .line 2374
    invoke-static {}, Lcom/narvii/editor/utils/MeisheUtils;->isSupportMeishe()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/narvii/editors/ffmpeg/FFmpegJni;->ffmpegInstalled:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 2385
    :cond_0
    const-class v0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;

    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 2386
    iget-object v1, p0, Lcom/narvii/blog/detail/BlogDetailFragment$9;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    invoke-virtual {v1}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    move-result-object v1

    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "blogPost"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2387
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "templateConfig"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2388
    iget-object p1, p0, Lcom/narvii/blog/detail/BlogDetailFragment$9;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 2375
    :cond_1
    :goto_0
    new-instance p1, Lcom/narvii/widget/ACMAlertDialog;

    iget-object v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment$9;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    .line 2376
    iget-object v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment$9;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    const v1, 0x7f0f013c

    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    const v0, 0x104000a

    .line 2377
    new-instance v1, Lcom/narvii/blog/detail/-$$Lambda$BlogDetailFragment$9$SZ12jqv-O5xE6CBVIIs8ji-0hW8;

    invoke-direct {v1, p1}, Lcom/narvii/blog/detail/-$$Lambda$BlogDetailFragment$9$SZ12jqv-O5xE6CBVIIs8ji-0hW8;-><init>(Lcom/narvii/widget/ACMAlertDialog;)V

    invoke-virtual {p1, v0, v1}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const/4 v0, 0x0

    .line 2380
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 2381
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    return-void
.end method

.method public onDismiss()V
    .locals 2

    .line 2393
    iget-object v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment$9;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->getLifecycleState()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    .line 2394
    iget-object v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment$9;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/narvii/blog/detail/BlogDetailFragment;->onActiveChanged(Z)V

    .line 2396
    :cond_0
    iget-object v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment$9;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    invoke-static {v0}, Lcom/narvii/blog/detail/BlogDetailFragment;->access$2300(Lcom/narvii/blog/detail/BlogDetailFragment;)V

    return-void
.end method
