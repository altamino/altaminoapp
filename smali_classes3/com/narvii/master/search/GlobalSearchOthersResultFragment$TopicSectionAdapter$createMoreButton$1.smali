.class final Lcom/narvii/master/search/GlobalSearchOthersResultFragment$TopicSectionAdapter$createMoreButton$1;
.super Ljava/lang/Object;
.source "GlobalSearchOthersResultFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/master/search/GlobalSearchOthersResultFragment$TopicSectionAdapter;->createMoreButton(Lcom/narvii/util/layouts/NVFlowLayout;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/search/GlobalSearchOthersResultFragment$TopicSectionAdapter;


# direct methods
.method constructor <init>(Lcom/narvii/master/search/GlobalSearchOthersResultFragment$TopicSectionAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$TopicSectionAdapter$createMoreButton$1;->this$0:Lcom/narvii/master/search/GlobalSearchOthersResultFragment$TopicSectionAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 471
    iget-object p1, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$TopicSectionAdapter$createMoreButton$1;->this$0:Lcom/narvii/master/search/GlobalSearchOthersResultFragment$TopicSectionAdapter;

    sget-object v0, Lcom/narvii/logging/ActSemantic;->listViewEnter:Lcom/narvii/logging/ActSemantic;

    invoke-virtual {p1, v0}, Lcom/narvii/list/NVAdapter;->logClickEvent(Lcom/narvii/logging/ActSemantic;)V

    .line 472
    const-class p1, Lcom/narvii/master/search/GlobalSearchBaseFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "section_type"

    const/4 v1, 0x4

    .line 473
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 474
    iget-object v0, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$TopicSectionAdapter$createMoreButton$1;->this$0:Lcom/narvii/master/search/GlobalSearchOthersResultFragment$TopicSectionAdapter;

    iget-object v0, v0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$TopicSectionAdapter;->this$0:Lcom/narvii/master/search/GlobalSearchOthersResultFragment;

    invoke-static {v0}, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->access$getCurKey$p(Lcom/narvii/master/search/GlobalSearchOthersResultFragment;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "search_key"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 475
    iget-object v0, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$TopicSectionAdapter$createMoreButton$1;->this$0:Lcom/narvii/master/search/GlobalSearchOthersResultFragment$TopicSectionAdapter;

    invoke-virtual {v0, p1}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
